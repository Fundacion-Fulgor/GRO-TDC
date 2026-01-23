v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -660 260 -660 {lab=VCLK_N}
N 60 -660 100 -660 {lab=VCLK}
N 60 -380 100 -380 {lab=#net1}
N 220 -380 260 -380 {lab=#net2}
N 1000 -360 1040 -360 {lab=#net3}
N 150 -460 150 -420 {lab=VDD}
N 150 -340 150 -300 {lab=VSS}
N 150 -180 150 -140 {lab=VDD}
N 60 -100 100 -100 {lab=VD}
N 220 -100 260 -100 {lab=#net4}
N 360 -40 360 -0 {lab=VCLK}
N 1140 -40 1140 0 {lab=VCLK_N}
N 930 -320 930 -280 {lab=VSS}
N 620 -440 620 -410 {lab=VDD}
N 620 -310 620 -280 {lab=VSS}
N 930 -60 930 0 {lab=VSS}
N 1000 -100 1040 -100 {lab=#net5}
N 690 -360 720 -360 {lab=#net1}
N 360 -320 360 -160 {lab=VCLK_N}
N 1140 -460 1140 -420 {lab=VCLK_N}
N 1140 -300 1140 -160 {lab=VCLK}
N 1380 -290 1380 -240 {lab=VSS}
N 1450 -340 1500 -340 {lab=VQ}
N 860 -360 880 -360 {lab=VQ}
N 860 -520 860 -360 {lab=VQ}
N 1500 -520 1500 -340 {lab=VQ}
N 1240 -100 1260 -100 {lab=#net6}
N 1260 -360 1260 -100 {lab=#net6}
N 1240 -360 1260 -360 {lab=#net6}
N 720 -360 720 -100 {lab=#net1}
N 60 -520 60 -380 {lab=#net1}
N 720 -520 720 -360 {lab=#net1}
N 500 -380 580 -380 {lab=#net7}
N 60 -520 720 -520 {lab=#net1}
N 460 -100 500 -100 {lab=#net7}
N 500 -380 500 -100 {lab=#net7}
N 460 -380 500 -380 {lab=#net7}
N 560 -340 580 -340 {lab=VRESET_N}
N 560 -340 560 -280 {lab=VRESET_N}
N 930 -460 930 -400 {lab=VDD}
N 1380 -460 1380 -390 {lab=VDD}
N 930 -180 930 -140 {lab=VDD}
N 720 -100 880 -100 {lab=#net1}
N 1100 -180 1100 -160 {lab=VDD}
N 1100 -40 1100 -0 {lab=VSS}
N 320 -320 320 -300 {lab=VSS}
N 360 -480 360 -440 {lab=VCLK}
N 320 -480 320 -440 {lab=VDD}
N 320 -40 320 -0 {lab=VSS}
N 150 -60 150 -0 {lab=VSS}
N 320 -180 320 -160 {lab=VDD}
N 150 -620 150 -580 {lab=VSS}
N 150 -740 150 -700 {lab=VDD}
N 1100 -460 1100 -420 {lab=VDD}
N 1100 -300 1100 -280 {lab=VSS}
N 600 -660 640 -660 {lab=VRESET_N}
N 440 -660 480 -660 {lab=VRESET}
N 530 -620 530 -580 {lab=VSS}
N 530 -740 530 -700 {lab=VDD}
N 1260 -360 1340 -360 {lab=#net6}
N 1320 -320 1340 -320 {lab=VRESET_N}
N 1320 -320 1320 -240 {lab=VRESET_N}
N 860 -520 1500 -520 {lab=VQ}
N 1740 -340 1780 -340 {lab=VQN}
N 1670 -300 1670 -260 {lab=VSS}
N 1670 -440 1670 -380 {lab=VDD}
N 1500 -340 1620 -340 {lab=VQ}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 40 0 0 {name=x1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 -240 0 0 {name=x2}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 220 -220 0 0 {name=x3}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 220 60 0 0 {name=x4}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 1000 60 0 0 {name=x5}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 840 -220 0 0 {name=x6}
C {/foss/designs/GRO-TDC/std_cells/TG_2C.sym} 1000 -200 0 0 {name=x7}
C {/foss/designs/GRO-TDC/std_cells/NAND_D2.sym} 560 -270 0 0 {name=x8}
C {/foss/designs/GRO-TDC/std_cells/NAND_D3.sym} 1320 -250 0 0 {name=x9}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 60 -520 0 0 {name=x10}
C {/foss/designs/GRO-TDC/std_cells/INV_D3.sym} 840 40 0 0 {name=x11}
C {lab_wire.sym} 150 -460 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 930 -180 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 930 -460 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1380 -460 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 620 -440 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -300 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -280 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 930 -280 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1380 -240 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1100 -180 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 930 0 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1100 0 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 150 0 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -480 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 320 -300 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 0 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 320 -180 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {iopin.sym} 150 -740 0 0 {name=p19 lab=VDD}
C {iopin.sym} 150 -580 0 0 {name=p20 lab=VSS}
C {ipin.sym} 60 -660 0 0 {name=p21 lab=VCLK}
C {lab_wire.sym} 260 -660 0 1 {name=p22 sig_type=std_logic lab=VCLK_N}
C {lab_wire.sym} 1100 -460 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1100 -280 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {ipin.sym} 60 -100 0 0 {name=p25 lab=VD}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 440 -520 0 0 {name=x12}
C {ipin.sym} 440 -660 0 0 {name=p28 lab=VRESET}
C {lab_wire.sym} 640 -660 0 1 {name=p29 sig_type=std_logic lab=VRESET_N}
C {lab_wire.sym} 530 -740 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 530 -580 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 560 -280 3 0 {name=p30 sig_type=std_logic lab=VRESET_N}
C {lab_wire.sym} 1320 -240 3 0 {name=p31 sig_type=std_logic lab=VRESET_N}
C {lab_wire.sym} 1140 -460 0 1 {name=p32 sig_type=std_logic lab=VCLK_N}
C {lab_wire.sym} 1140 0 0 1 {name=p33 sig_type=std_logic lab=VCLK_N}
C {lab_wire.sym} 360 -480 0 1 {name=p34 sig_type=std_logic lab=VCLK}
C {lab_wire.sym} 360 0 0 1 {name=p35 sig_type=std_logic lab=VCLK}
C {lab_wire.sym} 360 -240 0 1 {name=p36 sig_type=std_logic lab=VCLK_N}
C {lab_wire.sym} 1140 -230 0 1 {name=p37 sig_type=std_logic lab=VCLK}
C {opin.sym} 1500 -520 0 0 {name=p38 lab=VQ}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 1580 -200 0 0 {name=x13}
C {lab_wire.sym} 1670 -440 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1670 -260 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {opin.sym} 1780 -340 0 0 {name=p41 lab=VQN}
