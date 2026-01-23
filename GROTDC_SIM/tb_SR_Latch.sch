v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 -480 1840 -80 {flags=graph
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
node=QN}
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
node=B}
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
node=A}
B 2 1910 -480 2710 -80 {flags=graph
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
node=QP}
N 380 -810 380 -780 {lab=GND}
N 380 -910 380 -870 {lab=VSS}
N 60 -810 60 -780 {lab=VSS}
N 60 -910 60 -870 {lab=A}
N 460 -810 460 -780 {lab=VSS}
N 460 -910 460 -870 {lab=VDD}
N 60 -750 60 -710 {lab=B}
N 510 -420 510 -400 {lab=VSS}
N 510 -540 510 -520 {lab=VDD}
N 60 -650 60 -620 {lab=VSS}
N 400 -490 440 -490 {lab=A}
N 400 -450 440 -450 {lab=B}
N 580 -490 620 -490 {lab=QN}
N 580 -450 620 -450 {lab=QP}
C {vsource.sym} 380 -840 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 60 -840 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 10n, 1p, 1p, 10n, 20n)" savecurrent=false}
C {gnd.sym} 380 -780 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 380 -910 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -780 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -910 0 1 {name=p7 sig_type=std_logic lab=A
}
C {vsource.sym} 460 -840 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 460 -780 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -910 0 0 {name=p13 sig_type=std_logic lab=VDD}
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
C {vsource.sym} 60 -680 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 20n, 40n)" savecurrent=false}
C {lab_wire.sym} 60 -620 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -750 0 1 {name=p16 sig_type=std_logic lab=B
}
C {lab_wire.sym} 510 -400 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -540 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 620 -490 0 1 {name=p2 sig_type=std_logic lab=QN}
C {lab_wire.sym} 400 -490 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 400 -450 0 0 {name=p5 sig_type=std_logic lab=B}
C {/foss/designs/GRO-TDC/std_cells/SR_Latch.sym} 420 -380 0 0 {name=x1}
C {lab_wire.sym} 620 -450 0 1 {name=p6 sig_type=std_logic lab=QP}
