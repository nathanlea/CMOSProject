*********************************************************
*                                                       *
* Example HSPICE netlist for our AMI 0.5u technology    *
* James Stine, OSU                                      *
*                                                       *
* to run this file: hspice filename.sp                  *
* to display results: cscope (then open filename.sw0)   *
*                                                       *
*********************************************************

*****************************************
* Voltage Sources
*
* Format: Vname pin1 pin2 DC voltage
*****************************************
VA A gnd pulse 0 5V 0ns 200ps 200ps 4.8ns 10ns
VB B gnd pulse 0 5V 0ns 200ps 200ps 9.8ns 20ns
VC C gnd pulse 0 5V 0ns 200ps 200ps 19.8ns 40ns
VD D gnd pulse 0 5V 0ns 200ps 200ps 39.8ns 80ns

*****************************************************************
* Transistors
*
* Format: Mnumber Drain Gate Source Bulk Model Length Width
*****************************************************************

* SPICE3 file created from bitslice.ext - technology: scmos

.option scale=0.3u

M1000 vdd clk dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=2490 pd=1082 as=200 ps=90
M1001 dffpos_0/a_n19_n15# sum vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1002 dffpos_0/a_n14_n84# clk dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1003 dffpos_0/a_n5_n15# dffpos_0/a_n34_n84# dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1004 vdd dffpos_0/a_n2_n86# dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 dffpos_0/a_n2_n86# dffpos_0/a_n14_n84# vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1006 dffpos_0/a_25_n15# dffpos_0/a_n2_n86# vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1007 dffpos_0/a_30_n84# dffpos_0/a_n34_n84# dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1008 dffpos_0/a_40_n5# clk dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1009 vdd out dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 gnd clk dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=1260 pd=614 as=100 ps=50
M1011 out dffpos_0/a_30_n84# vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1012 dffpos_0/a_n19_n84# sum gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1013 dffpos_0/a_n14_n84# dffpos_0/a_n34_n84# dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1014 dffpos_0/a_n5_n84# clk dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1015 gnd dffpos_0/a_n2_n86# dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 dffpos_0/a_n2_n86# dffpos_0/a_n14_n84# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1017 dffpos_0/a_25_n84# dffpos_0/a_n2_n86# gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1018 dffpos_0/a_30_n84# clk dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1019 dffpos_0/a_40_n84# dffpos_0/a_n34_n84# dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1020 gnd out dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 out dffpos_0/a_30_n84# gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1022 vdd fa_0/A fa_0/a_2_74# vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1023 fa_0/a_2_74# Y vdd vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 fa_0/a_25_6# Cin fa_0/a_2_74# vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1025 fa_0/a_33_74# Y fa_0/a_25_6# vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1026 vdd fa_0/A fa_0/a_33_74# vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1027 fa_0/a_46_74# fa_0/A vdd vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1028 vdd Y fa_0/a_46_74# vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1029 fa_0/a_46_74# Cin vdd vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1030 fa_0/a_70_6# fa_0/a_25_6# fa_0/a_46_74# vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1031 fa_0/a_79_74# Cin fa_0/a_70_6# vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1032 fa_0/a_84_74# Y fa_0/a_79_74# vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1033 vdd fa_0/A fa_0/a_84_74# vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1034 sum fa_0/a_70_6# vdd vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1035 Cout fa_0/a_25_6# vdd vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1036 gnd fa_0/A fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1037 fa_0/a_2_6# Y gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1038 fa_0/a_25_6# Cin fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1039 fa_0/a_33_6# Y fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1040 gnd fa_0/A fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1041 fa_0/a_46_6# fa_0/A gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1042 gnd Y fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 fa_0/a_46_6# Cin gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1044 fa_0/a_70_6# fa_0/a_25_6# fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1045 fa_0/a_79_6# Cin fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1046 fa_0/a_84_6# Y fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1047 gnd fa_0/A fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1048 sum fa_0/a_70_6# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1049 Cout fa_0/a_25_6# gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1050 mux21_0/nand_1/A out vdd vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1051 vdd mux21_0/nand_2/B mux21_0/nand_1/A vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1052 mux21_0/nand_2/a_9_6# out gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1053 mux21_0/nand_1/A mux21_0/nand_2/B mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1054 mux21_0/nand_2/B S vdd vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1055 mux21_0/nand_2/B S gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1056 fa_0/A mux21_0/nand_1/A vdd vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1057 vdd mux21_0/nand_1/B fa_0/A vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1058 mux21_0/nand_1/a_9_6# mux21_0/nand_1/A gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1059 fa_0/A mux21_0/nand_1/B mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1060 mux21_0/nand_1/B S vdd vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1061 vdd B mux21_0/nand_1/B vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 mux21_0/nand_0/a_9_6# S gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1063 mux21_0/nand_1/B B mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1064 vdd A xor2_0/a_17_6# vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1065 xor2_0/a_33_54# xor2_0/a_28_44# vdd vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1066 Y A xor2_0/a_33_54# vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1067 xor2_0/a_50_54# xor2_0/a_17_6# Y vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1068 vdd subtract xor2_0/a_50_54# vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1069 xor2_0/a_28_44# subtract vdd vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1070 gnd A xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1071 xor2_0/a_33_6# xor2_0/a_28_44# gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1072 Y xor2_0/a_17_6# xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1073 xor2_0/a_50_6# A Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1074 gnd subtract xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1075 xor2_0/a_28_44# subtract gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
C0 dffpos_0/a_n34_n84# clk 2.571480fF
C1 vdd mux21_0/nand_1/B 2.097720fF
C2 vdd xor2_0/a_17_6# 2.059560fF
C3 vdd xor2_0/a_28_44# 2.119800fF
C4 dffpos_0/a_n2_n86# clk 3.159600fF
C5 vdd fa_0/a_25_6# 3.134880fF
C6 sum gnd 5.771640fF
C7 vdd mux21_0/nand_2/B 5.855850fF
C8 vdd fa_0/A 8.329680fF
C9 dffpos_0/a_30_n84# dffpos_0/a_n34_n84# 2.081040fF
C10 gnd gnd! 33.481316fF
C11 Y gnd! 19.165801fF
C12 subtract gnd! 2.071800fF
C13 xor2_0/a_17_6# gnd! 4.666380fF
C14 xor2_0/a_28_44# gnd! 4.104630fF
C15 S gnd! 7.284450fF
C16 fa_0/A gnd! 8.944950fF
C17 mux21_0/nand_1/B gnd! 3.001320fF
C18 mux21_0/nand_1/A gnd! 6.037200fF
C19 mux21_0/nand_2/B gnd! 2.145240fF
C20 out gnd! 16.209900fF
C21 sum gnd! 9.174000fF
C22 fa_0/a_70_6# gnd! 5.476050fF
C23 fa_0/a_25_6# gnd! 10.760820fF
C24 vdd gnd! 52.132715fF
C25 dffpos_0/a_30_n84# gnd! 3.784590fF
C26 dffpos_0/a_n14_n84# gnd! 4.801770fF
C27 dffpos_0/a_n2_n86# gnd! 5.164560fF
C28 dffpos_0/a_n34_n84# gnd! 8.655120fF
C29 clk gnd! 11.765740fF


