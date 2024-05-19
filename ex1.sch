v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 685 10 1025 330 {flags=graph
y1=-5.1e-20
y2=0.003
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
x2=10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Id;i(vds) -1 *\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc}
B 2 345 10 685 330 {flags=graph
y1=0
y2=10
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vgs
vds
"
color="8 7"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc}
N 90 -210 170 -210 {
lab=vgs}
N 90 -210 90 -150 {
lab=vgs}
N 330 -300 330 -145 {
lab=vds}
N 210 -300 330 -300 {
lab=vds}
N 210 -50 330 -50 {
lab=GND}
N 210 -210 220 -210 {
lab=#net1}
N 220 -210 220 -170 {
lab=#net1}
N 210 -170 220 -170 {
lab=#net1}
N 90 -90 90 -50 {
lab=GND}
N 330 -100 330 -50 {
lab=GND}
N 210 -180 210 -170 {
lab=#net1}
N 90 -50 210 -50 {
lab=GND}
N 210 -85 210 -50 {
lab=GND}
N 210 -170 210 -145 {
lab=#net1}
N 210 -300 210 -240 {
lab=vds}
C {devices/vsource.sym} 90 -120 0 0 {name=VGS value=3 savecurrent=false}
C {devices/vsource.sym} 330 -130 0 0 {name=VDS value=5 savecurrent=false}
C {devices/gnd.sym} 210 -50 0 0 {name=l1 lab=GND}
C {devices/code.sym} -150 40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value=".control
dc VDS 0 10 0.1 VGS 0 5 1 V
save all
write ex1.raw
.endc
"}
C {devices/lab_wire.sym} 130 -210 0 0 {name=p1 sig_type=std_logic lab=vgs}
C {devices/lab_wire.sym} 270 -300 0 0 {name=p2 sig_type=std_logic lab=vds}
C {devices/res.sym} 210 -115 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/launcher.sym} 110 190 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ex1.raw tran"
}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 190 -210 0 0 {name=M1
L=0.5
W=2
nf=5
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
