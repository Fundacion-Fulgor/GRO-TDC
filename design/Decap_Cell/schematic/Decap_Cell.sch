v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 660 -860 700 -860 {lab=#net1}
N 660 -860 660 -800 {lab=#net1}
N 700 -770 740 -770 {lab=#net2}
N 740 -830 740 -770 {lab=#net2}
N 740 -920 740 -890 {lab=VDD}
N 660 -700 660 -670 {lab=VSS}
N 740 -860 770 -860 {lab=VDD}
N 770 -920 770 -860 {lab=VDD}
N 740 -920 770 -920 {lab=VDD}
N 740 -960 740 -920 {lab=VDD}
N 620 -770 660 -770 {lab=VSS}
N 620 -770 620 -700 {lab=VSS}
N 620 -700 660 -700 {lab=VSS}
N 660 -740 660 -700 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 680 -770 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 720 -860 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 740 -960 0 0 {name=p1 lab=VDD}
C {iopin.sym} 660 -670 0 0 {name=p2 lab=VSS}
