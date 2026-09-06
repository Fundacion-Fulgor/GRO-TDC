#!/usr/bin/env python3
import importlib.util
import os
import subprocess
import sys
import tempfile
import unittest
from importlib.machinery import SourceFileLoader
from pathlib import Path
from unittest.mock import MagicMock, patch

eda_path = Path(__file__).resolve().parent.parent / "eda"
loader = SourceFileLoader("eda", str(eda_path))
spec = importlib.util.spec_from_loader("eda", loader)
eda = importlib.util.module_from_spec(spec)
sys.modules["eda"] = eda
loader.exec_module(eda)


def create_mock_repo(tmp_dir: Path) -> Path:
    repo = tmp_dir / "mock_repo"
    (repo / "design" / "schematic").mkdir(parents=True)
    (repo / "verification" / "testbenches").mkdir(parents=True)
    (repo / "archive" / "legacy").mkdir(parents=True)
    (repo / "IHP-Open-PDK").mkdir(parents=True)
    (repo / "runs").mkdir(parents=True)

    (repo / "xschemrc").write_text("set test 1\n", encoding="utf-8")
    (repo / "design" / "schematic" / "GROTDC.sch").write_text("v {xschem}\n", encoding="utf-8")
    (repo / "verification" / "testbenches" / "tb_AND.sch").write_text("v {xschem}\n", encoding="utf-8")
    (repo / "archive" / "legacy" / "GROTDC.sch").write_text("v {xschem}\n", encoding="utf-8")
    (repo / "design" / "other.txt").write_text("text\n", encoding="utf-8")
    return repo


class TestCwdIndependence(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)
        self.other_cwd = self.tmp_path / "somewhere_else"
        self.other_cwd.mkdir()

    def tearDown(self):
        self.tmp.cleanup()

    def test_resolve_schematic_from_different_cwd(self):
        orig_cwd = os.getcwd()
        try:
            os.chdir(self.other_cwd)
            resolved, err = eda.resolve_schematic("design/schematic/GROTDC.sch", self.repo)
            self.assertEqual(err, "")
            self.assertEqual(resolved, (self.repo / "design/schematic/GROTDC.sch").resolve())
        finally:
            os.chdir(orig_cwd)

    def test_cmd_netlist_from_different_cwd(self):
        orig_cwd = os.getcwd()
        try:
            os.chdir(self.other_cwd)
            with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
                def fake_run(cmd, **kwargs):
                    out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                    out_f.write_text(".subckt GROTDC\n.ends\n", encoding="utf-8")
                    return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

                with patch("subprocess.run", side_effect=fake_run):
                    code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                    self.assertEqual(code, 0)
                    expected_output = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                    self.assertTrue(expected_output.is_file())
        finally:
            os.chdir(orig_cwd)


class TestNetlistValidation(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_fail_on_missing_symbols_with_status_zero(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run(cmd, **kwargs):
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(
                    cmd, 0, stdout="l_s_d(): Symbol not found: missing_block.sym\n", stderr=""
                )

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 1)
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                self.assertFalse(out_f.exists())

    def test_fail_on_missing_symbol_markers_in_netlist(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run(cmd, **kwargs):
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC\n* x1 - foo IS MISSING !!!!\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 1)
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                self.assertFalse(out_f.exists())

    def test_fail_on_stale_output_and_deletion(self):
        out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
        out_f.parent.mkdir(parents=True, exist_ok=True)
        out_f.write_text("old stale content\n", encoding="utf-8")

        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run_failed(cmd, **kwargs):
                return subprocess.CompletedProcess(cmd, 1, stdout="", stderr="Fatal xschem error\n")

            with patch("subprocess.run", side_effect=fake_run_failed):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 1)
                self.assertFalse(out_f.exists())

    def test_fail_on_empty_output_file(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run_empty(cmd, **kwargs):
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text("", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run_empty):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 1)

    def test_successful_netlist(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run_ok(cmd, **kwargs):
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC A B\nXM1 A B VDD VSS nmos\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="Netlisting done\n", stderr="")

            with patch("subprocess.run", side_effect=fake_run_ok):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 0)
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                self.assertTrue(out_f.is_file())


