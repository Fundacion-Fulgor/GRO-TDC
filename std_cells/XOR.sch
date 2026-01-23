v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -120 360 -120 {lab=#net1}
N 110 -80 110 -60 {lab=VSS}
N 110 -180 110 -160 {lab=VDD}
N 40 -120 60 -120 {lab=B}
N 400 -300 400 -280 {lab=VSS}
N 400 -440 400 -420 {lab=VDD}
N 460 -360 520 -360 {lab=#net2}
N 110 -340 110 -320 {lab=VSS}
N 110 -440 110 -420 {lab=VDD}
N 180 -380 360 -380 {lab=#net3}
N 40 -380 60 -380 {lab=A}
N 600 -200 600 -180 {lab=VSS}
N 600 -320 600 -300 {lab=VDD}
N 70 -580 90 -580 {lab=A}
N 70 -540 90 -540 {lab=B}
N 200 -580 220 -580 {lab=VDD}
N 200 -540 220 -540 {lab=VSS}
N 310 -580 330 -580 {lab=OUT}
N 400 -80 400 -60 {lab=VSS}
N 400 -220 400 -200 {lab=VDD}
N 460 -140 520 -140 {lab=#net4}
N 320 -340 360 -340 {lab=B}
N 330 -160 360 -160 {lab=A}
N 670 -250 710 -250 {lab=OUT}
N 520 -360 520 -270 {lab=#net2}
N 520 -270 540 -270 {lab=#net2}
N 520 -230 540 -230 {lab=#net4}
N 520 -230 520 -140 {lab=#net4}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 340 -280 0 0 {name=x2}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 20 -240 0 0 {name=x4}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 20 20 0 0 {name=x5}
C {iopin.sym} 200 -580 0 1 {name=p1 lab=VDD}
C {iopin.sym} 200 -540 0 1 {name=p2 lab=VSS}
C {ipin.sym} 70 -580 0 0 {name=p3 lab=A}
C {ipin.sym} 70 -540 0 0 {name=p4 lab=B}
C {/foss/designs/GRO-TDC/std_cells/OR.sym} 520 -130 0 0 {name=x1}
C {lab_wire.sym} 40 -380 0 0 {name=p7 lab=A}
C {lab_wire.sym} 40 -120 0 0 {name=p8 lab=B}
C {lab_wire.sym} 400 -440 0 1 {name=p9 lab=VDD}
C {lab_wire.sym} 600 -180 2 1 {name=p10 lab=VSS}
C {lab_wire.sym} 600 -320 0 1 {name=p11 lab=VDD}
C {lab_wire.sym} 400 -280 2 1 {name=p12 lab=VSS}
C {lab_wire.sym} 110 -440 0 1 {name=p13 lab=VDD}
C {lab_wire.sym} 110 -320 2 1 {name=p14 lab=VSS}
C {lab_wire.sym} 110 -180 0 1 {name=p15 lab=VDD}
C {lab_wire.sym} 110 -60 2 1 {name=p16 lab=VSS}
C {opin.sym} 310 -580 0 1 {name=p19 lab=OUT}
C {lab_wire.sym} 710 -250 0 1 {name=p20 lab=OUT}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 340 -60 0 0 {name=x3}
C {lab_wire.sym} 400 -220 0 1 {name=p5 lab=VDD}
C {lab_wire.sym} 400 -60 2 1 {name=p6 lab=VSS}
C {lab_wire.sym} 330 -160 0 0 {name=p18 lab=A}
C {lab_wire.sym} 320 -340 0 0 {name=p21 lab=B}
