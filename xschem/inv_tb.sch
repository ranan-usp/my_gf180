v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 175 50 175 85 {
lab=GND}
N 175 85 495 85 {
lab=GND}
N 175 -35 175 -10 {
lab=IN}
N 175 -35 395 -35 {
lab=IN}
N 495 -140 495 -95 {
lab=#net1}
N 495 25 495 110 {
lab=GND}
N -260 -80 -260 -65 {}
N -260 0 -260 15 {}
N -260 -65 -260 -60 {}
C {devices/vsource.sym} 175 20 0 0 {name=V1 value="PULSE (0 3.3 100p 50p 50p 200p 500p)"}
C {devices/vdd.sym} 495 -145 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 495 110 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 630 70 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 3p 600p
plot IN OUT
.endc
"}
C {devices/vsource.sym} -260 -30 0 0 {name=V2 value=3.3}
C {devices/vdd.sym} -260 -80 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} -260 15 0 0 {name=l4 lab=GND}
C {inv.sym} 615 -35 0 0 {name=x1}
C {devices/code_shown.sym} -350 70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 315 -35 0 0 {name=l5 sig_type=std_logic lab=IN}
C {lab_pin.sym} 655 -35 0 1 {name=l6 sig_type=std_logic lab=OUT}
