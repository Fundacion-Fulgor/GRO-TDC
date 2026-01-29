v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -790 440 10 840 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.3878304e-09
x2=4.0243869e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
y1=-0.4
color="10 4"
node="START
STOP"}
N -770 330 -770 360 {lab=GND}
N -770 230 -770 270 {lab=VSS}
N -700 330 -700 360 {lab=VSS}
N -700 230 -700 270 {lab=VDD}
N -360 380 -360 410 {lab=VSS}
N -360 190 -360 230 {lab=STOP}
N -360 290 -360 320 {lab=#net1}
N 670 300 720 300 {lab=VSS}
N 670 290 740 290 {lab=VDD}
N 370 320 430 320 {lab=STOP}
N 370 300 370 320 {lab=STOP}
N 330 320 370 320 {lab=STOP}
N 670 350 740 350 {lab=VDD}
N 670 320 880 320 {lab=START}
N 720 300 720 340 {lab=VSS}
N 670 340 720 340 {lab=VSS}
N 740 290 740 350 {lab=VDD}
N 720 250 720 300 {lab=VSS}
N 740 220 740 290 {lab=VDD}
N 930 360 930 380 {lab=VSS}
N 930 260 930 280 {lab=VDD}
N 1000 320 1070 320 {lab=START2}
N 280 170 280 190 {lab=VSS}
N 280 70 280 90 {lab=VDD}
N 350 130 420 130 {lab=START2}
N 160 130 230 130 {lab=STOP}
C {vsource.sym} -770 300 0 0 {name=V3 value=0 savecurrent=false
}
C {gnd.sym} -770 360 0 0 {name=l2 lab=GND
}
C {lab_wire.sym} -770 230 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {vsource.sym} -700 300 0 0 {name=V4 value=1.2 savecurrent=false
}
C {lab_wire.sym} -700 360 0 0 {name=p8 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} -325 155 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_IO_cells_try_1.raw tran"
}
C {devices/launcher.sym} -325 95 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -850 0 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.include diodes.lib
.include sg13g2_bondpad.lib
"
}
C {lab_wire.sym} -700 230 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {vsource.sym} -360 350 0 0 {name=V16 value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1n, 0)" savecurrent=false
}
C {vsource.sym} -360 260 0 0 {name=V17 value="dc 0 ac 0 pulse(0, 1.2, 14n, 50p, 50p, 100n)" savecurrent=false
}
C {lab_wire.sym} -360 410 0 0 {name=p60 sig_type=std_logic lab=VSS
}
C {code.sym} -630 240 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=65
.OPTION RSHUNT=1e6
.OPTION CSHUNT=1e-13
.option rseries = 10.0e-0
.options method=gear reltol=1e-5 abstol=1e-6
*.options gmin=1e-10
*.ic V(out)=0


.control
save all 
tran 10p 30n
* Sources
let START = v(START)
let STOP = v(STOP)

write GROTDC_tb.raw
wrdata tb_IO_cells_try_1.raw time STOP START

*set appendwrite

.endc
"
}
C {lab_pin.sym} 370 300 1 0 {name=p1 sig_type=std_logic lab=STOP}
C {IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/xschem/sg13g2_IOPadAnalog.sym} 550 320 2 0 {name=x17}
C {lab_wire.sym} 760 320 0 1 {name=p24 sig_type=std_logic lab=START
}
C {sg13g2_pr/bondpad.sym} 290 320 3 1 {name=X12
model=bondpad
spiceprefix=X
size=80u
shape=0
padtype=0
}
C {lab_wire.sym} 720 250 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 740 220 0 0 {name=p4 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 930 380 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 930 260 0 0 {name=p6 sig_type=std_logic lab=VDD
}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 840 460 0 0 {name=x1[1:0]}
C {lab_wire.sym} 1070 320 0 1 {name=p7 sig_type=std_logic lab=START2
}
C {lab_wire.sym} 280 190 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 280 70 0 0 {name=p10 sig_type=std_logic lab=VDD
}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 190 270 0 0 {name=x2[1:0]}
C {lab_wire.sym} 420 130 0 1 {name=p11 sig_type=std_logic lab=START2
}
C {lab_pin.sym} 160 130 1 0 {name=p12 sig_type=std_logic lab=STOP}
C {lab_pin.sym} -360 190 2 0 {name=p13 sig_type=std_logic lab=STOP}
