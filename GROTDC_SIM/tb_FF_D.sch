v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1040 -1890 1840 -1490 {flags=graph
y1=-0.2
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.0591859e-09
x2=8.405919e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="11 10 8"
node="D
CLK
RESET"}
B 2 1040 -1470 1840 -1070 {flags=graph
y1=-0.1
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.0591859e-09
x2=8.405919e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color="10 17"
node="Q
QN"}
N 650 -1020 650 -990 {lab=VSS}
N 540 -1070 580 -1070 {lab=RESET}
N 540 -1110 580 -1110 {lab=CLK}
N 540 -1150 580 -1150 {lab=D}
N 440 -1480 440 -1450 {lab=#net1}
N 610 -1880 610 -1840 {lab=#net2}
N 610 -1480 610 -1450 {lab=#net3}
N 60 -1590 60 -1550 {lab=VSS}
N 180 -1490 180 -1460 {lab=VSS}
N 180 -1590 180 -1550 {lab=VDD}
N 60 -1490 60 -1470 {lab=GND}
N 440 -1580 440 -1540 {lab=#net4}
N 610 -1580 610 -1540 {lab=#net5}
N 610 -1680 610 -1640 {lab=#net6}
N 440 -1680 440 -1640 {lab=#net7}
N 610 -1780 610 -1740 {lab=#net8}
N 650 -1220 650 -1200 {lab=#net9}
N 140 -1370 140 -1350 {lab=VDD}
N 140 -1270 140 -1250 {lab=VSS}
N 50 -1310 90 -1310 {lab=A1}
N 140 -1170 140 -1150 {lab=VDD}
N 140 -1070 140 -1050 {lab=VSS}
N 50 -1110 90 -1110 {lab=B1}
N 370 -1310 450 -1310 {lab=RESET}
N 880 -990 880 -970 {lab=VDD}
N 880 -890 880 -870 {lab=VSS}
N 300 -1370 300 -1350 {lab=VDD}
N 300 -1270 300 -1250 {lab=VSS}
N 210 -1310 250 -1310 {lab=#net10}
N 210 -1110 450 -1110 {lab=CLK}
N 650 -1300 650 -1280 {lab=VDD}
N 140 -980 140 -960 {lab=VDD}
N 140 -880 140 -860 {lab=VSS}
N 50 -920 90 -920 {lab=C1}
N 210 -920 450 -920 {lab=D}
N 720 -1070 740 -1070 {lab=QN}
N 720 -1150 740 -1150 {lab=Q}
N 880 -1370 880 -1350 {lab=VDD}
N 880 -1270 880 -1250 {lab=VSS}
N 790 -1310 830 -1310 {lab=Q}
N 790 -1340 790 -1310 {lab=Q}
N 790 -960 790 -930 {lab=QN}
N 790 -930 830 -930 {lab=QN}
N 440 -1880 440 -1840 {lab=#net11}
N 760 -1880 760 -1840 {lab=#net12}
N 760 -1480 760 -1450 {lab=#net13}
N 760 -1580 760 -1540 {lab=#net14}
N 760 -1680 760 -1640 {lab=#net15}
N 760 -1780 760 -1740 {lab=#net16}
N 440 -1780 440 -1740 {lab=#net17}
N 1100 -920 1100 -890 {lab=VSS}
N 1270 -920 1270 -890 {lab=VSS}
N 1100 -1020 1100 -980 {lab=A1}
N 1270 -1020 1270 -980 {lab=B1}
N 1420 -920 1420 -890 {lab=VSS}
N 1420 -1020 1420 -980 {lab=C1}
C {/foss/designs/GRO-TDC/std_cells/FF_D.sym} 480 -1000 0 0 {name=x1}
C {lab_wire.sym} 650 -990 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -1880 0 1 {name=p8 sig_type=std_logic lab=A1
spice_ignore=true}
C {lab_wire.sym} 540 -1150 0 0 {name=p9 sig_type=std_logic lab=D}
C {lab_wire.sym} 540 -1110 0 0 {name=p10 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 540 -1070 0 0 {name=p11 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 740 -1150 0 1 {name=p3 sig_type=std_logic lab=Q}
C {lab_wire.sym} 740 -1070 0 1 {name=p6 sig_type=std_logic lab=QN}
C {lab_wire.sym} 440 -1450 0 0 {name=p41 sig_type=std_logic lab=VSS
spice_ignore=true}
C {devices/launcher.sym} 95 -1705 0 0 {name=h4
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_FF_D.raw tran"
}
C {devices/launcher.sym} 95 -1765 0 0 {name=h6
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 30 -1850 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 610 -1450 0 0 {name=p43 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 610 -1880 0 1 {name=p44 sig_type=std_logic lab=B1
spice_ignore=true}
C {code.sym} 1890 -1860 0 0 {name=Transient_A_1 only_toplevel=true 
value="
* Parameters
.param temp=65
.param VSS=0
.param VDD=1.2

.param tr=10p
.param tf=10p
.param PW=10n

.param tda_1=35n
.param tda_2=55n
.param tda_3=65n
.param tda_4=75n

.param tdb_1=18n
.param tdb_2=28n
.param tdb_3=58n
.param tdb_4=68n

.param tdc_1=10n
.param tdc_2=30n
.param tdc_3=55n
.param tdc_4=70n

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 100n

* Definition of the variables of the voltages of the nodes
let vin  = v(CLK)
let vout = v(Q)
let VM = 0.6

* Measurement of the propagation delay; Reference: Rabaey book page 195
* Reference: NGSPICE manual page 325
meas tran tpLH TRIG vin VAL=VM TD=1n FALL=1 TARG vout VAL=VM TD=1n FALL=1
meas tran tpHL TRIG vin VAL=VM TD=1n RISE=1 TARG vout VAL=VM TD=1n RISE=1
let tp = (tpLH+tpHL)/2
print tp

* Measurement of the time and voltages for the rise and fall time
meas tran time_20_percent WHEN vout=VDD*0.2 
meas tran v_20_percent FIND vout WHEN time=time_20_percent
meas tran time_80_percent WHEN vout=VDD*0.8 
meas tran v_80_percent FIND vout WHEN time=time_80_percent


* Measurement of the rise time:
meas tran trise TRIG vout VAL=v_20_percent TD=1n RISE=1 TARG vout VAL=v_80_percent TD=1n RISE=1

* Measurement of the fall time:
meas tran tfall TRIG vout VAL=v_80_percent TD=1n FALL=1 TARG vout VAL=v_20_percent TD=1n FALL=1

* Measurement of the RMS and AVG current:
let i_vdd=i(vdd_current)
meas tran i_vdd_rms RMS i_vdd
meas tran i_vdd_avg AVG i_vdd

*plot i_vdd



* Saving the of the nodes into the raw file
write tb_FF_D.raw
set appendwrite
.endc
"
}
C {vsource.sym} 60 -1520 0 0 {name=V15 value=\{VSS\} savecurrent=false}
C {gnd.sym} 60 -1470 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 60 -1590 0 0 {name=p45 sig_type=std_logic lab=VSS}
C {vsource.sym} 180 -1520 0 0 {name=V16 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 180 -1460 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -1590 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {vsource.sym} 440 -1510 0 0 {name=V17 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_1\}, \{tr\}, \{tf\}, 1n)" savecurrent=false
spice_ignore=true}
C {vsource.sym} 440 -1610 0 0 {name=V18 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_2\}, \{tr\}, \{tf\}, 1n)" savecurrent=false
spice_ignore=true}
C {vsource.sym} 610 -1510 0 0 {name=V19 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {vsource.sym} 610 -1610 0 0 {name=V20 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_2\}, \{tr\}, \{tf\}, 20n)" savecurrent=false
spice_ignore=true}
C {vsource.sym} 610 -1710 0 0 {name=V21 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {vsource.sym} 440 -1710 0 0 {name=V22 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_3\}, \{tr\}, \{tf\}, 1n)" savecurrent=false
spice_ignore=true}
C {vsource.sym} 610 -1810 0 0 {name=V23 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdb_4\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 790 -960 0 1 {name=p49 sig_type=std_logic lab=QN}
C {lab_wire.sym} 450 -1310 0 0 {name=p50 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 450 -1110 0 0 {name=p51 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 140 -1250 3 0 {name=p52 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -1370 0 0 {name=p53 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 50 -1310 0 0 {name=p54 sig_type=std_logic lab=A1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 50 -1170 0 0 {name=x9}
C {lab_wire.sym} 140 -1050 3 0 {name=p55 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -1170 0 0 {name=p56 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 50 -1110 0 0 {name=p57 sig_type=std_logic lab=B1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 50 -970 0 0 {name=x10}
C {lab_wire.sym} 880 -870 3 0 {name=p58 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 880 -990 0 0 {name=p59 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 790 -790 0 0 {name=x11}
C {lab_wire.sym} 300 -1250 3 0 {name=p60 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 300 -1370 0 0 {name=p61 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 210 -1170 0 0 {name=x12}
C {lab_wire.sym} 650 -1300 0 0 {name=p64 sig_type=std_logic lab=VDD}
C {ammeter.sym} 650 -1250 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
C {lab_wire.sym} 450 -920 0 0 {name=p17 sig_type=std_logic lab=D}
C {lab_wire.sym} 140 -860 3 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -980 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 50 -920 0 0 {name=p20 sig_type=std_logic lab=C1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 50 -780 0 0 {name=x2}
C {lab_wire.sym} 790 -1340 0 1 {name=p14 sig_type=std_logic lab=Q}
C {lab_wire.sym} 880 -1250 3 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 880 -1370 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 790 -1170 0 0 {name=x4}
C {vsource.sym} 440 -1810 0 0 {name=V1 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tda_4\}, \{tr\}, \{tf\}, 1n)" savecurrent=false
spice_ignore=true}
C {lab_wire.sym} 760 -1450 0 0 {name=p1 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 760 -1880 0 1 {name=p12 sig_type=std_logic lab=C1
spice_ignore=true}
C {vsource.sym} 760 -1510 0 0 {name=V5 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdc_1\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {vsource.sym} 760 -1610 0 0 {name=V6 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdc_2\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {vsource.sym} 760 -1710 0 0 {name=V7 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdc_3\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {vsource.sym} 760 -1810 0 0 {name=V8 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, \{tdc_4\}, \{tr\}, \{tf\}, \{PW\})" savecurrent=false
spice_ignore=true}
C {code.sym} 1890 -1690 0 0 {name=Transient_A_2 only_toplevel=true 
value="
* Parameters
.param temp=65
.param VSS=0
.param VDD=1.2

.param tr=10p
.param tf=10p
.param PW=10n

.param tda_1=45n
.param tda_2=55n
.param tda_3=65n
.param tda_4=75n

.param tdb_1=18n
.param tdb_2=28n
.param tdb_3=58n
.param tdb_4=68n

.param tdc_1=10n
.param tdc_2=30n
.param tdc_3=50n
.param tdc_4=70n

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 80n

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
write tb_FF_D.raw
set appendwrite
.endc
"
spice_ignore=true}
C {code.sym} 1890 -1520 0 0 {name=Transient_A_3 only_toplevel=true 
value="
* Parameters
.param temp=65
.param VSS=0
.param VDD=1.2

.param tr=10p
.param tf=10p
.param PW=10n

.param tda_1=45n
.param tda_2=55n
.param tda_3=65n
.param tda_4=75n

.param tdb_1=18n
.param tdb_2=28n
.param tdb_3=58n
.param tdb_4=68n

.param tdc_1=10n
.param tdc_2=30n
.param tdc_3=50n
.param tdc_4=70n

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 80n

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
write tb_FF_D.raw
set appendwrite
.endc
"
spice_ignore=true}
C {lab_wire.sym} 1100 -890 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1270 -890 0 0 {name=p5 sig_type=std_logic lab=VSS
}
C {vsource.sym} 1100 -950 0 0 {name=V2 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, 25n, \{tr\}, \{tf\}, 1n)" savecurrent=false
}
C {vsource.sym} 1270 -950 0 0 {name=V3 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, 2n, \{tr\}, \{tf\}, \{PW\}, 20n)" savecurrent=false
}
C {lab_wire.sym} 1420 -890 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {vsource.sym} 1420 -950 0 0 {name=V4 value="dc 0 ac 0 pulse(\{VSS\}, \{VDD\}, 10n, \{tr\}, \{tf\}, 20n, 30n)" savecurrent=false
}
C {lab_wire.sym} 1100 -1020 0 1 {name=p13 sig_type=std_logic lab=A1
}
C {lab_wire.sym} 1270 -1020 0 1 {name=p15 sig_type=std_logic lab=B1
}
C {lab_wire.sym} 1420 -1020 0 1 {name=p16 sig_type=std_logic lab=C1
}
