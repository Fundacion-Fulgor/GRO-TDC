v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -70 200 -40 {lab=VSS}
N 90 -120 130 -120 {lab=RESET}
N 90 -160 130 -160 {lab=CLK}
N 200 -290 200 -250 {lab=VDD}
N 110 -200 130 -200 {lab=B0}
N 570 -60 570 -30 {lab=VSS}
N 460 -110 500 -110 {lab=RESET}
N 480 -190 500 -190 {lab=B1}
N 570 -280 570 -240 {lab=VDD}
N 270 -200 400 -200 {lab=#net1}
N 400 -200 400 -150 {lab=#net1}
N 400 -150 500 -150 {lab=#net1}
N 480 -350 480 -190 {lab=B1}
N 690 -350 690 -110 {lab=B1}
N 690 -410 690 -350 {lab=B1}
N 270 -120 320 -120 {lab=B0}
N 110 -340 110 -200 {lab=B0}
N 110 -340 320 -340 {lab=B0}
N 320 -340 320 -120 {lab=B0}
N 320 -400 320 -340 {lab=B0}
N 640 -110 690 -110 {lab=B1}
N 480 -350 690 -350 {lab=B1}
N 940 -50 940 -20 {lab=VSS}
N 830 -100 870 -100 {lab=RESET}
N 850 -180 870 -180 {lab=B2}
N 940 -270 940 -230 {lab=VDD}
N 640 -190 770 -190 {lab=#net2}
N 770 -190 770 -140 {lab=#net2}
N 770 -140 870 -140 {lab=#net2}
N 850 -340 850 -180 {lab=B2}
N 1060 -340 1060 -100 {lab=B2}
N 1060 -400 1060 -340 {lab=B2}
N 1010 -100 1060 -100 {lab=B2}
N 850 -340 1060 -340 {lab=B2}
N 1310 -40 1310 -10 {lab=VSS}
N 1200 -90 1240 -90 {lab=RESET}
N 1220 -170 1240 -170 {lab=B3}
N 1310 -260 1310 -220 {lab=VDD}
N 1010 -180 1140 -180 {lab=#net3}
N 1140 -180 1140 -130 {lab=#net3}
N 1140 -130 1240 -130 {lab=#net3}
N 1220 -330 1220 -170 {lab=B3}
N 1430 -330 1430 -90 {lab=B3}
N 1430 -390 1430 -330 {lab=B3}
N 1380 -90 1430 -90 {lab=B3}
N 1220 -330 1430 -330 {lab=B3}
N 1680 -30 1680 0 {lab=VSS}
N 1570 -80 1610 -80 {lab=RESET}
N 1590 -160 1610 -160 {lab=B4}
N 1680 -250 1680 -210 {lab=VDD}
N 1380 -170 1510 -170 {lab=#net4}
N 1510 -170 1510 -120 {lab=#net4}
N 1510 -120 1610 -120 {lab=#net4}
N 1590 -320 1590 -160 {lab=B4}
N 1800 -320 1800 -80 {lab=B4}
N 1800 -380 1800 -320 {lab=B4}
N 1750 -80 1800 -80 {lab=B4}
N 1590 -320 1800 -320 {lab=B4}
N 2050 -20 2050 10 {lab=VSS}
N 1940 -70 1980 -70 {lab=RESET}
N 1960 -150 1980 -150 {lab=B5}
N 2050 -240 2050 -200 {lab=VDD}
N 1750 -160 1880 -160 {lab=#net5}
N 1880 -160 1880 -110 {lab=#net5}
N 1880 -110 1980 -110 {lab=#net5}
N 1960 -310 1960 -150 {lab=B5}
N 2170 -310 2170 -70 {lab=B5}
N 2170 -370 2170 -310 {lab=B5}
N 2120 -70 2170 -70 {lab=B5}
N 1960 -310 2170 -310 {lab=B5}
N 2420 -10 2420 20 {lab=VSS}
N 2310 -60 2350 -60 {lab=RESET}
N 2330 -140 2350 -140 {lab=B6}
N 2420 -230 2420 -190 {lab=VDD}
N 2120 -150 2250 -150 {lab=#net6}
N 2250 -150 2250 -100 {lab=#net6}
N 2250 -100 2350 -100 {lab=#net6}
N 2330 -300 2330 -140 {lab=B6}
N 2540 -300 2540 -60 {lab=B6}
N 2540 -360 2540 -300 {lab=B6}
N 2490 -60 2540 -60 {lab=B6}
N 2330 -300 2540 -300 {lab=B6}
C {FF_D.sym} 30 -50 0 0 {name=x1}
C {lab_wire.sym} 200 -40 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 90 -160 0 0 {name=p10 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 90 -120 0 0 {name=p11 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 200 -290 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {FF_D.sym} 400 -40 0 0 {name=x2}
C {lab_wire.sym} 570 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 460 -110 0 0 {name=p18 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 570 -280 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 690 -410 0 0 {name=p20 sig_type=std_logic lab=B1}
C {lab_wire.sym} 320 -400 0 0 {name=p1 sig_type=std_logic lab=B0}
C {FF_D.sym} 770 -30 0 0 {name=x3}
C {lab_wire.sym} 940 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 830 -100 0 0 {name=p4 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 940 -270 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1060 -400 0 0 {name=p6 sig_type=std_logic lab=B2}
C {FF_D.sym} 1140 -20 0 0 {name=x4}
C {lab_wire.sym} 1310 -10 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1200 -90 0 0 {name=p8 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 1310 -260 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1430 -390 0 0 {name=p12 sig_type=std_logic lab=B3}
C {FF_D.sym} 1510 -10 0 0 {name=x5}
C {lab_wire.sym} 1680 0 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1570 -80 0 0 {name=p16 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 1680 -250 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1800 -380 0 0 {name=p21 sig_type=std_logic lab=B4}
C {FF_D.sym} 1880 0 0 0 {name=x6}
C {lab_wire.sym} 2050 10 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1940 -70 0 0 {name=p23 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 2050 -240 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2170 -370 0 0 {name=p25 sig_type=std_logic lab=B5}
C {iopin.sym} 200 -540 0 0 {name=p26 lab=VDD}
C {iopin.sym} 200 -510 0 0 {name=p27 lab=VSS}
C {ipin.sym} 160 -540 0 0 {name=p28 lab=CLK}
C {ipin.sym} 160 -510 0 0 {name=p29 lab=RESET}
C {opin.sym} 430 -550 0 0 {name=p30 lab=B0}
C {opin.sym} 430 -530 0 0 {name=p31 lab=B1}
C {opin.sym} 430 -510 0 0 {name=p32 lab=B2}
C {opin.sym} 430 -490 0 0 {name=p33 lab=B3}
C {opin.sym} 430 -470 0 0 {name=p34 lab=B4}
C {opin.sym} 430 -450 0 0 {name=p35 lab=B5}
C {FF_D.sym} 2250 10 0 0 {name=x7}
C {lab_wire.sym} 2310 -60 0 0 {name=p36 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 2420 -230 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2540 -360 0 0 {name=p38 sig_type=std_logic lab=B6}
C {opin.sym} 430 -430 0 0 {name=p39 lab=B6}
C {lab_wire.sym} 2420 20 0 0 {name=p40 sig_type=std_logic lab=VSS}
