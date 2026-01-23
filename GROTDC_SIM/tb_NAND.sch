v {xschem version=3.4.8RC file_version=1.3}
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
x1=1e-08
x2=1.1e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=AB_N}
B 2 1050 -1320 1850 -920 {flags=graph
y1=-0.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-08
x2=1.1e-07
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
N 460 -910 460 -880 {lab=VSS}
N 460 -1250 460 -1170 {lab=A1}
N 810 -1310 810 -1270 {lab=B1}
N 560 -610 560 -590 {lab=VSS}
N 560 -730 560 -710 {lab=#net1}
N 810 -910 810 -880 {lab=VSS}
N 480 -680 520 -680 {lab=A}
N 480 -640 520 -640 {lab=B}
N 630 -660 670 -660 {lab=AB_N}
N 80 -1010 80 -970 {lab=VSS}
N 200 -910 200 -880 {lab=VSS}
N 200 -1010 200 -970 {lab=VDD}
N 80 -910 80 -890 {lab=GND}
N 170 -820 170 -800 {lab=VDD}
N 170 -720 170 -700 {lab=VSS}
N 80 -760 120 -760 {lab=A1}
N 170 -620 170 -600 {lab=VDD}
N 170 -520 170 -500 {lab=VSS}
N 80 -560 120 -560 {lab=B1}
N 400 -760 480 -760 {lab=A}
N 480 -640 480 -560 {lab=B}
N 400 -560 480 -560 {lab=B}
N 480 -760 480 -680 {lab=A}
N 810 -680 810 -660 {lab=VDD}
N 810 -580 810 -560 {lab=VSS}
N 670 -660 670 -620 {lab=AB_N}
N 670 -620 760 -620 {lab=AB_N}
N 460 -1010 460 -970 {lab=#net2}
N 810 -1010 810 -970 {lab=#net3}
N 810 -1110 810 -1070 {lab=#net4}
N 330 -820 330 -800 {lab=VDD}
N 330 -720 330 -700 {lab=VSS}
N 240 -760 280 -760 {lab=#net5}
N 330 -620 330 -600 {lab=VDD}
N 330 -520 330 -500 {lab=VSS}
N 240 -560 280 -560 {lab=#net6}
N 560 -810 560 -790 {lab=VDD}
N 460 -1110 460 -1070 {lab=#net7}
N 810 -1210 810 -1170 {lab=#net8}
C {lab_wire.sym} 460 -880 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -1250 0 1 {name=p7 sig_type=std_logic lab=A1
}
C {devices/launcher.sym} 115 -1125 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_NAND.raw tran"
}
C {devices/launcher.sym} 115 -1185 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 50 -1270 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 810 -880 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -1310 0 1 {name=p16 sig_type=std_logic lab=B1
}
C {/foss/designs/GRO-TDC/std_cells/NAND.sym} 500 -570 0 0 {name=x1}
C {lab_wire.sym} 560 -590 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 670 -660 0 1 {name=p2 sig_type=std_logic lab=AB_N}
C {lab_wire.sym} 480 -680 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 480 -640 0 0 {name=p5 sig_type=std_logic lab=B}
C {code.sym} 280 -1010 0 0 {name=Transient_A_2_ABN only_toplevel=true 
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
meas tran tpLH TRIG vin VAL=VM TD=75n FALL=1 TARG vout VAL=VM TD=75n RISE=1
meas tran tpHL TRIG vin VAL=VM TD=75n RISE=1 TARG vout VAL=VM TD=75n FALL=1
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
plot v(A) v(B)
plot v(AB_N)

let A=v(A)
let B=v(B)
let AB_N=v(AB_N)
* Saving the of the nodes into the raw file
write tb_NAND.raw
set appendwrite
.endc
"
}
C {vsource.sym} 80 -940 0 0 {name=V1 value=\{VSS\} savecurrent=false}
C {gnd.sym} 80 -890 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 80 -1010 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 200 -940 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 200 -880 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 200 -1010 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -700 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 170 -820 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -760 0 0 {name=p14 sig_type=std_logic lab=A1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 80 -620 0 0 {name=x3}
C {lab_wire.sym} 170 -500 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 170 -620 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -560 0 0 {name=p19 sig_type=std_logic lab=B1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 80 -420 0 0 {name=x2}
C {lab_wire.sym} 810 -560 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -680 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 720 -480 0 0 {name=x4}
C {vsource.sym} 460 -940 0 0 {name=V3 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_1\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {vsource.sym} 460 -1040 0 0 {name=V4 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 810 -940 0 0 {name=V5 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 810 -1040 0 0 {name=V6 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 810 -1140 0 0 {name=V7 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_3\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {lab_wire.sym} 330 -700 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -820 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 240 -620 0 0 {name=x5}
C {lab_wire.sym} 330 -500 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -620 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 240 -420 0 0 {name=x6}
C {lab_wire.sym} 560 -810 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {ammeter.sym} 560 -760 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
C {vsource.sym} 460 -1140 0 0 {name=V8 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 810 -1240 0 0 {name=V9 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_4\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {code.sym} 840 -820 0 0 {name=Transient_B_2_ABN only_toplevel=true 
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
meas tran tpLH TRIG vin VAL=VM TD=75n FALL=1 TARG vout VAL=VM TD=75n RISE=1
meas tran tpHL TRIG vin VAL=VM TD=75n RISE=1 TARG vout VAL=VM TD=75n FALL=1
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
plot v(A) v(B)
plot v(AB_N)

let A=v(A)
let B=v(B)
let AB_N=v(AB_N)
* Saving the of the nodes into the raw file
write tb_INV.raw
set appendwrite
.endc
"
spice_ignore=true}
