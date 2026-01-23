v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -300 120 -300 {lab=VA}
N 80 -260 120 -260 {lab=VB}
N 340 -240 340 -180 {lab=VSS}
N 340 -380 340 -320 {lab=VDD}
N 160 -380 160 -330 {lab=VDD}
N 160 -230 160 -180 {lab=VSS}
N 230 -280 290 -280 {lab=#net1}
N 410 -280 470 -280 {lab=VOUT}
C {iopin.sym} 340 -380 0 0 {name=p1 lab=VDD}
C {iopin.sym} 340 -180 0 0 {name=p2 lab=VSS}
C {ipin.sym} 80 -300 0 0 {name=p3 lab=VA}
C {ipin.sym} 80 -260 0 0 {name=p4 lab=VB}
C {opin.sym} 470 -280 0 0 {name=p5 lab=VOUT}
C {/foss/designs/GRO-TDC/std_cells/NAND.sym} 100 -190 0 0 {name=x1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 250 -140 0 0 {name=x2}
C {lab_wire.sym} 160 -380 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 160 -180 0 0 {name=p9 sig_type=std_logic lab=VSS}
