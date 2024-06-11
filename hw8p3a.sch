v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 360 -310 400 -370 {}
L 4 360 -310 440 -310 {}
L 4 400 -370 440 -310 {}
L 4 380 -310 380 -300 {}
L 4 420 -310 420 -300 {}
L 4 400 -380 400 -370 {}
B 2 230 20 1030 420 {flags=graph
y1=-5e-28
y2=2.9e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
i(vmeas1)
i(e1)"
color="9 11 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 650 -450 1450 -50 {flags=graph
y1=0
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vbiasp
vbiasn
vdd
vd12"
color="9 11 7 8"
dataset=-1
unitx=1
logx=0
logy=0
}
N -30 -300 -30 -280 {
lab=GND}
N -30 -380 -30 -360 {
lab=VDD}
N 370 -200 460 -200 {
lab=Vbiasn}
N 310 -250 310 -230 {
lab=Vbiasn}
N 370 -250 370 -200 {
lab=Vbiasn}
N 310 -250 370 -250 {
lab=Vbiasn}
N 370 -250 580 -250 {
lab=Vbiasn}
N 310 -170 310 -140 {
lab=GND}
N 500 -170 500 -140 {
lab=#net1}
N 500 -80 500 -60 {
lab=GND}
N 310 -590 500 -590 {
lab=VDD}
N 310 -590 310 -570 {
lab=VDD}
N 310 -510 310 -480 {
lab=#net2}
N 500 -510 500 -480 {
lab=#net3}
N 500 -590 500 -570 {
lab=VDD}
N 440 -450 460 -450 {
lab=Vbiasp}
N 500 -280 500 -230 {
lab=VD12}
N 350 -200 370 -200 {
lab=Vbiasn}
N 310 -280 310 -250 {
lab=Vbiasn}
N 350 -450 400 -450 {
lab=Vbiasp}
N 440 -370 580 -370 {
lab=Vbiasp}
N 440 -450 440 -370 {
lab=Vbiasp}
N 310 -420 310 -280 {
lab=Vbiasn}
N 500 -420 500 -280 {
lab=VD12}
N 400 -450 440 -450 {
lab=Vbiasp}
N -20 -740 -20 -700 {
lab=#net4}
N -20 -750 -20 -740 {
lab=#net4}
N 20 -780 70 -780 {
lab=#net4}
N 40 -780 40 -740 {
lab=#net4}
N -20 -740 40 -740 {
lab=#net4}
N -20 -820 -20 -810 {
lab=VDD}
N -20 -820 110 -820 {
lab=VDD}
N 110 -820 110 -810 {
lab=VDD}
N 110 -750 110 -700 {
lab=Vbiasp}
N 110 -640 110 -620 {
lab=GND}
N -20 -620 110 -620 {
lab=GND}
N -20 -640 -20 -620 {
lab=GND}
N 110 -730 150 -730 {
lab=Vbiasp}
N 150 -670 170 -670 {
lab=Vbiasn}
N -80 -670 -60 -670 {
lab=VD12}
N 380 -300 380 -290 {
lab=Vbiasn}
N 420 -300 420 -290 {
lab=VD12}
N 480 -290 500 -290 {
lab=VD12}
N 310 -290 320 -290 {
lab=Vbiasn}
N 400 -450 400 -440 {
lab=Vbiasp}
N 400 -440 400 -380 {
lab=Vbiasp}
N 320 -290 380 -290 {
lab=Vbiasn}
N 420 -290 480 -290 {
lab=VD12}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value="
**.nodeset all=1.5
.control
save all
dc V1 0 6 10m
write hw8p3a.raw
.endc
"}
C {devices/gnd.sym} -30 -280 0 0 {name=l1 lab=GND}
C {devices/code.sym} -210 50 0 0 {name=cmosedu_models.txt only_toplevel=false value="
*

* Long channel models from CMOS Circuit Design, Layout, and Simulation,

* Level=3 models VDD=5V, see CMOSedu.com

*                                                                   

.MODEL N_1u NMOS LEVEL  = 3                  

+ TOX    = 200E-10         NSUB   = 1E17            GAMMA  = 0.5          

+ PHI    = 0.7             VTO    = 0.8             DELTA  = 3.0         

+ UO     = 650             ETA    = 3.0E-6          THETA  = 0.1          

+ KP     = 120E-6          VMAX   = 1E5             KAPPA  = 0.3                

+ RSH    = 0               NFS    = 1E12            TPG    = 1                  

+ XJ     = 500E-9          LD     = 100E-9                 

+ CGDO   = 200E-12         CGSO   = 200E-12         CGBO   = 1E-10              

+ CJ     = 400E-6          PB     = 1               MJ     = 0.5           

+ CJSW   = 300E-12         MJSW   = 0.5                                  

*                                                                               

.MODEL P_1u PMOS LEVEL  = 3                  

+ TOX    = 200E-10         NSUB   = 1E17            GAMMA  = 0.6          

+ PHI    = 0.7             VTO    = -0.9            DELTA  = 0.1          

+ UO     = 250             ETA    = 0               THETA  = 0.1         

+ KP     = 40E-6           VMAX   = 5E4             KAPPA  = 1         

+ RSH    = 0               NFS    = 1E12            TPG    = -1                 

+ XJ     = 500E-9          LD     = 100E-9               

+ CGDO   = 200E-12         CGSO   = 200E-12         CGBO   = 1E-10              

+ CJ     = 400E-6          PB     = 1               MJ     = 0.5                

+ CJSW   = 300E-12         MJSW   = 0.5   

*

*

* Short channel models from CMOS Circuit Design, Layout, and Simulation,

* 50nm BSIM4 models VDD=1V, see CMOSedu.com

*

.model  N_50n  nmos  level = 54

+binunit = 1            paramchk= 1            mobmod  = 0          

+capmod  = 2            igcmod  = 1            igbmod  = 1            geomod  = 0          

+diomod  = 1            rdsmod  = 0            rbodymod= 1            rgatemod= 1          

+permod  = 1            acnqsmod= 0            trnqsmod= 0          

+tnom    = 27           toxe    = 1.4e-009     toxp    = 7e-010       toxm    = 1.4e-009   

+epsrox  = 3.9          wint    = 5e-009       lint    = 1.2e-008   

+ll      = 0            wl      = 0            lln     = 1            wln     = 1          

+lw      = 0            ww      = 0            lwn     = 1            wwn     = 1          

+lwl     = 0            wwl     = 0            xpart   = 0            toxref  = 1.4e-009   

+vth0    = 0.22         k1      = 0.35         k2      = 0.05         k3      = 0          

+k3b     = 0            w0      = 2.5e-006     dvt0    = 2.8          dvt1    = 0.52       

+dvt2    = -0.032       dvt0w   = 0            dvt1w   = 0            dvt2w   = 0          

+dsub    = 2            minv    = 0.05         voffl   = 0            dvtp0   = 1e-007     

+dvtp1   = 0.05         lpe0    = 5.75e-008    lpeb    = 2.3e-010     xj      = 2e-008     

+ngate   = 5e+020       ndep    = 2.8e+018     nsd     = 1e+020       phin    = 0          

+cdsc    = 0.0002       cdscb   = 0            cdscd   = 0            cit     = 0          

+voff    = -0.15        nfactor = 1.2          eta0    = 0.15         etab    = 0          

+vfb     = -0.55        u0      = 0.032        ua      = 1.6e-010     ub      = 1.1e-017   

+uc      = -3e-011      vsat    = 1.1e+005     a0      = 2            ags     = 1e-020     

+a1      = 0            a2      = 1            b0      = -1e-020      b1      = 0          

+keta    = 0.04         dwg     = 0            dwb     = 0            pclm    = 0.18       

+pdiblc1 = 0.028        pdiblc2 = 0.022        pdiblcb = -0.005       drout   = 0.45       

+pvag    = 1e-020       delta   = 0.01         pscbe1  = 8.14e+008    pscbe2  = 1e-007     

+fprout  = 0.2          pdits   = 0.2          pditsd  = 0.23         pditsl  = 2.3e+006   

+rsh     = 3            rdsw    = 150          rsw     = 150          rdw     = 150        

+rdswmin = 0            rdwmin  = 0            rswmin  = 0            prwg    = 0          

+prwb    = 6.8e-011     wr      = 1            alpha0  = 0.074        alpha1  = 0.005      

+beta0   = 30           agidl   = 0.0002       bgidl   = 2.1e+009     cgidl   = 0.0002     

+egidl   = 0.8          

+aigbacc = 0.012        bigbacc = 0.0028       cigbacc = 0.002

+nigbacc = 1            aigbinv = 0.014        bigbinv = 0.004        cigbinv = 0.004

+eigbinv = 1.1          nigbinv = 3            aigc    = 0.017        bigc    = 0.0028

+cigc    = 0.002        aigsd   = 0.017        bigsd   = 0.0028       cigsd   = 0.002

+nigc    = 1            poxedge = 1            pigcd   = 1            ntox    = 1

+xrcrg1  = 12           xrcrg2  = 5          

+cgso    = 6.238e-010   cgdo    = 6.238e-010   cgbo    = 2.56e-011    cgdl    = 2.495e-10     

+cgsl    = 2.495e-10    ckappas = 0.02         ckappad = 0.02         acde    = 1          

+moin    = 15           noff    = 0.9          voffcv  = 0.02       

+kt1     = -0.21        kt1l    = 0.0           kt2     = -0.042        ute     = -1.5

+ua1     = 1e-009       ub1     = -3.5e-019     uc1     = 0             prt     = 0

+at      = 53000

+fnoimod = 1            tnoimod = 0          

+jss     = 0.0001       jsws    = 1e-011       jswgs   = 1e-010       njs     = 1          

+ijthsfwd= 0.01         ijthsrev= 0.001        bvs     = 10           xjbvs   = 1          

+jsd     = 0.0001       jswd    = 1e-011       jswgd   = 1e-010       njd     = 1          

+ijthdfwd= 0.01         ijthdrev= 0.001        bvd     = 10           xjbvd   = 1          

+pbs     = 1            cjs     = 0.0005       mjs     = 0.5          pbsws   = 1          

+cjsws   = 5e-010       mjsws   = 0.33         pbswgs  = 1            cjswgs  = 5e-010     

+mjswgs  = 0.33         pbd     = 1            cjd     = 0.0005       mjd     = 0.5        

+pbswd   = 1            cjswd   = 5e-010       mjswd   = 0.33         pbswgd  = 1          

+cjswgd  = 5e-010       mjswgd  = 0.33         tpb     = 0.005        tcj     = 0.001      

+tpbsw   = 0.005        tcjsw   = 0.001        tpbswg  = 0.005        tcjswg  = 0.001      

+xtis    = 3            xtid    = 3          

+dmcg    = 0e-006       dmci    = 0e-006       dmdg    = 0e-006       dmcgt   = 0e-007     

+dwj     = 0e-008     	xgw     = 0e-007       xgl     = 0e-008     

+rshg    = 0.4          gbmin   = 1e-010       rbpb    = 5            rbpd    = 15         

+rbps    = 15           rbdb    = 15           rbsb    = 15           ngcon   = 1

*

.model  P_50n  pmos  level = 54

+binunit = 1            paramchk= 1            mobmod  = 0          

+capmod  = 2            igcmod  = 1            igbmod  = 1            geomod  = 0          

+diomod  = 1            rdsmod  = 0            rbodymod= 1            rgatemod= 1          

+permod  = 1            acnqsmod= 0            trnqsmod= 0          

+tnom    = 27           toxe    = 1.4e-009     toxp    = 7e-010       toxm    = 1.4e-009   

+epsrox  = 3.9          wint    = 5e-009       lint    = 1.2e-008   

+ll      = 0            wl      = 0            lln     = 1            wln     = 1          

+lw      = 0            ww      = 0            lwn     = 1            wwn     = 1          

+lwl     = 0            wwl     = 0            xpart   = 0            toxref  = 1.4e-009   

+vth0    = -0.22        k1      = 0.39         k2      = 0.05         k3      = 0          

+k3b     = 0            w0      = 2.5e-006     dvt0    = 3.9          dvt1    = 0.635        

+dvt2    = -0.032       dvt0w   = 0            dvt1w   = 0            dvt2w   = 0          

+dsub    = 0.7          minv    = 0.05         voffl   = 0            dvtp0   = 0.5e-008     

+dvtp1   = 0.05         lpe0    = 5.75e-008    lpeb    = 2.3e-010     xj      = 2e-008     

+ngate   = 5e+020       ndep    = 2.8e+018     nsd     = 1e+020       phin    = 0          

+cdsc    = 0.000258     cdscb   = 0            cdscd   = 6.1e-008     cit     = 0          

+voff    = -0.15        nfactor = 2            eta0    = 0.15         etab    = 0          

+vfb     = 0.55         u0      = 0.0095       ua      = 1.6e-009     ub      = 8e-018     

+uc      = 4.6e-013     vsat    = 90000        a0      = 1.2          ags     = 1e-020     

+a1      = 0            a2      = 1            b0      = -1e-020      b1      = 0          

+keta    = -0.047       dwg     = 0            dwb     = 0            pclm    = 0.55       

+pdiblc1 = 0.03         pdiblc2 = 0.0055       pdiblcb = 3.4e-008     drout   = 0.56       

+pvag    = 1e-020       delta   = 0.014        pscbe1  = 8.14e+008    pscbe2  = 9.58e-007  

+fprout  = 0.2          pdits   = 0.2          pditsd  = 0.23         pditsl  = 2.3e+006   

+rsh     = 3            rdsw    = 250          rsw     = 160          rdw     = 160        

+rdswmin = 0            rdwmin  = 0            rswmin  = 0            prwg    = 3.22e-008  

+prwb    = 6.8e-011     wr      = 1            alpha0  = 0.074        alpha1  = 0.005      

+beta0   = 30           agidl   = 0.0002       bgidl   = 2.1e+009     cgidl   = 0.0002     

+egidl   = 0.8          

+aigbacc = 0.012        bigbacc = 0.0028       cigbacc = 0.002

+nigbacc = 1            aigbinv = 0.014        bigbinv = 0.004        cigbinv = 0.004

+eigbinv = 1.1          nigbinv = 3            aigc    = 0.69         bigc    = 0.0012

+cigc    = 0.0008       aigsd   = 0.0087       bigsd   = 0.0012       cigsd   = 0.0008

+nigc    = 1            poxedge = 1            pigcd   = 1            ntox    = 1

+xrcrg1  = 12           xrcrg2  = 5          

+cgso    = 7.43e-010    cgdo    = 7.43e-010    cgbo    = 2.56e-011    cgdl    = 1e-014     

+cgsl    = 1e-014       ckappas = 0.5          ckappad = 0.5          acde    = 1          

+moin    = 15           noff    = 0.9          voffcv  = 0.02       

+kt1     = -0.19        kt1l    = 0            kt2     = -0.052        ute     = -1.5

+ua1     = -1e-009      ub1     = 2e-018       uc1     = 0             prt     = 0

+at      = 33000

+fnoimod = 1            tnoimod = 0          

+jss     = 0.0001       jsws    = 1e-011       jswgs   = 1e-010       njs     = 1          

+ijthsfwd= 0.01         ijthsrev= 0.001        bvs     = 10           xjbvs   = 1          

+jsd     = 0.0001       jswd    = 1e-011       jswgd   = 1e-010       njd     = 1          

+ijthdfwd= 0.01         ijthdrev= 0.001        bvd     = 10           xjbvd   = 1          

+pbs     = 1            cjs     = 0.0005       mjs     = 0.5          pbsws   = 1          

+cjsws   = 5e-010       mjsws   = 0.33         pbswgs  = 1            cjswgs  = 5e-010     

+mjswgs  = 0.33         pbd     = 1            cjd     = 0.0005       mjd     = 0.5        

+pbswd   = 1            cjswd   = 5e-010       mjswd   = 0.33         pbswgd  = 1          

+cjswgd  = 5e-010       mjswgd  = 0.33         tpb     = 0.005        tcj     = 0.001      

+tpbsw   = 0.005        tcjsw   = 0.001        tpbswg  = 0.005        tcjswg  = 0.001      

+xtis    = 3            xtid    = 3          

+dmcg    = 0e-006       dmci    = 0e-006       dmdg    = 0e-006       dmcgt   = 0e-007     

+dwj     = 0e-008     	xgw     = 0e-007       xgl     = 0e-008     

+rshg    = 0.4          gbmin   = 1e-010       rbpb    = 5            rbpd    = 15         

+rbps    = 15           rbdb    = 15           rbsb    = 15           ngcon   = 1   
"}
C {devices/nmos4.sym} 480 -200 0 0 {name=M3 model=N_1u w=10u l=2u del=0 m=1}
C {devices/nmos4.sym} 330 -200 0 1 {name=M2 model=N_1u w=10u l=2u del=0 m=1}
C {devices/vsource.sym} -30 -330 0 0 {name=V1 value=5 savecurrent=false}
C {devices/pmos4.sym} 480 -450 0 0 {name=M1 model=P_1u w=30u l=2u del=0 m=1}
C {devices/pmos4.sym} 330 -450 0 1 {name=M4 model=P_1u w=30u l=2u del=0 m=4}
C {devices/res.sym} 500 -110 0 0 {name=R1
value=65k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 310 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 500 -60 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 580 -370 0 0 {name=p3 sig_type=std_logic lab=Vbiasp}
C {devices/lab_wire.sym} 580 -250 0 0 {name=p4 sig_type=std_logic lab=Vbiasn}
C {devices/ammeter.sym} 310 -540 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 500 -540 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/lab_wire.sym} 310 -450 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 500 -450 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 310 -200 1 0 {name=l4 lab=GND}
C {devices/gnd.sym} 500 -200 3 1 {name=l5 lab=GND}
C {devices/vdd.sym} -30 -380 0 0 {name=l8 lab=VDD}
C {devices/vdd.sym} 410 -590 0 0 {name=l9 lab=VDD}
C {devices/lab_wire.sym} 500 -310 0 1 {name=p1 sig_type=std_logic lab=VD12}
C {devices/nmos4.sym} -40 -670 0 0 {name=M5 model=N_1u w=10u l=2u del=0 m=1}
C {devices/nmos4.sym} 130 -670 0 1 {name=M6 model=N_1u w=10u l=2u del=0 m=1}
C {devices/pmos4.sym} 90 -780 0 0 {name=M7 model=P_1u w=100u l=2u del=0 m=1}
C {devices/pmos4.sym} 0 -780 0 1 {name=M8 model=P_1u w=100u l=2u del=0 m=1}
C {devices/gnd.sym} 40 -620 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 40 -820 0 0 {name=l7 lab=VDD}
C {devices/lab_wire.sym} -20 -780 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 110 -780 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 110 -670 1 0 {name=l10 lab=GND}
C {devices/gnd.sym} -20 -670 3 1 {name=l11 lab=GND}
C {devices/lab_wire.sym} 150 -730 0 1 {name=p9 sig_type=std_logic lab=Vbiasp}
C {devices/lab_wire.sym} 170 -670 0 1 {name=p8 sig_type=std_logic lab=Vbiasn}
C {devices/lab_wire.sym} -80 -670 0 0 {name=p10 sig_type=std_logic lab=VD12}
