v {xschem version=3.4.8RC file_version=1.2}
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
node=S2[1]}
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
node=S2[0]}
B 2 1810 -1660 2610 -1260 {flags=graph
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
node=S2[4]}
B 2 1810 -1240 2610 -840 {flags=graph
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
node=S2[5]
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
node=S2[2]}
B 2 1810 -360 2610 40 {flags=graph
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
node=COUT2}
B 2 960 -360 1760 40 {flags=graph
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
node=S2[3]}
B 2 1810 -790 2610 -390 {flags=graph
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
node=S2[6]
y1=-0.4}
N -290 -1500 -290 -1470 {lab=GND}
N -290 -1600 -290 -1560 {lab=VSS}
N -790 -750 -790 -720 {lab=VSS}
N -790 -450 -790 -410 {lab=B[0]}
N -790 -850 -790 -810 {lab=A[0]}
N -220 -1500 -220 -1470 {lab=VSS}
N -220 -1600 -220 -1560 {lab=VDD}
N -550 -750 -550 -720 {lab=VSS}
N -550 -850 -550 -810 {lab=A[1]}
N -310 -750 -310 -720 {lab=VSS}
N -310 -850 -310 -810 {lab=A[2]}
N -790 -550 -790 -520 {lab=VSS}
N -790 -650 -790 -610 {lab=A[3]}
N -550 -550 -550 -520 {lab=VSS}
N -550 -650 -550 -610 {lab=A[4]}
N -310 -550 -310 -520 {lab=VSS}
N -310 -650 -310 -610 {lab=A[5]}
N -550 -450 -550 -410 {lab=B[1]}
N -310 -450 -310 -410 {lab=B[2]}
N -790 -270 -790 -230 {lab=B[3]}
N -550 -270 -550 -230 {lab=B[4]}
N -310 -270 -310 -230 {lab=B[5]}
N -290 -1320 -290 -1290 {lab=VSS}
N -290 -1420 -290 -1380 {lab=CIN}
N -790 -350 -790 -320 {lab=VSS}
N -550 -350 -550 -320 {lab=VSS}
N -310 -350 -310 -320 {lab=VSS}
N -790 -170 -790 -140 {lab=VSS}
N -550 -170 -550 -140 {lab=VSS}
N -310 -170 -310 -140 {lab=VSS}
N 180 -280 180 -260 {lab=VDD}
N 620 -280 620 -260 {lab=VDD}
N 180 -80 180 -60 {lab=VSS}
N 620 -80 620 -60 {lab=VSS}
N 740 -190 780 -190 {lab=S2[6:0]}
N 740 -150 780 -150 {lab=COUT2}
N 20 -220 60 -220 {lab=A[5:0]}
N 20 -170 60 -170 {lab=B[5:0]}
N 20 -120 60 -120 {lab=CIN}
N 300 -190 320 -190 {lab=S1[5:0]}
N 300 -150 320 -150 {lab=COUT1}
N 480 -120 500 -120 {lab=VSS}
N 480 -170 500 -170 {lab=VSS,C[5:0]}
N 480 -220 500 -220 {lab=COUT1,S1[5:0]}
C {vsource.sym} -290 -1530 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -790 -380 0 0 {name=V3 value="dc \{B0\}" savecurrent=false
lab=B[0]}
C {gnd.sym} -290 -1470 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -290 -1600 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -790 -720 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -790 -450 0 1 {name=p7 sig_type=std_logic lab=B[0]
}
C {lab_wire.sym} -790 -850 0 1 {name=p8 sig_type=std_logic lab=A[0]
}
C {vsource.sym} -220 -1530 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} -220 -1470 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -220 -1600 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} -790 -780 0 0 {name=V4 value="dc \{A0\}" savecurrent=false}
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
C {lab_wire.sym} -550 -720 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -550 -850 0 1 {name=p14 sig_type=std_logic lab=A[1]
}
C {vsource.sym} -550 -780 0 0 {name=V2 value="dc \{A1\}" savecurrent=false}
C {lab_wire.sym} -310 -720 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -310 -850 0 1 {name=p16 sig_type=std_logic lab=A[2]
}
C {vsource.sym} -310 -780 0 0 {name=V6 value="dc \{A2\}" savecurrent=false}
C {lab_wire.sym} -790 -520 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -790 -650 0 1 {name=p19 sig_type=std_logic lab=A[3]
}
C {vsource.sym} -790 -580 0 0 {name=V7 value="dc \{A3\}" savecurrent=false}
C {lab_wire.sym} -550 -520 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -550 -650 0 1 {name=p22 sig_type=std_logic lab=A[4]
}
C {vsource.sym} -550 -580 0 0 {name=V8 value="dc \{A4\}" savecurrent=false}
C {lab_wire.sym} -310 -520 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -310 -650 0 1 {name=p24 sig_type=std_logic lab=A[5]
}
C {vsource.sym} -310 -580 0 0 {name=V9 value="dc \{A5\}" savecurrent=false}
C {vsource.sym} -550 -380 0 0 {name=V10 value="dc \{B1\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} -550 -450 0 1 {name=p26 sig_type=std_logic lab=B[1]
}
C {vsource.sym} -310 -380 0 0 {name=V11 value="dc \{B2\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} -310 -450 0 1 {name=p28 sig_type=std_logic lab=B[2]
}
C {vsource.sym} -790 -200 0 0 {name=V12 value="dc \{B3\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} -790 -270 0 1 {name=p30 sig_type=std_logic lab=B[3]
}
C {vsource.sym} -550 -200 0 0 {name=V13 value="dc \{B4\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} -550 -270 0 1 {name=p32 sig_type=std_logic lab=B[4]
}
C {vsource.sym} -310 -200 0 0 {name=V14 value="dc \{B5\}" savecurrent=false
lab=B[0]}
C {lab_wire.sym} -310 -270 0 1 {name=p34 sig_type=std_logic lab=B[5]
}
C {lab_wire.sym} -290 -1290 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -290 -1420 0 1 {name=p36 sig_type=std_logic lab=CIN
}
C {vsource.sym} -290 -1350 0 0 {name=V15 value="dc \{CI\}" savecurrent=false}
C {lab_wire.sym} -790 -320 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -550 -320 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -310 -320 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -790 -140 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -550 -140 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -310 -140 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {Counter_FA_6bits.sym} 40 -80 0 0 {name=x7
}
C {Counter_FA_7bits.sym} 240 0 0 0 {name=x8
}
C {lab_wire.sym} 620 -60 0 0 {name=p44 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 180 -60 0 0 {name=p45 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 620 -280 0 0 {name=p46 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 180 -280 0 0 {name=p47 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 480 -220 0 0 {name=p48 sig_type=std_logic lab=COUT1,S1[5:0]
}
C {lab_wire.sym} 480 -170 0 0 {name=p51 sig_type=std_logic lab=VSS,C[5:0]
}
C {lab_wire.sym} 20 -120 0 0 {name=p52 sig_type=std_logic lab=CIN
}
C {lab_wire.sym} 480 -120 0 0 {name=p53 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 320 -190 0 1 {name=p54 sig_type=std_logic lab=S1[5:0]
}
C {lab_wire.sym} 320 -150 0 1 {name=p55 sig_type=std_logic lab=COUT1
}
C {lab_wire.sym} 780 -150 0 1 {name=p56 sig_type=std_logic lab=COUT2
}
C {lab_wire.sym} 780 -190 0 1 {name=p57 sig_type=std_logic lab=S2[6:0]
}
C {lab_wire.sym} 20 -170 0 0 {name=p49 sig_type=std_logic lab=B[5:0]
}
C {lab_wire.sym} 20 -220 0 0 {name=p50 sig_type=std_logic lab=A[5:0]
}
