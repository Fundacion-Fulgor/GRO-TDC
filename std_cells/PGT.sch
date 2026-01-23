v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -160 260 -160 {lab=#net1}
N 300 -240 300 -200 {lab=VDD}
N 150 -120 150 -80 {lab=VSS}
N 150 -240 150 -200 {lab=VDD}
N 360 -140 400 -140 {lab=VOUT}
N 80 -160 100 -160 {lab=xxx}
N 80 -160 80 -60 {lab=xxx}
N 60 -160 80 -160 {lab=xxx}
N 80 -60 260 -60 {lab=xxx}
N 260 -120 260 -60 {lab=xxx}
N 300 -80 300 -40 {lab=VSS}
C {AND.sym} 240 -60 0 0 {name=x1}
C {inv.sym} 60 -20 0 0 {name=x2}
C {lab_wire.sym} 150 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {ipin.sym} 60 -160 0 0 {name=p3 lab=VIN}
C {iopin.sym} 300 -240 0 0 {name=p4 lab=VDD}
C {iopin.sym} 300 -40 0 0 {name=p5 lab=VSS}
C {opin.sym} 400 -140 0 0 {name=p6 lab=VOUT}
