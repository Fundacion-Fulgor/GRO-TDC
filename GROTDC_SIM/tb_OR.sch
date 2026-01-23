v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1030 -450 1830 -50 {flags=graph
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
B 2 1030 -870 1830 -470 {flags=graph
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
N 440 -460 440 -430 {lab=VSS}
N 440 -800 440 -720 {lab=A1}
N 790 -860 790 -820 {lab=B1}
N 560 -160 560 -140 {lab=VSS}
N 560 -280 560 -260 {lab=#net1}
N 790 -460 790 -430 {lab=VSS}
N 460 -230 500 -230 {lab=A}
N 460 -190 500 -190 {lab=B}
N 60 -560 60 -520 {lab=VSS}
N 180 -460 180 -430 {lab=VSS}
N 180 -560 180 -520 {lab=VDD}
N 60 -460 60 -440 {lab=GND}
N 150 -370 150 -350 {lab=VDD}
N 150 -270 150 -250 {lab=VSS}
N 60 -310 100 -310 {lab=A1}
N 150 -170 150 -150 {lab=VDD}
N 150 -70 150 -50 {lab=VSS}
N 60 -110 100 -110 {lab=B1}
N 380 -310 460 -310 {lab=A}
N 460 -190 460 -110 {lab=B}
N 380 -110 460 -110 {lab=B}
N 460 -310 460 -230 {lab=A}
N 780 -230 780 -210 {lab=VDD}
N 780 -130 780 -110 {lab=VSS}
N 660 -170 730 -170 {lab=AB_N}
N 440 -560 440 -520 {lab=#net2}
N 790 -560 790 -520 {lab=#net3}
N 790 -660 790 -620 {lab=#net4}
N 310 -370 310 -350 {lab=VDD}
N 310 -270 310 -250 {lab=VSS}
N 220 -310 260 -310 {lab=#net5}
N 310 -170 310 -150 {lab=VDD}
N 310 -70 310 -50 {lab=VSS}
N 220 -110 260 -110 {lab=#net6}
N 560 -360 560 -340 {lab=VDD}
N 440 -660 440 -620 {lab=#net7}
N 790 -760 790 -720 {lab=#net8}
N 630 -210 660 -210 {lab=AB_N}
N 660 -210 660 -170 {lab=AB_N}
C {lab_wire.sym} 440 -430 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -800 0 1 {name=p7 sig_type=std_logic lab=A1
}
C {devices/launcher.sym} 95 -675 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_AND.raw tran"
}
C {devices/launcher.sym} 95 -735 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 30 -820 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 790 -430 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 790 -860 0 1 {name=p16 sig_type=std_logic lab=B1
}
C {/foss/designs/GRO-TDC/std_cells/OR.sym} 480 -90 0 0 {name=x1}
C {lab_wire.sym} 560 -140 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -210 0 1 {name=p2 sig_type=std_logic lab=AB_N}
C {lab_wire.sym} 460 -230 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 460 -190 0 0 {name=p5 sig_type=std_logic lab=B}
C {code.sym} 260 -560 0 0 {name=Transient_A_2_ABN only_toplevel=true 
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
write tb_OR.raw
set appendwrite
.endc
"
}
C {vsource.sym} 60 -490 0 0 {name=V1 value=\{VSS\} savecurrent=false}
C {gnd.sym} 60 -440 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 60 -560 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 180 -490 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 180 -430 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -560 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -250 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -370 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -310 0 0 {name=p14 sig_type=std_logic lab=A1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 -170 0 0 {name=x3}
C {lab_wire.sym} 150 -50 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 -170 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 60 -110 0 0 {name=p19 sig_type=std_logic lab=B1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 30 0 0 {name=x2}
C {lab_wire.sym} 780 -110 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 780 -230 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 690 -30 0 0 {name=x4}
C {vsource.sym} 440 -490 0 0 {name=V3 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_1\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {vsource.sym} 440 -590 0 0 {name=V4 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 790 -490 0 0 {name=V5 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 790 -590 0 0 {name=V6 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 790 -690 0 0 {name=V7 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_3\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {lab_wire.sym} 310 -250 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 310 -370 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 220 -170 0 0 {name=x5}
C {lab_wire.sym} 310 -50 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 310 -170 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 220 30 0 0 {name=x6}
C {lab_wire.sym} 560 -360 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {ammeter.sym} 560 -310 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
C {vsource.sym} 440 -690 0 0 {name=V8 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 790 -790 0 0 {name=V9 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_4\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {code.sym} 770 -380 0 0 {name=Transient_B_2_ABN only_toplevel=true 
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
write tb_OR.raw
set appendwrite
.endc
"
spice_ignore=true}
