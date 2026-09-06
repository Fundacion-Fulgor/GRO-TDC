v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 -440 430 -440 {lab=VDD}
N 390 -400 430 -400 {lab=VSS}
N 250 -440 290 -440 {lab=A[6:0]}
N 250 -400 290 -400 {lab=B[6:0]}
N 250 -360 290 -360 {lab=CIN}
N 580 -440 620 -440 {lab=S[6:0]}
N 580 -400 620 -400 {lab=COUT}
N 3070 -50 3070 -30 {lab=VSS}
N 3070 -250 3070 -230 {lab=VDD}
N 3190 -120 3210 -120 {lab=CIN}
N 3190 -140 3230 -140 {lab=B[0]}
N 3190 -160 3250 -160 {lab=A[0]}
N 2910 -160 2950 -160 {lab=S[0]}
N 2910 -280 2910 -160 {lab=S[0]}
N 2640 -50 2640 -30 {lab=VSS}
N 2640 -250 2640 -230 {lab=VDD}
N 2760 -120 2950 -120 {lab=#net1}
N 2760 -140 2800 -140 {lab=B[1]}
N 2760 -160 2820 -160 {lab=A[1]}
N 2480 -160 2520 -160 {lab=S[1]}
N 2480 -280 2480 -160 {lab=S[1]}
N 2330 -120 2520 -120 {lab=#net2}
N 2210 -50 2210 -30 {lab=VSS}
N 2210 -250 2210 -230 {lab=VDD}
N 2330 -140 2370 -140 {lab=B[2]}
N 2330 -160 2390 -160 {lab=A[2]}
N 2050 -160 2090 -160 {lab=S[2]}
N 2050 -280 2050 -160 {lab=S[2]}
N 1900 -120 2090 -120 {lab=#net3}
N 1780 -50 1780 -30 {lab=VSS}
N 1780 -250 1780 -230 {lab=VDD}
N 1900 -140 1940 -140 {lab=B[3]}
N 1900 -160 1960 -160 {lab=A[3]}
N 1620 -160 1660 -160 {lab=S[3]}
N 1620 -280 1620 -160 {lab=S[3]}
N 1470 -120 1660 -120 {lab=#net4}
N 1350 -50 1350 -30 {lab=VSS}
N 1350 -250 1350 -230 {lab=VDD}
N 1470 -140 1510 -140 {lab=B[4]}
N 1470 -160 1530 -160 {lab=A[4]}
N 1190 -160 1230 -160 {lab=S[4]}
N 1190 -280 1190 -160 {lab=S[4]}
N 1040 -120 1230 -120 {lab=#net5}
N 920 -50 920 -30 {lab=VSS}
N 920 -250 920 -230 {lab=VDD}
N 1040 -140 1080 -140 {lab=B[5]}
N 1040 -160 1100 -160 {lab=A[5]}
N 760 -160 800 -160 {lab=S[5]}
N 760 -280 760 -160 {lab=S[5]}
N 610 -120 800 -120 {lab=#net6}
N 490 -50 490 -30 {lab=VSS}
N 490 -250 490 -230 {lab=VDD}
N 610 -140 650 -140 {lab=B[6]}
N 610 -160 670 -160 {lab=A[6]}
N 330 -160 370 -160 {lab=S[6]}
N 330 -280 330 -160 {lab=S[6]}
N 180 -120 370 -120 {lab=COUT}
C {iopin.sym} 390 -440 0 1 {name=p1 lab=VDD}
C {iopin.sym} 390 -400 0 1 {name=p2 lab=VSS}
C {ipin.sym} 250 -440 0 0 {name=p27 lab=A[6:0]}
C {ipin.sym} 250 -400 0 0 {name=p28 lab=B[6:0]}
C {ipin.sym} 250 -360 0 0 {name=p29 lab=CIN}
C {opin.sym} 580 -440 0 1 {name=p8 lab=S[6:0]}
C {opin.sym} 580 -400 0 1 {name=p9 lab=COUT}
C {lab_wire.sym} 3070 -30 2 0 {name=p3 lab=VSS}
C {lab_wire.sym} 3070 -250 2 0 {name=p4 lab=VDD}
C {lab_wire.sym} 3250 -160 1 1 {name=p5 lab=A[0]}
C {lab_wire.sym} 3230 -140 1 1 {name=p6 lab=B[0]}
C {lab_wire.sym} 3210 -120 1 1 {name=p7 lab=CIN}
C {lab_wire.sym} 2910 -280 0 0 {name=p10 lab=S[0]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 3210 -20 0 1 {name=x6}
C {lab_wire.sym} 2640 -30 2 0 {name=p12 lab=VSS}
C {lab_wire.sym} 2640 -250 2 0 {name=p13 lab=VDD}
C {lab_wire.sym} 2820 -160 2 0 {name=p14 lab=A[1]}
C {lab_wire.sym} 2800 -140 2 0 {name=p15 lab=B[1]}
C {lab_wire.sym} 2480 -280 0 0 {name=p16 lab=S[1]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 2780 -20 0 1 {name=x1}
C {lab_wire.sym} 2210 -30 2 0 {name=p17 lab=VSS}
C {lab_wire.sym} 2210 -250 2 0 {name=p18 lab=VDD}
C {lab_wire.sym} 2390 -160 2 0 {name=p19 lab=A[2]}
C {lab_wire.sym} 2370 -140 2 0 {name=p20 lab=B[2]}
C {lab_wire.sym} 2050 -280 0 0 {name=p21 lab=S[2]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 2350 -20 0 1 {name=x2}
C {lab_wire.sym} 1780 -30 2 0 {name=p22 lab=VSS}
C {lab_wire.sym} 1780 -250 2 0 {name=p23 lab=VDD}
C {lab_wire.sym} 1960 -160 2 0 {name=p24 lab=A[3]}
C {lab_wire.sym} 1940 -140 2 0 {name=p25 lab=B[3]}
C {lab_wire.sym} 1620 -280 0 0 {name=p26 lab=S[3]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 1920 -20 0 1 {name=x3}
C {lab_wire.sym} 1350 -30 2 0 {name=p30 lab=VSS}
C {lab_wire.sym} 1350 -250 2 0 {name=p31 lab=VDD}
C {lab_wire.sym} 1530 -160 2 0 {name=p32 lab=A[4]}
C {lab_wire.sym} 1510 -140 2 0 {name=p33 lab=B[4]}
C {lab_wire.sym} 1190 -280 0 0 {name=p34 lab=S[4]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 1490 -20 0 1 {name=x4}
C {lab_wire.sym} 920 -30 2 0 {name=p35 lab=VSS}
C {lab_wire.sym} 920 -250 2 0 {name=p36 lab=VDD}
C {lab_wire.sym} 1100 -160 2 0 {name=p37 lab=A[5]}
C {lab_wire.sym} 1080 -140 2 0 {name=p38 lab=B[5]}
C {lab_wire.sym} 760 -280 0 0 {name=p40 lab=S[5]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 1060 -20 0 1 {name=x5}
C {lab_wire.sym} 180 -120 0 0 {name=p41 lab=COUT}
C {lab_wire.sym} 490 -30 2 0 {name=p42 lab=VSS}
C {lab_wire.sym} 490 -250 2 0 {name=p43 lab=VDD}
C {lab_wire.sym} 670 -160 2 0 {name=p44 lab=A[6]}
C {lab_wire.sym} 650 -140 2 0 {name=p45 lab=B[6]}
C {lab_wire.sym} 330 -280 0 0 {name=p46 lab=S[6]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 630 -20 0 1 {name=x7}
