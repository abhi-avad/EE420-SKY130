v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 370 30 860 430 {flags=graph
y1=-0
y2=8.1e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Id4_pushed;i(VA3) -1 *\\"
\\"Id2_pulled;i(VA1)\\"
\\"Id2;i(va2)\\"
\\"Id4;i(va4)\\""
color="7 7 8 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 880 30 1370 430 {flags=graph
y1=0.039
y2=5.2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vds2
vd4
\\"Vov_m2;net1 0.8 -\\"
\\"Vov_m4;net3 0.8 +\\""
color="8 10 8 10"
dataset=-1
unitx=1
logx=0
logy=0
}
N 80 -150 160 -150 {
lab=#net1}
N 200 -230 200 -180 {
lab=VDS2}
N 200 -340 200 -290 {
lab=#net2}
N 200 -340 330 -340 {
lab=#net2}
N 330 -340 330 -250 {
lab=#net2}
N 570 -200 570 -160 {
lab=VD4}
N 460 -230 530 -230 {
lab=#net3}
N 200 -150 200 -100 {
lab=#net4}
N 330 -340 570 -340 {
lab=#net2}
N 570 -340 570 -230 {
lab=#net2}
N 730 -190 730 -160 {
lab=VDS2}
N 820 -190 820 -160 {
lab=VD4}
C {devices/code_shown.sym} 30 50 0 0 {name="SIM COMMANDS" only_toplevel=false value="
**.include cmosedu_models.txt
.control
dc I0 0 40u 0.1u
save all
write hw2p3.raw
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
C {devices/nmos4.sym} 180 -150 0 0 {name=M2 model=N_1u w=20u l=2u del=0 m=1}
C {devices/vsource.sym} 330 -220 0 0 {name=VDD value=5 savecurrent=false}
C {devices/gnd.sym} 200 -40 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 330 -190 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} 200 -200 0 0 {name=p2 sig_type=std_logic lab=VDS2}
C {devices/vsource.sym} 80 -120 0 0 {name=V1 value=1 savecurrent=false}
C {devices/res.sym} 200 -260 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 80 -90 0 0 {name=l7 lab=GND}
C {devices/pmos4.sym} 550 -230 0 0 {name=M4 model=P_1u w=30u l=2u del=0 m=1}
C {devices/gnd.sym} 570 -40 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} 570 -170 0 0 {name=p4 sig_type=std_logic lab=VD4}
C {devices/res.sym} 570 -130 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 460 -200 0 0 {name=V2 value=3.9 savecurrent=false}
C {devices/gnd.sym} 460 -170 0 0 {name=l12 lab=GND}
C {devices/isource.sym} 730 -130 0 0 {name=I0 value=1.5u}
C {devices/gnd.sym} 730 -40 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 820 -40 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 730 -190 0 0 {name=p1 sig_type=std_logic lab=VDS2}
C {devices/lab_wire.sym} 820 -190 0 0 {name=p3 sig_type=std_logic lab=VD4}
C {devices/cccs.sym} 820 -130 2 0 {name=F1 vnam=VA1 value=2}
C {devices/ammeter.sym} 200 -70 0 0 {name=VA2 savecurrent=false}
C {devices/ammeter.sym} 570 -70 0 0 {name=VA4 savecurrent=false}
C {devices/ammeter.sym} 730 -70 0 0 {name=VA1 savecurrent=false}
C {devices/ammeter.sym} 820 -70 0 0 {name=VA3 savecurrent=false}
