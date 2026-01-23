v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 770 -480 1570 -80 {flags=graph
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
color=11
node=AB_N}
B 2 780 -900 1580 -500 {flags=graph
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
color=11
node=B}
B 2 780 -1320 1580 -920 {flags=graph
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
color=11
node=A}
N 180 -820 180 -790 {lab=GND}
N 180 -920 180 -880 {lab=VSS}
N 60 -810 60 -780 {lab=VSS}
N 60 -910 60 -870 {lab=A}
N 300 -820 300 -790 {lab=VSS}
N 300 -920 300 -880 {lab=VDD}
N 60 -750 60 -710 {lab=B}
N 510 -830 510 -810 {lab=VSS}
N 510 -950 510 -930 {lab=VDD}
N 60 -650 60 -620 {lab=VSS}
N 420 -900 460 -900 {lab=A}
N 420 -860 460 -860 {lab=B}
N 580 -880 620 -880 {lab=AB_N}
C {vsource.sym} 180 -850 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 60 -840 0 0 {name=V3 value="dc \{A\}" savecurrent=false}
C {gnd.sym} 180 -790 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 180 -920 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -780 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -910 0 1 {name=p7 sig_type=std_logic lab=A
}
C {vsource.sym} 300 -850 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 300 -790 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -920 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 55 -1310 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.param A=1
.param B=1


.control
save all 
tran 0.5n 100n
write counter_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 465 -1155 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter_tb.raw tran"
}
C {devices/launcher.sym} 465 -1225 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 400 -1300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {vsource.sym} 60 -680 0 0 {name=V2 value="dc \{B\}" savecurrent=false}
C {lab_wire.sym} 60 -620 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -750 0 1 {name=p16 sig_type=std_logic lab=B
}
C {lab_wire.sym} 510 -810 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -950 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 620 -880 0 1 {name=p2 sig_type=std_logic lab=AB_N}
C {lab_wire.sym} 420 -900 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 420 -860 0 0 {name=p5 sig_type=std_logic lab=B}
C {XOR.sym} 420 -800 0 0 {name=x1}
