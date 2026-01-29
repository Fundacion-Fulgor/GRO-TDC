v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 160 -390 180 -390 {lab=VDD}
N 60 -390 80 -390 {lab=VSS}
N 60 -210 80 -210 {lab=VSS}
N 160 -210 180 -210 {lab=VDD}
N 280 -210 300 -210 {lab=VSS}
N 380 -210 400 -210 {lab=VDD}
N 120 -140 120 -120 {lab=K0}
N 120 -120 340 -120 {lab=K0}
N 120 -290 120 -260 {lab=#net1}
N 120 -480 120 -440 {lab=IN0}
N 120 -120 120 -100 {lab=K0}
N 340 -290 340 -280 {lab=#net1}
N 120 -290 340 -290 {lab=#net1}
N 120 -320 120 -290 {lab=#net1}
N 340 -160 340 -120 {lab=K0}
N 590 -390 610 -390 {lab=VDD}
N 490 -390 510 -390 {lab=VSS}
N 490 -210 510 -210 {lab=VSS}
N 590 -210 610 -210 {lab=VDD}
N 710 -210 730 -210 {lab=VSS}
N 810 -210 830 -210 {lab=VDD}
N 550 -140 550 -120 {lab=K1}
N 550 -120 770 -120 {lab=K1}
N 550 -290 550 -260 {lab=#net2}
N 550 -480 550 -440 {lab=IN1}
N 550 -120 550 -100 {lab=K1}
N 770 -290 770 -280 {lab=#net2}
N 550 -290 770 -290 {lab=#net2}
N 550 -320 550 -290 {lab=#net2}
N 770 -160 770 -120 {lab=K1}
N 1020 -390 1040 -390 {lab=VDD}
N 920 -390 940 -390 {lab=VSS}
N 920 -210 940 -210 {lab=VSS}
N 1020 -210 1040 -210 {lab=VDD}
N 1140 -210 1160 -210 {lab=VSS}
N 1240 -210 1260 -210 {lab=VDD}
N 980 -140 980 -120 {lab=K2}
N 980 -120 1200 -120 {lab=K2}
N 980 -290 980 -260 {lab=#net3}
N 980 -480 980 -440 {lab=IN2}
N 980 -120 980 -100 {lab=K2}
N 1200 -290 1200 -280 {lab=#net3}
N 980 -290 1200 -290 {lab=#net3}
N 980 -320 980 -290 {lab=#net3}
N 1200 -160 1200 -120 {lab=K2}
N 180 -640 220 -640 {lab=IN0}
N 180 -600 220 -600 {lab=IN1}
N 180 -560 220 -560 {lab=IN2}
N 460 -640 500 -640 {lab=K0}
N 460 -600 500 -600 {lab=K1}
N 460 -560 500 -560 {lab=K2}
N 320 -640 360 -640 {lab=VDD}
N 320 -600 360 -600 {lab=VSS}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} -20 -480 1 0 {name=x1[1:0]v \{xschem version=3.4.8RC file_version=1.3\}
G \{\}
K \{\}
V \{\}
S \{\}
F \{\}
E \{\}
N 170 -140 170 -110 \{lab=v \{xschem version=3.4.6 file_version=1.2\}
G \{\}
K \{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\}
V \{\}
S \{\}
E \{\}
L 4 135 -140 160 -140 \{\}
L 4 40 -140 60 -140 \{\}
L 7 90 -180 90 -160 \{\}
L 7 90 -120 90 -100 \{\}
B 5 87.5 -182.5 92.5 -177.5 \{name=VDD dir=inout\}
B 5 157.5 -142.5 162.5 -137.5 \{name=VOUT dir=out\}
B 5 37.5 -142.5 42.5 -137.5 \{name=VIN dir=in\}
B 5 87.5 -102.5 92.5 -97.5 \{name=VSS dir=inout\}
A 4 127.5 -140 7.071067811865476 315 360 \{\}
P 4 2 120 -140 60 -100 \{\}
P 4 3 120 -140 60 -180 60 -100 \{\}
T \{@symname\} 71 -146 0 0 0.2 0.2 \{\}
T \{@name\} 70 -134.5 0 0 0.2 0.2 \{\}
T \{VDD\} 117.5 -176.5 0 1 0.2 0.2 \{\}
T \{VOUT\} 160 -159 0 1 0.2 0.2 \{\}
T \{VIN\} 40 -159 0 0 0.2 0.2 \{\}
T \{VSS\} 92.5 -103.5 2 1 0.2 0.2 \{\}
VOUT\}
N 90 -140 90 -80 \{lab=VIN\}
N 90 -210 90 -140 \{lab=VIN\}
N 170 -30 170 -10 \{lab=VSS\}
N 50 -140 90 -140 \{lab=VIN\}
N 90 -80 130 -80 \{lab=VIN\}
N 90 -210 130 -210 \{lab=VIN\}
N 170 -140 210 -140 \{lab=VOUT\}
N 170 -180 170 -140 \{lab=VOUT\}
N 170 -260 170 -240 \{lab=VDD\}
N 170 -210 190 -210 \{lab=VDD\}
N 190 -260 190 -210 \{lab=VDD\}
N 170 -80 190 -80 \{lab=VSS\}
N 190 -80 190 -30 \{lab=VSS\}
N 170 -260 190 -260 \{lab=VDD\}
N 170 -280 170 -260 \{lab=VDD\}
N 170 -30 190 -30 \{lab=VSS\}
N 170 -50 170 -30 \{lab=VSS\}
C \{sg13g2_pr/sg13_lv_pmos.sym\} 150 -210 0 0 \{name=M2
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
\}
C \{iopin.sym\} 170 -280 0 0 \{name=p1 lab=VDD\}
C \{iopin.sym\} 170 -10 0 0 \{name=p2 lab=VSS\}
C \{opin.sym\} 210 -140 0 0 \{name=p3 lab=VOUT\}
C \{ipin.sym\} 50 -140 0 0 \{name=p4 lab=VIN\}
C \{sg13g2_pr/sg13_lv_nmos.sym\} 150 -80 0 0 \{name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
\}
}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D2.sym} -20 -300 1 0 {name=x2[1:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV05.sym} 200 -120 1 1 {name=x3}
C {lab_wire.sym} 60 -390 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 60 -210 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -390 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -210 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 180 -210 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 280 -210 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 -100 0 0 {name=p19 sig_type=std_logic lab=K0}
C {lab_wire.sym} 120 -480 0 0 {name=p22 sig_type=std_logic lab=IN0}
C {lab_wire.sym} 490 -390 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 490 -210 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 610 -390 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 830 -210 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 610 -210 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 710 -210 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -100 0 0 {name=p13 sig_type=std_logic lab=K1}
C {lab_wire.sym} 550 -480 0 0 {name=p14 sig_type=std_logic lab=IN1}
C {lab_wire.sym} 920 -390 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 920 -210 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1040 -390 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1260 -210 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1040 -210 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1140 -210 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 980 -100 0 0 {name=p23 sig_type=std_logic lab=K2}
C {lab_wire.sym} 980 -480 0 0 {name=p24 sig_type=std_logic lab=IN2}
C {ipin.sym} 180 -640 0 0 {name=p25 lab=IN0}
C {ipin.sym} 180 -600 0 0 {name=p26 lab=IN1}
C {ipin.sym} 180 -560 0 0 {name=p27 lab=IN2}
C {opin.sym} 460 -640 0 1 {name=p28 lab=K0}
C {opin.sym} 460 -600 0 1 {name=p29 lab=K1}
C {opin.sym} 460 -560 0 1 {name=p30 lab=K2}
C {iopin.sym} 320 -640 0 1 {name=p31 lab=VDD}
C {iopin.sym} 320 -600 0 1 {name=p32 lab=VSS}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 410 -480 1 0 {name=x3[1:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 840 -480 1 0 {name=x4[1:0]}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 410 -300 1 0 {name=x5[1:0]v
version=3.4.6
file_version=1.2\}
\{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\{name=VSS
dir=inout\}}
C {/home/designer/shared/GRO-TDC/std_cells/INV_D1.sym} 840 -300 1 0 {name=x2[1:0]v
version=3.4.6
file_version=1.2\}
\{type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
\{name=VSS
dir=inout\}}
C {/home/designer/shared/GRO-TDC/std_cells/INV05.sym} 630 -120 1 1 {name=x1}
C {/home/designer/shared/GRO-TDC/std_cells/INV05.sym} 1060 -120 1 1 {name=x2}
