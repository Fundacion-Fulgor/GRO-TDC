v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 90 -210 90 -80 {lab=VIN}
N 170 -30 170 -10 {lab=VSS}
N 50 -280 90 -280 {lab=VIN}
N 90 -80 130 -80 {lab=VIN}
N 90 -210 130 -210 {lab=VIN}
N 170 -180 170 -110 {lab=#net1}
N 170 -210 260 -210 {lab=VSS}
N 170 -80 190 -80 {lab=VSS}
N 190 -80 190 -30 {lab=VSS}
N 170 -480 170 -370 {lab=VDD}
N 170 -30 190 -30 {lab=VSS}
N 170 -50 170 -30 {lab=VSS}
N 170 -280 170 -240 {lab=VOUT}
N 170 -340 260 -340 {lab=VDD}
N 90 -280 90 -210 {lab=VIN}
N 90 -340 130 -340 {lab=VIN}
N 170 -280 320 -280 {lab=VOUT}
N 170 -310 170 -280 {lab=VOUT}
N 90 -340 90 -280 {lab=VIN}
C {iopin.sym} 170 -480 0 0 {name=p1 lab=VDD}
C {iopin.sym} 170 -10 0 0 {name=p2 lab=VSS}
C {opin.sym} 320 -280 0 0 {name=p3 lab=VOUT}
C {ipin.sym} 50 -280 0 0 {name=p4 lab=VIN}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -80 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 150 -340 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -210 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 260 -340 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 260 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
