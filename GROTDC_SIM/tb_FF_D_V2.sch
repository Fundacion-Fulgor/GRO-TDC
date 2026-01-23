v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1050 -480 1850 -80 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.2718061e-25
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=Q}
B 2 1050 -900 1850 -500 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.2718061e-25
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=17
node=D}
B 2 1050 -1320 1850 -920 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.2718061e-25
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=EN}
B 2 1050 -60 1850 340 {flags=graph
y1=-0.52227496
y2=1.377725
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=8.2718061e-25
x2=1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=10
node=QN}
N 220 -450 280 -450 {lab=EN}
N 380 -810 380 -780 {lab=GND}
N 380 -910 380 -870 {lab=VSS}
N 60 -810 60 -780 {lab=VSS}
N 60 -910 60 -870 {lab=EN}
N 460 -810 460 -780 {lab=VSS}
N 460 -910 460 -870 {lab=VDD}
N 60 -570 120 -570 {lab=D}
N 590 -470 650 -470 {lab=Q}
N 590 -430 650 -430 {lab=QN}
N 60 -750 60 -710 {lab=D}
N 340 -500 340 -480 {lab=VSS}
N 340 -420 340 -400 {lab=VDD}
N 340 -300 340 -280 {lab=VSS}
N 340 -620 340 -600 {lab=VDD}
N 280 -370 300 -370 {lab=EN}
N 280 -450 280 -370 {lab=EN}
N 280 -530 300 -530 {lab=EN}
N 260 -290 280 -290 {lab=#net1}
N 280 -330 280 -290 {lab=#net1}
N 280 -330 300 -330 {lab=#net1}
N 120 -290 140 -290 {lab=D}
N 280 -530 280 -450 {lab=EN}
N 410 -550 430 -550 {lab=#net2}
N 430 -550 430 -470 {lab=#net2}
N 430 -470 450 -470 {lab=#net2}
N 410 -350 430 -350 {lab=#net3}
N 430 -430 430 -350 {lab=#net3}
N 430 -430 450 -430 {lab=#net3}
N 520 -520 520 -500 {lab=VDD}
N 520 -400 520 -380 {lab=VSS}
N 120 -570 300 -570 {lab=D}
N 120 -570 120 -290 {lab=D}
N 190 -250 190 -230 {lab=VSS}
N 190 -350 190 -330 {lab=VDD}
N 60 -650 60 -620 {lab=VSS}
C {vsource.sym} 380 -840 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 60 -840 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 10n, 1p, 1p, 40n, 80n)" savecurrent=false}
C {gnd.sym} 380 -780 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 380 -910 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -780 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -910 0 1 {name=p7 sig_type=std_logic lab=EN
}
C {lab_wire.sym} 60 -570 0 0 {name=p9 sig_type=std_logic lab=D}
C {lab_wire.sym} 220 -450 0 0 {name=p11 sig_type=std_logic lab=EN
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
let clk0 = v(CLK)
*let VB0 = v(B0)


*plot VB0
*plot VB1
*plot clk0
*plot clk1

write counter_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 475 -975 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter_tb.raw tran"
}
C {devices/launcher.sym} 475 -1035 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 400 -1300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 650 -470 0 1 {name=p3 sig_type=std_logic lab=Q}
C {lab_wire.sym} 650 -430 0 1 {name=p6 sig_type=std_logic lab=QN}
C {vsource.sym} 60 -680 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 5n, 10n)" savecurrent=false}
C {lab_wire.sym} 60 -620 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -750 0 1 {name=p16 sig_type=std_logic lab=D
}
C {SR_Latch.sym} 430 -360 0 0 {name=x2}
C {NAND.sym} 280 -460 0 0 {name=x1}
C {NAND.sym} 280 -260 0 0 {name=x3}
C {inv.sym} 100 -150 0 0 {name=x4}
C {lab_wire.sym} 340 -480 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -230 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 340 -280 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -380 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -520 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 340 -620 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 340 -420 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 190 -350 0 0 {name=p24 sig_type=std_logic lab=VDD}
