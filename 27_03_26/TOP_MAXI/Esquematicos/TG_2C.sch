v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -220 140 -220 {lab=VIN}
N 260 -220 300 -220 {lab=VOUT}
N 210 -320 210 -260 {lab=VSS}
N 210 -180 210 -120 {lab=VDD}
N 140 -220 140 -120 {lab=VIN}
N 140 -320 140 -220 {lab=VIN}
N 140 -320 180 -320 {lab=VIN}
N 260 -220 260 -120 {lab=VOUT}
N 260 -320 260 -220 {lab=VOUT}
N 240 -320 260 -320 {lab=VOUT}
N 210 -400 210 -360 {lab=VCTRLN}
N 210 -80 210 -40 {lab=VCTRLP}
N 140 -120 180 -120 {lab=VIN}
N 240 -120 260 -120 {lab=VOUT}
C {sg13g2_pr/sg13_lv_nmos.sym} 210 -340 1 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 210 -100 3 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=2
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 210 -400 0 0 {name=p1 lab=VCTRLN}
C {iopin.sym} 210 -40 0 0 {name=p2 lab=VCTRLP}
C {opin.sym} 300 -220 0 0 {name=p3 lab=VOUT}
C {ipin.sym} 100 -220 0 0 {name=p4 lab=VIN}
C {iopin.sym} 210 -260 0 0 {name=p5 lab=VSS}
C {iopin.sym} 210 -180 0 0 {name=p6 lab=VDD}
