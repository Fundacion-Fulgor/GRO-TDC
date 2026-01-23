v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1050 -900 1850 -500 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-08
x2=9e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VOUT}
B 2 1050 -1320 1850 -920 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-08
x2=9e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VIN}
N 80 -940 80 -900 {lab=VSS}
N 300 -840 300 -810 {lab=VSS}
N 300 -940 300 -900 {lab=VIN}
N 200 -840 200 -810 {lab=VSS}
N 200 -940 200 -900 {lab=VDD}
N 560 -700 560 -680 {lab=VDD}
N 630 -640 670 -640 {lab=VOUT}
N 560 -600 560 -580 {lab=VSS}
N 470 -640 510 -640 {lab=VIN}
N 80 -840 80 -820 {lab=GND}
C {vsource.sym} 80 -870 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 300 -870 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 10n, 1p, 1p, 10n, 20n)" savecurrent=false}
C {gnd.sym} 80 -820 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 80 -940 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -810 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -940 0 1 {name=p7 sig_type=std_logic lab=VIN
}
C {vsource.sym} 200 -870 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 200 -810 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -940 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 55 -1300 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.control
save all 
tran 50p 100n
*let clk0 = v(CLK)
*let VB0 = v(B0)


*plot VB0
*plot VB1
*plot clk0
*plot clk1

write counter_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 465 -1155 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter_tb.raw tran"
}
C {devices/launcher.sym} 465 -1215 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 400 -1300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 560 -580 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -700 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -640 0 1 {name=p2 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 470 -640 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {INV3.sym} 470 -500 0 0 {name=x1}
