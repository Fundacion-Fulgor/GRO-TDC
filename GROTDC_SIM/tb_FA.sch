v {xschem version=3.4.8RC file_version=1.2}
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
x1=0
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=17
node=B}
B 2 920 -1740 1720 -1340 {flags=graph
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
color=8
node=A}
B 2 1750 -1740 2550 -1340 {flags=graph
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
color=8
node=S}
B 2 1750 -1320 2550 -920 {flags=graph
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
color=17
node=COUT
y1=-0.4}
B 2 920 -900 1720 -500 {flags=graph
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
color=18
node=CIN}
P 4 1 2260 -500 {}
N 120 -980 120 -950 {lab=GND}
N 120 -1080 120 -1040 {lab=VSS}
N 120 -700 120 -670 {lab=VSS}
N 120 -800 120 -760 {lab=A}
N 190 -980 190 -950 {lab=VSS}
N 190 -1080 190 -1040 {lab=VDD}
N 640 -1110 640 -1070 {lab=VDD}
N 640 -890 640 -850 {lab=VSS}
N 760 -1000 810 -1000 {lab=S}
N 760 -960 810 -960 {lab=COUT}
N 220 -700 220 -670 {lab=VSS}
N 220 -800 220 -760 {lab=B}
N 320 -700 320 -670 {lab=VSS}
N 320 -800 320 -760 {lab=CIN}
N 500 -960 520 -960 {lab=CIN}
N 480 -980 520 -980 {lab=B}
N 460 -1000 520 -1000 {lab=A}
C {vsource.sym} 120 -1010 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} 120 -950 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 120 -1080 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -670 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -800 0 1 {name=p8 sig_type=std_logic lab=A
}
C {vsource.sym} 190 -1010 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 190 -950 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -1080 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} 120 -730 0 0 {name=V4 value="dc \{AB\}" savecurrent=false}
C {devices/code_shown.sym} 85 -1570 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.param AB=1
.param BB=0
.param CINB=0

.control
save all 
tran 0.5n 100n
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
C {lab_wire.sym} 500 -960 0 0 {name=p6 sig_type=std_logic lab=CIN
}
C {lab_wire.sym} 640 -1110 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -850 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -1000 0 1 {name=p2 sig_type=std_logic lab=S
}
C {lab_wire.sym} 810 -960 0 1 {name=p3 sig_type=std_logic lab=COUT
}
C {lab_wire.sym} 480 -980 0 0 {name=p9 sig_type=std_logic lab=B
}
C {lab_wire.sym} 460 -1000 0 0 {name=p10 sig_type=std_logic lab=A
}
C {lab_wire.sym} 220 -670 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 220 -800 0 1 {name=p14 sig_type=std_logic lab=B
}
C {vsource.sym} 220 -730 0 0 {name=V2 value="dc \{BB\}" savecurrent=false}
C {lab_wire.sym} 320 -670 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -800 0 1 {name=p16 sig_type=std_logic lab=CIN
}
C {vsource.sym} 320 -730 0 0 {name=V6 value="dc \{CINB\}" savecurrent=false}
C {FA.sym} 500 -860 0 0 {name=x1}