class TestCommandQuotingAndNoShell(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        repo_dir = self.tmp_path / "repo with spaces"
        (repo_dir / "design" / "schematic").mkdir(parents=True)
        (repo_dir / "verification" / "testbenches").mkdir(parents=True)
        (repo_dir / "archive").mkdir(parents=True)
        (repo_dir / "IHP-Open-PDK").mkdir(parents=True)
        (repo_dir / "runs").mkdir(parents=True)
        (repo_dir / "xschemrc").write_text("set test 1\n", encoding="utf-8")
        sch_path = repo_dir / "design" / "schematic" / "sch with spaces.sch"
        sch_path.write_text("v {xschem}\n", encoding="utf-8")
        self.repo = repo_dir
        self.sch_path = sch_path

    def tearDown(self):
        self.tmp.cleanup()

    def test_calls_use_list_arguments_without_shell(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            recorded_cmds = []

            def fake_run(cmd, **kwargs):
                self.assertFalse(kwargs.get("shell", False))
                self.assertIsInstance(cmd, list)
                recorded_cmds.append(cmd)
                stem = Path(cmd[-1]).stem
                out_f = self.repo / "runs" / stem / f"{stem}.spice"
                out_f.write_text(".subckt test\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_netlist(str(self.sch_path), False, self.repo)
                self.assertEqual(code, 0)
                self.assertTrue(len(recorded_cmds) > 0)
                first_cmd = recorded_cmds[0]
                self.assertEqual(first_cmd[0], "xschem")
                self.assertEqual(first_cmd[-1], str(self.sch_path.resolve()))


class TestPinnedSubmodulesNotRemote(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_setup_runs_pinned_update_without_remote(self):
        executed_cmds = []

        def fake_run(cmd, **kwargs):
            self.assertIsInstance(cmd, list)
            executed_cmds.append(cmd)
            if cmd == ["git", "submodule", "status", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout=" cfc0e22 IHP-Open-PDK (v1.0)\n", stderr="")
            if cmd[:3] == ["git", "-C", str(self.repo / "IHP-Open-PDK")]:
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
            if cmd == ["git", "submodule", "update", "--init", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

        with patch("subprocess.run", side_effect=fake_run):
            code = eda.cmd_setup(self.repo)
            self.assertEqual(code, 0)

        update_calls = [c for c in executed_cmds if "update" in c]
        self.assertEqual(len(update_calls), 1)
        self.assertNotIn("--remote", update_calls[0])
        self.assertEqual(update_calls[0], ["git", "submodule", "update", "--init", "--recursive"])

    def test_setup_refuses_dirty_submodule_worktree(self):
        executed_cmds = []

        def fake_run(cmd, **kwargs):
            executed_cmds.append(cmd)
            if cmd == ["git", "submodule", "status", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout=" cfc0e22 IHP-Open-PDK (v1.0)\n", stderr="")
            if cmd[:3] == ["git", "-C", str(self.repo / "IHP-Open-PDK")]:
                return subprocess.CompletedProcess(cmd, 0, stdout=" M modified_file.py\n", stderr="")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

        with patch("subprocess.run", side_effect=fake_run):
            code = eda.cmd_setup(self.repo)
            self.assertEqual(code, 1)

        update_calls = [c for c in executed_cmds if "update" in c]
        self.assertEqual(len(update_calls), 0)


class TestEnvironmentOverride(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_get_eda_env_overrides_external_variables(self):
        with patch.dict(os.environ, {"PDK_ROOT": "/unwanted/external/pdk", "PDK": "other_pdk"}):
            env = eda.get_eda_env(self.repo)
            self.assertEqual(env["PDK_ROOT"], str((self.repo / "IHP-Open-PDK").resolve()))
            self.assertEqual(env["PDK"], "ihp-sg13g2")

    def test_netlist_passes_forced_env(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            captured_env = {}

            def fake_run(cmd, **kwargs):
                nonlocal captured_env
                captured_env = kwargs.get("env", {})
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch.dict(os.environ, {"PDK_ROOT": "/unwanted/external/pdk"}):
                with patch("subprocess.run", side_effect=fake_run):
                    code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                    self.assertEqual(code, 0)
                    self.assertEqual(captured_env.get("PDK_ROOT"), str((self.repo / "IHP-Open-PDK").resolve()))
                    self.assertEqual(captured_env.get("PDK"), "ihp-sg13g2")


class TestDefaultPath(unittest.TestCase):
    def test_default_path_constant(self):
        self.assertEqual(eda.DEFAULT_SCHEMATIC, "design/schematic/GROTDC.sch")

    def test_main_open_uses_default_schematic(self):
        with patch("eda.cmd_open", return_value=0) as mock_open:
            with patch("eda.get_repo_root", return_value=Path("/fake/repo")):
                code = eda.main(["--native", "open"])
                self.assertEqual(code, 0)
                mock_open.assert_called_once_with("design/schematic/GROTDC.sch", Path("/fake/repo"))

    def test_main_netlist_uses_default_schematic(self):
        with patch("eda.cmd_netlist", return_value=0) as mock_netlist:
            with patch("eda.get_repo_root", return_value=Path("/fake/repo")):
                code = eda.main(["--native", "netlist"])
                self.assertEqual(code, 0)
                mock_netlist.assert_called_once_with("design/schematic/GROTDC.sch", False, Path("/fake/repo"))


class TestSubmoduleVerification(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_verification_uninitialized_submodule(self):
        def fake_run(cmd, **kwargs):
            if cmd == ["git", "submodule", "status", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout="-cfc0e22 IHP-Open-PDK\n", stderr="")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

        with patch("subprocess.run", side_effect=fake_run):
            ok, msg = eda.check_submodules_clean_and_aligned(self.repo)
            self.assertFalse(ok)
            self.assertIn("no está inicializado", msg)

    def test_verification_commit_mismatch(self):
        def fake_run(cmd, **kwargs):
            if cmd == ["git", "submodule", "status", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout="+cfc0e22 IHP-Open-PDK (v1.0)\n", stderr="")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

        with patch("subprocess.run", side_effect=fake_run):
            ok, msg = eda.check_submodules_clean_and_aligned(self.repo)
            self.assertFalse(ok)
            self.assertIn("no coincide con el puntero", msg)

    def test_verification_dirty_submodule_worktree(self):
        def fake_run(cmd, **kwargs):
            if cmd == ["git", "submodule", "status", "--recursive"]:
                return subprocess.CompletedProcess(cmd, 0, stdout=" cfc0e22 IHP-Open-PDK (v1.0)\n", stderr="")
            if cmd[:3] == ["git", "-C", str(self.repo / "IHP-Open-PDK")]:
                return subprocess.CompletedProcess(cmd, 0, stdout="?? new_untracked_file.sch\n", stderr="")
            return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

        with patch("subprocess.run", side_effect=fake_run):
            ok, msg = eda.check_submodules_clean_and_aligned(self.repo)
            self.assertFalse(ok)
            self.assertIn("cambios locales no confirmados", msg)

    def test_open_aborts_on_unaligned_submodule(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(False, "Submódulo desalineado")):
            code = eda.cmd_open("design/schematic/GROTDC.sch", self.repo)
            self.assertEqual(code, 1)

    def test_netlist_aborts_on_unaligned_submodule(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(False, "Submódulo desalineado")):
            code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
            self.assertEqual(code, 1)


class TestDistroboxReexec(unittest.TestCase):
    def test_reexec_on_host_when_not_native(self):
        clean_env = {k: v for k, v in os.environ.items() if k not in ("EDA_NATIVE", "EDA_CONTAINER_ACTIVE", "EDA_CONTAINER")}
        with patch.dict(os.environ, clean_env, clear=True):
            with patch("os.path.exists", return_value=False):
                with patch("subprocess.run", return_value=subprocess.CompletedProcess([], 0)) as mock_run:
                    code = eda.main(["doctor"])
                    self.assertEqual(code, 0)
                    mock_run.assert_called_once()
                    call_cmd = mock_run.call_args[0][0]
                    self.assertEqual(call_cmd[:5], ["distrobox", "enter", "iic-osic-tools2", "--", "python3"])
                    self.assertIn("--native", call_cmd)
                    self.assertIn("doctor", call_cmd)

    def test_custom_container_name_env(self):
        clean_env = {"EDA_CONTAINER": "my-special-box"}
        with patch.dict(os.environ, clean_env, clear=True):
            with patch("os.path.exists", return_value=False):
                with patch("subprocess.run", return_value=subprocess.CompletedProcess([], 0)) as mock_run:
                    code = eda.main(["doctor"])
                    self.assertEqual(code, 0)
                    call_cmd = mock_run.call_args[0][0]
                    self.assertEqual(call_cmd[2], "my-special-box")

    def test_no_reexec_with_native_flag(self):
        with patch("eda.cmd_doctor", return_value=0) as mock_doc:
            with patch("eda.get_repo_root", return_value=Path("/fake/repo")):
                with patch("subprocess.run") as mock_run:
                    code = eda.main(["--native", "doctor"])
                    self.assertEqual(code, 0)
                    mock_doc.assert_called_once()
                    mock_run.assert_not_called()

    def test_no_reexec_with_eda_native_env(self):
        with patch.dict(os.environ, {"EDA_NATIVE": "1"}):
            with patch("eda.cmd_doctor", return_value=0) as mock_doc:
                with patch("eda.get_repo_root", return_value=Path("/fake/repo")):
                    with patch("subprocess.run") as mock_run:
                        code = eda.main(["doctor"])
                        self.assertEqual(code, 0)
                        mock_doc.assert_called_once()
                        mock_run.assert_not_called()

    def test_setup_stays_on_host_never_reexecs(self):
        clean_env = {k: v for k, v in os.environ.items() if k not in ("EDA_NATIVE", "EDA_CONTAINER_ACTIVE")}
        with patch.dict(os.environ, clean_env, clear=True):
            with patch("os.path.exists", return_value=False):
                with patch("eda.cmd_setup", return_value=0) as mock_setup:
                    with patch("eda.get_repo_root", return_value=Path("/fake/repo")):
                        with patch("subprocess.run") as mock_run:
                            code = eda.main(["setup"])
                            self.assertEqual(code, 0)
                            mock_setup.assert_called_once()
                            mock_run.assert_not_called()


class TestPathSecurityAndValidation(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_reject_archive_path(self):
        resolved, err = eda.resolve_schematic("archive/legacy/GROTDC.sch", self.repo)
        self.assertIsNone(resolved)
        self.assertIn("archive", err)

    def test_reject_archive_traversal(self):
        resolved, err = eda.resolve_schematic("design/../archive/legacy/GROTDC.sch", self.repo)
        self.assertIsNone(resolved)
        self.assertIn("archive", err)

    def test_reject_traversal_outside_repo(self):
        resolved, err = eda.resolve_schematic("design/../../something.sch", self.repo)
        self.assertIsNone(resolved)

    def test_reject_nonexistent_file(self):
        resolved, err = eda.resolve_schematic("design/schematic/missing.sch", self.repo)
        self.assertIsNone(resolved)
        self.assertIn("no existe", err)

    def test_reject_non_sch_file(self):
        resolved, err = eda.resolve_schematic("design/other.txt", self.repo)
        self.assertIsNone(resolved)
        self.assertIn(".sch", err)

    def test_accept_verification_path(self):
        resolved, err = eda.resolve_schematic("verification/testbenches/tb_AND.sch", self.repo)
        self.assertEqual(err, "")
        self.assertEqual(resolved, (self.repo / "verification/testbenches/tb_AND.sch").resolve())


class TestLvsOptions(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_lvs_sets_lvs_preinit(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            captured_cmd = []

            def fake_run(cmd, **kwargs):
                nonlocal captured_cmd
                captured_cmd = cmd
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", True, self.repo)
                self.assertEqual(code, 0)
                self.assertIn("--preinit", captured_cmd)
                idx = captured_cmd.index("--preinit")
                self.assertIn("set lvs_netlist 1; set spiceprefix 0", captured_cmd[idx + 1])

    def test_non_lvs_sets_zero_preinit(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            captured_cmd = []

            def fake_run(cmd, **kwargs):
                nonlocal captured_cmd
                captured_cmd = cmd
                out_f = self.repo / "runs" / "GROTDC" / "GROTDC.spice"
                out_f.write_text(".subckt GROTDC\n.ends\n", encoding="utf-8")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_netlist("design/schematic/GROTDC.sch", False, self.repo)
                self.assertEqual(code, 0)
                self.assertIn("--preinit", captured_cmd)
                idx = captured_cmd.index("--preinit")
                self.assertIn("set lvs_netlist 0", captured_cmd[idx + 1])


class TestGuiOpenCommand(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_gui_open_has_no_quit_no_x(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            captured_cmd = []

            def fake_run(cmd, **kwargs):
                nonlocal captured_cmd
                captured_cmd = cmd
                return subprocess.CompletedProcess(cmd, 0)

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_open("design/schematic/GROTDC.sch", self.repo)
                self.assertEqual(code, 0)
                self.assertNotIn("-q", captured_cmd)
                self.assertNotIn("-x", captured_cmd)
                self.assertIn("--rcfile", captured_cmd)


class TestDoctorCommand(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.tmp_path = Path(self.tmp.name)
        self.repo = create_mock_repo(self.tmp_path)

    def tearDown(self):
        self.tmp.cleanup()

    def test_doctor_success_when_all_clean(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run(cmd, **kwargs):
                if cmd == ["xschem", "--version"]:
                    return subprocess.CompletedProcess(cmd, 0, stdout="XSCHEM V3.4.8RC\n", stderr="")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_doctor(self.repo)
                self.assertEqual(code, 0)

    def test_doctor_fails_when_xschem_missing(self):
        with patch("eda.check_submodules_clean_and_aligned", return_value=(True, "")):
            def fake_run(cmd, **kwargs):
                if cmd == ["xschem", "--version"]:
                    raise FileNotFoundError("xschem not found")
                return subprocess.CompletedProcess(cmd, 0, stdout="", stderr="")

            with patch("subprocess.run", side_effect=fake_run):
                code = eda.cmd_doctor(self.repo)
                self.assertEqual(code, 1)


if __name__ == "__main__":
    unittest.main()
