v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -970 210 -970 {lab=DRV_START}
N 650 -970 690 -970 {lab=VDD}
N 650 -930 690 -930 {lab=VSS}
N 150 -240 150 -200 {lab=START}
N 150 -520 150 -480 {lab=DRV_START}
N 670 -250 670 -210 {lab=STOP}
N 670 -530 670 -490 {lab=DRV_STOP}
N 1160 -250 1160 -210 {lab=RESET}
N 1160 -530 1160 -490 {lab=DRV_RESET}
N 130 220 130 260 {lab=DRV_ADDER}
N 130 -60 130 -20 {lab=ADDER}
N -0 -360 60 -360 {lab=VDD}
N 240 -360 290 -360 {lab=VSS}
N 520 -370 580 -370 {lab=VDD}
N 760 -370 810 -370 {lab=VSS}
N 1010 -370 1070 -370 {lab=VDD}
N 1250 -370 1300 -370 {lab=VSS}
N -20 100 40 100 {lab=VDD}
N 220 100 270 100 {lab=VSS}
N 170 -920 210 -920 {lab=DRV_STOP}
N 170 -870 210 -870 {lab=DRV_RESET}
N 170 -820 210 -820 {lab=ADDER}
N 440 -970 480 -970 {lab=START}
N 440 -920 480 -920 {lab=STOP}
N 440 -870 480 -870 {lab=RESET}
N 440 -820 480 -820 {lab=DRV_ADDER}
N 170 -770 210 -770 {lab=CTRL[2:0]}
N 670 220 670 260 {lab=DRV_CTRL[2]}
N 670 -60 670 -20 {lab=CTRL[2]}
N 1190 210 1190 250 {lab=DRV_CTRL[1]}
N 1190 -70 1190 -30 {lab=CTRL[1]}
N 1680 210 1680 250 {lab=DRV_CTRL[0]}
N 1680 -70 1680 -30 {lab=CTRL[0]}
N 520 100 580 100 {lab=VDD}
N 760 100 810 100 {lab=VSS}
N 1040 90 1100 90 {lab=VDD}
N 1280 90 1330 90 {lab=VSS}
N 1530 90 1590 90 {lab=VDD}
N 1770 90 1820 90 {lab=VSS}
N 440 -770 480 -770 {lab=DRV_ADDER}
C {ipin.sym} 170 -970 0 0 {name=p25 lab=DRV_START}
C {iopin.sym} 650 -970 0 1 {name=p31 lab=VDD}
C {iopin.sym} 650 -930 0 1 {name=p32 lab=VSS}
C {lab_wire.sym} 150 -200 0 0 {name=p71 sig_type=std_logic lab=START
}
C {lab_pin.sym} 150 -520 0 1 {name=p78 sig_type=std_logic lab=DRV_START
}
C {lab_wire.sym} 670 -210 0 0 {name=p79 sig_type=std_logic lab=STOP
}
C {lab_pin.sym} 670 -530 0 1 {name=p86 sig_type=std_logic lab=DRV_STOP
}
C {lab_wire.sym} 1160 -210 0 0 {name=p87 sig_type=std_logic lab=RESET
}
C {lab_pin.sym} 1160 -530 0 1 {name=p94 sig_type=std_logic lab=DRV_RESET
}
C {lab_pin.sym} 130 -60 0 1 {name=p107 sig_type=std_logic lab=ADDER
}
C {lab_pin.sym} 130 260 0 1 {name=p97 sig_type=std_logic lab=DRV_ADDER
}
C {/foss/designs/GRO-TDC/Buffers.sym} 330 -580 3 1 {name=x1}
C {lab_wire.sym} 0 -360 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 290 -360 0 1 {name=p2 sig_type=std_logic lab=VSS
}
C {/foss/designs/GRO-TDC/Buffers.sym} 850 -590 3 1 {name=x2}
C {lab_wire.sym} 520 -370 0 0 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 810 -370 0 1 {name=p4 sig_type=std_logic lab=VSS
}
C {/foss/designs/GRO-TDC/Buffers.sym} 1340 -590 3 1 {name=x3}
C {lab_wire.sym} 1010 -370 0 0 {name=p5 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 1300 -370 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {/foss/designs/GRO-TDC/Buffers.sym} 310 -120 3 1 {name=x6}
C {lab_wire.sym} -20 100 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 270 100 0 1 {name=p12 sig_type=std_logic lab=VSS
}
C {ipin.sym} 170 -920 0 0 {name=p23 lab=DRV_STOP}
C {ipin.sym} 170 -870 0 0 {name=p24 lab=DRV_RESET}
C {ipin.sym} 170 -820 0 0 {name=p26 lab=ADDER}
C {opin.sym} 440 -970 0 1 {name=p37 lab=START}
C {opin.sym} 440 -920 0 1 {name=p28 lab=STOP}
C {opin.sym} 440 -870 0 1 {name=p38 lab=RESET}
C {opin.sym} 440 -820 0 1 {name=p39 lab=DRV_ADDER}
C {ipin.sym} 170 -770 0 0 {name=p70 lab=CTRL[2:0]}
C {lab_wire.sym} 670 260 0 0 {name=p8 sig_type=std_logic lab=DRV_CTRL[2]
}
C {lab_pin.sym} 670 -60 0 1 {name=p9 sig_type=std_logic lab=CTRL[2]
}
C {lab_wire.sym} 1190 250 0 0 {name=p10 sig_type=std_logic lab=DRV_CTRL[1]
}
C {lab_pin.sym} 1190 -70 0 1 {name=p13 sig_type=std_logic lab=CTRL[1]
}
C {lab_wire.sym} 1680 250 0 0 {name=p14 sig_type=std_logic lab=DRV_CTRL[0]
}
C {lab_pin.sym} 1680 -70 0 1 {name=p15 sig_type=std_logic lab=CTRL[0]
}
C {/foss/designs/GRO-TDC/Buffers.sym} 850 -120 3 1 {name=x4}
C {lab_wire.sym} 520 100 0 0 {name=p16 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 810 100 0 1 {name=p17 sig_type=std_logic lab=VSS
}
C {/foss/designs/GRO-TDC/Buffers.sym} 1370 -130 3 1 {name=x5}
C {lab_wire.sym} 1040 90 0 0 {name=p18 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 1330 90 0 1 {name=p19 sig_type=std_logic lab=VSS
}
C {/foss/designs/GRO-TDC/Buffers.sym} 1860 -130 3 1 {name=x7}
C {lab_wire.sym} 1530 90 0 0 {name=p20 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 1820 90 0 1 {name=p21 sig_type=std_logic lab=VSS
}
C {opin.sym} 440 -770 0 1 {name=p7 lab=DRV_CTRL[2:0]}