*********************************************
* Transistor Models
*
* Those are given, dont touch these
*********************************************

* These parameters are extracted from the process corner wafers that are provided by AMI
* In this document slow-fast means: NMOS device slow and PMOS device fast.
* The fast-slow corner means: NMOS fast and PMOS slow. 
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_TT (typical)                  WAF: 3104
* Temperature_parameters=Optimized 
.MODEL CMOSNTT NMOS (                                LEVEL   = 49
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
.MODEL CMOSPTT PMOS (                                LEVEL   = 49
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
*
* DATE: May 23/02
* Tech: AMI_C5N
* LOT: T22Y_SS (slow-slow)                  WAF: 3102
* Temperature_parameters=Optimized 
.MODEL CMOSNSS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7087481
+K1      = 0.9382905      K2      = -0.1120562     K3      = 23.0789213
+K3B     = -7.3398981     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3388333      DVT1    = 0.4283914      DVT2    = -0.0952143
+U0      = 459.674806     UA      = 1E-13          UB      = 1.503507E-18
+UC      = 1.325863E-11   VSAT    = 1.682969E5     A0      = 0.4784067
+AGS     = 0.0995613      B0      = 2.644452E-6    B1      = 5E-6
+KETA    = -5.808373E-3   A1      = 1.027068E-4    A2      = 0.3400289
+RDSW    = 1.329687E3     PRWG    = 0.0432392      PRWB    = 0.0149808
+WR      = 1              WINT    = 2.420178E-7    LINT    = 3.239617E-8
+XL      = 0              XW      = 0              DWG     = -1.396728E-8
+DWB     = 5.6316E-8      VOFF    = -2.57933E-3    NFACTOR = 0.8759425
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0152264      ETAB    = -1.058244E-3
+DSUB    = 0.2005917      PCLM    = 2.6613926      PDIBLC1 = -0.7606454
+PDIBLC2 = 2.593415E-3    PDIBLCB = -0.0326937     DROUT   = 0.6688818
+PSCBE1  = 5.85807E8      PSCBE2  = 7.988657E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.9           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.02E-10       CGSO    = 2.02E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0681426      PRDSW   = 188.2442761
+PK2     = -0.0295712     WKETA   = -0.0264969     LKETA   = -2.950307E-5
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9223355
+K1      = 0.5769702      K2      = 9.039555E-3    K3      = 6.34861
+K3B     = -0.6383676     W0      = 1E-8           NLX     = 4.747861E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4578035      DVT1    = 0.576459       DVT2    = -0.1206691
+U0      = 211.8308394    UA      = 2.824327E-9    UB      = 1E-21
+UC      = -5.66493E-11   VSAT    = 1.622935E5     A0      = 0.8712138
+AGS     = 0.1383793      B0      = 7.726776E-7    B1      = 5E-6
+KETA    = -5.205201E-3   A1      = 2.378013E-5    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0454944     PRWB    = -2.13823E-4
+WR      = 1              WINT    = 2.849786E-7    LINT    = 5.529217E-8
+XL      = 0              XW      = 0              DWG     = -1.840088E-8
+DWB     = 2.185555E-8    VOFF    = -0.0684347     NFACTOR = 0.9119466
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3751245      ETAB    = -0.0827039
+DSUB    = 1              PCLM    = 2.2966371      PDIBLC1 = 0.0365228
+PDIBLC2 = 3.733251E-3    PDIBLCB = -0.0621219     DROUT   = 0.2123397
+PSCBE1  = 7.499863E9     PSCBE2  = 7.328296E-10   PVAG    = 4.584372E-6
+DELTA   = 0.01           RSH     = 101.9          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.84E-10       CGSO    = 2.84E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 4.75772E-3     LKETA   = -6.715425E-3
+AF      = 1              KF      = 0)
*
* DATE: May 22/02
* Tech: AMI_C5N
* LOT: T22Y_FF (fast-fast)                  WAF: 3110
* Temperature_parameters=Optimized 
.MODEL CMOSNFF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6252608
+K1      = 0.8530381      K2      = -0.0937042     K3      = 25.5736581
+K3B     = -7.2969383     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.4153341      DVT1    = 0.4318353      DVT2    = -0.1001188
+U0      = 461.2276323    UA      = 1E-13          UB      = 1.46812E-18
+UC      = 1.421961E-11   VSAT    = 1.555424E5     A0      = 0.7155223
+AGS     = 0.1483817      B0      = 2.54418E-6     B1      = 5E-6
+KETA    = 1.388284E-5    A1      = 7.294903E-5    A2      = 0.3921052
+RDSW    = 1.305357E3     PRWG    = 0.0488517      PRWB    = 0.0366783
+WR      = 1              WINT    = 2.274256E-7    LINT    = 3.776271E-8
+XL      = 0              XW      = 0              DWG     = -8.845179E-9
+DWB     = 6.105959E-8    VOFF    = 0              NFACTOR = 0.5636274
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0345642      ETAB    = -1.428288E-3
+DSUB    = 0.3127341      PCLM    = 2.6236271      PDIBLC1 = -0.3319738
+PDIBLC2 = 2.390366E-3    PDIBLCB = -0.0300257     DROUT   = 0.6600306
+PSCBE1  = 5.488078E8     PSCBE2  = 4.431797E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.8           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 1.98E-10       CGSO    = 1.98E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.1033668      PRDSW   = 59.9594347
+PK2     = -0.0304166     WKETA   = -0.0144288     LKETA   = 3.115505E-3
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8880096
+K1      = 0.533922       K2      = 3.259424E-3    K3      = 4.9517158
+K3B     = -0.6918832     W0      = 1.515912E-8    NLX     = 3.554945E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4926947      DVT1    = 0.530833       DVT2    = -0.1185572
+U0      = 211.6791804    UA      = 2.785001E-9    UB      = 1E-21
+UC      = -5.76365E-11   VSAT    = 1.732495E5     A0      = 0.9378784
+AGS     = 0.1630399      B0      = 7.147395E-7    B1      = 5E-6
+KETA    = 1.410441E-4    A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0490272     PRWB    = 8.254155E-5
+WR      = 1              WINT    = 2.696991E-7    LINT    = 6.103973E-8
+XL      = 0              XW      = 0              DWG     = -1.293462E-8
+DWB     = 2.202201E-8    VOFF    = -0.0500647     NFACTOR = 0.8235545
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.4342722      ETAB    = -6.780063E-3
+DSUB    = 1              PCLM    = 2.3221049      PDIBLC1 = 0.036845
+PDIBLC2 = 3.86901E-3     PDIBLCB = -0.0457025     DROUT   = 0.1909189
+PSCBE1  = 1.678442E10    PSCBE2  = 1.640115E-9    PVAG    = 0.0133488
+DELTA   = 0.01           RSH     = 101.7          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.75E-10       CGSO    = 2.75E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 5.10041E-3     LKETA   = -1.725699E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 28/02
* Tech: AMI_C5N
* LOT: T22Y_SF (slow-fast)                  WAF: 3108
* Temperature_parameters=Optimized 
.MODEL CMOSNSF NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.7149035
+K1      = 0.9483936      K2      = -0.1143426     K3      = 22.9362167
+K3B     = -7.5062363     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3919449      DVT1    = 0.4489453      DVT2    = -0.1041249
+U0      = 457.716722     UA      = 1E-13          UB      = 1.372758E-18
+UC      = 9.187767E-12   VSAT    = 1.587379E5     A0      = 0.4423616
+AGS     = 0.074408       B0      = 2.495758E-6    B1      = 5E-6
+KETA    = -7.852725E-3   A1      = 0              A2      = 0.3722219
+RDSW    = 1.37701E3      PRWG    = 0.0473261      PRWB    = 0.0143246
+WR      = 1              WINT    = 2.276625E-7    LINT    = 3.643153E-8
+XL      = 0              XW      = 0              DWG     = -8.492651E-9
+DWB     = 5.745769E-8    VOFF    = -1.122941E-3   NFACTOR = 0.9488846
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0194621      ETAB    = -1.316507E-3
+DSUB    = 0.2373912      PCLM    = 2.609637       PDIBLC1 = -0.2869359
+PDIBLC2 = 2.596336E-3    PDIBLCB = -9.96922E-3    DROUT   = 0.6175652
+PSCBE1  = 5.8967E8       PSCBE2  = 8.951955E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 81.7           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0690695      PRDSW   = 181.3444668
+PK2     = -0.0304429     WKETA   = 0.0420944      LKETA   = -3.044755E-3 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPSF PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.8558405
+K1      = 0.5644444      K2      = 6.387376E-3    K3      = 6.0462612
+K3B     = -0.5998096     W0      = 1E-8           NLX     = 3.340021E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.4979627      DVT1    = 0.5476217      DVT2    = -0.1143472
+U0      = 211.0603347    UA      = 2.770099E-9    UB      = 1.044234E-21
+UC      = -5.9315E-11    VSAT    = 1.779657E5     A0      = 1.1297757
+AGS     = 0.172519       B0      = 6.127953E-7    B1      = 5E-6
+KETA    = -1.991554E-3   A1      = 0              A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.0477698     PRWB    = -1.197112E-4
+WR      = 1              WINT    = 2.778374E-7    LINT    = 5.81705E-8
+XL      = 0              XW      = 0              DWG     = -1.563705E-8
+DWB     = 2.218513E-8    VOFF    = -0.0660365     NFACTOR = 0.9061795
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1521419      ETAB    = -0.0473117
+DSUB    = 1              PCLM    = 2.3170883      PDIBLC1 = 0.0640318
+PDIBLC2 = 4.224165E-3    PDIBLCB = -0.0417139     DROUT   = 0.2703555
+PSCBE1  = 5.427801E9     PSCBE2  = 5.303858E-10   PVAG    = 0
+DELTA   = 0.01           RSH     = 102.2          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.64E-10       CGSO    = 2.64E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 3.730632E-3    LKETA   = -4.016397E-3 
+AF      = 1              KF      = 0)
*
* DATE: May 24/02
* Tech: AMI_C5N
* LOT: T22Y_FS (fast-slow)                  WAF: 3103
* Temperature_parameters=Optimized 
.MODEL CMOSNFS NMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6406873
+K1      = 0.8993265      K2      = -0.1056377     K3      = 21.3163919
+K3B     = -7.1608652     W0      = 1E-8           NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.5203013      DVT1    = 0.4082348      DVT2    = -0.0884394
+U0      = 459.8817656    UA      = 1E-13          UB      = 1.519768E-18
+UC      = 1.390305E-11   VSAT    = 1.618085E5     A0      = 0.6561988
+AGS     = 0.1483929      B0      = 2.633747E-6    B1      = 5E-6
+KETA    = 1.06352E-3     A1      = 7.568286E-5    A2      = 0.3677153
+RDSW    = 1.235008E3     PRWG    = 0.0513137      PRWB    = 0.0510984
+WR      = 1              WINT    = 2.396297E-7    LINT    = 3.585449E-8
+XL      = 0              XW      = 0              DWG     = -1.245253E-8
+DWB     = 5.532278E-8    VOFF    = 0              NFACTOR = 0.6559298
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0330898      ETAB    = -1.406156E-3
+DSUB    = 0.2997589      PCLM    = 2.6313228      PDIBLC1 = -0.40275
+PDIBLC2 = 2.205592E-3    PDIBLCB = -0.0272899     DROUT   = 0.7201569
+PSCBE1  = 5.601647E8     PSCBE2  = 5.450628E-5    PVAG    = 7.40725E-3
+DELTA   = 0.01           RSH     = 81.2           MOBMOD  = 1
+PRT     = 8.621          UTE     = -1             KT1     = -0.2501
+KT1L    = -2.58E-9       KT2     = 0              UA1     = 5.4E-10
+UB1     = -4.8E-19       UC1     = -7.5E-11       AT      = 1E5
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.03E-10       CGSO    = 2.03E-10       CGBO    = 1E-9
+CJ      = 4.198358E-4    PB      = 0.99           MJ      = 0.4516115
+CJSW    = 3.241716E-10   PBSW    = 0.1000811      MJSW    = 0.1152935
+CJSWG   = 1.64E-10       PBSWG   = 0.1000811      MJSWG   = 0.1152935
+CF      = 0              PVTH0   = 0.0766435      PRDSW   = 163.0361088
+PK2     = -0.0297388     WKETA   = -0.0214699     LKETA   = -2.14921E-5 
+AF      = 1              KF      = 0)
*
.MODEL CMOSPFS PMOS (                                LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.39E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -1.0173478
+K1      = 0.5658287      K2      = 0.0116517      K3      = 10.5698978
+K3B     = -0.7608774     W0      = 1E-8           NLX     = 9.01509E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.3035484      DVT1    = 0.5614757      DVT2    = -0.0733879
+U0      = 213.2201651    UA      = 2.872001E-9    UB      = 1.05947E-21
+UC      = -5.43332E-11   VSAT    = 1.545629E5     A0      = 0.4566597
+AGS     = 0              B0      = 6.789661E-7    B1      = 5E-6
+KETA    = -8.389653E-3   A1      = 4.693067E-8    A2      = 0.3
+RDSW    = 3E3            PRWG    = -0.046965      PRWB    = -6.108168E-5
+WR      = 1              WINT    = 2.938786E-7    LINT    = 5.685662E-8
+XL      = 0              XW      = 0              DWG     = -1.995328E-8
+DWB     = 2.020066E-8    VOFF    = -0.0719834     NFACTOR = 0.7501867
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.1503769      ETAB    = -0.0623126
+DSUB    = 0.8623589      PCLM    = 2.2059151      PDIBLC1 = 0.0239419
+PDIBLC2 = 3.052934E-3    PDIBLCB = -0.0972847     DROUT   = 0.1509141
+PSCBE1  = 5.116843E9     PSCBE2  = 5E-10          PVAG    = 0
+DELTA   = 0.01           RSH     = 101.5          MOBMOD  = 1
+PRT     = 59.494         UTE     = -1             KT1     = -0.2942
+KT1L    = 1.68E-9        KT2     = 0              UA1     = 4.5E-9
+UB1     = -6.3E-18       UC1     = -1E-10         AT      = 1E3
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 3.18E-10       CGSO    = 3.18E-10       CGBO    = 1E-9
+CJ      = 7.235521E-4    PB      = 0.9527404      MJ      = 0.4955303
+CJSW    = 2.692736E-10   PBSW    = 0.99           MJSW    = 0.295843
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.295843
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 2.574681E-3    LKETA   = -7.296621E-3 
+AF      = 1              KF      = 0)
*

