v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 -880 1840 -480 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=10
node=B0}
B 2 1040 -1300 1840 -900 {flags=graph
y1=-0.46597222
y2=1.4340278
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="11 10"
node="RESET
CLK"}
B 2 1870 -1300 2670 -900 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="10 11"
node="VCLK1
RESET"}
B 2 1870 -880 2670 -480 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=10
node=B1
y1=-0.4}
N 450 -470 450 -440 {lab=VSS}
N 340 -520 380 -520 {lab=RESET}
N 340 -560 380 -560 {lab=CLK}
N 60 -480 60 -450 {lab=GND}
N 60 -580 60 -540 {lab=VSS}
N 60 -640 60 -610 {lab=VSS}
N 60 -800 60 -770 {lab=VSS}
N 60 -740 60 -700 {lab=CLK}
N 60 -900 60 -860 {lab=RESET}
N 130 -480 130 -450 {lab=VSS}
N 130 -580 130 -540 {lab=VDD}
N 450 -690 450 -650 {lab=VDD}
N 360 -600 380 -600 {lab=B0}
N 820 -460 820 -430 {lab=VSS}
N 710 -510 750 -510 {lab=RESET}
N 730 -590 750 -590 {lab=B1}
N 820 -680 820 -640 {lab=VDD}
N 730 -750 980 -750 {lab=B1}
N 890 -510 980 -510 {lab=B1}
N 520 -600 650 -600 {lab=VCLK1}
N 650 -600 650 -550 {lab=VCLK1}
N 650 -550 750 -550 {lab=VCLK1}
N 730 -750 730 -590 {lab=B1}
N 980 -750 980 -510 {lab=B1}
N 980 -810 980 -750 {lab=B1}
N 520 -520 570 -520 {lab=B0}
N 360 -740 360 -600 {lab=B0}
N 340 -600 360 -600 {lab=B0}
N 360 -740 570 -740 {lab=B0}
N 570 -740 570 -520 {lab=B0}
C {/foss/designs/GRO-TDC/std_cells/FF_D.sym} 280 -450 0 0 {name=x1}
C {vsource.sym} 60 -510 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 60 -670 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 5n, 10n)" savecurrent=false}
C {gnd.sym} 60 -450 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 60 -580 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -440 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -610 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -770 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -740 0 1 {name=p7 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 60 -900 0 1 {name=p8 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 340 -600 0 0 {name=p9 sig_type=std_logic lab=B0}
C {lab_wire.sym} 340 -560 0 0 {name=p10 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 340 -520 0 0 {name=p11 sig_type=std_logic lab=RESET
}
C {vsource.sym} 130 -510 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 130 -450 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 -580 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 450 -690 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/FF_D.sym} 650 -440 0 0 {name=x2}
C {lab_wire.sym} 820 -430 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 710 -510 0 0 {name=p18 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 820 -680 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 980 -810 0 0 {name=p20 sig_type=std_logic lab=B1}
C {vsource.sym} 60 -830 0 0 {name=V4 value="dc 0 ac 0 pulse(0, 1.2, 5n, 1p, 1p, 2.5n, 0)" savecurrent=false}
C {devices/code_shown.sym} 35 -1290 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.control
save all 
tran 50p 100n
let clk0 = v(CLK)
let clk1 = v(VCLK1)
let VB0 = v(B0)
let VB1 = v(B1)

*plot VB0
*plot VB1
*plot clk0
*plot clk1

write counter_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 475 -985 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter_tb.raw tran"
}
C {devices/launcher.sym} 475 -1045 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 40 -970 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 650 -600 0 1 {name=p3 sig_type=std_logic lab=VCLK1}
