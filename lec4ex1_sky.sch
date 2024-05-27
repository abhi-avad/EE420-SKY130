v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {SKY130
-----
Vthn = 0.81V
KPn = 116uA/V^2} 40 -500 0 0 0.4 0.4 {}
N 350 -290 350 -210 {
lab=VD13}
N 260 -180 310 -180 {
lab=VGS1}
N 260 -180 260 -160 {
lab=VGS1}
N 260 -100 260 -90 {
lab=#net1}
N 260 -30 260 -20 {
lab=GND}
N 440 -30 440 -20 {
lab=GND}
N 640 -60 640 -20 {
lab=GND}
N 640 -180 640 -120 {
lab=VGS2}
N 580 -180 640 -180 {
lab=VGS2}
N 470 -320 500 -320 {
lab=GND}
N 470 -320 470 -290 {
lab=GND}
N 350 -260 410 -260 {
lab=VD13}
N 410 -320 410 -260 {
lab=VD13}
N 390 -320 410 -320 {
lab=VD13}
N 350 -370 350 -350 {
lab=VDD}
N 350 -370 540 -370 {
lab=VDD}
N 540 -370 540 -350 {
lab=VDD}
N 540 -290 540 -210 {
lab=VD24}
N 350 -150 350 -130 {
lab=VS12}
N 350 -130 540 -130 {
lab=VS12}
N 540 -150 540 -130 {
lab=VS12}
N 440 -130 440 -90 {
lab=VS12}
N 700 -290 700 -280 {
lab=GND}
N 540 -370 700 -370 {
lab=VDD}
N 700 -370 700 -350 {
lab=VDD}
N 350 -180 350 -150 {
lab=VS12}
N 540 -180 540 -150 {
lab=VS12}
N 540 -350 540 -320 {
lab=VDD}
N 350 -350 350 -320 {
lab=VDD}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value="
.control
*ac dec 100 10 100k
*tran 1u 3m
op
save all
write lec4ex1_sky.raw
.endc
"}
C {devices/code.sym} -150 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 330 -180 0 0 {name=M1
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 560 -180 0 1 {name=M2
L=2
W=10
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 260 -60 0 0 {name=VGS1 value=2.5 }
C {devices/gnd.sym} 440 -20 0 0 {name=l1 lab=GND}
C {devices/isource.sym} 440 -60 0 0 {name=I0 value=40u}
C {devices/vsource.sym} 260 -130 0 0 {name=VAC value="sin(0 1m 1k 0 0 0)" }
C {devices/vsource.sym} 640 -90 0 0 {name=VGS2 value=2.5 }
C {devices/gnd.sym} 260 -20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 640 -20 0 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 370 -320 0 1 {name=M3
L=2
W=30
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5_nf.sym} 520 -320 0 0 {name=M4
L=2
W=30
nf=1
mult=1
ad="'int((nf+1)/2) * W / nf * 0.29'"
pd="'2*int((nf+1)/2) * (W / nf + 0.29)'"
as="'int((nf+2)/2) * W / nf * 0.29'"
ps="'2*int((nf+2)/2) * (W / nf + 0.29)'"
nrd="'0.29 / W '" nrs="'0.29 / W '"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {devices/gnd.sym} 470 -290 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 700 -320 0 0 {name=VDD value=5 }
C {devices/gnd.sym} 700 -280 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p1 sig_type=std_logic lab=VGS1}
C {devices/lab_wire.sym} 440 -370 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 350 -230 0 0 {name=p3 sig_type=std_logic lab=VD13}
C {devices/lab_wire.sym} 540 -230 0 0 {name=p4 sig_type=std_logic lab=VD24}
C {devices/lab_wire.sym} 460 -130 0 0 {name=p5 sig_type=std_logic lab=VS12}
C {devices/lab_wire.sym} 620 -180 0 0 {name=p6 sig_type=std_logic lab=VGS2}
