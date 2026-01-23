v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 330 -760 330 -740 {lab=VDD}
N 330 -640 330 -620 {lab=VSS}
N 330 -590 330 -570 {lab=VDD}
N 330 -450 330 -430 {lab=VSS}
N 530 -780 530 -760 {lab=VDD}
N 530 -660 530 -640 {lab=VSS}
N 540 -560 540 -540 {lab=VDD}
N 540 -440 540 -420 {lab=VSS}
N 710 -240 710 -220 {lab=VDD}
N 710 -120 710 -100 {lab=VSS}
N 610 -490 630 -490 {lab=#net1}
N 630 -490 630 -190 {lab=#net1}
N 630 -190 650 -190 {lab=#net1}
N 400 -690 480 -690 {lab=#net2}
N 460 -470 460 -330 {lab=#net3}
N 460 -470 480 -470 {lab=#net3}
N 780 -170 820 -170 {lab=CSAL}
N 600 -710 820 -710 {lab=S}
N 250 -350 290 -350 {lab=B}
N 250 -530 250 -350 {lab=B}
N 250 -710 280 -710 {lab=B}
N 250 -530 290 -530 {lab=B}
N 250 -710 250 -530 {lab=B}
N 200 -670 280 -670 {lab=CIN}
N 200 -490 200 -170 {lab=CIN}
N 200 -170 290 -170 {lab=CIN}
N 200 -490 290 -490 {lab=CIN}
N 200 -630 200 -490 {lab=CIN}
N 80 -710 250 -710 {lab=B}
N 440 -730 480 -730 {lab=A}
N 120 -790 440 -790 {lab=A}
N 440 -790 440 -730 {lab=A}
N 120 -130 290 -130 {lab=A}
N 120 -310 120 -130 {lab=A}
N 80 -790 120 -790 {lab=A}
N 120 -310 290 -310 {lab=A}
N 120 -790 120 -310 {lab=A}
N 80 -630 200 -630 {lab=CIN}
N 200 -670 200 -630 {lab=CIN}
N 390 -510 480 -510 {lab=#net4}
N 330 -410 330 -390 {lab=VDD}
N 330 -270 330 -250 {lab=VSS}
N 330 -230 330 -210 {lab=VDD}
N 330 -90 330 -70 {lab=VSS}
N 390 -330 460 -330 {lab=#net3}
N 390 -150 650 -150 {lab=#net5}
C {/foss/designs/GRO-TDC/std_cells/XOR.sym} 240 -610 0 0 {name=x1}
C {/foss/designs/GRO-TDC/std_cells/XOR.sym} 440 -630 0 0 {name=x5}
C {/foss/designs/GRO-TDC/std_cells/OR.sym} 460 -370 0 0 {name=x6}
C {/foss/designs/GRO-TDC/std_cells/OR.sym} 630 -50 0 0 {name=x7}
C {ipin.sym} 80 -710 0 0 {name=p1 lab=B}
C {ipin.sym} 80 -790 0 0 {name=p2 lab=A}
C {ipin.sym} 80 -630 0 0 {name=p3 lab=CIN}
C {opin.sym} 820 -710 0 0 {name=p4 lab=S}
C {opin.sym} 820 -170 0 0 {name=p5 lab=CSAL}
C {iopin.sym} 530 -780 0 0 {name=p6 lab=VDD}
C {iopin.sym} 530 -640 0 0 {name=p7 lab=VSS}
C {lab_wire.sym} 710 -240 0 1 {name=p8 lab=VDD}
C {lab_wire.sym} 710 -100 0 1 {name=p9 lab=VSS}
C {lab_wire.sym} 330 -760 0 1 {name=p10 lab=VDD}
C {lab_wire.sym} 330 -620 0 1 {name=p11 lab=VSS}
C {lab_wire.sym} 330 -590 0 1 {name=p12 lab=VDD}
C {lab_wire.sym} 330 -430 0 1 {name=p13 lab=VSS}
C {lab_wire.sym} 540 -560 0 1 {name=p14 lab=VDD}
C {lab_wire.sym} 540 -420 0 1 {name=p15 lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 270 -430 0 0 {name=x2}
C {lab_wire.sym} 330 -410 0 1 {name=p16 lab=VDD}
C {lab_wire.sym} 330 -250 0 1 {name=p17 lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 270 -250 0 0 {name=x3}
C {lab_wire.sym} 330 -230 0 1 {name=p18 lab=VDD}
C {lab_wire.sym} 330 -70 0 1 {name=p19 lab=VSS}
C {/foss/designs/GRO-TDC/std_cells/AND.sym} 270 -70 0 0 {name=x4}
