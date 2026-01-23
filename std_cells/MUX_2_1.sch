v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 530 -430 530 -360 {lab=#net1}
N 610 -550 680 -550 {lab=VOUT}
N 610 -320 680 -320 {lab=VOUT}
N 680 -430 750 -430 {lab=VOUT}
N 680 -430 680 -320 {lab=VOUT}
N 530 -280 530 -230 {lab=VS}
N 530 -640 530 -590 {lab=VS}
N 470 -640 470 -590 {lab=VDD}
N 470 -280 470 -230 {lab=VSS}
N 680 -550 680 -430 {lab=VOUT}
N 470 -510 470 -460 {lab=VSS}
N 470 -410 470 -360 {lab=VDD}
N 400 -430 530 -430 {lab=#net1}
N 530 -510 530 -430 {lab=#net1}
N 210 -430 280 -430 {lab=VS}
N 330 -490 330 -470 {lab=VDD}
N 330 -390 330 -370 {lab=VSS}
N 230 -610 230 -590 {lab=VDD}
N 230 -510 230 -490 {lab=VSS}
N 380 -550 450 -550 {lab=#net2}
N 120 -550 180 -550 {lab=VINA}
N 230 -380 230 -360 {lab=VDD}
N 230 -280 230 -260 {lab=VSS}
N 380 -320 450 -320 {lab=#net3}
N 120 -320 180 -320 {lab=VINB}
N 610 -750 680 -750 {lab=VOUT}
N 680 -750 680 -550 {lab=VOUT}
N 380 -750 450 -750 {lab=#net2}
N 380 -750 380 -550 {lab=#net2}
N 300 -550 380 -550 {lab=#net2}
N 680 -320 680 -120 {lab=VOUT}
N 610 -120 680 -120 {lab=VOUT}
N 380 -120 450 -120 {lab=#net3}
N 380 -320 380 -120 {lab=#net3}
N 470 -840 470 -790 {lab=VDD}
N 470 -710 470 -660 {lab=VSS}
N 470 -210 470 -160 {lab=VDD}
N 470 -80 470 -30 {lab=VSS}
N 530 -80 530 -30 {lab=VSS}
N 530 -840 530 -790 {lab=VDD}
N 530 -710 530 -660 {lab=VSS}
N 530 -210 530 -160 {lab=VDD}
N 300 -320 380 -320 {lab=#net3}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/tg_custom.sym} 530 -550 0 0 {name=x1}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/tg_custom.sym} 530 -320 0 0 {name=x2}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/inv.sym} 240 -290 0 0 {name=x3}
C {opin.sym} 750 -430 0 0 {name=p2 lab=VOUT}
C {ipin.sym} 120 -550 0 0 {name=p3 lab=VINA}
C {ipin.sym} 120 -320 0 0 {name=p1 lab=VINB}
C {ipin.sym} 210 -430 0 0 {name=p4 lab=VS}
C {lab_wire.sym} 530 -230 2 0 {name=p6 sig_type=std_logic lab=VS}
C {lab_wire.sym} 530 -640 2 0 {name=p5 sig_type=std_logic lab=VS}
C {iopin.sym} 470 -640 2 0 {name=p7 lab=VDD}
C {iopin.sym} 470 -230 2 0 {name=p8 lab=VSS}
C {lab_wire.sym} 470 -460 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -410 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 330 -490 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 330 -370 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/inv_PI.sym} 140 -410 0 0 {name=x4}
C {lab_wire.sym} 230 -610 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -490 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/inv_PI.sym} 140 -180 0 0 {name=x5}
C {lab_wire.sym} 230 -380 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -260 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/tg_custom.sym} 530 -750 0 0 {name=x6[3:0]
}
C {/foss/designs/PhaseInterpolator/Custom_std_cells/tg_custom.sym} 530 -120 0 0 {name=x7[3:0]
}
C {lab_wire.sym} 470 -840 2 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -660 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -210 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -30 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 530 -30 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 530 -840 2 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -660 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 530 -210 2 0 {name=p24 sig_type=std_logic lab=VDD}
