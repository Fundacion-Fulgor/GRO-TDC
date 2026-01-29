v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -560 520 -560 {lab=VDD}
N 480 -520 520 -520 {lab=VSS}
N 2930 -210 2930 -190 {lab=VSS}
N 2930 -410 2930 -390 {lab=VDD}
N 340 -560 380 -560 {lab=A[5:0]}
N 340 -520 380 -520 {lab=B[5:0]}
N 340 -480 380 -480 {lab=CIN}
N 3050 -280 3070 -280 {lab=CIN}
N 3050 -300 3090 -300 {lab=B[0]}
N 3050 -320 3110 -320 {lab=A[0]}
N 670 -560 710 -560 {lab=S[5:0]}
N 670 -520 710 -520 {lab=COUT}
N 2770 -320 2810 -320 {lab=S[0]}
N 2770 -440 2770 -320 {lab=S[0]}
N 2500 -210 2500 -190 {lab=VSS}
N 2500 -410 2500 -390 {lab=VDD}
N 2620 -280 2810 -280 {lab=#net1}
N 2620 -300 2660 -300 {lab=B[1]}
N 2620 -320 2680 -320 {lab=A[1]}
N 2340 -320 2380 -320 {lab=S[1]}
N 2340 -440 2340 -320 {lab=S[1]}
N 2190 -280 2380 -280 {lab=#net2}
N 2070 -210 2070 -190 {lab=VSS}
N 2070 -410 2070 -390 {lab=VDD}
N 2190 -300 2230 -300 {lab=B[2]}
N 2190 -320 2250 -320 {lab=A[2]}
N 1910 -320 1950 -320 {lab=S[2]}
N 1910 -440 1910 -320 {lab=S[2]}
N 1760 -280 1950 -280 {lab=#net3}
N 1640 -210 1640 -190 {lab=VSS}
N 1640 -410 1640 -390 {lab=VDD}
N 1760 -300 1800 -300 {lab=B[3]}
N 1760 -320 1820 -320 {lab=A[3]}
N 1480 -320 1520 -320 {lab=S[3]}
N 1480 -440 1480 -320 {lab=S[3]}
N 1330 -280 1520 -280 {lab=#net4}
N 1210 -210 1210 -190 {lab=VSS}
N 1210 -410 1210 -390 {lab=VDD}
N 1330 -300 1370 -300 {lab=B[4]}
N 1330 -320 1390 -320 {lab=A[4]}
N 1050 -320 1090 -320 {lab=S[4]}
N 1050 -440 1050 -320 {lab=S[4]}
N 900 -280 1090 -280 {lab=#net5}
N 780 -210 780 -190 {lab=VSS}
N 780 -410 780 -390 {lab=VDD}
N 900 -300 940 -300 {lab=B[5]}
N 900 -320 960 -320 {lab=A[5]}
N 620 -320 660 -320 {lab=S[5]}
N 620 -440 620 -320 {lab=S[5]}
N 470 -280 660 -280 {lab=COUT}
C {iopin.sym} 480 -560 0 1 {name=p1 lab=VDD}
C {iopin.sym} 480 -520 0 1 {name=p2 lab=VSS}
C {ipin.sym} 340 -560 0 0 {name=p27 lab=A[5:0]}
C {ipin.sym} 340 -520 0 0 {name=p28 lab=B[5:0]}
C {ipin.sym} 340 -480 0 0 {name=p29 lab=CIN}
C {lab_wire.sym} 2930 -190 2 0 {name=p3 lab=VSS}
C {lab_wire.sym} 2930 -410 2 0 {name=p4 lab=VDD}
C {lab_wire.sym} 3110 -320 1 1 {name=p5 lab=A[0]}
C {lab_wire.sym} 3090 -300 1 1 {name=p6 lab=B[0]}
C {lab_wire.sym} 3070 -280 1 1 {name=p7 lab=CIN}
C {opin.sym} 670 -560 0 1 {name=p8 lab=S[5:0]}
C {opin.sym} 670 -520 0 1 {name=p9 lab=COUT}
C {lab_wire.sym} 2770 -440 0 0 {name=p10 lab=S[0]}
C {lab_wire.sym} 470 -280 0 0 {name=p39 lab=COUT}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 3070 -180 0 1 {name=x6}
C {lab_wire.sym} 2500 -190 2 0 {name=p11 lab=VSS}
C {lab_wire.sym} 2500 -410 2 0 {name=p12 lab=VDD}
C {lab_wire.sym} 2680 -320 2 0 {name=p13 lab=A[1]}
C {lab_wire.sym} 2660 -300 2 0 {name=p14 lab=B[1]}
C {lab_wire.sym} 2340 -440 0 0 {name=p16 lab=S[1]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 2640 -180 0 1 {name=x1}
C {lab_wire.sym} 2070 -190 2 0 {name=p15 lab=VSS}
C {lab_wire.sym} 2070 -410 2 0 {name=p17 lab=VDD}
C {lab_wire.sym} 2250 -320 2 0 {name=p18 lab=A[2]}
C {lab_wire.sym} 2230 -300 2 0 {name=p19 lab=B[2]}
C {lab_wire.sym} 1910 -440 0 0 {name=p20 lab=S[2]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 2210 -180 0 1 {name=x2}
C {lab_wire.sym} 1640 -190 2 0 {name=p21 lab=VSS}
C {lab_wire.sym} 1640 -410 2 0 {name=p22 lab=VDD}
C {lab_wire.sym} 1820 -320 2 0 {name=p23 lab=A[3]}
C {lab_wire.sym} 1800 -300 2 0 {name=p24 lab=B[3]}
C {lab_wire.sym} 1480 -440 0 0 {name=p25 lab=S[3]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 1780 -180 0 1 {name=x3}
C {lab_wire.sym} 1210 -190 2 0 {name=p26 lab=VSS}
C {lab_wire.sym} 1210 -410 2 0 {name=p30 lab=VDD}
C {lab_wire.sym} 1390 -320 2 0 {name=p31 lab=A[4]}
C {lab_wire.sym} 1370 -300 2 0 {name=p32 lab=B[4]}
C {lab_wire.sym} 1050 -440 0 0 {name=p33 lab=S[4]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 1350 -180 0 1 {name=x4}
C {lab_wire.sym} 780 -190 2 0 {name=p34 lab=VSS}
C {lab_wire.sym} 780 -410 2 0 {name=p35 lab=VDD}
C {lab_wire.sym} 960 -320 2 0 {name=p36 lab=A[5]}
C {lab_wire.sym} 940 -300 2 0 {name=p37 lab=B[5]}
C {lab_wire.sym} 620 -440 0 0 {name=p38 lab=S[5]}
C {/home/designer/shared/GRO-TDC/std_cells/FA.sym} 920 -180 0 1 {name=x5}
