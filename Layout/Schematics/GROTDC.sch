v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 2460 -660 2460 -640 {lab=VDD}
N 2900 -660 2900 -640 {lab=VDD}
N 2460 -460 2460 -440 {lab=VSS}
N 2900 -460 2900 -440 {lab=VSS}
N 2020 -390 2020 -370 {lab=VDD}
N 2460 -390 2460 -370 {lab=VDD}
N 2020 -190 2020 -170 {lab=VSS}
N 2460 -190 2460 -170 {lab=VSS}
N 2580 -300 2620 -300 {lab=S2[6:0]}
N 2580 -260 2620 -260 {lab=COUT2}
N 3020 -570 3080 -570 {lab=D0[5:0]}
N 3020 -550 3060 -550 {lab=D1[5:0]}
N 3020 -530 3040 -530 {lab=D2[5:0]}
N 2740 -520 2780 -520 {lab=DECLK}
N 2760 -500 2780 -500 {lab=RESET}
N 2580 -570 2640 -570 {lab=#net1}
N 2580 -550 2660 -550 {lab=#net2}
N 2580 -530 2680 -530 {lab=#net3}
N 2320 -500 2340 -500 {lab=DECLK}
N 2300 -530 2340 -530 {lab=K2}
N 2280 -550 2340 -550 {lab=K1}
N 2260 -570 2340 -570 {lab=K0}
N 1860 -330 1900 -330 {lab=D0[5:0]}
N 1860 -280 1900 -280 {lab=D1[5:0]}
N 1860 -230 1900 -230 {lab=VSS}
N 2640 -600 2640 -570 {lab=#net1}
N 2640 -600 2780 -600 {lab=#net1}
N 2660 -580 2660 -550 {lab=#net2}
N 2660 -580 2780 -580 {lab=#net2}
N 2680 -560 2680 -530 {lab=#net3}
N 2680 -560 2780 -560 {lab=#net3}
N 2140 -300 2160 -300 {lab=S1[5:0]}
N 2140 -260 2160 -260 {lab=COUT1}
N 2320 -230 2340 -230 {lab=VSS}
N 2320 -280 2340 -280 {lab=VSS,D2[5:0]}
N 2320 -330 2340 -330 {lab=COUT1,S1[5:0]}
N 2900 -390 2900 -370 {lab=VDD}
N 2900 -190 2900 -170 {lab=VSS}
N 3020 -280 3060 -280 {lab=ADDER[7:0]}
N 2760 -240 2780 -240 {lab=RESET}
N 2740 -280 2780 -280 {lab=DECLK}
N 1920 -1000 1960 -1000 {lab=START}
N 1920 -960 1960 -960 {lab=STOP}
N 1920 -920 1960 -920 {lab=RESET}
N 1920 -880 1960 -880 {lab=DECLK}
N 2060 -1000 2100 -1000 {lab=VDD}
N 2060 -960 2100 -960 {lab=VSS}
N 2280 -1000 2320 -1000 {lab=ADDER[7:0]}
N 2740 -320 2780 -320 {lab=COUT2,S2[6:0]}
N 2490 -940 2530 -940 {lab=START}
N 2490 -900 2530 -900 {lab=STOP}
N 2600 -1000 2600 -970 {lab=VDD}
N 2600 -870 2600 -840 {lab=VSS}
N 2800 -1010 2800 -980 {lab=VDD}
N 2670 -940 2740 -940 {lab=EN}
N 2800 -740 2800 -710 {lab=VSS}
N 2900 -740 2900 -710 {lab=IN0}
N 3020 -740 3020 -710 {lab=IN1}
N 3140 -740 3140 -710 {lab=IN2}
N 2020 -460 2020 -430 {lab=VSS}
N 2140 -590 2170 -590 {lab=K0}
N 2140 -550 2170 -550 {lab=K1}
N 2140 -510 2170 -510 {lab=K2}
N 1870 -590 1900 -590 {lab=IN0}
N 1870 -550 1900 -550 {lab=IN1}
N 1870 -510 1900 -510 {lab=IN2}
N 2020 -670 2020 -640 {lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/Counters_6bits.sym} 2240 -400 0 0 {name=x5
}
C {/home/designer/shared/GRO-TDC/std_cells/Counters_regs_6bits.sym} 2680 -370 0 0 {name=x6
}
C {/home/designer/shared/GRO-TDC/std_cells/Counter_FA_6bits.sym} 1880 -190 0 0 {name=x7
}
C {/home/designer/shared/GRO-TDC/std_cells/Counter_FA_7bits.sym} 2080 -110 0 0 {name=x8
}
C {lab_wire.sym} 2460 -440 0 0 {name=p9 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2900 -440 0 0 {name=p10 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2460 -170 0 0 {name=p11 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2020 -170 0 0 {name=p12 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2460 -660 0 0 {name=p13 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2900 -660 0 0 {name=p14 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2460 -390 0 0 {name=p15 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2020 -390 0 0 {name=p16 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2280 -550 3 0 {name=p18 sig_type=std_logic lab=K1
}
C {lab_wire.sym} 2260 -570 3 0 {name=p17 sig_type=std_logic lab=K0
}
C {lab_wire.sym} 2300 -530 3 0 {name=p19 sig_type=std_logic lab=K2
}
C {lab_wire.sym} 2320 -500 3 0 {name=p20 sig_type=std_logic lab=DECLK
}
C {lab_wire.sym} 2740 -520 3 0 {name=p21 sig_type=std_logic lab=DECLK
}
C {lab_wire.sym} 2760 -500 3 0 {name=p22 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 2320 -330 0 0 {name=p23 sig_type=std_logic lab=COUT1,S1[5:0]
}
C {lab_wire.sym} 3080 -570 0 1 {name=p24 sig_type=std_logic lab=D0[5:0]
}
C {lab_wire.sym} 3060 -550 0 1 {name=p25 sig_type=std_logic lab=D1[5:0]
}
C {lab_wire.sym} 3040 -530 0 1 {name=p26 sig_type=std_logic lab=D2[5:0]
}
C {lab_wire.sym} 1860 -330 0 0 {name=p27 sig_type=std_logic lab=D0[5:0]
}
C {lab_wire.sym} 1860 -280 0 0 {name=p28 sig_type=std_logic lab=D1[5:0]
}
C {lab_wire.sym} 2320 -280 0 0 {name=p29 sig_type=std_logic lab=VSS,D2[5:0]
}
C {lab_wire.sym} 1860 -230 0 0 {name=p30 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2320 -230 0 0 {name=p31 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2160 -300 0 1 {name=p32 sig_type=std_logic lab=S1[5:0]
}
C {lab_wire.sym} 2160 -260 0 1 {name=p33 sig_type=std_logic lab=COUT1
}
C {lab_wire.sym} 2620 -260 0 1 {name=p35 sig_type=std_logic lab=COUT2
}
C {lab_wire.sym} 2900 -390 0 0 {name=p36 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2900 -170 0 0 {name=p37 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2740 -280 3 0 {name=p34 sig_type=std_logic lab=DECLK
}
C {lab_wire.sym} 2760 -240 3 0 {name=p38 sig_type=std_logic lab=RESET
}
C {/home/designer/shared/GRO-TDC/std_cells/Counters__FA_regs_7bits.sym} 2740 -160 0 0 {name=x9
}
C {lab_wire.sym} 3060 -280 0 1 {name=p39 sig_type=std_logic lab=ADDER[7:0]
}
C {ipin.sym} 1920 -1000 0 0 {name=p40 lab=START}
C {ipin.sym} 1920 -960 0 0 {name=p41 lab=STOP}
C {ipin.sym} 1920 -920 0 0 {name=p42 lab=RESET}
C {ipin.sym} 1920 -880 0 0 {name=p45 lab=DECLK}
C {iopin.sym} 2060 -1000 0 1 {name=p46 lab=VDD}
C {iopin.sym} 2060 -960 0 1 {name=p47 lab=VSS}
C {opin.sym} 2280 -1000 0 1 {name=p48 lab=ADDER[7:0]}
C {lab_wire.sym} 2620 -300 0 1 {name=p49 sig_type=std_logic lab=S2[6:0]
}
C {lab_wire.sym} 2740 -320 0 0 {name=p50 sig_type=std_logic lab=COUT2,S2[6:0]
}
C {lab_wire.sym} 2600 -840 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2800 -1010 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {/home/designer/shared/GRO-TDC/std_cells/SR_Latch.sym} 2510 -830 0 0 {name=x1}
C {lab_wire.sym} 2600 -1000 0 0 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 2490 -940 0 0 {name=p4 sig_type=std_logic lab=START
}
C {lab_wire.sym} 2490 -900 0 0 {name=p5 sig_type=std_logic lab=STOP
}
C {lab_wire.sym} 2710 -940 0 0 {name=p6 sig_type=std_logic lab=EN
}
C {GRO.sym} 2740 -720 0 0 {name=x2
}
C {lab_wire.sym} 2800 -710 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 2900 -710 0 0 {name=p8 sig_type=std_logic lab=IN0
}
C {lab_wire.sym} 3020 -710 0 0 {name=p43 sig_type=std_logic lab=IN1
}
C {lab_wire.sym} 3140 -710 0 0 {name=p44 sig_type=std_logic lab=IN2
}
C {lab_wire.sym} 2020 -430 0 0 {name=p51 sig_type=std_logic lab=VSS
}
C {Modi_Buffers.sym} 1800 -370 0 0 {name=x3
}
C {lab_wire.sym} 2170 -590 3 1 {name=p52 sig_type=std_logic lab=K0
}
C {lab_wire.sym} 2170 -550 3 1 {name=p53 sig_type=std_logic lab=K1
}
C {lab_wire.sym} 2170 -510 3 1 {name=p54 sig_type=std_logic lab=K2
}
C {lab_wire.sym} 1870 -590 1 0 {name=p55 sig_type=std_logic lab=IN0
}
C {lab_wire.sym} 1870 -550 1 0 {name=p56 sig_type=std_logic lab=IN1
}
C {lab_wire.sym} 1870 -510 1 0 {name=p57 sig_type=std_logic lab=IN2
}
C {lab_wire.sym} 2020 -670 0 0 {name=p58 sig_type=std_logic lab=VDD
}