**************************************************************
* Analysis type
*
* .DC voltagesource startvoltage stopvoltage stepsize [source start stop step ...]
* .TRAN stoptime stepsize
*
* .DC is a dc-sweep (waveform over voltage) (can have more than one, as shown above)
* .TRAN is a transient analysis (waveform over time)
**************************************************************
.dc VA 0V +5V 100mV
.tran .05n 80n 

**************************************************************
*  Define Voltages for Power/Ground
**************************************************************
.param vddp = 5.0
.param SUPPLY = '1.0*vddp'
.temp 70
VDD vdd 0 DC 'SUPPLY'

**************************************************************
*  Define .measure statements (needs to be modified for your design
**************************************************************

 .param tstop = 80n
 .param tdval = 0n
  
 .meas tran vmax max v(Out) from=tdval to=tstop
 .meas tran vmin min v(Out) from=tdval to=tstop
 .meas tran trise trig v(Out) val='vmin+0.1*vmax'  td=tdval
 +      rise=1 targ  v(Out) val='0.9*vmax' rise=1
 .meas tran  tfall trig v(Out) val='0.9*vmax' td=tdval
 +      fall=2 targ  v(Out) val='vmin+0.1*vmax' fall=2
 .measure tran tplh   trig v(A) val='0.5*vddp' rise=1
 +              targ v(Out) val='0.5*vddp' rise=1
 .measure tran tphl  trig v(A) val='0.5*vddp' fall=1
 +              targ v(Out) val='0.5*vddp' fall=1
 .measure avg_delay param='(tphl - tplh)/2'
 .measure tran avgpower avg power from=tdval to=tstop
 .measure tran peakpwr max power from=tdval to=tstop

**************************************************************
* Final options
* .probe tells which waveforms to save
* .print prints given waveforms in tabulated form
**************************************************************
.print DC V(A) V(Out)
.print tran V(A) V(B) V(C) V(D) V(Out)
.probe V(A) V(B) V(C) V(D) V(Out)
.op
.options probe post measout captab
.end
