v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 10 1130 410 {flags=graph
y1=-7.4e-07
y2=7.4e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(vdd) 125.5u +\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 330 420 1130 820 {flags=graph
y1=1.0984857
y2=1.1013679
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=8
node=vgs}
T {SKY130
-----
Vthn = 0.81V
KPn = 116uA/V^2} -50 -390 0 0 0.4 0.4 {}
T {<- Note KPn varies significantly with L, Vds
     Need to study Nanometer Design Studies - Razavi (gm/id method)} 200 -320 0 0 0.4 0.4 {}
N 180 -190 180 -90 {
lab=GND}
N 30 -190 140 -190 {
lab=Vgs}
N 30 -190 30 -160 {
lab=Vgs}
N 180 -260 180 -220 {
lab=Vdd}
N 30 -100 30 -90 {
lab=GND}
N -50 -100 -50 -90 {
lab=GND}
N -50 -260 180 -260 {
lab=Vdd}
N -50 -260 -50 -160 {
lab=Vdd}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value="
.control
*ac dec 100 10 100k
tran 1u 3m
save all
write lec3ex1_sky.raw
.endc
"}
C {devices/vsource.sym} 30 -130 0 0 {name=VGS1 value="sin(1.1 1m 1k 0 0 0)"}
C {devices/gnd.sym} 180 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -50 -130 0 0 {name=VDD value=6}
C {devices/gnd.sym} 30 -90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -50 -90 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 90 -260 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 100 -190 0 0 {name=p2 sig_type=std_logic lab=Vgs}
C {devices/code.sym} -150 50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 160 -190 0 0 {name=M1
L=2
W=40
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
