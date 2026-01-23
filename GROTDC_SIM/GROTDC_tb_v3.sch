v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 420 -1440 420 -1410 {lab=GND}
N 420 -1540 420 -1500 {lab=VSS}
N 560 -1440 560 -1410 {lab=VSS}
N 560 -1540 560 -1500 {lab=VDD}
N 760 -1240 760 -1210 {lab=VSS}
N 420 -1240 420 -1210 {lab=VSS}
N 760 -1340 760 -1300 {lab=RESET}
N 420 -1340 420 -1300 {lab=DECLK}
N 460 -1000 500 -1000 {lab=START}
N 460 -960 500 -960 {lab=STOP}
N 620 -1070 620 -1040 {lab=VDD}
N 620 -860 620 -830 {lab=VSS}
N 1000 -1370 1000 -1340 {lab=VSS}
N 680 -1440 680 -1410 {lab=VSS}
N 1000 -1560 1000 -1520 {lab=STOP}
N 680 -1540 680 -1500 {lab=START}
N 1000 -1460 1000 -1430 {lab=#net1}
N 740 -950 840 -950 {lab=ADDER[7:0]}
N 460 -900 500 -900 {lab=VSS}
N 400 -920 500 -920 {lab=DECLK}
C {vsource.sym} 420 -1470 0 0 {name=V1 value=0 savecurrent=false
}
C {gnd.sym} 420 -1410 0 0 {name=l1 lab=GND
}
C {lab_wire.sym} 420 -1540 0 0 {name=p1 sig_type=std_logic lab=VSS
}
C {vsource.sym} 560 -1470 0 0 {name=V5 value=1.2 savecurrent=false
}
C {lab_wire.sym} 560 -1410 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {devices/launcher.sym} 535 -1625 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/GROTDC_tb.raw tran"
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
C {vsource.sym} 760 -1270 0 0 {name=V2 value="dc 0 ac 0 pulse(0, 1.2, 190n, 500p, 500p, 5n, 0)" savecurrent=false
}
C {lab_wire.sym} 420 -1210 0 0 {name=p3 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 760 -1340 0 1 {name=p6 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 420 -1340 0 1 {name=p9 sig_type=std_logic lab=DECLK
}
C {vsource.sym} 420 -1270 0 0 {name=V6 value="dc 0 ac 0 pulse(0, 1.2, 17n, 500p, 500p, 5n, 0)" savecurrent=false
}
C {lab_wire.sym} 560 -1540 0 0 {name=p13 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 760 -1210 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 620 -1070 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 460 -1000 0 0 {name=p20 sig_type=std_logic lab=START
}
C {lab_wire.sym} 460 -960 0 0 {name=p22 sig_type=std_logic lab=STOP
}
C {lab_wire.sym} 620 -830 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {GROTDC.sym} 480 -840 0 0 {name=x2
}
C {lab_wire.sym} 680 -1410 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1000 -1560 0 1 {name=p14 sig_type=std_logic lab=STOP
}
C {lab_wire.sym} 680 -1540 0 1 {name=p15 sig_type=std_logic lab=START
}
C {vsource.sym} 680 -1470 0 0 {name=V10 value="dc 0 ac 0 pulse(0, 1.2, 5n, 50p, 50p, 10n, 20n)" savecurrent=false
}
C {vsource.sym} 1000 -1400 0 0 {name=V11 value="dc 0 ac 0 pulse(0, 1.2, 0, 50p, 50p, 1n, 0)" savecurrent=false
}
C {vsource.sym} 1000 -1490 0 0 {name=V12 value="dc 0 ac 0 pulse(0, 1.2, 14n, 50p, 50p, 10n, 20n)" savecurrent=false
}
C {lab_wire.sym} 840 -950 0 1 {name=p2 sig_type=std_logic lab=ADDER[7:0]}
C {lab_wire.sym} 460 -900 0 0 {name=p4 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 400 -920 0 0 {name=p5 sig_type=std_logic lab=DECLK
}
C {lab_wire.sym} 1000 -1340 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {code.sym} 80 -1520 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=65


.control
save all 
tran 10p 20n
* Sources
let START = v(START)
let STOP = v(STOP)
let DECLK = v(DECLK)
let RESET = v(RESET)

* GRO
let IN0 = v(x2.IN0)
let IN1 = v(x2.IN1)
let IN2 = v(x2.IN2)

* Buffers
let K0 = v(x2.K0)
let K1 = v(x2.K1)
let K2 = v(x2.K2)

* Counters Reg
let D0_0 = v(x2.D0[0])
let D0_1 = v(x2.D0[1])
let D0_2 = v(x2.D0[2])
let D0_3 = v(x2.D0[3])
let D0_4 = v(x2.D0[4])
let D0_5 = v(x2.D0[5])
let D1_0 = v(x2.D1[0])
let D1_1 = v(x2.D1[1])
let D1_2 = v(x2.D1[2])
let D1_3 = v(x2.D1[3])
let D1_4 = v(x2.D1[4])
let D1_5 = v(x2.D1[5])
let D2_0 = v(x2.D2[0])
let D2_1 = v(x2.D2[1])
let D2_2 = v(x2.D2[2])
let D2_3 = v(x2.D2[3])
let D2_4 = v(x2.D2[4])
let D2_5 = v(x2.D2[5])

* FA
let S1_0 = v(x2.S1[0])
let S1_1 = v(x2.S1[1])
let S1_2 = v(x2.S1[2])
let S1_3 = v(x2.S1[3])
let S1_4 = v(x2.S1[4])
let S1_5 = v(x2.S1[5])
let COUT1 = v(x2.COUT1)
let S2_0 = v(x2.S2[0])
let S2_1 = v(x2.S2[1])
let S2_2 = v(x2.S2[2])
let S2_3 = v(x2.S2[3])
let S2_4 = v(x2.S2[4])
let S2_5 = v(x2.S2[5])
let S2_6 = v(x2.S2[6])
let COUT2 = v(x2.COUT2)

* FA Regs
let ADDER_0 = v(ADDER[0])
let ADDER_1 = v(ADDER[1])
let ADDER_2 = v(ADDER[2])
let ADDER_3 = v(ADDER[3])
let ADDER_4 = v(ADDER[4])
let ADDER_5 = v(ADDER[5])
let ADDER_6 = v(ADDER[6])
let ADDER_7 = v(ADDER[7])

write GROTDC_tb.raw
wrdata GRO_TDC_tb.raw time START STOP DECLK RESET IN0 IN1 IN2 K0 K1 K2 D0_0 D0_1 D0_2 D0_3 D0_4 D0_5 D1_0 D1_1 D1_2 D1_3 D1_4 D1_5 D2_0 D2_1 D2_2 D2_3 D2_4 D2_5 S1_0 S1_1 S1_2 S1_3 S1_4 S1_5 COUT1 S2_0 S2_1 S2_2 S2_3 S2_4 S2_5 S2_6 COUT2 ADDER_0 ADDER_1 ADDER_2 ADDER_3 ADDER_4 ADDER_5 ADDER_6  ADDER_7


*set appendwrite

.endc
"
spice_ignore=true}
C {code.sym} 80 -1330 0 0 {name=NGSPICE2 only_toplevel=true 
value="

.param temp=65


.control
save all 
tran 10p 20n
* Sources
let START = v(START)
let STOP = v(STOP)
let DECLK = v(DECLK)
let RESET = v(RESET)

* GRO
let IN0 = v(x2.IN0)
let IN1 = v(x2.IN1)
let IN2 = v(x2.IN2)

* Buffers
let K0 = v(x2.K0)
let K1 = v(x2.K1)
let K2 = v(x2.K2)

* Counters Reg
let D0_0 = v(x2.D0[0])
let D0_1 = v(x2.D0[1])
let D0_2 = v(x2.D0[2])
let D0_3 = v(x2.D0[3])
let D0_4 = v(x2.D0[4])
let D0_5 = v(x2.D0[5])
let D1_0 = v(x2.D1[0])
let D1_1 = v(x2.D1[1])
let D1_2 = v(x2.D1[2])
let D1_3 = v(x2.D1[3])
let D1_4 = v(x2.D1[4])
let D1_5 = v(x2.D1[5])
let D2_0 = v(x2.D2[0])
let D2_1 = v(x2.D2[1])
let D2_2 = v(x2.D2[2])
let D2_3 = v(x2.D2[3])
let D2_4 = v(x2.D2[4])
let D2_5 = v(x2.D2[5])

* FA
let S1_0 = v(x2.S1[0])
let S1_1 = v(x2.S1[1])
let S1_2 = v(x2.S1[2])
let S1_3 = v(x2.S1[3])
let S1_4 = v(x2.S1[4])
let S1_5 = v(x2.S1[5])
let COUT1 = v(x2.COUT1)
let S2_0 = v(x2.S2[0])
let S2_1 = v(x2.S2[1])
let S2_2 = v(x2.S2[2])
let S2_3 = v(x2.S2[3])
let S2_4 = v(x2.S2[4])
let S2_5 = v(x2.S2[5])
let S2_6 = v(x2.S2[6])
let COUT2 = v(x2.COUT2)

* FA Regs
let ADDER_0 = v(ADDER[0])
let ADDER_1 = v(ADDER[1])
let ADDER_2 = v(ADDER[2])
let ADDER_3 = v(ADDER[3])
let ADDER_4 = v(ADDER[4])
let ADDER_5 = v(ADDER[5])
let ADDER_6 = v(ADDER[6])
let ADDER_7 = v(ADDER[7])

write GROTDC_tb.raw
wrdata GRO_TDC_tb.raw time START STOP DECLK RESET IN0 IN1 IN2 K0 K1 K2 D0_0 D0_1 D0_2 D0_3 D0_4 D0_5 D1_0 D1_1 D1_2 D1_3 D1_4 D1_5 D2_0 D2_1 D2_2 D2_3 D2_4 D2_5 S1_0 S1_1 S1_2 S1_3 S1_4 S1_5 COUT1 S2_0 S2_1 S2_2 S2_3 S2_4 S2_5 S2_6 COUT2 ADDER_0 ADDER_1 ADDER_2 ADDER_3 ADDER_4 ADDER_5 ADDER_6  ADDER_7


*set appendwrite

.endc
"

}
