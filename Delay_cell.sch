v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -420 10 -370 10 {lab=#net1}
N -220 10 -180 10 {lab=OUT1}
N -60 10 -30 10 {lab=#net2}
N 90 10 130 10 {lab=OUT2}
N -580 10 -540 10 {lab=IN}
N -490 50 -490 70 {lab=VSS}
N -320 50 -320 70 {lab=VSS}
N -130 50 -130 70 {lab=VSS}
N 20 50 20 70 {lab=VSS}
N -490 -50 -490 -30 {lab=VDD}
N -320 -50 -320 -30 {lab=VDD}
N -130 -50 -130 -30 {lab=VDD}
N 20 -50 20 -30 {lab=VDD}
N -220 -30 -220 10 {lab=OUT1}
N -250 10 -220 10 {lab=OUT1}
N -380 -150 -340 -150 {lab=VDD}
N -490 -150 -450 -150 {lab=IN}
N -250 -150 -210 -150 {lab=OUT1}
N -380 -120 -340 -120 {lab=VSS}
N -250 -120 -210 -120 {lab=#net3}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} -580 150 0 0 {name=x5[1:0]}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} -410 150 0 0 {name=x6[3:0]}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} -220 150 0 0 {name=x7[7:0]}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} -70 150 0 0 {name=x8[15:0]}
C {lab_wire.sym} -490 70 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -320 70 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -130 70 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 20 70 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -490 -50 0 0 {name=p27 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -320 -50 0 0 {name=p28 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} -130 -50 0 0 {name=p29 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 20 -50 0 0 {name=p30 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 130 10 0 1 {name=p31 sig_type=std_logic lab=OUT2
}
C {lab_wire.sym} -580 10 0 0 {name=p32 sig_type=std_logic lab=IN
}
C {lab_wire.sym} -220 -30 0 1 {name=p1 sig_type=std_logic lab=OUT1
}
C {ipin.sym} -490 -150 0 0 {name=p2 lab=IN}
C {iopin.sym} -380 -150 0 1 {name=p3 lab=VDD}
C {iopin.sym} -380 -120 0 1 {name=p5 lab=VSS}
C {opin.sym} -250 -150 0 1 {name=p6 lab=OUT1}
C {opin.sym} -250 -120 0 1 {name=p4 lab=OUT2}
