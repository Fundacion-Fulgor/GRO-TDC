v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -400 400 -400 {lab=VSS}
N 730 -400 750 -400 {lab=VSS}
N 1090 -400 1110 -400 {lab=VSS}
N 1030 -500 1030 -480 {lab=RESET}
N 970 -500 970 -480 {lab=K2}
N 670 -500 670 -480 {lab=RESET}
N 610 -500 610 -480 {lab=K1}
N 320 -500 320 -480 {lab=RESET}
N 260 -500 260 -480 {lab=K0}
N 180 -400 200 -400 {lab=VDD}
N 240 -340 240 -320 {lab=C0_B[0]}
N 260 -340 260 -300 {lab=C0_B[1]}
N 280 -340 280 -280 {lab=C0_B[2]}
N 300 -340 300 -260 {lab=C0_B[3]}
N 320 -340 320 -240 {lab=C0_B[4]}
N 340 -340 340 -220 {lab=C0_B[5]}
N 890 -400 910 -400 {lab=VDD}
N 530 -400 550 -400 {lab=VDD}
N 400 -400 400 -360 {lab=VSS}
N 750 -400 750 -360 {lab=VSS}
N 1110 -400 1110 -360 {lab=VSS}
N 410 -640 450 -640 {lab=K0}
N 410 -600 450 -600 {lab=K1}
N 410 -560 450 -560 {lab=K2}
N 410 -680 450 -680 {lab=RESET}
N 550 -680 590 -680 {lab=VDD}
N 550 -640 590 -640 {lab=VSS}
N 820 -680 860 -680 {lab=C0_B[5:0]}
N 820 -630 860 -630 {lab=C1_B[5:0]}
N 820 -590 860 -590 {lab=C2_B[5:0]}
N 320 -220 340 -220 {lab=C0_B[5]}
N 280 -240 320 -240 {lab=C0_B[4]}
N 240 -260 300 -260 {lab=C0_B[3]}
N 200 -280 280 -280 {lab=C0_B[2]}
N 160 -300 260 -300 {lab=C0_B[1]}
N 120 -320 240 -320 {lab=C0_B[0]}
N 590 -340 590 -320 {lab=C1_B[0]}
N 610 -340 610 -300 {lab=C1_B[1]}
N 630 -340 630 -280 {lab=C1_B[2]}
N 650 -340 650 -260 {lab=C1_B[3]}
N 670 -340 670 -240 {lab=C1_B[4]}
N 690 -340 690 -220 {lab=C1_B[5]}
N 670 -220 690 -220 {lab=C1_B[5]}
N 630 -240 670 -240 {lab=C1_B[4]}
N 590 -260 650 -260 {lab=C1_B[3]}
N 550 -280 630 -280 {lab=C1_B[2]}
N 510 -300 610 -300 {lab=C1_B[1]}
N 470 -320 590 -320 {lab=C1_B[0]}
N 950 -340 950 -320 {lab=C2_B[0]}
N 970 -340 970 -300 {lab=C2_B[1]}
N 990 -340 990 -280 {lab=C2_B[2]}
N 1010 -340 1010 -260 {lab=C2_B[3]}
N 1030 -340 1030 -240 {lab=C2_B[4]}
N 1050 -340 1050 -220 {lab=C2_B[5]}
N 1030 -220 1050 -220 {lab=C2_B[5]}
N 990 -240 1030 -240 {lab=C2_B[4]}
N 950 -260 1010 -260 {lab=C2_B[3]}
N 910 -280 990 -280 {lab=C2_B[2]}
N 870 -300 970 -300 {lab=C2_B[1]}
N 830 -320 950 -320 {lab=C2_B[0]}
C {/home/designer/shared/GRO-TDC/std_cells/6bits_counter.sym} 740 -510 3 1 {name=x5}
C {/home/designer/shared/GRO-TDC/std_cells/6bits_counter.sym} 390 -510 3 1 {name=x6}
C {/home/designer/shared/GRO-TDC/std_cells/6bits_counter.sym} 1100 -510 3 1 {name=x7}
C {iopin.sym} 550 -680 0 1 {name=p1 lab=VDD}
C {iopin.sym} 550 -640 0 1 {name=p2 lab=VSS}
C {lab_wire.sym} 180 -400 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -400 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 890 -400 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -360 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 750 -360 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1110 -360 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {ipin.sym} 410 -640 0 0 {name=p9 lab=K0}
C {ipin.sym} 410 -600 0 0 {name=p10 lab=K1}
C {ipin.sym} 410 -560 0 0 {name=p11 lab=K2}
C {ipin.sym} 410 -680 0 0 {name=p12 lab=RESET}
C {lab_wire.sym} 260 -500 0 0 {name=p13 sig_type=std_logic lab=K0}
C {lab_wire.sym} 610 -500 0 0 {name=p14 sig_type=std_logic lab=K1}
C {lab_wire.sym} 970 -500 0 0 {name=p15 sig_type=std_logic lab=K2}
C {lab_wire.sym} 320 -500 0 0 {name=p16 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 670 -500 0 0 {name=p17 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 1030 -500 0 0 {name=p18 sig_type=std_logic lab=RESET}
C {opin.sym} 820 -680 0 1 {name=p19 lab=C0_B[5:0]}
C {opin.sym} 820 -630 0 1 {name=p25 lab=C1_B[5:0]}
C {opin.sym} 820 -590 0 1 {name=p31 lab=C2_B[5:0]}
C {lab_wire.sym} 120 -320 2 1 {name=p37 lab=C0_B[0]}
C {lab_wire.sym} 160 -300 2 1 {name=p38 lab=C0_B[1]}
C {lab_wire.sym} 200 -280 2 1 {name=p39 lab=C0_B[2]}
C {lab_wire.sym} 240 -260 2 1 {name=p40 lab=C0_B[3]}
C {lab_wire.sym} 280 -240 2 1 {name=p41 lab=C0_B[4]}
C {lab_wire.sym} 320 -220 2 1 {name=p42 lab=C0_B[5]}
C {lab_wire.sym} 470 -320 2 1 {name=p43 lab=C1_B[0]}
C {lab_wire.sym} 510 -300 2 1 {name=p44 lab=C1_B[1]}
C {lab_wire.sym} 550 -280 2 1 {name=p45 lab=C1_B[2]}
C {lab_wire.sym} 590 -260 2 1 {name=p46 lab=C1_B[3]}
C {lab_wire.sym} 630 -240 2 1 {name=p47 lab=C1_B[4]}
C {lab_wire.sym} 670 -220 2 1 {name=p48 lab=C1_B[5]}
C {lab_wire.sym} 830 -320 2 1 {name=p20 lab=C2_B[0]}
C {lab_wire.sym} 870 -300 2 1 {name=p21 lab=C2_B[1]}
C {lab_wire.sym} 910 -280 2 1 {name=p22 lab=C2_B[2]}
C {lab_wire.sym} 950 -260 2 1 {name=p23 lab=C2_B[3]}
C {lab_wire.sym} 990 -240 2 1 {name=p24 lab=C2_B[4]}
C {lab_wire.sym} 1030 -220 2 1 {name=p26 lab=C2_B[5]}
