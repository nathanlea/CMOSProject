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
VA A0 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VB A1 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VC A2 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VD A3 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VE A4 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VF A5 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VG A6 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VH A7 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VI B0 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VK B1 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VL B2 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VM B3 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VN B4 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VO B5 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VP B6 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VQ B7 gnd pulse 0 0V 0ns 200ps 200ps 4.8ns 10ns
VR subtract gnd pulse 0 5V 0ns 200ps 200ps 9.6ns 20ns
VT loadB gnd pulse 5 5V 0ns 200ps 200ps 4.8ns 10ns
VS clk gnd pulse 0 5V 0ns 200ps 200ps 2.4ns 5ns
VV loadR gnd pulse 5 5V 0ns 200ps 200ps 2.4ns 5ns

*****************************************************************
* Transistors
*
* Format: Mnumber Drain Gate Source Bulk Model Length Width
*****************************************************************

* SPICE3 file created from prjMagic.ext - technology: scmos

.option scale=0.3u

M1000 inverter_0/Y inverter_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=20220 ps=8806
M1001 inverter_0/Y inverter_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=10230 ps=4992
M1002 Vdd inverter_0/Y bitslice_7/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1003 bitslice_7/dffpos_0/a_n19_n15# gundy Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1004 bitslice_7/dffpos_0/a_n14_n84# inverter_0/Y bitslice_7/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1005 bitslice_7/dffpos_0/a_n5_n15# bitslice_7/dffpos_0/a_n34_n84# bitslice_7/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1006 Vdd bitslice_7/dffpos_0/a_n2_n86# bitslice_7/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 bitslice_7/dffpos_0/a_n2_n86# bitslice_7/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 bitslice_7/dffpos_0/a_25_n15# bitslice_7/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1009 bitslice_7/dffpos_0/a_30_n84# bitslice_7/dffpos_0/a_n34_n84# bitslice_7/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1010 bitslice_7/dffpos_0/a_40_n5# inverter_0/Y bitslice_7/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1011 Vdd Out7 bitslice_7/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 Gnd inverter_0/Y bitslice_7/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1013 Out7 bitslice_7/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1014 bitslice_7/dffpos_0/a_n19_n84# gundy Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1015 bitslice_7/dffpos_0/a_n14_n84# bitslice_7/dffpos_0/a_n34_n84# bitslice_7/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1016 bitslice_7/dffpos_0/a_n5_n84# inverter_0/Y bitslice_7/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1017 Gnd bitslice_7/dffpos_0/a_n2_n86# bitslice_7/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 bitslice_7/dffpos_0/a_n2_n86# bitslice_7/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1019 bitslice_7/dffpos_0/a_25_n84# bitslice_7/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1020 bitslice_7/dffpos_0/a_30_n84# inverter_0/Y bitslice_7/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1021 bitslice_7/dffpos_0/a_40_n84# bitslice_7/dffpos_0/a_n34_n84# bitslice_7/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1022 Gnd Out7 bitslice_7/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1023 Out7 bitslice_7/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 Vdd bitslice_7/fa_0/A bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1025 bitslice_7/fa_0/a_2_74# bitslice_7/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 bitslice_7/fa_0/a_25_6# bitslice_7/Cin bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1027 bitslice_7/fa_0/a_33_74# bitslice_7/Y bitslice_7/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1028 Vdd bitslice_7/fa_0/A bitslice_7/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1029 bitslice_7/fa_0/a_46_74# bitslice_7/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1030 Vdd bitslice_7/Y bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1031 bitslice_7/fa_0/a_46_74# bitslice_7/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 bitslice_7/fa_0/a_70_6# bitslice_7/fa_0/a_25_6# bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1033 bitslice_7/fa_0/a_79_74# bitslice_7/Cin bitslice_7/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1034 bitslice_7/fa_0/a_84_74# bitslice_7/Y bitslice_7/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1035 Vdd bitslice_7/fa_0/A bitslice_7/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1036 gundy bitslice_7/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1037 Cout bitslice_7/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1038 Gnd bitslice_7/fa_0/A bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1039 bitslice_7/fa_0/a_2_6# bitslice_7/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1040 bitslice_7/fa_0/a_25_6# bitslice_7/Cin bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1041 bitslice_7/fa_0/a_33_6# bitslice_7/Y bitslice_7/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1042 Gnd bitslice_7/fa_0/A bitslice_7/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 bitslice_7/fa_0/a_46_6# bitslice_7/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1044 Gnd bitslice_7/Y bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1045 bitslice_7/fa_0/a_46_6# bitslice_7/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 bitslice_7/fa_0/a_70_6# bitslice_7/fa_0/a_25_6# bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1047 bitslice_7/fa_0/a_79_6# bitslice_7/Cin bitslice_7/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1048 bitslice_7/fa_0/a_84_6# bitslice_7/Y bitslice_7/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1049 Gnd bitslice_7/fa_0/A bitslice_7/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 gundy bitslice_7/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1051 Cout bitslice_7/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1052 bitslice_7/mux21_0/nand_1/A Out7 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1053 Vdd bitslice_7/mux21_0/nand_2/B bitslice_7/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 bitslice_7/mux21_0/nand_2/a_9_6# Out7 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1055 bitslice_7/mux21_0/nand_1/A bitslice_7/mux21_0/nand_2/B bitslice_7/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1056 bitslice_7/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1057 bitslice_7/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1058 bitslice_7/fa_0/A bitslice_7/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1059 Vdd bitslice_7/mux21_0/nand_1/B bitslice_7/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 bitslice_7/mux21_0/nand_1/a_9_6# bitslice_7/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1061 bitslice_7/fa_0/A bitslice_7/mux21_0/nand_1/B bitslice_7/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1062 bitslice_7/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1063 Vdd B7 bitslice_7/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1064 bitslice_7/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1065 bitslice_7/mux21_0/nand_1/B B7 bitslice_7/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1066 Vdd A7 bitslice_7/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1067 bitslice_7/xor2_0/a_33_54# bitslice_7/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1068 bitslice_7/Y A7 bitslice_7/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1069 bitslice_7/xor2_0/a_50_54# bitslice_7/xor2_0/a_17_6# bitslice_7/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1070 Vdd subtract bitslice_7/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1071 bitslice_7/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1072 Gnd A7 bitslice_7/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1073 bitslice_7/xor2_0/a_33_6# bitslice_7/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1074 bitslice_7/Y bitslice_7/xor2_0/a_17_6# bitslice_7/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1075 bitslice_7/xor2_0/a_50_6# A7 bitslice_7/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1076 Gnd subtract bitslice_7/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1077 bitslice_7/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1078 Vdd inverter_0/Y bitslice_6/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1079 bitslice_6/dffpos_0/a_n19_n15# bitslice_6/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1080 bitslice_6/dffpos_0/a_n14_n84# inverter_0/Y bitslice_6/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1081 bitslice_6/dffpos_0/a_n5_n15# bitslice_6/dffpos_0/a_n34_n84# bitslice_6/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1082 Vdd bitslice_6/dffpos_0/a_n2_n86# bitslice_6/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 bitslice_6/dffpos_0/a_n2_n86# bitslice_6/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 bitslice_6/dffpos_0/a_25_n15# bitslice_6/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1085 bitslice_6/dffpos_0/a_30_n84# bitslice_6/dffpos_0/a_n34_n84# bitslice_6/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1086 bitslice_6/dffpos_0/a_40_n5# inverter_0/Y bitslice_6/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1087 Vdd Out6 bitslice_6/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 Gnd inverter_0/Y bitslice_6/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1089 Out6 bitslice_6/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1090 bitslice_6/dffpos_0/a_n19_n84# bitslice_6/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1091 bitslice_6/dffpos_0/a_n14_n84# bitslice_6/dffpos_0/a_n34_n84# bitslice_6/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1092 bitslice_6/dffpos_0/a_n5_n84# inverter_0/Y bitslice_6/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1093 Gnd bitslice_6/dffpos_0/a_n2_n86# bitslice_6/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 bitslice_6/dffpos_0/a_n2_n86# bitslice_6/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1095 bitslice_6/dffpos_0/a_25_n84# bitslice_6/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1096 bitslice_6/dffpos_0/a_30_n84# inverter_0/Y bitslice_6/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1097 bitslice_6/dffpos_0/a_40_n84# bitslice_6/dffpos_0/a_n34_n84# bitslice_6/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1098 Gnd Out6 bitslice_6/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1099 Out6 bitslice_6/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 Vdd bitslice_6/fa_0/A bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1101 bitslice_6/fa_0/a_2_74# bitslice_6/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 bitslice_6/fa_0/a_25_6# bitslice_6/Cin bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1103 bitslice_6/fa_0/a_33_74# bitslice_6/Y bitslice_6/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1104 Vdd bitslice_6/fa_0/A bitslice_6/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1105 bitslice_6/fa_0/a_46_74# bitslice_6/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1106 Vdd bitslice_6/Y bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 bitslice_6/fa_0/a_46_74# bitslice_6/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1108 bitslice_6/fa_0/a_70_6# bitslice_6/fa_0/a_25_6# bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1109 bitslice_6/fa_0/a_79_74# bitslice_6/Cin bitslice_6/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1110 bitslice_6/fa_0/a_84_74# bitslice_6/Y bitslice_6/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1111 Vdd bitslice_6/fa_0/A bitslice_6/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1112 bitslice_6/sum bitslice_6/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1113 bitslice_7/Cin bitslice_6/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1114 Gnd bitslice_6/fa_0/A bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1115 bitslice_6/fa_0/a_2_6# bitslice_6/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 bitslice_6/fa_0/a_25_6# bitslice_6/Cin bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1117 bitslice_6/fa_0/a_33_6# bitslice_6/Y bitslice_6/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1118 Gnd bitslice_6/fa_0/A bitslice_6/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1119 bitslice_6/fa_0/a_46_6# bitslice_6/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1120 Gnd bitslice_6/Y bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 bitslice_6/fa_0/a_46_6# bitslice_6/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 bitslice_6/fa_0/a_70_6# bitslice_6/fa_0/a_25_6# bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1123 bitslice_6/fa_0/a_79_6# bitslice_6/Cin bitslice_6/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1124 bitslice_6/fa_0/a_84_6# bitslice_6/Y bitslice_6/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1125 Gnd bitslice_6/fa_0/A bitslice_6/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 bitslice_6/sum bitslice_6/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1127 bitslice_7/Cin bitslice_6/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1128 bitslice_6/mux21_0/nand_1/A Out6 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1129 Vdd bitslice_6/mux21_0/nand_2/B bitslice_6/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 bitslice_6/mux21_0/nand_2/a_9_6# Out6 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1131 bitslice_6/mux21_0/nand_1/A bitslice_6/mux21_0/nand_2/B bitslice_6/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1132 bitslice_6/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1133 bitslice_6/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1134 bitslice_6/fa_0/A bitslice_6/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1135 Vdd bitslice_6/mux21_0/nand_1/B bitslice_6/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 bitslice_6/mux21_0/nand_1/a_9_6# bitslice_6/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1137 bitslice_6/fa_0/A bitslice_6/mux21_0/nand_1/B bitslice_6/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1138 bitslice_6/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1139 Vdd B6 bitslice_6/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 bitslice_6/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1141 bitslice_6/mux21_0/nand_1/B B6 bitslice_6/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1142 Vdd A6 bitslice_6/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1143 bitslice_6/xor2_0/a_33_54# bitslice_6/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1144 bitslice_6/Y A6 bitslice_6/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1145 bitslice_6/xor2_0/a_50_54# bitslice_6/xor2_0/a_17_6# bitslice_6/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1146 Vdd subtract bitslice_6/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1147 bitslice_6/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1148 Gnd A6 bitslice_6/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1149 bitslice_6/xor2_0/a_33_6# bitslice_6/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1150 bitslice_6/Y bitslice_6/xor2_0/a_17_6# bitslice_6/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1151 bitslice_6/xor2_0/a_50_6# A6 bitslice_6/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1152 Gnd subtract bitslice_6/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1153 bitslice_6/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1154 Vdd inverter_0/Y bitslice_5/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1155 bitslice_5/dffpos_0/a_n19_n15# bitslice_5/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1156 bitslice_5/dffpos_0/a_n14_n84# inverter_0/Y bitslice_5/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1157 bitslice_5/dffpos_0/a_n5_n15# bitslice_5/dffpos_0/a_n34_n84# bitslice_5/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1158 Vdd bitslice_5/dffpos_0/a_n2_n86# bitslice_5/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 bitslice_5/dffpos_0/a_n2_n86# bitslice_5/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1160 bitslice_5/dffpos_0/a_25_n15# bitslice_5/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1161 bitslice_5/dffpos_0/a_30_n84# bitslice_5/dffpos_0/a_n34_n84# bitslice_5/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1162 bitslice_5/dffpos_0/a_40_n5# inverter_0/Y bitslice_5/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1163 Vdd Out5 bitslice_5/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1164 Gnd inverter_0/Y bitslice_5/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1165 Out5 bitslice_5/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1166 bitslice_5/dffpos_0/a_n19_n84# bitslice_5/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1167 bitslice_5/dffpos_0/a_n14_n84# bitslice_5/dffpos_0/a_n34_n84# bitslice_5/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1168 bitslice_5/dffpos_0/a_n5_n84# inverter_0/Y bitslice_5/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1169 Gnd bitslice_5/dffpos_0/a_n2_n86# bitslice_5/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 bitslice_5/dffpos_0/a_n2_n86# bitslice_5/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1171 bitslice_5/dffpos_0/a_25_n84# bitslice_5/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1172 bitslice_5/dffpos_0/a_30_n84# inverter_0/Y bitslice_5/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1173 bitslice_5/dffpos_0/a_40_n84# bitslice_5/dffpos_0/a_n34_n84# bitslice_5/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1174 Gnd Out5 bitslice_5/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1175 Out5 bitslice_5/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1176 Vdd bitslice_5/fa_0/A bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1177 bitslice_5/fa_0/a_2_74# bitslice_5/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 bitslice_5/fa_0/a_25_6# bitslice_5/Cin bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1179 bitslice_5/fa_0/a_33_74# bitslice_5/Y bitslice_5/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1180 Vdd bitslice_5/fa_0/A bitslice_5/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1181 bitslice_5/fa_0/a_46_74# bitslice_5/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1182 Vdd bitslice_5/Y bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 bitslice_5/fa_0/a_46_74# bitslice_5/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1184 bitslice_5/fa_0/a_70_6# bitslice_5/fa_0/a_25_6# bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1185 bitslice_5/fa_0/a_79_74# bitslice_5/Cin bitslice_5/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1186 bitslice_5/fa_0/a_84_74# bitslice_5/Y bitslice_5/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1187 Vdd bitslice_5/fa_0/A bitslice_5/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1188 bitslice_5/sum bitslice_5/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1189 bitslice_6/Cin bitslice_5/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1190 Gnd bitslice_5/fa_0/A bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1191 bitslice_5/fa_0/a_2_6# bitslice_5/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 bitslice_5/fa_0/a_25_6# bitslice_5/Cin bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1193 bitslice_5/fa_0/a_33_6# bitslice_5/Y bitslice_5/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1194 Gnd bitslice_5/fa_0/A bitslice_5/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1195 bitslice_5/fa_0/a_46_6# bitslice_5/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1196 Gnd bitslice_5/Y bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1197 bitslice_5/fa_0/a_46_6# bitslice_5/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1198 bitslice_5/fa_0/a_70_6# bitslice_5/fa_0/a_25_6# bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1199 bitslice_5/fa_0/a_79_6# bitslice_5/Cin bitslice_5/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1200 bitslice_5/fa_0/a_84_6# bitslice_5/Y bitslice_5/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1201 Gnd bitslice_5/fa_0/A bitslice_5/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 bitslice_5/sum bitslice_5/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1203 bitslice_6/Cin bitslice_5/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1204 bitslice_5/mux21_0/nand_1/A Out5 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1205 Vdd bitslice_5/mux21_0/nand_2/B bitslice_5/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1206 bitslice_5/mux21_0/nand_2/a_9_6# Out5 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1207 bitslice_5/mux21_0/nand_1/A bitslice_5/mux21_0/nand_2/B bitslice_5/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1208 bitslice_5/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1209 bitslice_5/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1210 bitslice_5/fa_0/A bitslice_5/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1211 Vdd bitslice_5/mux21_0/nand_1/B bitslice_5/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 bitslice_5/mux21_0/nand_1/a_9_6# bitslice_5/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1213 bitslice_5/fa_0/A bitslice_5/mux21_0/nand_1/B bitslice_5/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1214 bitslice_5/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1215 Vdd B5 bitslice_5/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 bitslice_5/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1217 bitslice_5/mux21_0/nand_1/B B5 bitslice_5/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1218 Vdd A5 bitslice_5/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1219 bitslice_5/xor2_0/a_33_54# bitslice_5/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1220 bitslice_5/Y A5 bitslice_5/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1221 bitslice_5/xor2_0/a_50_54# bitslice_5/xor2_0/a_17_6# bitslice_5/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1222 Vdd subtract bitslice_5/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1223 bitslice_5/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1224 Gnd A5 bitslice_5/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1225 bitslice_5/xor2_0/a_33_6# bitslice_5/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1226 bitslice_5/Y bitslice_5/xor2_0/a_17_6# bitslice_5/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1227 bitslice_5/xor2_0/a_50_6# A5 bitslice_5/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1228 Gnd subtract bitslice_5/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1229 bitslice_5/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1230 Vdd inverter_0/Y bitslice_4/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1231 bitslice_4/dffpos_0/a_n19_n15# bitslice_4/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1232 bitslice_4/dffpos_0/a_n14_n84# inverter_0/Y bitslice_4/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1233 bitslice_4/dffpos_0/a_n5_n15# bitslice_4/dffpos_0/a_n34_n84# bitslice_4/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1234 Vdd bitslice_4/dffpos_0/a_n2_n86# bitslice_4/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 bitslice_4/dffpos_0/a_n2_n86# bitslice_4/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1236 bitslice_4/dffpos_0/a_25_n15# bitslice_4/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1237 bitslice_4/dffpos_0/a_30_n84# bitslice_4/dffpos_0/a_n34_n84# bitslice_4/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1238 bitslice_4/dffpos_0/a_40_n5# inverter_0/Y bitslice_4/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1239 Vdd Out4 bitslice_4/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1240 Gnd inverter_0/Y bitslice_4/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1241 Out4 bitslice_4/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1242 bitslice_4/dffpos_0/a_n19_n84# bitslice_4/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1243 bitslice_4/dffpos_0/a_n14_n84# bitslice_4/dffpos_0/a_n34_n84# bitslice_4/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1244 bitslice_4/dffpos_0/a_n5_n84# inverter_0/Y bitslice_4/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1245 Gnd bitslice_4/dffpos_0/a_n2_n86# bitslice_4/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1246 bitslice_4/dffpos_0/a_n2_n86# bitslice_4/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1247 bitslice_4/dffpos_0/a_25_n84# bitslice_4/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1248 bitslice_4/dffpos_0/a_30_n84# inverter_0/Y bitslice_4/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1249 bitslice_4/dffpos_0/a_40_n84# bitslice_4/dffpos_0/a_n34_n84# bitslice_4/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1250 Gnd Out4 bitslice_4/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1251 Out4 bitslice_4/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1252 Vdd bitslice_4/fa_0/A bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1253 bitslice_4/fa_0/a_2_74# bitslice_4/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 bitslice_4/fa_0/a_25_6# bitslice_4/Cin bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1255 bitslice_4/fa_0/a_33_74# bitslice_4/Y bitslice_4/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1256 Vdd bitslice_4/fa_0/A bitslice_4/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 bitslice_4/fa_0/a_46_74# bitslice_4/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1258 Vdd bitslice_4/Y bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1259 bitslice_4/fa_0/a_46_74# bitslice_4/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1260 bitslice_4/fa_0/a_70_6# bitslice_4/fa_0/a_25_6# bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1261 bitslice_4/fa_0/a_79_74# bitslice_4/Cin bitslice_4/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1262 bitslice_4/fa_0/a_84_74# bitslice_4/Y bitslice_4/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1263 Vdd bitslice_4/fa_0/A bitslice_4/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1264 bitslice_4/sum bitslice_4/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1265 bitslice_5/Cin bitslice_4/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1266 Gnd bitslice_4/fa_0/A bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1267 bitslice_4/fa_0/a_2_6# bitslice_4/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1268 bitslice_4/fa_0/a_25_6# bitslice_4/Cin bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1269 bitslice_4/fa_0/a_33_6# bitslice_4/Y bitslice_4/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1270 Gnd bitslice_4/fa_0/A bitslice_4/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1271 bitslice_4/fa_0/a_46_6# bitslice_4/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1272 Gnd bitslice_4/Y bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1273 bitslice_4/fa_0/a_46_6# bitslice_4/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1274 bitslice_4/fa_0/a_70_6# bitslice_4/fa_0/a_25_6# bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1275 bitslice_4/fa_0/a_79_6# bitslice_4/Cin bitslice_4/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1276 bitslice_4/fa_0/a_84_6# bitslice_4/Y bitslice_4/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1277 Gnd bitslice_4/fa_0/A bitslice_4/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1278 bitslice_4/sum bitslice_4/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1279 bitslice_5/Cin bitslice_4/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1280 bitslice_4/mux21_0/nand_1/A Out4 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1281 Vdd bitslice_4/mux21_0/nand_2/B bitslice_4/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1282 bitslice_4/mux21_0/nand_2/a_9_6# Out4 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1283 bitslice_4/mux21_0/nand_1/A bitslice_4/mux21_0/nand_2/B bitslice_4/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1284 bitslice_4/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1285 bitslice_4/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1286 bitslice_4/fa_0/A bitslice_4/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1287 Vdd bitslice_4/mux21_0/nand_1/B bitslice_4/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1288 bitslice_4/mux21_0/nand_1/a_9_6# bitslice_4/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1289 bitslice_4/fa_0/A bitslice_4/mux21_0/nand_1/B bitslice_4/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1290 bitslice_4/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1291 Vdd B4 bitslice_4/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 bitslice_4/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1293 bitslice_4/mux21_0/nand_1/B B4 bitslice_4/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1294 Vdd A4 bitslice_4/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1295 bitslice_4/xor2_0/a_33_54# bitslice_4/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1296 bitslice_4/Y A4 bitslice_4/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1297 bitslice_4/xor2_0/a_50_54# bitslice_4/xor2_0/a_17_6# bitslice_4/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1298 Vdd subtract bitslice_4/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1299 bitslice_4/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1300 Gnd A4 bitslice_4/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1301 bitslice_4/xor2_0/a_33_6# bitslice_4/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1302 bitslice_4/Y bitslice_4/xor2_0/a_17_6# bitslice_4/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1303 bitslice_4/xor2_0/a_50_6# A4 bitslice_4/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1304 Gnd subtract bitslice_4/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1305 bitslice_4/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1306 Vdd inverter_0/Y bitslice_3/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1307 bitslice_3/dffpos_0/a_n19_n15# bitslice_3/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1308 bitslice_3/dffpos_0/a_n14_n84# inverter_0/Y bitslice_3/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1309 bitslice_3/dffpos_0/a_n5_n15# bitslice_3/dffpos_0/a_n34_n84# bitslice_3/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1310 Vdd bitslice_3/dffpos_0/a_n2_n86# bitslice_3/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1311 bitslice_3/dffpos_0/a_n2_n86# bitslice_3/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1312 bitslice_3/dffpos_0/a_25_n15# bitslice_3/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1313 bitslice_3/dffpos_0/a_30_n84# bitslice_3/dffpos_0/a_n34_n84# bitslice_3/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1314 bitslice_3/dffpos_0/a_40_n5# inverter_0/Y bitslice_3/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1315 Vdd Out3 bitslice_3/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1316 Gnd inverter_0/Y bitslice_3/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1317 Out3 bitslice_3/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1318 bitslice_3/dffpos_0/a_n19_n84# bitslice_3/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1319 bitslice_3/dffpos_0/a_n14_n84# bitslice_3/dffpos_0/a_n34_n84# bitslice_3/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1320 bitslice_3/dffpos_0/a_n5_n84# inverter_0/Y bitslice_3/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1321 Gnd bitslice_3/dffpos_0/a_n2_n86# bitslice_3/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1322 bitslice_3/dffpos_0/a_n2_n86# bitslice_3/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1323 bitslice_3/dffpos_0/a_25_n84# bitslice_3/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1324 bitslice_3/dffpos_0/a_30_n84# inverter_0/Y bitslice_3/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1325 bitslice_3/dffpos_0/a_40_n84# bitslice_3/dffpos_0/a_n34_n84# bitslice_3/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1326 Gnd Out3 bitslice_3/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1327 Out3 bitslice_3/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1328 Vdd bitslice_3/fa_0/A bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1329 bitslice_3/fa_0/a_2_74# bitslice_3/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1330 bitslice_3/fa_0/a_25_6# bitslice_3/Cin bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1331 bitslice_3/fa_0/a_33_74# bitslice_3/Y bitslice_3/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1332 Vdd bitslice_3/fa_0/A bitslice_3/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1333 bitslice_3/fa_0/a_46_74# bitslice_3/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1334 Vdd bitslice_3/Y bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1335 bitslice_3/fa_0/a_46_74# bitslice_3/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1336 bitslice_3/fa_0/a_70_6# bitslice_3/fa_0/a_25_6# bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1337 bitslice_3/fa_0/a_79_74# bitslice_3/Cin bitslice_3/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1338 bitslice_3/fa_0/a_84_74# bitslice_3/Y bitslice_3/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1339 Vdd bitslice_3/fa_0/A bitslice_3/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1340 bitslice_3/sum bitslice_3/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1341 bitslice_4/Cin bitslice_3/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1342 Gnd bitslice_3/fa_0/A bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1343 bitslice_3/fa_0/a_2_6# bitslice_3/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1344 bitslice_3/fa_0/a_25_6# bitslice_3/Cin bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1345 bitslice_3/fa_0/a_33_6# bitslice_3/Y bitslice_3/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1346 Gnd bitslice_3/fa_0/A bitslice_3/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1347 bitslice_3/fa_0/a_46_6# bitslice_3/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1348 Gnd bitslice_3/Y bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1349 bitslice_3/fa_0/a_46_6# bitslice_3/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1350 bitslice_3/fa_0/a_70_6# bitslice_3/fa_0/a_25_6# bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1351 bitslice_3/fa_0/a_79_6# bitslice_3/Cin bitslice_3/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1352 bitslice_3/fa_0/a_84_6# bitslice_3/Y bitslice_3/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1353 Gnd bitslice_3/fa_0/A bitslice_3/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1354 bitslice_3/sum bitslice_3/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1355 bitslice_4/Cin bitslice_3/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1356 bitslice_3/mux21_0/nand_1/A Out3 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1357 Vdd bitslice_3/mux21_0/nand_2/B bitslice_3/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1358 bitslice_3/mux21_0/nand_2/a_9_6# Out3 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1359 bitslice_3/mux21_0/nand_1/A bitslice_3/mux21_0/nand_2/B bitslice_3/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1360 bitslice_3/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1361 bitslice_3/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1362 bitslice_3/fa_0/A bitslice_3/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1363 Vdd bitslice_3/mux21_0/nand_1/B bitslice_3/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1364 bitslice_3/mux21_0/nand_1/a_9_6# bitslice_3/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1365 bitslice_3/fa_0/A bitslice_3/mux21_0/nand_1/B bitslice_3/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1366 bitslice_3/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1367 Vdd B3 bitslice_3/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1368 bitslice_3/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1369 bitslice_3/mux21_0/nand_1/B B3 bitslice_3/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1370 Vdd A3 bitslice_3/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1371 bitslice_3/xor2_0/a_33_54# bitslice_3/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1372 bitslice_3/Y A3 bitslice_3/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1373 bitslice_3/xor2_0/a_50_54# bitslice_3/xor2_0/a_17_6# bitslice_3/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1374 Vdd subtract bitslice_3/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1375 bitslice_3/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1376 Gnd A3 bitslice_3/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1377 bitslice_3/xor2_0/a_33_6# bitslice_3/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1378 bitslice_3/Y bitslice_3/xor2_0/a_17_6# bitslice_3/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1379 bitslice_3/xor2_0/a_50_6# A3 bitslice_3/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1380 Gnd subtract bitslice_3/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1381 bitslice_3/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1382 Vdd inverter_0/Y bitslice_2/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1383 bitslice_2/dffpos_0/a_n19_n15# bitslice_2/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1384 bitslice_2/dffpos_0/a_n14_n84# inverter_0/Y bitslice_2/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1385 bitslice_2/dffpos_0/a_n5_n15# bitslice_2/dffpos_0/a_n34_n84# bitslice_2/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1386 Vdd bitslice_2/dffpos_0/a_n2_n86# bitslice_2/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1387 bitslice_2/dffpos_0/a_n2_n86# bitslice_2/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1388 bitslice_2/dffpos_0/a_25_n15# bitslice_2/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1389 bitslice_2/dffpos_0/a_30_n84# bitslice_2/dffpos_0/a_n34_n84# bitslice_2/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1390 bitslice_2/dffpos_0/a_40_n5# inverter_0/Y bitslice_2/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1391 Vdd Out2 bitslice_2/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1392 Gnd inverter_0/Y bitslice_2/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1393 Out2 bitslice_2/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1394 bitslice_2/dffpos_0/a_n19_n84# bitslice_2/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1395 bitslice_2/dffpos_0/a_n14_n84# bitslice_2/dffpos_0/a_n34_n84# bitslice_2/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1396 bitslice_2/dffpos_0/a_n5_n84# inverter_0/Y bitslice_2/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1397 Gnd bitslice_2/dffpos_0/a_n2_n86# bitslice_2/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1398 bitslice_2/dffpos_0/a_n2_n86# bitslice_2/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1399 bitslice_2/dffpos_0/a_25_n84# bitslice_2/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1400 bitslice_2/dffpos_0/a_30_n84# inverter_0/Y bitslice_2/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1401 bitslice_2/dffpos_0/a_40_n84# bitslice_2/dffpos_0/a_n34_n84# bitslice_2/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1402 Gnd Out2 bitslice_2/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1403 Out2 bitslice_2/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1404 Vdd bitslice_2/fa_0/A bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1405 bitslice_2/fa_0/a_2_74# bitslice_2/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1406 bitslice_2/fa_0/a_25_6# bitslice_2/Cin bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1407 bitslice_2/fa_0/a_33_74# bitslice_2/Y bitslice_2/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1408 Vdd bitslice_2/fa_0/A bitslice_2/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1409 bitslice_2/fa_0/a_46_74# bitslice_2/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1410 Vdd bitslice_2/Y bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1411 bitslice_2/fa_0/a_46_74# bitslice_2/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1412 bitslice_2/fa_0/a_70_6# bitslice_2/fa_0/a_25_6# bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1413 bitslice_2/fa_0/a_79_74# bitslice_2/Cin bitslice_2/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1414 bitslice_2/fa_0/a_84_74# bitslice_2/Y bitslice_2/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1415 Vdd bitslice_2/fa_0/A bitslice_2/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1416 bitslice_2/sum bitslice_2/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1417 bitslice_3/Cin bitslice_2/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1418 Gnd bitslice_2/fa_0/A bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1419 bitslice_2/fa_0/a_2_6# bitslice_2/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1420 bitslice_2/fa_0/a_25_6# bitslice_2/Cin bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1421 bitslice_2/fa_0/a_33_6# bitslice_2/Y bitslice_2/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1422 Gnd bitslice_2/fa_0/A bitslice_2/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1423 bitslice_2/fa_0/a_46_6# bitslice_2/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1424 Gnd bitslice_2/Y bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1425 bitslice_2/fa_0/a_46_6# bitslice_2/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1426 bitslice_2/fa_0/a_70_6# bitslice_2/fa_0/a_25_6# bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1427 bitslice_2/fa_0/a_79_6# bitslice_2/Cin bitslice_2/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1428 bitslice_2/fa_0/a_84_6# bitslice_2/Y bitslice_2/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1429 Gnd bitslice_2/fa_0/A bitslice_2/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1430 bitslice_2/sum bitslice_2/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1431 bitslice_3/Cin bitslice_2/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1432 bitslice_2/mux21_0/nand_1/A Out2 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1433 Vdd bitslice_2/mux21_0/nand_2/B bitslice_2/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1434 bitslice_2/mux21_0/nand_2/a_9_6# Out2 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1435 bitslice_2/mux21_0/nand_1/A bitslice_2/mux21_0/nand_2/B bitslice_2/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1436 bitslice_2/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1437 bitslice_2/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1438 bitslice_2/fa_0/A bitslice_2/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1439 Vdd bitslice_2/mux21_0/nand_1/B bitslice_2/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1440 bitslice_2/mux21_0/nand_1/a_9_6# bitslice_2/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1441 bitslice_2/fa_0/A bitslice_2/mux21_0/nand_1/B bitslice_2/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1442 bitslice_2/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1443 Vdd B2 bitslice_2/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1444 bitslice_2/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1445 bitslice_2/mux21_0/nand_1/B B2 bitslice_2/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1446 Vdd A2 bitslice_2/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1447 bitslice_2/xor2_0/a_33_54# bitslice_2/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1448 bitslice_2/Y A2 bitslice_2/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1449 bitslice_2/xor2_0/a_50_54# bitslice_2/xor2_0/a_17_6# bitslice_2/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1450 Vdd subtract bitslice_2/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1451 bitslice_2/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1452 Gnd A2 bitslice_2/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1453 bitslice_2/xor2_0/a_33_6# bitslice_2/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1454 bitslice_2/Y bitslice_2/xor2_0/a_17_6# bitslice_2/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1455 bitslice_2/xor2_0/a_50_6# A2 bitslice_2/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1456 Gnd subtract bitslice_2/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1457 bitslice_2/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1458 Vdd inverter_0/Y bitslice_1/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1459 bitslice_1/dffpos_0/a_n19_n15# bitslice_1/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1460 bitslice_1/dffpos_0/a_n14_n84# inverter_0/Y bitslice_1/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1461 bitslice_1/dffpos_0/a_n5_n15# bitslice_1/dffpos_0/a_n34_n84# bitslice_1/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1462 Vdd bitslice_1/dffpos_0/a_n2_n86# bitslice_1/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1463 bitslice_1/dffpos_0/a_n2_n86# bitslice_1/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1464 bitslice_1/dffpos_0/a_25_n15# bitslice_1/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1465 bitslice_1/dffpos_0/a_30_n84# bitslice_1/dffpos_0/a_n34_n84# bitslice_1/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1466 bitslice_1/dffpos_0/a_40_n5# inverter_0/Y bitslice_1/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1467 Vdd Out1 bitslice_1/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1468 Gnd inverter_0/Y bitslice_1/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1469 Out1 bitslice_1/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1470 bitslice_1/dffpos_0/a_n19_n84# bitslice_1/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1471 bitslice_1/dffpos_0/a_n14_n84# bitslice_1/dffpos_0/a_n34_n84# bitslice_1/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1472 bitslice_1/dffpos_0/a_n5_n84# inverter_0/Y bitslice_1/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1473 Gnd bitslice_1/dffpos_0/a_n2_n86# bitslice_1/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1474 bitslice_1/dffpos_0/a_n2_n86# bitslice_1/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1475 bitslice_1/dffpos_0/a_25_n84# bitslice_1/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1476 bitslice_1/dffpos_0/a_30_n84# inverter_0/Y bitslice_1/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1477 bitslice_1/dffpos_0/a_40_n84# bitslice_1/dffpos_0/a_n34_n84# bitslice_1/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1478 Gnd Out1 bitslice_1/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1479 Out1 bitslice_1/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1480 Vdd bitslice_1/fa_0/A bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1481 bitslice_1/fa_0/a_2_74# bitslice_1/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1482 bitslice_1/fa_0/a_25_6# bitslice_1/Cin bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1483 bitslice_1/fa_0/a_33_74# bitslice_1/Y bitslice_1/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1484 Vdd bitslice_1/fa_0/A bitslice_1/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1485 bitslice_1/fa_0/a_46_74# bitslice_1/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1486 Vdd bitslice_1/Y bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1487 bitslice_1/fa_0/a_46_74# bitslice_1/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1488 bitslice_1/fa_0/a_70_6# bitslice_1/fa_0/a_25_6# bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1489 bitslice_1/fa_0/a_79_74# bitslice_1/Cin bitslice_1/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1490 bitslice_1/fa_0/a_84_74# bitslice_1/Y bitslice_1/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1491 Vdd bitslice_1/fa_0/A bitslice_1/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1492 bitslice_1/sum bitslice_1/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1493 bitslice_2/Cin bitslice_1/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1494 Gnd bitslice_1/fa_0/A bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1495 bitslice_1/fa_0/a_2_6# bitslice_1/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1496 bitslice_1/fa_0/a_25_6# bitslice_1/Cin bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1497 bitslice_1/fa_0/a_33_6# bitslice_1/Y bitslice_1/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1498 Gnd bitslice_1/fa_0/A bitslice_1/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1499 bitslice_1/fa_0/a_46_6# bitslice_1/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1500 Gnd bitslice_1/Y bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1501 bitslice_1/fa_0/a_46_6# bitslice_1/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1502 bitslice_1/fa_0/a_70_6# bitslice_1/fa_0/a_25_6# bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1503 bitslice_1/fa_0/a_79_6# bitslice_1/Cin bitslice_1/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1504 bitslice_1/fa_0/a_84_6# bitslice_1/Y bitslice_1/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1505 Gnd bitslice_1/fa_0/A bitslice_1/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1506 bitslice_1/sum bitslice_1/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1507 bitslice_2/Cin bitslice_1/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1508 bitslice_1/mux21_0/nand_1/A Out1 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1509 Vdd bitslice_1/mux21_0/nand_2/B bitslice_1/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1510 bitslice_1/mux21_0/nand_2/a_9_6# Out1 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1511 bitslice_1/mux21_0/nand_1/A bitslice_1/mux21_0/nand_2/B bitslice_1/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1512 bitslice_1/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1513 bitslice_1/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1514 bitslice_1/fa_0/A bitslice_1/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1515 Vdd bitslice_1/mux21_0/nand_1/B bitslice_1/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1516 bitslice_1/mux21_0/nand_1/a_9_6# bitslice_1/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1517 bitslice_1/fa_0/A bitslice_1/mux21_0/nand_1/B bitslice_1/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1518 bitslice_1/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1519 Vdd B1 bitslice_1/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1520 bitslice_1/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1521 bitslice_1/mux21_0/nand_1/B B1 bitslice_1/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1522 Vdd A1 bitslice_1/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1523 bitslice_1/xor2_0/a_33_54# bitslice_1/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1524 bitslice_1/Y A1 bitslice_1/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1525 bitslice_1/xor2_0/a_50_54# bitslice_1/xor2_0/a_17_6# bitslice_1/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1526 Vdd subtract bitslice_1/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1527 bitslice_1/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1528 Gnd A1 bitslice_1/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1529 bitslice_1/xor2_0/a_33_6# bitslice_1/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1530 bitslice_1/Y bitslice_1/xor2_0/a_17_6# bitslice_1/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1531 bitslice_1/xor2_0/a_50_6# A1 bitslice_1/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1532 Gnd subtract bitslice_1/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1533 bitslice_1/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1534 Vdd inverter_0/Y bitslice_0/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1535 bitslice_0/dffpos_0/a_n19_n15# bitslice_0/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1536 bitslice_0/dffpos_0/a_n14_n84# inverter_0/Y bitslice_0/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1537 bitslice_0/dffpos_0/a_n5_n15# bitslice_0/dffpos_0/a_n34_n84# bitslice_0/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1538 Vdd bitslice_0/dffpos_0/a_n2_n86# bitslice_0/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1539 bitslice_0/dffpos_0/a_n2_n86# bitslice_0/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1540 bitslice_0/dffpos_0/a_25_n15# bitslice_0/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1541 bitslice_0/dffpos_0/a_30_n84# bitslice_0/dffpos_0/a_n34_n84# bitslice_0/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1542 bitslice_0/dffpos_0/a_40_n5# inverter_0/Y bitslice_0/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1543 Vdd Out0 bitslice_0/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1544 Gnd inverter_0/Y bitslice_0/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1545 Out0 bitslice_0/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1546 bitslice_0/dffpos_0/a_n19_n84# bitslice_0/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1547 bitslice_0/dffpos_0/a_n14_n84# bitslice_0/dffpos_0/a_n34_n84# bitslice_0/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1548 bitslice_0/dffpos_0/a_n5_n84# inverter_0/Y bitslice_0/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1549 Gnd bitslice_0/dffpos_0/a_n2_n86# bitslice_0/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1550 bitslice_0/dffpos_0/a_n2_n86# bitslice_0/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1551 bitslice_0/dffpos_0/a_25_n84# bitslice_0/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1552 bitslice_0/dffpos_0/a_30_n84# inverter_0/Y bitslice_0/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1553 bitslice_0/dffpos_0/a_40_n84# bitslice_0/dffpos_0/a_n34_n84# bitslice_0/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1554 Gnd Out0 bitslice_0/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1555 Out0 bitslice_0/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1556 Vdd bitslice_0/fa_0/A bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1557 bitslice_0/fa_0/a_2_74# bitslice_0/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1558 bitslice_0/fa_0/a_25_6# subtract bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1559 bitslice_0/fa_0/a_33_74# bitslice_0/Y bitslice_0/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1560 Vdd bitslice_0/fa_0/A bitslice_0/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1561 bitslice_0/fa_0/a_46_74# bitslice_0/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1562 Vdd bitslice_0/Y bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1563 bitslice_0/fa_0/a_46_74# subtract Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1564 bitslice_0/fa_0/a_70_6# bitslice_0/fa_0/a_25_6# bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1565 bitslice_0/fa_0/a_79_74# subtract bitslice_0/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1566 bitslice_0/fa_0/a_84_74# bitslice_0/Y bitslice_0/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1567 Vdd bitslice_0/fa_0/A bitslice_0/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1568 bitslice_0/sum bitslice_0/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1569 bitslice_1/Cin bitslice_0/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1570 Gnd bitslice_0/fa_0/A bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1571 bitslice_0/fa_0/a_2_6# bitslice_0/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1572 bitslice_0/fa_0/a_25_6# subtract bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1573 bitslice_0/fa_0/a_33_6# bitslice_0/Y bitslice_0/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1574 Gnd bitslice_0/fa_0/A bitslice_0/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1575 bitslice_0/fa_0/a_46_6# bitslice_0/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1576 Gnd bitslice_0/Y bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1577 bitslice_0/fa_0/a_46_6# subtract Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1578 bitslice_0/fa_0/a_70_6# bitslice_0/fa_0/a_25_6# bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1579 bitslice_0/fa_0/a_79_6# subtract bitslice_0/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1580 bitslice_0/fa_0/a_84_6# bitslice_0/Y bitslice_0/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1581 Gnd bitslice_0/fa_0/A bitslice_0/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1582 bitslice_0/sum bitslice_0/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1583 bitslice_1/Cin bitslice_0/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1584 bitslice_0/mux21_0/nand_1/A Out0 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1585 Vdd bitslice_0/mux21_0/nand_2/B bitslice_0/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1586 bitslice_0/mux21_0/nand_2/a_9_6# Out0 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1587 bitslice_0/mux21_0/nand_1/A bitslice_0/mux21_0/nand_2/B bitslice_0/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1588 bitslice_0/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1589 bitslice_0/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1590 bitslice_0/fa_0/A bitslice_0/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1591 Vdd bitslice_0/mux21_0/nand_1/B bitslice_0/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1592 bitslice_0/mux21_0/nand_1/a_9_6# bitslice_0/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1593 bitslice_0/fa_0/A bitslice_0/mux21_0/nand_1/B bitslice_0/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1594 bitslice_0/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1595 Vdd B0 bitslice_0/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1596 bitslice_0/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1597 bitslice_0/mux21_0/nand_1/B B0 bitslice_0/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1598 Vdd A0 bitslice_0/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1599 bitslice_0/xor2_0/a_33_54# bitslice_0/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1600 bitslice_0/Y A0 bitslice_0/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1601 bitslice_0/xor2_0/a_50_54# bitslice_0/xor2_0/a_17_6# bitslice_0/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1602 Vdd subtract bitslice_0/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1603 bitslice_0/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1604 Gnd A0 bitslice_0/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1605 bitslice_0/xor2_0/a_33_6# bitslice_0/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1606 bitslice_0/Y bitslice_0/xor2_0/a_17_6# bitslice_0/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1607 bitslice_0/xor2_0/a_50_6# A0 bitslice_0/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1608 Gnd subtract bitslice_0/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1609 bitslice_0/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1610 inverter_0/A loadR Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1611 Vdd clk inverter_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1612 nand_0/a_9_6# loadR Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1613 inverter_0/A clk nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
C0 bitslice_3/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C1 bitslice_6/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C2 Vdd bitslice_0/fa_0/A 8.476560fF
C3 bitslice_3/dffpos_0/a_n34_n84# inverter_0/Y 2.571480fF
C4 Vdd bitslice_0/mux21_0/nand_1/B 2.097720fF
C5 bitslice_4/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C6 Gnd bitslice_0/sum 5.857320fF
C7 bitslice_5/fa_0/a_70_6# bitslice_5/Cin 2.233260fF
C8 subtract bitslice_0/fa_0/a_70_6# 2.233260fF
C9 Gnd bitslice_4/sum 5.857320fF
C10 Gnd bitslice_5/sum 5.857320fF
C11 bitslice_1/fa_0/A Vdd 8.476560fF
C12 bitslice_2/xor2_0/a_17_6# Vdd 2.059560fF
C13 bitslice_5/mux21_0/nand_2/B Vdd 5.855850fF
C14 bitslice_3/fa_0/A Vdd 8.476560fF
C15 Vdd bitslice_4/mux21_0/nand_2/B 5.855850fF
C16 bitslice_1/xor2_0/a_28_44# Vdd 2.119800fF
C17 inverter_0/Y bitslice_1/dffpos_0/a_n34_n84# 2.571480fF
C18 bitslice_4/fa_0/a_25_6# Vdd 3.134880fF
C19 Gnd bitslice_3/sum 5.857320fF
C20 bitslice_5/fa_0/a_25_6# Vdd 3.134880fF
C21 Vdd bitslice_2/fa_0/a_25_6# 3.134880fF
C22 bitslice_5/dffpos_0/a_30_n84# bitslice_5/dffpos_0/a_n34_n84# 2.081040fF
C23 bitslice_2/Cin bitslice_2/fa_0/a_70_6# 2.233260fF
C24 Gnd bitslice_2/sum 5.857320fF
C25 bitslice_2/xor2_0/a_28_44# Vdd 2.119800fF
C26 bitslice_5/mux21_0/nand_1/B Vdd 2.097720fF
C27 Vdd bitslice_0/fa_0/a_25_6# 3.134880fF
C28 bitslice_3/xor2_0/a_28_44# Vdd 2.119800fF
C29 bitslice_4/fa_0/a_70_6# bitslice_4/Cin 2.233260fF
C30 bitslice_0/dffpos_0/a_30_n84# bitslice_0/dffpos_0/a_n34_n84# 2.081040fF
C31 bitslice_5/xor2_0/a_17_6# Vdd 2.059560fF
C32 inverter_0/Y bitslice_2/dffpos_0/a_n34_n84# 2.571480fF
C33 bitslice_3/Cin bitslice_3/fa_0/a_70_6# 2.233260fF
C34 bitslice_4/dffpos_0/a_n34_n84# inverter_0/Y 2.571480fF
C35 Vdd bitslice_0/mux21_0/nand_2/B 5.855850fF
C36 bitslice_6/xor2_0/a_28_44# Vdd 2.119800fF
C37 bitslice_2/dffpos_0/a_n34_n84# bitslice_2/dffpos_0/a_30_n84# 2.081040fF
C38 bitslice_4/mux21_0/nand_1/B Vdd 2.097720fF
C39 bitslice_6/mux21_0/nand_2/B Vdd 5.855850fF
C40 bitslice_3/xor2_0/a_17_6# Vdd 2.059560fF
C41 Vdd bitslice_0/xor2_0/a_28_44# 2.119800fF
C42 Vdd bitslice_0/xor2_0/a_17_6# 2.059560fF
C43 Gnd subtract 3.855720fF
C44 bitslice_3/dffpos_0/a_n34_n84# bitslice_3/dffpos_0/a_30_n84# 2.081040fF
C45 Vdd bitslice_1/xor2_0/a_17_6# 2.059560fF
C46 bitslice_6/dffpos_0/a_n34_n84# bitslice_6/dffpos_0/a_30_n84# 2.081040fF
C47 bitslice_2/mux21_0/nand_1/B Vdd 2.097720fF
C48 bitslice_2/fa_0/A Vdd 8.476560fF
C49 subtract loadB 2.514300fF
C50 bitslice_3/mux21_0/nand_2/B Vdd 5.855850fF
C51 bitslice_6/fa_0/A Vdd 8.476560fF
C52 bitslice_4/dffpos_0/a_n34_n84# bitslice_4/dffpos_0/a_30_n84# 2.081040fF
C53 bitslice_7/fa_0/A Vdd 8.476560fF
C54 bitslice_6/dffpos_0/a_n34_n84# inverter_0/Y 2.571480fF
C55 bitslice_1/mux21_0/nand_2/B Vdd 5.855850fF
C56 Gnd bitslice_1/sum 5.857320fF
C57 bitslice_7/mux21_0/nand_1/B Vdd 2.097720fF
C58 subtract Vdd 6.123960fF
C59 Gnd loadB 5.499840fF
C60 inverter_0/Y bitslice_0/dffpos_0/a_n34_n84# 2.571480fF
C61 bitslice_6/mux21_0/nand_1/B Vdd 2.097720fF
C62 inverter_0/Y bitslice_0/dffpos_0/a_n2_n86# 3.159600fF
C63 bitslice_1/dffpos_0/a_n34_n84# bitslice_1/dffpos_0/a_30_n84# 2.081040fF
C64 bitslice_7/xor2_0/a_17_6# Vdd 2.059560fF
C65 Vdd bitslice_3/mux21_0/nand_1/B 2.097720fF
C66 bitslice_1/fa_0/a_25_6# Vdd 3.134880fF
C67 bitslice_4/xor2_0/a_28_44# Vdd 2.119800fF
C68 Gnd Vdd 4.961880fF
C69 Gnd inverter_0/Y 2.544000fF
C70 bitslice_1/mux21_0/nand_1/B Vdd 2.097720fF
C71 bitslice_7/dffpos_0/a_n34_n84# bitslice_7/dffpos_0/a_30_n84# 2.081040fF
C72 inverter_0/Y bitslice_2/dffpos_0/a_n2_n86# 3.159600fF
C73 bitslice_7/fa_0/a_25_6# Vdd 3.134880fF
C74 Vdd bitslice_4/fa_0/A 8.476560fF
C75 bitslice_4/xor2_0/a_17_6# Vdd 2.059560fF
C76 loadB Vdd 6.672270fF
C77 bitslice_1/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C78 bitslice_7/fa_0/a_70_6# bitslice_7/Cin 2.233260fF
C79 bitslice_7/xor2_0/a_28_44# Vdd 2.119800fF
C80 bitslice_6/Cin bitslice_6/fa_0/a_70_6# 2.233260fF
C81 bitslice_7/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C82 inverter_0/Y bitslice_7/dffpos_0/a_n34_n84# 2.571480fF
C83 bitslice_6/xor2_0/a_17_6# Vdd 2.059560fF
C84 inverter_0/Y Vdd 11.673119fF
C85 Vdd bitslice_5/xor2_0/a_28_44# 2.119800fF
C86 bitslice_1/Cin bitslice_1/fa_0/a_70_6# 2.233260fF
C87 bitslice_3/fa_0/a_25_6# Vdd 3.134880fF
C88 Vdd bitslice_5/fa_0/A 8.476560fF
C89 bitslice_5/dffpos_0/a_n2_n86# inverter_0/Y 3.159600fF
C90 bitslice_7/mux21_0/nand_2/B Vdd 5.855850fF
C91 Gnd gundy 5.857320fF
C92 inverter_0/Y bitslice_5/dffpos_0/a_n34_n84# 2.571480fF
C93 Gnd bitslice_6/sum 5.857320fF
C94 bitslice_2/mux21_0/nand_2/B Vdd 5.855850fF
C95 bitslice_6/fa_0/a_25_6# Vdd 3.134880fF
C96 bitslice_0/Y gnd! 18.021119fF
C97 bitslice_0/xor2_0/a_17_6# gnd! 4.666380fF
C98 bitslice_0/xor2_0/a_28_44# gnd! 4.104630fF
C99 bitslice_0/fa_0/A gnd! 7.718120fF
C100 bitslice_0/mux21_0/nand_1/B gnd! 3.001320fF
C101 bitslice_0/mux21_0/nand_1/A gnd! 6.037200fF
C102 bitslice_0/mux21_0/nand_2/B gnd! 2.145240fF
C103 Out0 gnd! 87.604953fF
C104 bitslice_0/sum gnd! 8.877960fF
C105 bitslice_0/fa_0/a_70_6# gnd! 3.242790fF
C106 bitslice_0/fa_0/a_25_6# gnd! 9.314280fF
C107 bitslice_0/dffpos_0/a_30_n84# gnd! 3.784590fF
C108 bitslice_0/dffpos_0/a_n14_n84# gnd! 4.801770fF
C109 bitslice_0/dffpos_0/a_n2_n86# gnd! 5.164560fF
C110 bitslice_0/dffpos_0/a_n34_n84# gnd! 8.655120fF
C111 bitslice_1/Y gnd! 18.021119fF
C112 bitslice_1/xor2_0/a_17_6# gnd! 4.666380fF
C113 bitslice_1/xor2_0/a_28_44# gnd! 4.104630fF
C114 bitslice_1/fa_0/A gnd! 7.718120fF
C115 bitslice_1/mux21_0/nand_1/B gnd! 3.001320fF
C116 bitslice_1/mux21_0/nand_1/A gnd! 6.037200fF
C117 bitslice_1/mux21_0/nand_2/B gnd! 2.145240fF
C118 Out1 gnd! 76.024156fF
C119 bitslice_1/sum gnd! 8.877960fF
C120 bitslice_1/fa_0/a_70_6# gnd! 3.242790fF
C121 bitslice_1/fa_0/a_25_6# gnd! 9.314280fF
C122 bitslice_1/dffpos_0/a_30_n84# gnd! 3.784590fF
C123 bitslice_1/dffpos_0/a_n14_n84# gnd! 4.801770fF
C124 bitslice_1/dffpos_0/a_n2_n86# gnd! 5.164560fF
C125 bitslice_1/dffpos_0/a_n34_n84# gnd! 8.655120fF
C126 bitslice_2/Y gnd! 18.021119fF
C127 bitslice_2/xor2_0/a_17_6# gnd! 4.666380fF
C128 bitslice_2/xor2_0/a_28_44# gnd! 4.104630fF
C129 bitslice_2/fa_0/A gnd! 7.718120fF
C130 bitslice_2/mux21_0/nand_1/B gnd! 3.001320fF
C131 bitslice_2/mux21_0/nand_1/A gnd! 6.037200fF
C132 bitslice_2/mux21_0/nand_2/B gnd! 2.145240fF
C133 Out2 gnd! 67.891609fF
C134 bitslice_2/sum gnd! 8.877960fF
C135 bitslice_2/fa_0/a_70_6# gnd! 3.242790fF
C136 bitslice_2/fa_0/a_25_6# gnd! 9.314280fF
C137 bitslice_2/dffpos_0/a_30_n84# gnd! 3.784590fF
C138 bitslice_2/dffpos_0/a_n14_n84# gnd! 4.801770fF
C139 bitslice_2/dffpos_0/a_n2_n86# gnd! 5.164560fF
C140 bitslice_2/dffpos_0/a_n34_n84# gnd! 8.655120fF
C141 bitslice_3/Y gnd! 18.021119fF
C142 bitslice_3/xor2_0/a_17_6# gnd! 4.666380fF
C143 bitslice_3/xor2_0/a_28_44# gnd! 4.104630fF
C144 bitslice_3/fa_0/A gnd! 7.718120fF
C145 bitslice_3/mux21_0/nand_1/B gnd! 3.001320fF
C146 bitslice_3/mux21_0/nand_1/A gnd! 6.037200fF
C147 bitslice_3/mux21_0/nand_2/B gnd! 2.145240fF
C148 Out3 gnd! 58.928160fF
C149 bitslice_3/sum gnd! 8.877960fF
C150 bitslice_3/fa_0/a_70_6# gnd! 3.242790fF
C151 bitslice_3/fa_0/a_25_6# gnd! 9.314280fF
C152 bitslice_3/dffpos_0/a_30_n84# gnd! 3.784590fF
C153 bitslice_3/dffpos_0/a_n14_n84# gnd! 4.801770fF
C154 bitslice_3/dffpos_0/a_n2_n86# gnd! 5.164560fF
C155 bitslice_3/dffpos_0/a_n34_n84# gnd! 8.655120fF
C156 bitslice_4/Y gnd! 18.021119fF
C157 bitslice_4/xor2_0/a_17_6# gnd! 4.666380fF
C158 bitslice_4/xor2_0/a_28_44# gnd! 4.104630fF
C159 bitslice_4/fa_0/A gnd! 7.718120fF
C160 bitslice_4/mux21_0/nand_1/B gnd! 3.001320fF
C161 bitslice_4/mux21_0/nand_1/A gnd! 6.037200fF
C162 bitslice_4/mux21_0/nand_2/B gnd! 2.145240fF
C163 Out4 gnd! 50.394660fF
C164 bitslice_4/sum gnd! 8.877960fF
C165 bitslice_4/fa_0/a_70_6# gnd! 3.242790fF
C166 bitslice_4/fa_0/a_25_6# gnd! 9.314280fF
C167 bitslice_4/dffpos_0/a_30_n84# gnd! 3.784590fF
C168 bitslice_4/dffpos_0/a_n14_n84# gnd! 4.801770fF
C169 bitslice_4/dffpos_0/a_n2_n86# gnd! 5.164560fF
C170 bitslice_4/dffpos_0/a_n34_n84# gnd! 8.655120fF
C171 bitslice_5/Y gnd! 18.021119fF
C172 bitslice_5/xor2_0/a_17_6# gnd! 4.666380fF
C173 bitslice_5/xor2_0/a_28_44# gnd! 4.104630fF
C174 bitslice_5/fa_0/A gnd! 7.718120fF
C175 bitslice_5/mux21_0/nand_1/B gnd! 3.001320fF
C176 bitslice_5/mux21_0/nand_1/A gnd! 6.037200fF
C177 bitslice_5/mux21_0/nand_2/B gnd! 2.145240fF
C178 Out5 gnd! 41.783863fF
C179 bitslice_5/sum gnd! 8.877960fF
C180 bitslice_5/fa_0/a_70_6# gnd! 3.242790fF
C181 bitslice_5/fa_0/a_25_6# gnd! 9.314280fF
C182 bitslice_5/dffpos_0/a_30_n84# gnd! 3.784590fF
C183 bitslice_5/dffpos_0/a_n14_n84# gnd! 4.801770fF
C184 bitslice_5/dffpos_0/a_n2_n86# gnd! 5.164560fF
C185 bitslice_5/dffpos_0/a_n34_n84# gnd! 8.655120fF
C186 bitslice_6/Y gnd! 18.021119fF
C187 bitslice_6/xor2_0/a_17_6# gnd! 4.666380fF
C188 bitslice_6/xor2_0/a_28_44# gnd! 4.104630fF
C189 bitslice_6/fa_0/A gnd! 7.718120fF
C190 bitslice_6/mux21_0/nand_1/B gnd! 3.001320fF
C191 bitslice_6/mux21_0/nand_1/A gnd! 6.037200fF
C192 bitslice_6/mux21_0/nand_2/B gnd! 2.145240fF
C193 Out6 gnd! 33.352602fF
C194 bitslice_6/sum gnd! 8.877960fF
C195 bitslice_6/fa_0/a_70_6# gnd! 3.242790fF
C196 bitslice_6/fa_0/a_25_6# gnd! 9.314280fF
C197 bitslice_6/dffpos_0/a_30_n84# gnd! 3.784590fF
C198 bitslice_6/dffpos_0/a_n14_n84# gnd! 4.801770fF
C199 bitslice_6/dffpos_0/a_n2_n86# gnd! 5.164560fF
C200 bitslice_6/dffpos_0/a_n34_n84# gnd! 8.655120fF
C201 Gnd gnd! 1242.410750fF
C202 bitslice_7/Y gnd! 18.021119fF
C203 subtract gnd! 101.129359fF
C204 bitslice_7/xor2_0/a_17_6# gnd! 4.666380fF
C205 bitslice_7/xor2_0/a_28_44# gnd! 4.104630fF
C206 loadB gnd! 155.956141fF
C207 bitslice_7/fa_0/A gnd! 7.718120fF
C208 bitslice_7/mux21_0/nand_1/B gnd! 3.001320fF
C209 bitslice_7/mux21_0/nand_1/A gnd! 6.037200fF
C210 bitslice_7/mux21_0/nand_2/B gnd! 2.145240fF
C211 Out7 gnd! 24.748672fF
C212 bitslice_7/fa_0/a_70_6# gnd! 3.242790fF
C213 bitslice_7/fa_0/a_25_6# gnd! 9.314280fF
C214 bitslice_7/dffpos_0/a_30_n84# gnd! 3.784590fF
C215 bitslice_7/dffpos_0/a_n14_n84# gnd! 4.801770fF
C216 bitslice_7/dffpos_0/a_n2_n86# gnd! 5.164560fF
C217 bitslice_7/dffpos_0/a_n34_n84# gnd! 8.655120fF
C218 inverter_0/Y gnd! 148.452219fF
C219 inverter_0/A gnd! 8.251561fF


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
.print DC V(A0) V(Out0)
.print tran V(A0) V(A1) V(A2) V(A3) V(A4) V(A5) V(A6) V(subtract) V(A7) V(gundy) V(Cout) V(Out0) V(Out1) V(Out2) V(Out3) V(Out4) V(Out5) V(Out6) V(Out7) V(clk)
.probe V(Out0) V(Cout)
.op
.options probe post measout captab
.end
