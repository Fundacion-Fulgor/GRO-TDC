v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 960 -1240 1760 -840 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=10
node=S[1]}
B 2 960 -1660 1760 -1260 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=S[0]}
B 2 1820 -1220 2620 -820 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=S[4]}
B 2 1820 -800 2620 -400 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=10
node=S[5]
y1=-0.4}
B 2 960 -820 1760 -420 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=7
node=S[2]}
B 2 960 -350 1760 50 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color=7
node=COUT}
B 2 1820 -1660 2620 -1260 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


color=11
node=S[3]}
N -40 -880 -40 -850 {lab=GND}
N -40 -980 -40 -940 {lab=VSS}
N 120 -700 120 -670 {lab=VSS}
N 120 -400 120 -360 {lab=B[0]}
N 120 -800 120 -760 {lab=A[0]}
N 30 -880 30 -850 {lab=VSS}
N 30 -980 30 -940 {lab=VDD}
N 480 -930 520 -930 {lab=CIN}
N 640 -1110 640 -1070 {lab=VDD}
N 640 -890 640 -850 {lab=VSS}
N 760 -1000 810 -1000 {lab=S[5:0]}
N 760 -960 810 -960 {lab=COUT}
N 480 -980 520 -980 {lab=B[5:0]}
N 480 -1030 520 -1030 {lab=A[5:0]}
N 360 -700 360 -670 {lab=VSS}
N 360 -800 360 -760 {lab=A[1]}
N 600 -700 600 -670 {lab=VSS}
N 600 -800 600 -760 {lab=A[2]}
N 120 -500 120 -470 {lab=VSS}
N 120 -600 120 -560 {lab=A[3]}
N 360 -500 360 -470 {lab=VSS}
N 360 -600 360 -560 {lab=A[4]}
N 600 -500 600 -470 {lab=VSS}
N 600 -600 600 -560 {lab=A[5]}
N 360 -400 360 -360 {lab=B[1]}
N 600 -400 600 -360 {lab=B[2]}
N 120 -220 120 -180 {lab=B[3]}
N 360 -220 360 -180 {lab=B[4]}
N 600 -220 600 -180 {lab=B[5]}
N -40 -700 -40 -670 {lab=VSS}
N -40 -800 -40 -760 {lab=CIN}
N 120 -300 120 -270 {lab=VSS}
N 360 -300 360 -270 {lab=VSS}
N 600 -300 600 -270 {lab=VSS}
N 120 -120 120 -90 {lab=VSS}
N 360 -120 360 -90 {lab=VSS}
N 600 -120 600 -90 {lab=VSS}
C {vsource.sym} -40 -910 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 120 -330 0 0 {name=V3 value="dc \{B0\}" savecurrent=false
lab=B[0]}
C {gnd.sym} -40 -850 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -40 -980 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -670 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -400 0 1 {name=p7 sig_type=std_logic lab=B[0]
}
C {lab_wire.sym} 120 -800 0 1 {name=p8 sig_type=std_logic lab=A[0]
}
C {vsource.sym} 30 -910 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 30 -850 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 -980 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} 120 -730 0 0 {name=V4 value="dc \{A0\}" savecurrent=false}
C {devices/code_shown.sym} 55 -1660 0 0 {name=NGSPICE only_toplevel=true 
value="

.param CI=0
.param A0=1
.param A1=1
.param A2=1
.param A3=1
.param A4=1
.param A5=1

.param B0=1
.param B1=1
.param B2=1
.param B3=1
.param B4=1
.param B5=1


.param temp=65
.control
save all 
tran 500p 30n
*let sum0 = v(S[0])
*let sum1 = v(S[1])
*let sum2 = v(S[2])
*let sum3 = v(S[3])
*let sum4 = v(S[4])
*let sum5 = v(S[5])

*print sum0 sum1 sum2 sum3 sum4 sum5

write counter2_tb.raw
*set appendwrite
.endc

"}
C {devices/launcher.sym} 535 -1425 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter2_tb.raw tran"
}
C {devices/launcher.sym} 535 -1505 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 480 -1660 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 480 -930 0 0 {name=p6 sig_type=std_logic lab=CIN
}
C {lab_wire.sym} 640 -1110 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -850 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -1000 0 1 {name=p2 sig_type=std_logic lab=S[5:0]
}
C {lab_wire.sym} 810 -960 0 1 {name=p3 sig_type=std_logic lab=COUT
}
C {/foss/designs/GRO-TDC/std_cells/Counter_FA_6bits.sym} 500 -890 0 0 {name=x1}
C {lab_wire.sym} 480 -980 0 0 {name=p9 sig_type=std_logic lab=B[5:0]
}
C {lab_wire.sym} 480 -1030 0 0 {name=p10 sig_type=std_logic lab=A[5:0]
}
C {lab_wire.sym} 360 -670 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -800 0 1 {name=p14 sig_type=std_logic lab=A[1]
}
C {vsource.sym} 360 -730 0 0 {name=V2 value="dc \{A1\}" savecurrent=false}
C {lab_wire.sym} 600 -670 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -800 0 1 {name=p16 sig_type=std_logic lab=A[2]
}
C {vsource.sym} 600 -730 0 0 {name=V6 value="dc \{A2\}" savecurrent=false}
C {lab_wire.sym} 120 -470 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -600 0 1 {name=p19 sig_type=std_logic lab=A[3]
}
C {vsource.sym} 120 -530 0 0 {name=V7 value="dc \{A3\}" savecurrent=false}
C {lab_wire.sym} 360 -470 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -600 0 1 {name=p22 sig_type=std_logic lab=A[4]
}
C {vsource.sym} 360 -530 0 0 {name=V8 value="dc \{A4\}" savecurrent=false}
C {lab_wire.sym} 600 -470 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -600 0 1 {name=p24 sig_type=std_logic lab=A[5]
}
C {vsource.sym} 600 -530 0 0 {name=V9 value="dc \{A5\}" savecurrent=false}
C {vsource.sym} 360 -330 0 0 {name=V10 value="dc \{B1\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} 360 -400 0 1 {name=p26 sig_type=std_logic lab=B[1]
}
C {vsource.sym} 600 -330 0 0 {name=V11 value="dc \{B2\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} 600 -400 0 1 {name=p28 sig_type=std_logic lab=B[2]
}
C {vsource.sym} 120 -150 0 0 {name=V12 value="dc \{B3\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} 120 -220 0 1 {name=p30 sig_type=std_logic lab=B[3]
}
C {vsource.sym} 360 -150 0 0 {name=V13 value="dc \{B4\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} 360 -220 0 1 {name=p32 sig_type=std_logic lab=B[4]
}
C {vsource.sym} 600 -150 0 0 {name=V14 value="dc \{B5\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} 600 -220 0 1 {name=p34 sig_type=std_logic lab=B[5]
}
C {lab_wire.sym} -40 -670 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -40 -800 0 1 {name=p36 sig_type=std_logic lab=CIN
}
C {vsource.sym} -40 -730 0 0 {name=V15 value="dc \{CI\}" savecurrent=false}
C {lab_wire.sym} 120 -270 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -270 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -270 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -90 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 360 -90 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 600 -90 0 0 {name=p33 sig_type=std_logic lab=VSS}
