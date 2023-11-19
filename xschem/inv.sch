v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 -40 120 -0 {
lab=xxx}
N 120 -130 120 -100 {
lab=VDD}
N 120 60 120 100 {
lab=GND}
N 120 30 140 30 {
lab=GND}
N 140 30 140 80 {
lab=GND}
N 120 80 140 80 {
lab=GND}
N 120 -20 200 -20 {
lab=xxx}
N 120 -70 150 -70 {
lab=VDD}
N 150 -110 150 -70 {
lab=VDD}
N 120 -110 150 -110 {
lab=VDD}
N 60 -70 80 -70 {
lab=IN}
N 60 -70 60 30 {
lab=IN}
N 60 30 80 30 {
lab=IN}
N 20 -20 60 -20 {
lab=IN}
C {symbols/pfet_03v3.sym} 100 -70 0 0 {name=M1
L=0.28u
W=0.44u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 30 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 200 -20 0 0 {name=p1 lab=OUT}
C {devices/iopin.sym} 120 -130 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 120 100 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} 20 -20 0 1 {name=p4 lab=IN}
