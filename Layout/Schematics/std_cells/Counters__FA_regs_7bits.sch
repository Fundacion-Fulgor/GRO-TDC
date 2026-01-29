v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -510 220 -510 {lab=RESET}
N 320 -510 360 -510 {lab=VDD}
N 320 -470 360 -470 {lab=VSS}
N 140 -280 140 -260 {lab=RESET}
N 180 -280 180 -260 {lab=CLK}
N 220 -280 220 -260 {lab=S[0]}
N 270 -190 290 -190 {lab=VDD}
N 70 -190 90 -190 {lab=VSS}
N 220 -120 220 -100 {lab=D[0]}
N 510 -510 550 -510 {lab=D[7:0]}
N 180 -430 220 -430 {lab=S[7:0]}
N 180 -470 220 -470 {lab=CLK}
N 290 -190 290 -150 {lab=VDD}
N 70 -190 70 -150 {lab=VSS}
N 440 -280 440 -260 {lab=RESET}
N 480 -280 480 -260 {lab=CLK}
N 520 -280 520 -260 {lab=S[1]}
N 570 -190 590 -190 {lab=VDD}
N 370 -190 390 -190 {lab=VSS}
N 520 -120 520 -100 {lab=D[1]}
N 590 -190 590 -150 {lab=VDD}
N 370 -190 370 -150 {lab=VSS}
N 740 -280 740 -260 {lab=RESET}
N 780 -280 780 -260 {lab=CLK}
N 820 -280 820 -260 {lab=S[2]}
N 870 -190 890 -190 {lab=VDD}
N 670 -190 690 -190 {lab=VSS}
N 820 -120 820 -100 {lab=D[2]}
N 890 -190 890 -150 {lab=VDD}
N 670 -190 670 -150 {lab=VSS}
N 1040 -280 1040 -260 {lab=RESET}
N 1080 -280 1080 -260 {lab=CLK}
N 1120 -280 1120 -260 {lab=S[3]}
N 1170 -190 1190 -190 {lab=VDD}
N 970 -190 990 -190 {lab=VSS}
N 1120 -120 1120 -100 {lab=D[3]}
N 1190 -190 1190 -150 {lab=VDD}
N 970 -190 970 -150 {lab=VSS}
N 1340 -280 1340 -260 {lab=RESET}
N 1380 -280 1380 -260 {lab=CLK}
N 1420 -280 1420 -260 {lab=S[4]}
N 1470 -190 1490 -190 {lab=VDD}
N 1270 -190 1290 -190 {lab=VSS}
N 1420 -120 1420 -100 {lab=D[4]}
N 1490 -190 1490 -150 {lab=VDD}
N 1270 -190 1270 -150 {lab=VSS}
N 1640 -280 1640 -260 {lab=RESET}
N 1680 -280 1680 -260 {lab=CLK}
N 1720 -280 1720 -260 {lab=S[5]}
N 1770 -190 1790 -190 {lab=VDD}
N 1570 -190 1590 -190 {lab=VSS}
N 1720 -120 1720 -100 {lab=D[5]}
N 1790 -190 1790 -150 {lab=VDD}
N 1570 -190 1570 -150 {lab=VSS}
N 1940 -280 1940 -260 {lab=RESET}
N 1980 -280 1980 -260 {lab=CLK}
N 2020 -280 2020 -260 {lab=S[6]}
N 2070 -190 2090 -190 {lab=VDD}
N 1870 -190 1890 -190 {lab=VSS}
N 2020 -120 2020 -100 {lab=D[6]}
N 2090 -190 2090 -150 {lab=VDD}
N 1870 -190 1870 -150 {lab=VSS}
N 2240 -280 2240 -260 {lab=RESET}
N 2280 -280 2280 -260 {lab=CLK}
N 2320 -280 2320 -260 {lab=S[7]}
N 2370 -190 2390 -190 {lab=VDD}
N 2170 -190 2190 -190 {lab=VSS}
N 2320 -120 2320 -100 {lab=D[7]}
N 2390 -190 2390 -150 {lab=VDD}
N 2170 -190 2170 -150 {lab=VSS}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 70 -360 1 0 {name=x8}
C {iopin.sym} 320 -510 0 1 {name=p1 lab=VDD}
C {iopin.sym} 320 -470 0 1 {name=p2 lab=VSS}
C {ipin.sym} 180 -510 0 0 {name=p12 lab=RESET}
C {ipin.sym} 180 -430 0 0 {name=p19 lab=S[7:0]}
C {opin.sym} 510 -510 0 1 {name=p27 lab=D[7:0]}
C {ipin.sym} 180 -470 0 0 {name=p9 lab=CLK}
C {lab_wire.sym} 140 -280 0 0 {name=p10 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 180 -280 0 0 {name=p11 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 220 -280 0 1 {name=p30 sig_type=std_logic lab=S[0]}
C {lab_wire.sym} 220 -100 3 0 {name=p32 sig_type=std_logic lab=D[0]}
C {lab_wire.sym} 70 -150 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -150 1 1 {name=p34 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 370 -360 1 0 {name=x1}
C {lab_wire.sym} 440 -280 0 0 {name=p3 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 480 -280 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 520 -280 0 1 {name=p5 sig_type=std_logic lab=S[1]}
C {lab_wire.sym} 520 -100 3 0 {name=p6 sig_type=std_logic lab=D[1]}
C {lab_wire.sym} 370 -150 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 590 -150 1 1 {name=p8 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 670 -360 1 0 {name=x2}
C {lab_wire.sym} 740 -280 0 0 {name=p13 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 780 -280 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 820 -280 0 1 {name=p15 sig_type=std_logic lab=S[2]}
C {lab_wire.sym} 820 -100 3 0 {name=p16 sig_type=std_logic lab=D[2]}
C {lab_wire.sym} 670 -150 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 890 -150 1 1 {name=p18 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 970 -360 1 0 {name=x3}
C {lab_wire.sym} 1040 -280 0 0 {name=p20 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 1080 -280 0 0 {name=p21 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1120 -280 0 1 {name=p22 sig_type=std_logic lab=S[3]}
C {lab_wire.sym} 1120 -100 3 0 {name=p23 sig_type=std_logic lab=D[3]}
C {lab_wire.sym} 970 -150 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1190 -150 1 1 {name=p26 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 1270 -360 1 0 {name=x4}
C {lab_wire.sym} 1340 -280 0 0 {name=p35 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 1380 -280 0 0 {name=p36 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1420 -280 0 1 {name=p37 sig_type=std_logic lab=S[4]}
C {lab_wire.sym} 1420 -100 3 0 {name=p38 sig_type=std_logic lab=D[4]}
C {lab_wire.sym} 1270 -150 3 0 {name=p39 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1490 -150 1 1 {name=p40 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 1570 -360 1 0 {name=x5}
C {lab_wire.sym} 1640 -280 0 0 {name=p41 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 1680 -280 0 0 {name=p42 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1720 -280 0 1 {name=p43 sig_type=std_logic lab=S[5]}
C {lab_wire.sym} 1720 -100 3 0 {name=p44 sig_type=std_logic lab=D[5]}
C {lab_wire.sym} 1570 -150 3 0 {name=p45 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1790 -150 1 1 {name=p46 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 1870 -360 1 0 {name=x6}
C {lab_wire.sym} 1940 -280 0 0 {name=p25 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 1980 -280 0 0 {name=p31 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 2020 -280 0 1 {name=p47 sig_type=std_logic lab=S[6]}
C {lab_wire.sym} 2020 -100 3 0 {name=p48 sig_type=std_logic lab=D[6]}
C {lab_wire.sym} 1870 -150 3 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2090 -150 1 1 {name=p50 sig_type=std_logic lab=VDD}
C {/home/designer/shared/GRO-TDC/std_cells/FF_D.sym} 2170 -360 1 0 {name=x7}
C {lab_wire.sym} 2240 -280 0 0 {name=p28 sig_type=std_logic lab=RESET}
C {lab_wire.sym} 2280 -280 0 0 {name=p29 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 2320 -280 0 1 {name=p51 sig_type=std_logic lab=S[7]}
C {lab_wire.sym} 2320 -100 3 0 {name=p52 sig_type=std_logic lab=D[7]}
C {lab_wire.sym} 2170 -150 3 0 {name=p53 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2390 -150 1 1 {name=p54 sig_type=std_logic lab=VDD}
