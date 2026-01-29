v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 900 -1170 1700 -770 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.9061347e-09
x2=1.4010041e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.2
color="17 8 10"
node="K0
K1
K2"}
N 420 -1440 420 -1410 {lab=GND}
N 420 -1540 420 -1500 {lab=VSS}
N 1000 -1350 1000 -1320 {lab=VSS}
N 680 -1440 680 -1410 {lab=VSS}
N 1000 -1540 1000 -1500 {lab=STOP}
N 680 -1540 680 -1500 {lab=START}
N 560 -1440 560 -1410 {lab=VSS}
N 560 -1540 560 -1500 {lab=VDD}
N 1000 -1440 1000 -1410 {lab=#net1}
N 120 -1000 160 -1000 {lab=START}
N 120 -960 160 -960 {lab=STOP}
N 230 -1060 230 -1030 {lab=VDD}
N 230 -930 230 -900 {lab=VSS}
N 430 -1070 430 -1040 {lab=VDD}
N 300 -1000 370 -1000 {lab=EN}
N 430 -800 430 -770 {lab=VSS}
N 530 -800 530 -770 {lab=K0}
N 650 -800 650 -770 {lab=K1}
N 770 -800 770 -770 {lab=K2}
C {vsource.sym} 420 -1470 0 0 {name=V1 value=0 savecurrent=false
}
C {vsource.sym} 1000 -1470 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 100n, 500p, 500p, 400n, 0)" savecurrent=false
}
C {gnd.sym} 420 -1410 0 0 {name=l1 lab=GND
}
C {lab_wire.sym} 420 -1540 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1000 -1320 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 680 -1410 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1000 -1540 0 1 {name=p7 sig_type=std_logic lab=STOP
}
C {lab_wire.sym} 680 -1540 0 1 {name=p8 sig_type=std_logic lab=START
}
C {vsource.sym} 560 -1470 0 0 {name=V5 value=1.2 savecurrent=false
}
C {lab_wire.sym} 560 -1410 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {vsource.sym} 680 -1470 0 0 {name=V4 value="dc 0 ac 0 pulse(0, 1.2, 10n, 500p, 500p, 490n, 0)" savecurrent=false
}
C {devices/code_shown.sym} 85 -1570 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65


.control
save all 
tran 10p 20n
*let START = v(START)
*let STOP = v(STOP)
*let VDD = v(VDD)
*plot START STOP
*plot VDD

let S = v(x2.S)
plot S

let EN1 = v(EN)
plot EN1

*let KA0 = v(K0)
*let KA1 = v(K1)
*let KA2 = v(K2)

*plot KA0 KA1 KA2

write counter2_tb.raw
*set appendwrite

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
C {lab_wire.sym} 230 -900 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {vsource.sym} 1000 -1380 0 0 {name=V7 value="dc 0 ac 0 pulse(0, 1.2, 0, 500p, 500p, 5n, 0)" savecurrent=false
}
C {lab_wire.sym} 430 -1070 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 560 -1540 0 0 {name=p13 sig_type=std_logic lab=VDD
}
C {/foss/designs/GRO-TDC/std_cells/SR_Latch.sym} 140 -890 0 0 {name=x1}
C {lab_wire.sym} 230 -1060 0 0 {name=p19 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 120 -1000 0 0 {name=p20 sig_type=std_logic lab=START
}
C {lab_wire.sym} 120 -960 0 0 {name=p22 sig_type=std_logic lab=STOP
}
C {lab_wire.sym} 340 -1000 0 0 {name=p33 sig_type=std_logic lab=EN
}
C {GRO.sym} 370 -780 0 0 {name=x2}
C {lab_wire.sym} 430 -770 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 530 -770 0 0 {name=p11 sig_type=std_logic lab=K0
}
C {lab_wire.sym} 650 -770 0 0 {name=p14 sig_type=std_logic lab=K1
}
C {lab_wire.sym} 770 -770 0 0 {name=p15 sig_type=std_logic lab=K2
}
