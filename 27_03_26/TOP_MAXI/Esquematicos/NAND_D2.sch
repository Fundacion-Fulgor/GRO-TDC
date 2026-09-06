v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -160 300 -120 {lab=VSS}
N 300 -290 340 -290 {lab=VSS}
N 300 -190 340 -190 {lab=VSS}
N 340 -190 340 -120 {lab=VSS}
N 340 -290 340 -190 {lab=VSS}
N 300 -330 300 -320 {lab=VOUT}
N 180 -460 180 -420 {lab=VDD}
N 300 -460 300 -420 {lab=VDD}
N 180 -390 220 -390 {lab=VDD}
N 300 -390 340 -390 {lab=VDD}
N 100 -390 140 -390 {lab=VA}
N 100 -290 260 -290 {lab=VA}
N 240 -190 260 -190 {lab=VB}
N 180 -360 180 -340 {lab=VOUT}
N 180 -340 300 -340 {lab=VOUT}
N 300 -360 300 -340 {lab=VOUT}
N 240 -390 260 -390 {lab=VB}
N 240 -390 240 -190 {lab=VB}
N 60 -190 240 -190 {lab=VB}
N 100 -390 100 -290 {lab=VA}
N 60 -290 100 -290 {lab=VA}
N 220 -460 220 -390 {lab=VDD}
N 340 -460 340 -390 {lab=VDD}
N 300 -460 340 -460 {lab=VDD}
N 260 -460 300 -460 {lab=VDD}
N 180 -460 220 -460 {lab=VDD}
N 260 -500 260 -460 {lab=VDD}
N 220 -460 260 -460 {lab=VDD}
N 320 -120 340 -120 {lab=VSS}
N 320 -120 320 -80 {lab=VSS}
N 300 -120 320 -120 {lab=VSS}
N 300 -260 300 -220 {lab=#net1}
N 300 -330 460 -330 {lab=VOUT}
N 300 -340 300 -330 {lab=VOUT}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -190 0 0 {name=M1
l=0.13u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -290 0 0 {name=M2
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 280 -390 0 0 {name=M3
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 160 -390 0 0 {name=M4
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 260 -500 0 0 {name=p1 lab=VDD}
C {iopin.sym} 320 -80 0 0 {name=p2 lab=VSS}
C {ipin.sym} 60 -290 0 0 {name=p3 lab=VA}
C {ipin.sym} 60 -190 0 0 {name=p4 lab=VB}
C {opin.sym} 460 -330 0 0 {name=p5 lab=VOUT}
