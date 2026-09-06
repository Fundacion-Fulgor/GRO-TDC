v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -110 360 -90 {lab=VSS}
N 620 -110 620 -90 {lab=VSS}
N 900 -110 900 -90 {lab=VSS}
N 490 -150 570 -150 {lab=K0}
N 360 -250 360 -190 {lab=S}
N 900 -250 900 -190 {lab=S}
N 620 -250 620 -190 {lab=S}
N 270 -150 270 -60 {lab=K2}
N 270 -60 1010 -60 {lab=K2}
N 1010 -150 1010 -60 {lab=K2}
N 970 -150 1010 -150 {lab=K2}
N 490 -150 490 -110 {lab=K0}
N 770 -150 770 -110 {lab=K1}
N 690 -150 770 -150 {lab=K1}
N 1010 -150 1030 -150 {lab=K2}
N 730 -250 900 -250 {lab=S}
N 270 -150 310 -150 {lab=K2}
N 770 -150 850 -150 {lab=K1}
N 640 -390 640 -370 {lab=VDD}
N 640 -310 640 -250 {lab=S}
N 620 -250 640 -250 {lab=S}
N 640 -340 690 -340 {lab=VDD}
N 690 -390 690 -340 {lab=VDD}
N 640 -390 690 -390 {lab=VDD}
N 640 -420 640 -390 {lab=VDD}
N 560 -340 600 -340 {lab=G}
N 470 -150 490 -150 {lab=K0}
N 460 -550 510 -550 {lab=EN_N}
N 630 -550 670 -550 {lab=#net1}
N 790 -550 820 -550 {lab=#net2}
N 940 -550 980 -550 {lab=G}
N 300 -550 340 -550 {lab=EN}
N 390 -510 390 -490 {lab=VSS}
N 560 -510 560 -490 {lab=VSS}
N 720 -510 720 -490 {lab=VSS}
N 870 -510 870 -490 {lab=VSS}
N 390 -610 390 -590 {lab=VDD}
N 560 -610 560 -590 {lab=VDD}
N 720 -610 720 -590 {lab=VDD}
N 870 -610 870 -590 {lab=VDD}
N 0 -450 40 -450 {lab=VDD}
N 0 -400 40 -400 {lab=VSS}
N -110 -450 -70 -450 {lab=EN}
N 140 -450 180 -450 {lab=K0}
N 140 -410 180 -410 {lab=K1}
N 140 -370 180 -370 {lab=K2}
N 760 -340 800 -340 {lab=G}
N 840 -340 890 -340 {lab=VSS}
N 890 -340 890 -280 {lab=VSS}
N 840 -280 890 -280 {lab=VSS}
N 840 -310 840 -280 {lab=VSS}
N 840 -420 840 -370 {lab=S}
N 730 -420 840 -420 {lab=S}
N 730 -420 730 -250 {lab=S}
N 640 -250 730 -250 {lab=S}
N 970 -340 1010 -340 {lab=G}
N 1050 -340 1100 -340 {lab=VSS}
N 1100 -340 1100 -280 {lab=VSS}
N 1050 -280 1100 -280 {lab=VSS}
N 1050 -310 1050 -280 {lab=VSS}
N 1050 -420 1050 -370 {lab=K2}
N 470 -390 470 -370 {lab=VDD}
N 470 -340 520 -340 {lab=VDD}
N 520 -390 520 -340 {lab=VDD}
N 470 -390 520 -390 {lab=VDD}
N 470 -420 470 -390 {lab=VDD}
N 390 -340 430 -340 {lab=EN_N}
N 360 -250 620 -250 {lab=S}
N 470 -310 470 -150 {lab=K0}
N 430 -150 470 -150 {lab=K0}
C {/home/designer/shared/GRO-TDC/std_cells/INV3.sym} 270 -10 0 0 {name=x2}
C {lab_wire.sym} 490 -110 0 0 {name=p10 sig_type=std_logic lab=K0}
C {lab_wire.sym} 770 -110 0 0 {name=p11 sig_type=std_logic lab=K1}
C {lab_wire.sym} 1030 -150 0 1 {name=p14 sig_type=std_logic lab=K2}
C {lab_wire.sym} 360 -90 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -90 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 900 -90 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 640 -420 0 0 {name=p21 sig_type=std_logic lab=VDD
}
C {/home/designer/shared/GRO-TDC/std_cells/INV3.sym} 530 -10 0 0 {name=x3}
C {/home/designer/shared/GRO-TDC/std_cells/INV3.sym} 810 -10 0 0 {name=x4}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 -340 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=32
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 560 -340 0 0 {name=p34 sig_type=std_logic lab=G
}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 300 -410 0 0 {name=x5[1:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 470 -410 0 0 {name=x6[3:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 630 -410 0 0 {name=x7[7:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 780 -410 0 0 {name=x8[15:0]}
C {lab_wire.sym} 390 -490 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -490 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 720 -490 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 870 -490 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 390 -610 0 0 {name=p27 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 560 -610 0 0 {name=p28 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 720 -610 0 0 {name=p29 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 870 -610 0 0 {name=p30 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 980 -550 0 1 {name=p31 sig_type=std_logic lab=G
}
C {lab_wire.sym} 300 -550 0 0 {name=p32 sig_type=std_logic lab=EN
}
C {ipin.sym} -110 -450 0 0 {name=p1 lab=EN}
C {iopin.sym} 0 -450 0 1 {name=p2 lab=VDD}
C {iopin.sym} 0 -400 0 1 {name=p3 lab=VSS}
C {opin.sym} 140 -450 0 1 {name=p4 lab=K0}
C {opin.sym} 140 -410 0 1 {name=p5 lab=K1}
C {opin.sym} 140 -370 0 1 {name=p6 lab=K2}
C {lab_wire.sym} 360 -250 0 0 {name=p7 sig_type=std_logic lab=S
}
C {lab_wire.sym} 760 -340 0 0 {name=p8 sig_type=std_logic lab=G
}
C {sg13g2_pr/sg13_lv_nmos.sym} 820 -340 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 840 -280 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 970 -340 0 0 {name=p12 sig_type=std_logic lab=G
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1030 -340 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1050 -280 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1050 -420 0 1 {name=p18 sig_type=std_logic lab=K2}
C {lab_wire.sym} 470 -420 0 0 {name=p19 sig_type=std_logic lab=VDD
}
C {sg13g2_pr/sg13_lv_pmos.sym} 450 -340 0 0 {name=M4
l=0.13u
w=0.15u
ng=1
m=32
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 390 -340 0 0 {name=p20 sig_type=std_logic lab=EN_N
}
C {lab_wire.sym} 490 -550 3 0 {name=p22 sig_type=std_logic lab=EN_N
}
