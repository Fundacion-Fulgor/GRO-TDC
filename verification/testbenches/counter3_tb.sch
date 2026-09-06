v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1070 -530 1870 -130 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=7
node=B0}
B 2 1070 -950 1870 -550 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=21
node=CLK}
B 2 1900 -950 2700 -550 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=6
node=RESET}
B 2 1900 -530 2700 -130 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=8
node=B1
y1=-0.4}
B 2 1070 -110 1870 290 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=9
node=B2}
B 2 1900 -110 2700 290 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color=10
node=B3}
B 2 1070 310 1870 710 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


color=12
node=B5}
B 2 1900 310 2700 710 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color=13
node=B6}
B 2 230 310 1030 710 {flags=graph
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.93117e-07
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


y1=-0.4
color=11
node=B4}
N 90 -130 90 -100 {lab=GND}
N 90 -230 90 -190 {lab=VSS}
N 90 -290 90 -260 {lab=VSS}
N 90 -450 90 -420 {lab=VSS}
N 90 -390 90 -350 {lab=CLK}
N 90 -550 90 -510 {lab=RESET}
N 160 -130 160 -100 {lab=VSS}
N 160 -230 160 -190 {lab=VDD}
N 450 -380 490 -380 {lab=CLK}
N 450 -300 490 -300 {lab=RESET}
N 570 -480 570 -440 {lab=VDD}
N 570 -240 570 -200 {lab=VSS}
N 630 -400 680 -400 {lab=B0}
N 630 -380 680 -380 {lab=B1}
N 630 -360 680 -360 {lab=B2}
N 630 -340 680 -340 {lab=B3}
N 630 -320 680 -320 {lab=B4}
N 630 -300 680 -300 {lab=B5}
N 630 -280 680 -280 {lab=B6}
C {vsource.sym} 90 -160 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 90 -320 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 0, 500p, 500p, 2.5n, 5n)" savecurrent=false}
C {gnd.sym} 90 -100 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 90 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 90 -260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 90 -420 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 90 -390 0 1 {name=p7 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 90 -550 0 1 {name=p8 sig_type=std_logic lab=RESET
}
C {vsource.sym} 160 -160 0 0 {name=V5 value=1.2 savecurrent=false}
C {lab_wire.sym} 160 -100 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 160 -230 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} 90 -480 0 0 {name=V4 value="dc 0 ac 0 pulse(0, 1.2, 0, 1p, 1p, 1n, 0)" savecurrent=false}
C {devices/code_shown.sym} 75 -1100 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=65
.control
save all 
tran 78p 675n
*let clk0 = v(CLK)
*let VB0 = v(B0)
*let VB1 = v(B1)
*let VB2 = v(B2)
*let VB3 = v(B3)
*let VB4 = v(B4)
*let VB5 = v(B5)

*plot clk0
*plot VB0
*plot VB1
*plot VB2
*plot VB3
*plot VB4
*plot VB5

write counter3_tb.raw
set appendwrite
.endc
"}
C {devices/launcher.sym} 505 -635 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/counter3_tb.raw tran"
}
C {devices/launcher.sym} 505 -695 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 70 -620 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 450 -380 0 0 {name=p6 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 450 -300 0 0 {name=p16 sig_type=std_logic lab=RESET
}
C {lab_wire.sym} 570 -480 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 570 -200 0 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -400 0 1 {name=p2 sig_type=std_logic lab=B0
}
C {lab_wire.sym} 680 -380 0 1 {name=p3 sig_type=std_logic lab=B1
}
C {lab_wire.sym} 680 -360 0 1 {name=p9 sig_type=std_logic lab=B2
}
C {lab_wire.sym} 680 -340 0 1 {name=p10 sig_type=std_logic lab=B3
}
C {lab_wire.sym} 680 -320 0 1 {name=p11 sig_type=std_logic lab=B4
}
C {lab_wire.sym} 680 -300 0 1 {name=p14 sig_type=std_logic lab=B5
}
C {7bits_counter.sym} 460 -220 0 0 {name=x1}
C {lab_wire.sym} 680 -280 0 1 {name=p15 sig_type=std_logic lab=B6
}
