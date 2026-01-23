v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1060 -690 1860 -290 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.308261e-09
x2=1.8691739e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VOUT}
B 2 1060 -1110 1860 -710 {flags=graph
y1=-0.26
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.308261e-09
x2=1.8691739e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VIN}
B 2 1060 -1530 1860 -1130 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.308261e-09
x2=1.8691739e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VCLK}
N 80 -940 80 -900 {lab=VSS}
N 300 -840 300 -810 {lab=VSS}
N 300 -940 300 -900 {lab=VIN1}
N 200 -840 200 -810 {lab=VSS}
N 200 -940 200 -900 {lab=VDD}
N 540 -680 540 -660 {lab=VDD}
N 680 -600 820 -600 {lab=VOUT}
N 540 -540 540 -520 {lab=VSS}
N 80 -840 80 -820 {lab=GND}
N 540 -340 580 -340 {lab=VCLK_N}
N 470 -300 470 -260 {lab=VSS}
N 470 -420 470 -380 {lab=VDD}
N 580 -700 580 -660 {lab=VCLK}
N 580 -540 580 -500 {lab=VCLKN}
N 580 -840 580 -810 {lab=VSS}
N 580 -940 580 -900 {lab=VCLK1}
N 870 -560 870 -520 {lab=VSS}
N 870 -680 870 -640 {lab=VDD}
N 310 -560 310 -520 {lab=VSS}
N 310 -680 310 -640 {lab=VDD}
N 220 -600 260 -600 {lab=#net1}
N 380 -600 480 -600 {lab=VIN}
N 150 -560 150 -520 {lab=VSS}
N 150 -680 150 -640 {lab=VDD}
N 60 -600 100 -600 {lab=VIN1}
N 340 -340 420 -340 {lab=VCLK}
N 180 -340 220 -340 {lab=VCLK1}
N 270 -300 270 -260 {lab=VSS}
N 270 -420 270 -380 {lab=VDD}
N 940 -600 980 -600 {lab=#net2}
N 980 -540 980 -520 {lab=VSS}
C {vsource.sym} 80 -870 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 300 -870 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 10n, 20n)" savecurrent=false}
C {gnd.sym} 80 -820 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 80 -940 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -810 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -940 0 1 {name=p7 sig_type=std_logic lab=VIN1
}
C {vsource.sym} 200 -870 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 200 -810 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -940 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 55 -1300 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.control
save all 
tran 50p 50n
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
C {lab_wire.sym} 540 -520 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 540 -680 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 720 -600 0 1 {name=p2 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 60 -600 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 440 -440 0 0 {name=x1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 380 -200 0 0 {name=x10}
C {lab_wire.sym} 580 -340 0 1 {name=p5 sig_type=std_logic lab=VCLK_N}
C {lab_wire.sym} 580 -700 0 1 {name=p34 sig_type=std_logic lab=VCLK}
C {lab_wire.sym} 580 -500 0 1 {name=p6 sig_type=std_logic lab=VCLKN}
C {vsource.sym} 580 -870 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 3.5n, 10p, 10p, 5n, 10n)" savecurrent=false}
C {lab_wire.sym} 580 -940 0 1 {name=p8 sig_type=std_logic lab=VCLK1
}
C {lab_wire.sym} 580 -810 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 380 -340 0 0 {name=p10 sig_type=std_logic lab=VCLK}
C {lab_wire.sym} 470 -420 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -260 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 780 -460 0 0 {name=x2}
C {lab_wire.sym} 870 -680 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 870 -520 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 220 -460 0 0 {name=x3}
C {lab_wire.sym} 310 -680 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 310 -520 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -600 0 0 {name=p20 sig_type=std_logic lab=VIN}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 -460 0 0 {name=x4[2:0]}
C {lab_wire.sym} 150 -680 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -520 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 180 -200 0 0 {name=x1[1:0]}
C {lab_wire.sym} 180 -340 0 0 {name=p25 sig_type=std_logic lab=VCLK1}
C {lab_wire.sym} 270 -420 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -260 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {res.sym} 980 -570 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 980 -520 0 0 {name=p24 sig_type=std_logic lab=VSS}
