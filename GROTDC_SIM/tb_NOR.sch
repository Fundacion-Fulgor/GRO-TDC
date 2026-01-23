v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 -800 1840 -400 {flags=graph
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
B 2 1040 -1220 1840 -820 {flags=graph
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
N 450 -810 450 -780 {lab=VSS}
N 450 -1150 450 -1070 {lab=A1}
N 800 -1105 800 -1065 {lab=B1}
N 570 -510 570 -490 {lab=VSS}
N 570 -630 570 -610 {lab=#net1}
N 800 -810 800 -780 {lab=VSS}
N 470 -580 510 -580 {lab=A}
N 470 -540 510 -540 {lab=B}
N 620 -560 660 -560 {lab=AB_N}
N 70 -910 70 -870 {lab=VSS}
N 190 -810 190 -780 {lab=VSS}
N 190 -910 190 -870 {lab=VDD}
N 70 -810 70 -790 {lab=GND}
N 160 -720 160 -700 {lab=VDD}
N 160 -620 160 -600 {lab=VSS}
N 70 -660 110 -660 {lab=A1}
N 160 -520 160 -500 {lab=VDD}
N 160 -420 160 -400 {lab=VSS}
N 70 -460 110 -460 {lab=B1}
N 390 -660 470 -660 {lab=A}
N 470 -540 470 -460 {lab=B}
N 390 -460 470 -460 {lab=B}
N 470 -660 470 -580 {lab=A}
N 800 -580 800 -560 {lab=VDD}
N 800 -480 800 -460 {lab=VSS}
N 660 -560 660 -520 {lab=AB_N}
N 660 -520 750 -520 {lab=AB_N}
N 450 -910 450 -870 {lab=#net2}
N 800 -910 800 -870 {lab=#net3}
N 800 -1010 800 -970 {lab=#net4}
N 320 -720 320 -700 {lab=VDD}
N 320 -620 320 -600 {lab=VSS}
N 230 -660 270 -660 {lab=#net5}
N 320 -520 320 -500 {lab=VDD}
N 320 -420 320 -400 {lab=VSS}
N 230 -460 270 -460 {lab=#net6}
N 570 -710 570 -690 {lab=VDD}
N 450 -1010 450 -970 {lab=#net7}
C {lab_wire.sym} 450 -780 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -1150 0 1 {name=p7 sig_type=std_logic lab=A1
}
C {devices/launcher.sym} 105 -1025 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_NAND.raw tran"
}
C {devices/launcher.sym} 105 -1085 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 40 -1170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 800 -780 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -1105 0 1 {name=p16 sig_type=std_logic lab=B1
}
C {/foss/designs/GRO-TDC/std_cells/NOR.sym} 490 -440 0 0 {name=x1}
C {lab_wire.sym} 570 -490 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 660 -560 0 1 {name=p2 sig_type=std_logic lab=AB_N}
C {lab_wire.sym} 470 -580 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_wire.sym} 470 -540 0 0 {name=p5 sig_type=std_logic lab=B}
C {code.sym} 270 -910 0 0 {name=Transient_A_2_ABN only_toplevel=true 
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
write tb_NOR.raw
set appendwrite
.endc
"
spice_ignore=true}
C {vsource.sym} 70 -840 0 0 {name=V1 value=\{VSS\} savecurrent=false}
C {gnd.sym} 70 -790 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 70 -910 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {vsource.sym} 190 -840 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 190 -780 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -910 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -600 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -720 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 70 -660 0 0 {name=p14 sig_type=std_logic lab=A1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 70 -520 0 0 {name=x3}
C {lab_wire.sym} 160 -400 3 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -520 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 70 -460 0 0 {name=p19 sig_type=std_logic lab=B1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 70 -320 0 0 {name=x2}
C {lab_wire.sym} 800 -460 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -580 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 710 -380 0 0 {name=x4}
C {vsource.sym} 450 -840 0 0 {name=V3 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_1\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {vsource.sym} 450 -940 0 0 {name=V4 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 800 -840 0 0 {name=V5 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 800 -940 0 0 {name=V6 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {vsource.sym} 800 -1040 0 0 {name=V7 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_3\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
}
C {lab_wire.sym} 320 -600 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -720 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 230 -520 0 0 {name=x5}
C {lab_wire.sym} 320 -400 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -520 0 0 {name=p25 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 230 -320 0 0 {name=x6}
C {lab_wire.sym} 570 -710 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {ammeter.sym} 570 -660 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
C {vsource.sym} 450 -1040 0 0 {name=V8 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
}
C {code.sym} 830 -720 0 0 {name=Transient_B_2_ABN only_toplevel=true 
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
meas tran tpLH TRIG vin VAL=VM TD=10n FALL=1 TARG vout VAL=VM TD=10n RISE=1
meas tran tpHL TRIG vin VAL=VM TD=10n RISE=1 TARG vout VAL=VM TD=10n FALL=1
let tp = (tpLH+tpHL)/2
print tp

* Measurement of the time and voltages for the rise and fall time
meas tran time_20_percent WHEN vout=VDD*0.2 
meas tran v_20_percent FIND vout WHEN time=time_20_percent
meas tran time_80_percent WHEN vout=VDD*0.8 
meas tran v_80_percent FIND vout WHEN time=time_80_percent


* Measurement of the rise time:
meas tran trise TRIG vout VAL=v_20_percent TD=10n RISE=1 TARG vout VAL=v_80_percent TD=10n RISE=1

* Measurement of the fall time:
meas tran tfall TRIG vout VAL=v_80_percent TD=10n FALL=1 TARG vout VAL=v_20_percent TD=10n FALL=1

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
}
