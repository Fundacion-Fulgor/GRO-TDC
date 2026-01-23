v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -100 140 -80 {lab=VSS}
N 400 -100 400 -80 {lab=VSS}
N 680 -100 680 -80 {lab=VSS}
N 50 -140 90 -140 {lab=VIN}
N 470 -140 630 -140 {lab=#net1}
N 210 -140 350 -140 {lab=#net2}
N 140 -200 140 -180 {lab=VDD}
N 400 -200 400 -180 {lab=VDD}
N 680 -200 680 -180 {lab=VDD}
N 150 -350 170 -350 {lab=VDD}
N 150 -320 170 -320 {lab=VSS}
N 750 -140 780 -140 {lab=VOUT}
C {iopin.sym} 170 -350 0 0 {name=p1 lab=VDD}
C {iopin.sym} 170 -320 0 0 {name=p2 lab=VSS}
C {opin.sym} 780 -140 1 0 {name=p3 lab=VOUT}
C {ipin.sym} 50 -140 0 0 {name=p4 lab=VIN}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 50 0 0 0 {name=x2}
C {lab_wire.sym} 140 -80 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 400 -80 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -80 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -200 0 0 {name=p5 lab=VDD}
C {lab_wire.sym} 400 -200 0 0 {name=p6 lab=VDD}
C {lab_wire.sym} 680 -200 0 0 {name=p7 lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 310 0 0 0 {name=x1[1:0]}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 590 0 0 0 {name=x3[3:0]}
