v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1060 -800 1860 -400 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5e-08
x2=1.25e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=AB_N}
B 2 1060 -1220 1860 -820 {flags=graph
y1=-0.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5e-08
x2=1.25e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="11 10"
node="A
B"}
N 470 -810 470 -780 {lab=VSS}
N 470 -1150 470 -1070 {lab=A1}
N 820 -1210 820 -1170 {lab=B1}
N 570 -500 570 -480 {lab=VSS}
N 570 -640 570 -620 {lab=#net1}
N 820 -810 820 -780 {lab=VSS}
N 490 -580 530 -580 {lab=A}
N 490 -540 530 -540 {lab=B}
N 630 -560 670 -560 {lab=AB_N}
N 90 -910 90 -870 {lab=VSS}
N 210 -810 210 -780 {lab=VSS}
N 210 -910 210 -870 {lab=VDD}
N 90 -810 90 -790 {lab=GND}
N 180 -720 180 -700 {lab=VDD}
N 180 -620 180 -600 {lab=VSS}
N 90 -660 130 -660 {lab=A1}
N 180 -520 180 -500 {lab=VDD}
N 180 -420 180 -400 {lab=VSS}
N 90 -460 130 -460 {lab=B1}
N 410 -660 490 -660 {lab=A}
N 490 -540 490 -460 {lab=B}
N 410 -460 490 -460 {lab=B}
N 490 -660 490 -580 {lab=A}
N 810 -580 810 -560 {lab=VDD}
N 810 -480 810 -460 {lab=VSS}
N 670 -560 670 -520 {lab=AB_N}
N 670 -520 760 -520 {lab=AB_N}
N 470 -910 470 -870 {lab=#net2}
N 820 -910 820 -870 {lab=#net3}
N 820 -1010 820 -970 {lab=#net4}
N 340 -720 340 -700 {lab=VDD}
N 340 -620 340 -600 {lab=VSS}
N 250 -660 290 -660 {lab=#net5}
N 340 -520 340 -500 {lab=VDD}
N 340 -420 340 -400 {lab=VSS}
N 250 -460 290 -460 {lab=#net6}
N 570 -720 570 -700 {lab=VDD}
N 470 -1010 470 -970 {lab=#net7}
N 820 -1110 820 -1070 {lab=#net8}
C {lab_wire.sym} 470 -780 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 470 -1150 0 1 {name=p7 sig_type=std_logic lab=A1
}
C {devices/launcher.sym} 125 -1025 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_AND.raw tran"
}
C {devices/launcher.sym} 125 -1085 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 60 -1170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 820 -780 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -1210 0 1 {name=p16 sig_type=std_logic lab=B1
}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 510 -480 0 0 {name=x1}
C {lab_wire.sym} 570 -480 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 670 -560 0 1 {name=p2 sig_type=std_logic lab=AB_N}
C {lab_wire.sym} 490 -580 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 490 -540 0 0 {name=p5 sig_type=std_logic lab=B}
C {code.sym} 290 -910 0 0 {name=Transient_A_2_ABN only_toplevel=true 
value="
* Parameters
.param temp=65
.param VSS=0
.param VDD=1.2

.param tr=10p
.param tf=10p
.param PW=10n
.param tda_1=30n
.param tda_2=70n
.param tda_3=85n
.param tdb_1=10n
.param tdb_2=40n
.param tdb_3=60n
.param tdb_4=85n

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 100n

* Definition of the variables of the voltages of the nodes
let vin  = v(A)
let vout = v(AB_N)
let VM = 0.6

* Measurement of the propagation delay; Reference: Rabaey book page 195
* Reference: NGSPICE manual page 325
meas tran tpLH TRIG vin VAL=VM TD=75n FALL=1 TARG vout VAL=VM TD=75n FALL=1
meas tran tpHL TRIG vin VAL=VM TD=75n RISE=1 TARG vout VAL=VM TD=75n RISE=1
let tp = (tpLH+tpHL)/2
print tp

* Measurement of the time and voltages for the rise and fall time
meas tran time_20_percent WHEN vout=VDD*0.2 
meas tran v_20_percent FIND vout WHEN time=time_20_percent
meas tran time_80_percent WHEN vout=VDD*0.8 
meas tran v_80_percent FIND vout WHEN time=time_80_percent


* Measurement of the rise time:
meas tran trise TRIG vout VAL=v_20_percent TD=75n RISE=1 TARG vout VAL=v_80_percent TD=75n RISE=1

* Measurement of the fall time:
meas tran tfall TRIG vout VAL=v_80_percent TD=75n FALL=1 TARG vout VAL=v_20_percent TD=75n FALL=1

* Measurement of the RMS and AVG current:
let i_vdd=i(vdd_current)
meas tran i_vdd_rms RMS i_vdd
meas tran i_vdd_avg AVG i_vdd

*plot i_vdd
plot v(A) v(B) v(AB_N)


let A=v(A)
let B=v(B)
let AB_N=v(AB_N)
* Saving the of the nodes into the raw file
write tb_AND.raw
set appendwrite
.endc
"
spice_ignore=true}
C {vsource.sym} 90 -840 0 0 {name=V1 value=\{VSS\} savecurrent=false}
C {gnd.sym} 90 -790 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 90 -910 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 210 -840 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 210 -780 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 210 -910 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 180 -600 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -720 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 90 -660 0 0 {name=p14 sig_type=std_logic lab=A1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 90 -520 0 0 {name=x3}
C {lab_wire.sym} 180 -400 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -520 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 90 -460 0 0 {name=p19 sig_type=std_logic lab=B1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 90 -320 0 0 {name=x2}
C {lab_wire.sym} 810 -460 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -580 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 720 -380 0 0 {name=x4}
C {vsource.sym} 470 -840 0 0 {name=V3 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_1\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {vsource.sym} 470 -940 0 0 {name=V4 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 820 -840 0 0 {name=V5 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 820 -940 0 0 {name=V6 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 820 -1040 0 0 {name=V7 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_3\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {lab_wire.sym} 340 -600 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 340 -720 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 250 -520 0 0 {name=x5}
C {lab_wire.sym} 340 -400 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 340 -520 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 250 -320 0 0 {name=x6}
C {lab_wire.sym} 570 -720 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {ammeter.sym} 570 -670 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
C {vsource.sym} 470 -1040 0 0 {name=V8 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 820 -1140 0 0 {name=V9 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_4\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {code.sym} 850 -720 0 0 {name=Transient_B_2_ABN only_toplevel=true 
value="
* Parameters
.param temp=65
.param VSS=0
.param VDD=1.2

.param tr=10p
.param tf=10p
.param PW=10n
.param tda_1=30n
.param tda_2=70n
.param tda_3=85n
.param tdb_1=10n
.param tdb_2=40n
.param tdb_3=60n
.param tdb_4=85n

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 100n

* Definition of the variables of the voltages of the nodes
let vin  = v(B)
let vout = v(AB_N)
let VM = 0.6

* Measurement of the propagation delay; Reference: Rabaey book page 195
* Reference: NGSPICE manual page 325
meas tran tpLH TRIG vin VAL=VM TD=75n FALL=1 TARG vout VAL=VM TD=75n FALL=1
meas tran tpHL TRIG vin VAL=VM TD=75n RISE=1 TARG vout VAL=VM TD=75n RISE=1
let tp = (tpLH+tpHL)/2
print tp

* Measurement of the time and voltages for the rise and fall time
meas tran time_20_percent WHEN vout=VDD*0.2 
meas tran v_20_percent FIND vout WHEN time=time_20_percent
meas tran time_80_percent WHEN vout=VDD*0.8 
meas tran v_80_percent FIND vout WHEN time=time_80_percent


* Measurement of the rise time:
meas tran trise TRIG vout VAL=v_20_percent TD=75n RISE=1 TARG vout VAL=v_80_percent TD=75n RISE=1

* Measurement of the fall time:
meas tran tfall TRIG vout VAL=v_80_percent TD=75n FALL=1 TARG vout VAL=v_20_percent TD=75n FALL=1

* Measurement of the RMS and AVG current:
let i_vdd=i(vdd_current)
meas tran i_vdd_rms RMS i_vdd
meas tran i_vdd_avg AVG i_vdd

*plot i_vdd
plot v(A) v(B) v(AB_N)


let A=v(A)
let B=v(B)
let AB_N=v(AB_N)
* Saving the of the nodes into the raw file
write tb_AND.raw
set appendwrite
.endc
"
}
