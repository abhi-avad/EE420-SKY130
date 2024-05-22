v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 10 1130 410 {flags=graph
y1=-2.9e-09
y2=2.7e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10
x2=100000
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"i(vdd) 168.0205u +\\""
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 330 420 1130 820 {flags=graph
y1=1e-35
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10
x2=100000
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
B 2 1140 10 1940 410 {flags=graph
y1=-5.6e-09
y2=-5.5e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10
x2=100000
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node="\\"Id;i(vdd) -1 *\\""}
B 2 1140 420 1940 820 {flags=graph
y1=1.998573
y2=2.0014553
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=10
x2=100000
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color=4
node=vdd}
T {C5
-----
Finding r_out} -50 -390 0 0 0.4 0.4 {}
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
ac dec 100 10 100k
*tran 1u 3m
*dc VDD 0 5 0.1
save all
write lec3ex2.raw
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
C {devices/code.sym} -340 50 0 0 {name=C5_models.txt only_toplevel=false value="
* BSIM3 models for AMI Semiconductor's C5 process
*
* Don't forget the .options scale=300nm if using drawn lengths
* and the MOSIS SUBM design rules
*
* 2<Ldrawn<500   10<Wdrawn<10000 Vdd=5V
* Note minimum L is 0.6 um while minimum W is 3 um
* Change to level=49 when using HSPICE or SmartSpice

.MODEL NMOS NMOS (                                 LEVEL   = 8
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6696061
+K1      = 0.8351612      K2      = -0.0839158     K3      = 23.1023856
+K3B     = -7.6841108     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.9047241      DVT1    = 0.4302695      DVT2    = -0.134857
+U0      = 458.439679     UA      = 1E-13          UB      = 1.485499E-18
+UC      = 1.629939E-11   VSAT    = 1.643993E5     A0      = 0.6103537
+AGS     = 0.1194608      B0      = 2.674756E-6    B1      = 5E-6
+KETA    = -2.640681E-3   A1      = 8.219585E-5    A2      = 0.3564792
+RDSW    = 1.387108E3     PRWG    = 0.0299916      PRWB    = 0.0363981
+WR      = 1              WINT    = 2.472348E-7    LINT    = 3.597605E-8
+XL      = 0              XW      = 0              DWG     = -1.287163E-8
+DWB     = 5.306586E-8    VOFF    = 0              NFACTOR = 0.8365585
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0246738      ETAB    = -1.406123E-3
+DSUB    = 0.2543458      PCLM    = 2.5945188      PDIBLC1 = -0.4282336
+PDIBLC2 = 2.311743E-3    PDIBLCB = -0.0272914     DROUT   = 0.7283566
+PSCBE1  = 5.598623E8     PSCBE2  = 5.461645E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2E-10          CGSO    = 2E-10          CGBO    = 1E-9
+CJ      = 4.197772E-4    PB      = 0.99           MJ      = 0.4515044
+CJSW    = 3.242724E-10   PBSW    = 0.1            MJSW    = 0.1153991
+CJSWG   = 1.64E-10       PBSWG   = 0.1            MJSWG   = 0.1153991
+CF      = 0              PVTH0   = 0.0585501      PRDSW   = 133.285505
+PK2     = -0.0299638     WKETA   = -0.0248758     LKETA   = 1.173187E-3
+AF      = 1              KF      = 0)
*
.MODEL PMOS PMOS (                                 LEVEL   = 8
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9214347
+K1      = 0.5553722      K2      = 8.763328E-3    K3      = 6.3063558
+K3B     = -0.6487362     W0      = 1.280703E-8    NLX     = 2.593997E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.5131165      DVT1    = 0.5480536      DVT2    = -0.1186489
+U0      = 212.0166131    UA      = 2.807115E-9    UB      = 1E-21
+UC      = -5.82128E-11   VSAT    = 1.713601E5     A0      = 0.8430019
+AGS     = 0.1328608      B0      = 7.117912E-7    B1      = 5E-6
+KETA    = -3.674859E-3   A1      = 4.77502E-5     A2      = 0.3
+RDSW    = 2.837206E3     PRWG    = -0.0363908     PRWB    = -1.016722E-5
+WR      = 1              WINT    = 2.838038E-7    LINT    = 5.528807E-8
+XL      = 0              XW      = 0              DWG     = -1.606385E-8
+DWB     = 2.266386E-8    VOFF    = -0.0558512     NFACTOR = 0.9342488
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3251882      ETAB    = -0.0580325
+DSUB    = 1              PCLM    = 2.2409567      PDIBLC1 = 0.0411445
+PDIBLC2 = 3.355575E-3    PDIBLCB = -0.0551797     DROUT   = 0.2036901
+PSCBE1  = 6.44809E9      PSCBE2  = 6.300848E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 101.6          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.9E-10        CGSO    = 2.9E-10        CGBO    = 1E-9
+CJ      = 7.235528E-4    PB      = 0.9527355      MJ      = 0.4955293
+CJSW    = 2.692786E-10   PBSW    = 0.99           MJSW    = 0.2958392
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.2958392
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.292165E-3    LKETA   = -4.205905E-3 
+AF      = 1              KF      = 0)
"}
C {devices/nmos4.sym} 160 -190 0 0 {name=M1 model=NMOS w=40u l=2u del=0 m=1}
C {devices/vsource.sym} 30 -130 0 0 {name=VGS1 value="dc 1.1"}
C {devices/gnd.sym} 180 -90 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -50 -130 0 0 {name=VDD value="dc 2 ac 2m sin(2 1m 1k 0 0 0)"}
C {devices/gnd.sym} 30 -90 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -50 -90 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 90 -260 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} 100 -190 0 0 {name=p2 sig_type=std_logic lab=Vgs}
