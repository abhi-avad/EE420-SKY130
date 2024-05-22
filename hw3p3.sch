v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 10 1130 410 {flags=graph
y1=-2.7e-10
y2=2.9e-10
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.7105054e-20
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Im1;i(vmeas) 3.33391e-5 -\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 330 420 1130 820 {flags=graph
y1=-1.8e-07
y2=1.8e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.7105054e-20
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=7
node="\\"Im3;i(vmeas2) 3.33391e-5 -\\""}
B 2 1140 10 1940 410 {flags=graph
y1=-3.4e-10
y2=3.9e-10
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.7105054e-20
x2=0.003
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Im2;i(vmeas1) 2.97909e-5 -\\""
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1140 420 1940 820 {flags=graph
y1=-1.8e-07
y2=1.8e-07
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.7105054e-20
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
node="\\"Im4;i(vmeas3) 2.97909e-5 -\\""}
T {1um process from book
-----
} -50 -430 0 0 0.4 0.4 {}
N 30 -190 140 -190 {
lab=Vgs1}
N 30 -190 30 -160 {
lab=Vgs1}
N 180 -340 180 -300 {
lab=Vdd}
N 30 -100 30 -90 {
lab=GND}
N -50 -100 -50 -90 {
lab=GND}
N -50 -340 180 -340 {
lab=Vdd}
N -50 -340 -50 -160 {
lab=Vdd}
N 290 -260 400 -260 {
lab=Vgs2}
N 290 -260 290 -230 {
lab=Vgs2}
N 290 -100 290 -90 {
lab=GND}
N 440 -340 440 -300 {
lab=Vdd}
N 180 -340 440 -340 {
lab=Vdd}
N 440 -300 440 -260 {
lab=Vdd}
N 440 -100 440 -90 {
lab=GND}
N 180 -190 180 -160 {
lab=#net1}
N 180 -100 180 -90 {
lab=GND}
N 290 -230 290 -160 {
lab=Vgs2}
N 440 -170 440 -160 {
lab=#net2}
N 180 -240 180 -220 {
lab=#net3}
N 610 -260 720 -260 {
lab=Vgs3}
N 610 -260 610 -230 {
lab=Vgs3}
N 760 -340 760 -290 {
lab=Vdd}
N 610 -100 610 -90 {
lab=GND}
N 870 -260 980 -260 {
lab=Vgs4}
N 870 -260 870 -230 {
lab=Vgs4}
N 870 -100 870 -90 {
lab=GND}
N 1020 -340 1020 -290 {
lab=Vdd}
N 760 -340 1020 -340 {
lab=Vdd}
N 1020 -290 1020 -260 {
lab=Vdd}
N 1020 -100 1020 -90 {
lab=GND}
N 760 -260 760 -230 {
lab=#net4}
N 760 -100 760 -90 {
lab=GND}
N 440 -340 760 -340 {
lab=Vdd}
N 610 -170 610 -160 {
lab=#net5}
N 870 -170 870 -160 {
lab=#net6}
N 760 -230 760 -160 {
lab=#net4}
N 1020 -230 1020 -160 {
lab=#net7}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value="
.control
*ac dec 100 10 100k
tran 1u 3m
*dc VDD 0 5 0.1
*op
save all
write hw3p3.raw
.endc
"}
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
C {devices/nmos4.sym} 160 -190 0 0 {name=M1 model=N_1u w=10u l=2u del=0 m=1}
C {devices/vsource.sym} 30 -130 0 0 {name=VGS1 value="dc 1.15"}
C {devices/gnd.sym} 180 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -50 -130 0 0 {name=VDD value="dc 5"}
C {devices/gnd.sym} 30 -90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -50 -90 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 90 -340 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 100 -190 0 0 {name=p2 sig_type=std_logic lab=Vgs1}
C {devices/pmos4.sym} 420 -260 0 0 {name=M2 model=P_1u w=30u l=2u del=0 m=1}
C {devices/vsource.sym} 290 -130 0 0 {name=VGS2 value="dc 3.8"}
C {devices/gnd.sym} 290 -90 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 360 -260 0 0 {name=p3 sig_type=std_logic lab=Vgs2}
C {devices/gnd.sym} 440 -90 0 0 {name=l5 lab=GND}
C {devices/ammeter.sym} 180 -130 0 0 {name=Vmeas savecurrent=true}
C {devices/ammeter.sym} 440 -130 0 0 {name=Vmeas1 savecurrent=true}
C {devices/vsource.sym} 180 -270 0 0 {name=VDAC1 value="sin(0 1m 1k 0 0 0)"}
C {devices/nmos4.sym} 740 -260 0 0 {name=M3 model=N_1u w=10u l=2u del=0 m=1}
C {devices/vsource.sym} 610 -130 0 0 {name=VGS3 value="dc 1.15 ac 1m"}
C {devices/gnd.sym} 760 -90 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 610 -90 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} 680 -260 0 0 {name=p5 sig_type=std_logic lab=Vgs3}
C {devices/pmos4.sym} 1000 -260 0 0 {name=M4 model=P_1u w=30u l=2u del=0 m=1}
C {devices/vsource.sym} 870 -130 0 0 {name=VGS4 value="dc 3.8 ac 1m"}
C {devices/gnd.sym} 870 -90 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 940 -260 0 0 {name=p6 sig_type=std_logic lab=Vgs4}
C {devices/gnd.sym} 1020 -90 0 0 {name=l10 lab=GND}
C {devices/ammeter.sym} 760 -130 0 0 {name=Vmeas2 savecurrent=true}
C {devices/ammeter.sym} 1020 -130 0 0 {name=Vmeas3 savecurrent=true}
C {devices/vsource.sym} 440 -200 0 0 {name=VDAC2 value="sin(0 1m 1k 0 0 0)"}
C {devices/vsource.sym} 610 -200 0 0 {name=VDAC3 value="sin(0 1m 1k 0 0 0)"}
C {devices/vsource.sym} 870 -200 0 0 {name=VDAC4 value="sin(0 1m 1k 0 0 0)"}
