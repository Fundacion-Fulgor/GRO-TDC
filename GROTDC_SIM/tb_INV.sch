v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1050 -900 1850 -500 {flags=graph
y1=-0.4
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-09
x2=3.3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VOUT}
B 2 1050 -1320 1850 -920 {flags=graph
y1=-0.38906737
y2=1.5109326
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-09
x2=3.3e-08
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0
color=11
node=VIN}
N 70 -1110 70 -1070 {lab=VSS}
N 290 -1010 290 -980 {lab=VSS}
N 290 -1110 290 -1070 {lab=VIN1}
N 190 -1010 190 -980 {lab=VSS}
N 190 -1110 190 -1070 {lab=VDD}
N 350 -840 350 -820 {lab=#net1}
N 420 -780 500 -780 {lab=VOUT}
N 350 -740 350 -720 {lab=VSS}
N 260 -780 300 -780 {lab=VIN}
N 70 -1010 70 -990 {lab=GND}
N 550 -840 550 -820 {lab=VDD}
N 620 -780 660 -780 {lab=VOUT2}
N 550 -740 550 -720 {lab=VSS}
N 190 -840 190 -820 {lab=VDD}
N 190 -740 190 -720 {lab=VSS}
N 100 -780 140 -780 {lab=VIN1}
N 350 -920 350 -900 {lab=VDD}
C {vsource.sym} 70 -1040 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 290 -1040 0 0 {name=V3 value="dc 0 ac 0 pulse(0, 1.2, 10n, 10p, 10p, 10n, 20n)" savecurrent=false}
C {gnd.sym} 70 -990 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 70 -1110 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -980 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 290 -1110 0 1 {name=p7 sig_type=std_logic lab=VIN1

}
C {vsource.sym} 190 -1040 0 0 {name=V5 value=\{VDD\} savecurrent=false}
C {lab_wire.sym} 190 -980 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -1110 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/launcher.sym} 725 -1155 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tb_INV.raw tran"
}
C {devices/launcher.sym} 725 -1215 0 0 {name=h1
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 660 -1300 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 350 -720 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 350 -920 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 460 -780 0 1 {name=p2 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 260 -780 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 260 -640 0 0 {name=x1}
C {code.sym} 200 -1290 0 0 {name=VTC_DC_sweep only_toplevel=true value="

.save @n.x1.xm1.nsg13_lv_nmos[ids]
.save @n.x1.xm2.nsg13_lv_pmos[ids]

.dc V3 0.0 1.8 0.01 

.control
* No olvidar ponerlo para guardar todas las señales
*(las sim se demoran más, luego miramos lo del save selected)
save all
run		

let id = @n.x1.xm1.nsg13_lv_nmos[ids]
let vin = v(VIN)
let vout = v(VOUT)

* Vin Boundaries; Reference: NGSPICE manual page 320

let dvout = -1*deriv(vout)
*plot dVout
meas dc VIL WHEN dvout=1 CROSS=1
meas dc VIH WHEN dvout=1 CROSS=2

* Vout Boundaries; Reference: NGSPICE manual page 322
meas dc VOH MAX vout
meas dc VOL MIN vout

* Noise margins; Reference: Rabaey book page 185
let VDD = 1.8
let NMH = VDD - VIH
let NML = VIL
print NMH NML 


* VM (transition point in the VTC (voltage transfer characteristic)); Reference: Rabaey book page 176
let deltaV = vout-vin
meas dc VM WHEN deltaV=0
*plot deltaV


.endc
"
spice_ignore=true}
C {code.sym} 60 -1290 0 0 {name=Transient only_toplevel=true 
value="
* Parameters
.param temp=65
.param VDD=1.2

* Beginning of the main code (with the control)
.control

* Saving all nodes 
save all 

* Type of analysis
tran 50p 100n

* Definition of the variables of the voltages of the nodes
let vin  = v(VIN)
let vout = v(VOUT)
let VM = 0.6

* Measurement of the propagation delay; Reference: Rabaey book page 195
* Reference: NGSPICE manual page 325
meas tran tpLH TRIG vin VAL=VM TD=10n FALL=1 TARG vout VAL=VM TD=10n RISE=1
meas tran tpHL TRIG vin VAL=VM TD=10n RISE=1 TARG vout VAL=VM TD=10n FALL=1
let tp = (tpLH+tpHL)/2
print tp

* Measurement of the time and voltages for the rise and fall time
meas tran time_20_percent WHEN vout=VDD*0.2 
meas tran v_20_percent FIND vout WHEN time=time_20_percent
meas tran time_80_percent WHEN vout=VDD*0.8 
meas tran v_80_percent FIND vout WHEN time=time_80_percent


* Measurement of the rise time:
meas tran trise TRIG vout VAL=v_20_percent RISE=1 TARG vout VAL=v_80_percent RISE=1

* Measurement of the fall time:
meas tran tfall TRIG vout VAL=v_80_percent FALL=1 TARG vout VAL=v_20_percent FALL=1

* Measurement of the RMS and AVG current:
let i_vdd=i(vdd_current)
meas tran i_vdd_rms RMS i_vdd
meas tran i_vdd_avg AVG i_vdd

plot i_vdd

* Saving the of the nodes into the raw file
write tb_INV.raw
set appendwrite
.endc
"
}
C {lab_wire.sym} 550 -720 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 550 -840 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 660 -780 0 1 {name=p8 sig_type=std_logic lab=VOUT2}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 460 -640 0 0 {name=x2}
C {lab_wire.sym} 190 -720 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 190 -840 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 100 -780 0 0 {name=p11 sig_type=std_logic lab=VIN1}
C {/foss/designs/GRO-TDC/std_cells/INV_D1.sym} 100 -640 0 0 {name=x3[1:0]}
C {ammeter.sym} 350 -870 0 0 {name=vdd_current savecurrent=true spice_ignore=0}
