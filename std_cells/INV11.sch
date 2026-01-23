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
N 750 -140 810 -140 {lab=VOUT}
N 470 -140 630 -140 {lab=#net1}
N 210 -140 350 -140 {lab=#net2}
N 140 -200 140 -180 {lab=VDD}
N 400 -200 400 -180 {lab=VDD}
N 680 -200 680 -180 {lab=VDD}
N 680 60 680 80 {lab=#net3}
N 420 60 420 80 {lab=#net4}
N 140 60 140 80 {lab=#net5}
N 190 20 350 20 {lab=#net6}
N 470 20 610 20 {lab=#net7}
N 680 -40 680 -20 {lab=#net8}
N 420 -40 420 -20 {lab=#net9}
N 140 -40 140 -20 {lab=#net10}
N 810 -140 810 20 {lab=VOUT}
N 730 20 810 20 {lab=VOUT}
N 140 260 140 280 {lab=#net11}
N 400 260 400 280 {lab=#net12}
N 680 260 680 280 {lab=#net13}
N 470 220 630 220 {lab=#net14}
N 210 220 350 220 {lab=#net15}
N 140 160 140 180 {lab=#net16}
N 400 160 400 180 {lab=#net17}
N 680 160 680 180 {lab=#net18}
N 40 20 70 20 {lab=#net19}
N 40 20 40 220 {lab=#net19}
N 40 220 90 220 {lab=#net19}
N 750 220 800 220 {lab=#net20}
N 150 -350 170 -350 {lab=VDD}
N 150 -320 170 -320 {lab=VSS}
C {iopin.sym} 170 -350 0 0 {name=p1 lab=VDD}
C {iopin.sym} 170 -320 0 0 {name=p2 lab=VSS}
C {opin.sym} 780 -140 1 0 {name=p3 lab=VOUT}
C {ipin.sym} 50 -140 0 0 {name=p4 lab=VIN}
C {inv.sym} 50 0 0 0 {name=x2}
C {lab_wire.sym} 140 -80 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 400 -80 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -80 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 140 -200 0 0 {name=p5 lab=VDD}
C {lab_wire.sym} 400 -200 0 0 {name=p6 lab=VDD}
C {lab_wire.sym} 680 -200 0 0 {name=p7 lab=VDD}
C {inv.sym} 230 160 0 1 {name=x6
spice_ignore=true}
C {lab_wire.sym} 680 80 0 1 {name=p8 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 420 80 0 1 {name=p9 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 140 80 0 1 {name=p10 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 680 -40 0 1 {name=p11 lab=VDD
spice_ignore=true}
C {lab_wire.sym} 420 -40 0 1 {name=p12 lab=VDD
spice_ignore=true}
C {lab_wire.sym} 140 -40 0 1 {name=p13 lab=VDD
spice_ignore=true}
C {lab_wire.sym} 140 280 0 0 {name=p14 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 400 280 0 0 {name=p18 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 680 280 0 0 {name=p19 sig_type=std_logic lab=VSS
spice_ignore=true}
C {lab_wire.sym} 140 160 0 0 {name=p20 lab=VDD
spice_ignore=true}
C {lab_wire.sym} 400 160 0 0 {name=p21 lab=VDD
spice_ignore=true}
C {lab_wire.sym} 680 160 0 0 {name=p22 lab=VDD
spice_ignore=true}
C {inv.sym} 310 0 0 0 {name=x1}
C {inv.sym} 590 0 0 0 {name=x3}
C {inv.sym} 590 360 0 0 {name=x4
spice_ignore=true}
C {inv.sym} 310 360 0 0 {name=x5
spice_ignore=true}
C {inv.sym} 50 360 0 0 {name=x7
spice_ignore=true}
C {inv.sym} 510 160 0 1 {name=x8
spice_ignore=true}
C {inv.sym} 770 160 0 1 {name=x9
spice_ignore=true}
