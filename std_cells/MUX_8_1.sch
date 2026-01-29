v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 600 -350 600 -310 {lab=VSS}
N 640 -490 640 -450 {lab=VDD}
N 640 -350 640 -310 {lab=CTRL[2]}
N 510 -410 590 -410 {lab=#net1}
N 510 -390 590 -390 {lab=#net2}
N 690 -400 790 -400 {lab=VOUT}
N 240 -750 240 -710 {lab=VDD}
N 240 -330 240 -290 {lab=VDD}
N 160 -490 160 -450 {lab=VSS}
N 250 -490 250 -450 {lab=CTRL[1:0]}
N 160 -70 160 -30 {lab=VSS}
N 250 -70 250 -30 {lab=CTRL[1:0]}
N 80 -660 150 -660 {lab=VINA}
N 80 -620 150 -620 {lab=VINB}
N 80 -580 150 -580 {lab=VINC}
N 80 -540 150 -540 {lab=VIND}
N 80 -240 150 -240 {lab=VINE}
N 80 -200 150 -200 {lab=VINF}
N 80 -160 150 -160 {lab=VING}
N 80 -120 150 -120 {lab=VINH}
N 510 -600 510 -410 {lab=#net1}
N 330 -600 510 -600 {lab=#net1}
N 510 -390 510 -180 {lab=#net2}
N 330 -180 510 -180 {lab=#net2}
C {iopin.sym} 160 -450 2 0 {name=p5 lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/MUX_2_1.sym} 560 -320 0 0 {name=x7}
C {opin.sym} 790 -400 0 0 {name=p34 lab=VOUT}
C {iopin.sym} 240 -750 2 0 {name=p35 lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/MUX_4_1.sym} 30 -450 0 0 {name=x8}
C {/foss/designs/GRO-TDC/std_cells/MUX_4_1.sym} 30 -30 0 0 {name=x9}
C {ipin.sym} 80 -660 0 0 {name=p37 lab=VINA}
C {ipin.sym} 80 -620 0 0 {name=p38 lab=VINB}
C {ipin.sym} 80 -580 0 0 {name=p39 lab=VINC}
C {ipin.sym} 80 -540 0 0 {name=p40 lab=VIND}
C {ipin.sym} 110 -370 0 0 {name=p41 lab=CTRL[2:0]}
C {ipin.sym} 80 -240 0 0 {name=p43 lab=VINE}
C {ipin.sym} 80 -200 0 0 {name=p44 lab=VINF}
C {lab_wire.sym} 240 -330 2 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 250 -450 2 0 {name=p48 sig_type=std_logic lab=CTRL[1:0]}
C {lab_wire.sym} 160 -30 2 1 {name=p50 sig_type=std_logic lab=VSS}
C {ipin.sym} 80 -160 0 0 {name=p45 lab=VING}
C {ipin.sym} 80 -120 0 0 {name=p47 lab=VINH}
C {lab_wire.sym} 640 -490 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 250 -30 2 0 {name=p2 sig_type=std_logic lab=CTRL[1:0]}
C {lab_wire.sym} 600 -310 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 640 -310 2 0 {name=p6 sig_type=std_logic lab=CTRL[2]}
