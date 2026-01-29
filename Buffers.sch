v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -970 210 -970 {lab=IN}
N 650 -970 690 -970 {lab=VDD}
N 650 -930 690 -930 {lab=VSS}
N 440 -970 480 -970 {lab=OUT}
N 230 -820 250 -820 {lab=VDD}
N 130 -820 150 -820 {lab=VSS}
N 130 -640 150 -640 {lab=VSS}
N 230 -640 250 -640 {lab=VDD}
N 350 -640 370 -640 {lab=VSS}
N 450 -640 470 -640 {lab=VDD}
N 190 -570 190 -550 {lab=K0}
N 190 -550 410 -550 {lab=K0}
N 190 -720 190 -690 {lab=#net1}
N 190 -910 190 -870 {lab=IN}
N 190 -550 190 -530 {lab=K0}
N 410 -720 410 -710 {lab=#net1}
N 190 -720 410 -720 {lab=#net1}
N 190 -750 190 -720 {lab=#net1}
N 410 -590 410 -550 {lab=K0}
C {ipin.sym} 170 -970 0 0 {name=p25 lab=IN}
C {iopin.sym} 650 -970 0 1 {name=p31 lab=VDD}
C {iopin.sym} 650 -930 0 1 {name=p32 lab=VSS}
C {opin.sym} 440 -970 0 1 {name=p37 lab=OUT}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 50 -910 1 0 {name=x1[1:0]}
C {/foss/designs/GRO-TDC/std_cells/INV_D2.sym} 50 -730 1 0 {name=x2[1:0]}
C {/foss/designs/GRO-TDC/std_cells/INV05.sym} 270 -550 1 1 {name=x3}
C {lab_wire.sym} 130 -820 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 -640 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 250 -820 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -640 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 250 -640 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 350 -640 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -530 0 0 {name=p19 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 190 -910 0 0 {name=p22 sig_type=std_logic lab=IN}
