v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 480 40 930 440 {flags=graph
y1=-0.002
y2=0.012
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
node="\\"i(VA);i(vxx) -1 *\\""
color=11
dataset=-1
unitx=1
logx=0
logy=0
sweep=vaa}
B 2 940 40 1390 440 {flags=graph
y1=-0.006
y2=0.004
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
node="\\"i(VB);i(E1)\\""
color=12
dataset=0
unitx=1
logx=0
logy=0
sweep=vbb
hilight_wave=0}
B 2 480 450 930 850 {flags=graph
y1=-0.0027
y2=0.00067
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
node="\\"i(VC);i(E2) -1 *\\""
color=13

unitx=1
logx=0
logy=0
sweep=vcc
dataset=0}
B 2 940 450 1390 850 {flags=graph
y1=-0.0047
y2=0.0012
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
node="\\"i(VD);i(E3)\\""
color=14
dataset=-1
unitx=1
logx=0
logy=0
sweep=vd}
N 90 -440 90 -370 {
lab=#net1}
N 90 -440 140 -440 {
lab=#net1}
N 200 -440 250 -440 {
lab=VA}
N 250 -440 250 -390 {
lab=VA}
N 90 -310 90 -280 {
lab=GND}
N 250 -330 250 -280 {
lab=GND}
N 90 -280 250 -280 {
lab=GND}
N 340 -440 340 -370 {
lab=#net2}
N 340 -440 390 -440 {
lab=#net2}
N 450 -440 500 -440 {
lab=VB}
N 500 -440 500 -390 {
lab=VB}
N 340 -310 340 -280 {
lab=GND}
N 500 -330 500 -280 {
lab=GND}
N 340 -280 500 -280 {
lab=GND}
N 90 -210 90 -140 {
lab=#net3}
N 90 -210 140 -210 {
lab=#net3}
N 200 -210 250 -210 {
lab=VC}
N 90 -80 90 -50 {
lab=GND}
N 90 -50 250 -50 {
lab=GND}
N 340 -210 340 -200 {
lab=#net4}
N 340 -210 390 -210 {
lab=#net4}
N 450 -210 500 -210 {
lab=VD}
N 500 -210 500 -200 {
lab=VD}
N 340 -50 500 -50 {
lab=GND}
N 250 -210 250 -200 {
lab=VC}
N 250 -200 250 -190 {
lab=VC}
N 250 -130 250 -120 {
lab=#net5}
N 250 -60 250 -50 {
lab=GND}
N 340 -140 340 -120 {
lab=#net6}
N 340 -60 340 -50 {
lab=GND}
N 500 -140 500 -130 {
lab=#net7}
N 500 -70 500 -50 {
lab=GND}
N -410 -290 -410 -260 {
lab=GND}
N -140 -290 -140 -260 {
lab=GND}
N -410 -260 -140 -260 {
lab=GND}
N -220 -290 -220 -260 {
lab=GND}
N -320 -290 -320 -260 {
lab=GND}
N -410 -380 -410 -350 {
lab=VA}
N -320 -380 -320 -350 {
lab=VB}
N -220 -380 -220 -350 {
lab=VC}
N -140 -380 -140 -350 {
lab=VD}
N -410 -360 -360 -360 {
lab=VA}
N -360 -360 -360 -340 {
lab=VA}
N -360 -360 -260 -360 {
lab=VA}
N -260 -360 -180 -360 {
lab=VA}
N -180 -360 -180 -340 {
lab=VA}
N -260 -360 -260 -340 {
lab=VA}
N -360 -300 -360 -260 {
lab=GND}
N -260 -300 -260 -260 {
lab=GND}
N -180 -300 -180 -260 {
lab=GND}
C {devices/vsource.sym} 90 -340 0 0 {name=V1 value=2 savecurrent=false}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value=".control
dc Vxx 0 10 0.1
save all
write hw1p1.raw
.endc
"}
C {devices/launcher.sym} 280 40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ex1.raw tran"
}
C {devices/res.sym} 170 -440 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -360 2 0 {name=R2
value=3k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 170 -280 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 250 -440 0 0 {name=p1 sig_type=std_logic lab=VA}
C {devices/vsource.sym} 340 -340 0 0 {name=V2 value=2 savecurrent=false}
C {devices/res.sym} 420 -440 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 420 -280 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 500 -440 0 0 {name=p2 sig_type=std_logic lab=VB}
C {devices/isource.sym} 90 -110 2 0 {name=I2 value=2m}
C {devices/vsource.sym} 250 -90 0 0 {name=V3 value=2 savecurrent=false}
C {devices/res.sym} 170 -210 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 250 -160 2 0 {name=R5
value=3k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 170 -50 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 250 -210 0 0 {name=p3 sig_type=std_logic lab=VC
}
C {devices/vsource.sym} 500 -100 0 0 {name=V4 value=2 savecurrent=false}
C {devices/res.sym} 420 -210 1 0 {name=R6
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 420 -50 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 500 -210 0 0 {name=p4 sig_type=std_logic lab=VD}
C {devices/isource.sym} 500 -360 2 0 {name=I1 value=2m}
C {devices/res.sym} 500 -170 2 0 {name=R7
value=3k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 340 -90 2 0 {name=R8
value=3k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 340 -170 0 0 {name=V5 value=2 savecurrent=false}
C {devices/vsource.sym} -410 -320 0 0 {name=Vxx value=2 savecurrent=false}
C {devices/gnd.sym} -290 -260 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -410 -380 0 0 {name=p5 sig_type=std_logic lab=VA}
C {devices/lab_wire.sym} -320 -380 0 0 {name=p6 sig_type=std_logic lab=VB}
C {devices/lab_wire.sym} -220 -380 0 0 {name=p7 sig_type=std_logic lab=VC
}
C {devices/lab_wire.sym} -140 -380 0 0 {name=p8 sig_type=std_logic lab=VD}
C {devices/vcvs.sym} -320 -320 0 0 {name=E1 value=1}
C {devices/vcvs.sym} -220 -320 0 0 {name=E2 value=1}
C {devices/vcvs.sym} -140 -320 0 0 {name=E3 value=1}
