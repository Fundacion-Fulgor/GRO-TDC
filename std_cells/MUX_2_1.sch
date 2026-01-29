v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 680 -430 750 -430 {lab=VOUT}
N 110 -430 180 -430 {lab=VS}
N 230 -490 230 -470 {lab=VDD}
N 230 -390 230 -370 {lab=VSS}
N 230 -710 230 -690 {lab=VDD}
N 230 -610 230 -590 {lab=VSS}
N 380 -550 450 -550 {lab=#net1}
N 120 -650 180 -650 {lab=VINA}
N 230 -130 230 -110 {lab=VDD}
N 230 -30 230 -10 {lab=VSS}
N 120 -70 180 -70 {lab=VINB}
N 680 -550 680 -430 {lab=VOUT}
N 380 -750 450 -750 {lab=#net1}
N 380 -650 380 -550 {lab=#net1}
N 300 -650 380 -650 {lab=#net1}
N 380 -70 450 -70 {lab=#net2}
N 300 -70 380 -70 {lab=#net2}
N 510 -840 510 -810 {lab=VSS}
N 510 -690 510 -670 {lab=VDD}
N 550 -690 550 -660 {lab=VSS}
N 550 -840 550 -810 {lab=VDD}
N 380 -750 380 -650 {lab=#net1}
N 650 -750 680 -750 {lab=VOUT}
N 650 -550 680 -550 {lab=VOUT}
N 680 -750 680 -550 {lab=VOUT}
N 510 -630 510 -610 {lab=VSS}
N 550 -630 550 -610 {lab=VS}
N 510 -490 510 -460 {lab=VDD}
N 550 -240 550 -210 {lab=VS}
N 650 -300 680 -300 {lab=VOUT}
N 510 -390 510 -360 {lab=VSS}
N 510 -240 510 -220 {lab=VDD}
N 680 -430 680 -300 {lab=VOUT}
N 550 -430 550 -360 {lab=#net3}
N 300 -430 550 -430 {lab=#net3}
N 550 -490 550 -430 {lab=#net3}
N 650 -70 680 -70 {lab=VOUT}
N 550 -10 550 20 {lab=VSS}
N 510 -10 510 20 {lab=VDD}
N 510 -170 510 -130 {lab=VSS}
N 550 -170 550 -130 {lab=VDD}
N 680 -300 680 -70 {lab=VOUT}
N 380 -300 380 -70 {lab=#net2}
N 380 -300 450 -300 {lab=#net2}
C {opin.sym} 750 -430 0 0 {name=p2 lab=VOUT}
C {ipin.sym} 120 -650 0 0 {name=p3 lab=VINA}
C {ipin.sym} 120 -70 0 0 {name=p1 lab=VINB}
C {ipin.sym} 110 -430 0 0 {name=p4 lab=VS}
C {lab_wire.sym} 550 -210 2 0 {name=p6 sig_type=std_logic lab=VS}
C {lab_wire.sym} 550 -630 2 0 {name=p5 sig_type=std_logic lab=VS}
C {iopin.sym} 510 -460 2 0 {name=p7 lab=VDD}
C {iopin.sym} 510 -390 2 0 {name=p8 lab=VSS}
C {lab_wire.sym} 230 -490 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -370 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -710 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -590 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -130 2 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 230 -10 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -670 2 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 510 -840 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 510 -170 2 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 20 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -840 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -660 2 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -170 2 0 {name=p24 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 140 -510 0 0 {name=x3}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 140 -290 0 0 {name=x4}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 140 70 0 0 {name=x5}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 410 -910 2 1 {name=x6}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 410 -710 2 1 {name=x7}
C {lab_wire.sym} 510 -630 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 410 -460 2 1 {name=x1}
C {lab_wire.sym} 510 -220 2 1 {name=p11 sig_type=std_logic lab=VDD}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 410 -230 2 1 {name=x2}
C {lab_wire.sym} 510 20 2 1 {name=p19 sig_type=std_logic lab=VDD}
