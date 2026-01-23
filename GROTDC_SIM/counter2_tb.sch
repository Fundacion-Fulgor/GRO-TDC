v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 920 -1320 1720 -920 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="12 4"
node="B0
B1"}
B 2 920 -1740 1720 -1340 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=CLK}
B 2 1750 -1740 2550 -1340 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=RESET}
B 2 1750 -1320 2550 -920 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="12 4"
node="B2
B3"
y1=-0.4}
B 2 920 -900 1720 -500 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="7 4"
node="B3
B4"}
B 2 1750 -900 2550 -500 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color="7 4"
node="B4
B5"}
B 2 920 -480 1720 -80 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


color=11
node=D[0]
y1=-0.5
y2=1.5}
B 2 1750 -480 2550 -80 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.6e-08
x2=7.36e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color=11
node=D[5]}
N 120 -450 120 -420 {lab=GND}
N 120 -550 120 -510 {lab=VSS}
N 120 -610 120 -580 {lab=VSS}
N 120 -770 120 -740 {lab=VSS}
N 120 -710 120 -670 {lab=CLK}
N 190 -450 190 -420 {lab=VSS}
N 190 -550 190 -510 {lab=VDD}
N 480 -700 520 -700 {lab=CLK}
N 480 -640 520 -640 {lab=RESET}
N 600 -800 600 -760 {lab=VDD}
N 600 -580 600 -540 {lab=VSS}
N 660 -720 710 -720 {lab=B0}
N 660 -700 710 -700 {lab=B1}
N 660 -680 710 -680 {lab=B2}
N 660 -660 710 -660 {lab=B3}
N 660 -640 710 -640 {lab=B4}
N 660 -620 710 -620 {lab=B5}
N 440 -330 480 -330 {lab=CLK}
N 440 -310 480 -310 {lab=RESET}
N 600 -270 600 -230 {lab=VSS}
N 600 -490 600 -450 {lab=VDD}
N 440 -410 480 -410 {lab=B5,B4,B3,B2,B1,B0}
N 440 -390 480 -390 {lab=VSS}
N 440 -370 480 -370 {lab=VSS}
N 720 -380 770 -380 {lab=D[5:0]}
N 120 -1000 120 -960 {lab=RESET}
N 120 -900 120 -830 {lab=#net1}
C {vsource.sym} 120 -480 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 120 -640 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 5n, 10n)" savecurrent=false}
C {gnd.sym} 120 -420 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 120 -550 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -580 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -740 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -710 0 1 {name=p7 sig_type=std_logic lab=CLK
}
C {vsource.sym} 190 -480 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 190 -420 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -550 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} 120 -800 0 0 {name=V4 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 1n, 0)" savecurrent=false}
C {devices/code_shown.sym} 85 -1570 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.control
save all 
tran 150p 640n
*let clk0 = v(CLK)
*let VB0 = v(B0)
*let VB1 = v(B1)
*let VB2 = v(B2)
*let VB3 = v(B3)
*let VB4 = v(B4)
*let VB5 = v(B5)

*plot clk0
*plot VB0
*plot VB1
*plot VB2
*plot VB3
*plot VB4
*plot VB5

write counter2_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 535 -1625 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter2_tb.raw tran"
}
C {devices/launcher.sym} 535 -1685 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 80 -1670 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {/foss/designs/GRO-TDC/std_cells/6bits_counter.sym} 490 -570 0 0 {name=x3}
C {lab_wire.sym} 480 -700 0 0 {name=p6 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 480 -640 0 0 {name=p16 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 600 -800 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 600 -540 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 710 -720 0 1 {name=p2 sig_type=std_logic lab=B0
}
C {lab_wire.sym} 710 -700 0 1 {name=p3 sig_type=std_logic lab=B1
}
C {lab_wire.sym} 710 -680 0 1 {name=p9 sig_type=std_logic lab=B2
}
C {lab_wire.sym} 710 -660 0 1 {name=p10 sig_type=std_logic lab=B3
}
C {lab_wire.sym} 710 -640 0 1 {name=p11 sig_type=std_logic lab=B4
}
C {lab_wire.sym} 710 -620 0 1 {name=p14 sig_type=std_logic lab=B5
}
C {/foss/designs/GRO-TDC/std_cells/Counters_regs_6bits.sym} 380 -180 0 0 {name=x1}
C {lab_wire.sym} 440 -310 0 0 {name=p15 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 440 -330 0 0 {name=p18 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 600 -230 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -490 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 440 -410 0 0 {name=p22 sig_type=std_logic lab=B5,B4,B3,B2,B1,B0
}
C {lab_wire.sym} 440 -390 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -370 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 770 -380 0 1 {name=p25 sig_type=std_logic lab=D[5:0]
}
C {lab_wire.sym} 120 -1000 0 1 {name=p27 sig_type=std_logic lab=RESET
}
C {vsource.sym} 120 -930 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 550n, 1p, 1p, 100n, 0)" savecurrent=false}
