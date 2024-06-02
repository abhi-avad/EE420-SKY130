v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 180 -190 180 -110 {
lab=GND}
N 90 -190 140 -190 {
lab=#net1}
N -50 -120 -50 -110 {
lab=GND}
N -50 -300 180 -300 {
lab=Vdd}
N -50 -300 -50 -180 {
lab=Vdd}
N 180 -230 180 -220 {
lab=#net1}
N 180 -300 180 -290 {
lab=Vdd}
N 90 -230 90 -190 {
lab=#net1}
N 90 -230 180 -230 {
lab=#net1}
C {devices/code_shown.sym} 30 40 0 0 {name="SIM COMMANDS" only_toplevel=false value="
.control
*dc I0 0.1u 100u 0.1u
*tran 1u 3m
save all
*save @m1[gm]
*write lec6ex1_sky.raw
let iter = 5
let myVar = 1
let myScale = 10u
let myResult = vector(100 * $&iter)
let myId = vector(100 * $&iter)
let myGm = vector(100 * $&iter)
let myGds = vector(100 * $&iter)
let myVover = vector(100 * $&iter)
let i = 0           
repeat $&iter
let j = 2
repeat 100
  let myVar = myScale * log10(j)/10
  let myId[$&i] = myVar
  alter I0 $&myVar
  op  
  *print @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]/@m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
  let myResult [$&i] = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]/@m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
  let myGm [$&i] = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gm]
  let myGds [$&i] = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[gds]
  let myVover [$&i] = @m.xm1.msky130_fd_pr__nfet_g5v0d10v5[vgs]-@m.xm1.msky130_fd_pr__nfet_g5v0d10v5[vth]
  let i = i+1
  let j = j+1
  print i j myVar myScale
end
let myScale = myScale * 10
end
plot loglog myResult vs myId
plot xlog myVover vs myId
print myVover myId myGm myGds myResult
.endc
"}
C {devices/gnd.sym} 180 -110 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -50 -150 0 0 {name=VDD value=5}
C {devices/gnd.sym} -50 -110 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 90 -300 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/isource.sym} 180 -260 0 0 {name=I0 value=10u}
C {devices/code.sym} -150 60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/nfet_g5v0d10v5_nf.sym} 160 -190 0 0 {name=M1
L=0.5
W=12.5
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
