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

* SPICE3 file created from 16_bit_try_again.ext - technology: scmos

.option scale=0.3u

M1000 prjMagic_0/inverter_0/Y prjMagic_0/inverter_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=40740 ps=17762
M1001 prjMagic_0/inverter_0/Y prjMagic_0/inverter_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=20610 ps=10074
M1002 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1003 prjMagic_0/bitslice_7/dffpos_0/a_n19_n15# prjMagic_0/gundy Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1004 prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1005 prjMagic_0/bitslice_7/dffpos_0/a_n5_n15# prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1006 Vdd prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# prjMagic_0/bitslice_7/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 prjMagic_0/bitslice_7/dffpos_0/a_25_n15# prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1009 prjMagic_0/bitslice_7/dffpos_0/a_30_n84# prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/bitslice_7/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1010 prjMagic_0/bitslice_7/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1011 Vdd Out7 prjMagic_0/bitslice_7/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1013 Out7 prjMagic_0/bitslice_7/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1014 prjMagic_0/bitslice_7/dffpos_0/a_n19_n84# prjMagic_0/gundy Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1015 prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/bitslice_7/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1016 prjMagic_0/bitslice_7/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1017 Gnd prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# prjMagic_0/bitslice_7/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1019 prjMagic_0/bitslice_7/dffpos_0/a_25_n84# prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1020 prjMagic_0/bitslice_7/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1021 prjMagic_0/bitslice_7/dffpos_0/a_40_n84# prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/bitslice_7/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1022 Gnd Out7 prjMagic_0/bitslice_7/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1023 Out7 prjMagic_0/bitslice_7/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 Vdd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1025 prjMagic_0/bitslice_7/fa_0/a_2_74# prjMagic_0/bitslice_7/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 prjMagic_0/bitslice_7/fa_0/a_25_6# prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1027 prjMagic_0/bitslice_7/fa_0/a_33_74# prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1028 Vdd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1029 prjMagic_0/bitslice_7/fa_0/a_46_74# prjMagic_0/bitslice_7/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1030 Vdd prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1031 prjMagic_0/bitslice_7/fa_0/a_46_74# prjMagic_0/bitslice_7/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 prjMagic_0/bitslice_7/fa_0/a_70_6# prjMagic_0/bitslice_7/fa_0/a_25_6# prjMagic_0/bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1033 prjMagic_0/bitslice_7/fa_0/a_79_74# prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_7/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1034 prjMagic_0/bitslice_7/fa_0/a_84_74# prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1035 Vdd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1036 prjMagic_0/gundy prjMagic_0/bitslice_7/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1037 Cout prjMagic_0/bitslice_7/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1038 Gnd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1039 prjMagic_0/bitslice_7/fa_0/a_2_6# prjMagic_0/bitslice_7/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1040 prjMagic_0/bitslice_7/fa_0/a_25_6# prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1041 prjMagic_0/bitslice_7/fa_0/a_33_6# prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1042 Gnd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 prjMagic_0/bitslice_7/fa_0/a_46_6# prjMagic_0/bitslice_7/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1044 Gnd prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1045 prjMagic_0/bitslice_7/fa_0/a_46_6# prjMagic_0/bitslice_7/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 prjMagic_0/bitslice_7/fa_0/a_70_6# prjMagic_0/bitslice_7/fa_0/a_25_6# prjMagic_0/bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1047 prjMagic_0/bitslice_7/fa_0/a_79_6# prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_7/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1048 prjMagic_0/bitslice_7/fa_0/a_84_6# prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1049 Gnd prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 prjMagic_0/gundy prjMagic_0/bitslice_7/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1051 Cout prjMagic_0/bitslice_7/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1052 prjMagic_0/bitslice_7/mux21_0/nand_1/A Out7 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1053 Vdd prjMagic_0/bitslice_7/mux21_0/nand_2/B prjMagic_0/bitslice_7/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 prjMagic_0/bitslice_7/mux21_0/nand_2/a_9_6# Out7 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1055 prjMagic_0/bitslice_7/mux21_0/nand_1/A prjMagic_0/bitslice_7/mux21_0/nand_2/B prjMagic_0/bitslice_7/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1056 prjMagic_0/bitslice_7/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1057 prjMagic_0/bitslice_7/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1058 prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1059 Vdd prjMagic_0/bitslice_7/mux21_0/nand_1/B prjMagic_0/bitslice_7/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 prjMagic_0/bitslice_7/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_7/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1061 prjMagic_0/bitslice_7/fa_0/A prjMagic_0/bitslice_7/mux21_0/nand_1/B prjMagic_0/bitslice_7/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1062 prjMagic_0/bitslice_7/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1063 Vdd B7 prjMagic_0/bitslice_7/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1064 prjMagic_0/bitslice_7/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1065 prjMagic_0/bitslice_7/mux21_0/nand_1/B B7 prjMagic_0/bitslice_7/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1066 Vdd A7 prjMagic_0/bitslice_7/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1067 prjMagic_0/bitslice_7/xor2_0/a_33_54# prjMagic_0/bitslice_7/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1068 prjMagic_0/bitslice_7/Y A7 prjMagic_0/bitslice_7/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1069 prjMagic_0/bitslice_7/xor2_0/a_50_54# prjMagic_0/bitslice_7/xor2_0/a_17_6# prjMagic_0/bitslice_7/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1070 Vdd inverter_0/Y prjMagic_0/bitslice_7/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1071 prjMagic_0/bitslice_7/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1072 Gnd A7 prjMagic_0/bitslice_7/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1073 prjMagic_0/bitslice_7/xor2_0/a_33_6# prjMagic_0/bitslice_7/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1074 prjMagic_0/bitslice_7/Y prjMagic_0/bitslice_7/xor2_0/a_17_6# prjMagic_0/bitslice_7/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1075 prjMagic_0/bitslice_7/xor2_0/a_50_6# A7 prjMagic_0/bitslice_7/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1076 Gnd inverter_0/Y prjMagic_0/bitslice_7/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1077 prjMagic_0/bitslice_7/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1078 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1079 prjMagic_0/bitslice_6/dffpos_0/a_n19_n15# prjMagic_0/bitslice_6/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1080 prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1081 prjMagic_0/bitslice_6/dffpos_0/a_n5_n15# prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1082 Vdd prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# prjMagic_0/bitslice_6/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 prjMagic_0/bitslice_6/dffpos_0/a_25_n15# prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1085 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# prjMagic_0/bitslice_6/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1086 prjMagic_0/bitslice_6/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1087 Vdd Out6 prjMagic_0/bitslice_6/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1089 Out6 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1090 prjMagic_0/bitslice_6/dffpos_0/a_n19_n84# prjMagic_0/bitslice_6/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1091 prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# prjMagic_0/bitslice_6/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1092 prjMagic_0/bitslice_6/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1093 Gnd prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# prjMagic_0/bitslice_6/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1095 prjMagic_0/bitslice_6/dffpos_0/a_25_n84# prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1096 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_6/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1097 prjMagic_0/bitslice_6/dffpos_0/a_40_n84# prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# prjMagic_0/bitslice_6/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1098 Gnd Out6 prjMagic_0/bitslice_6/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1099 Out6 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 Vdd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1101 prjMagic_0/bitslice_6/fa_0/a_2_74# prjMagic_0/bitslice_6/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 prjMagic_0/bitslice_6/fa_0/a_25_6# prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1103 prjMagic_0/bitslice_6/fa_0/a_33_74# prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1104 Vdd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1105 prjMagic_0/bitslice_6/fa_0/a_46_74# prjMagic_0/bitslice_6/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1106 Vdd prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 prjMagic_0/bitslice_6/fa_0/a_46_74# prjMagic_0/bitslice_6/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1108 prjMagic_0/bitslice_6/fa_0/a_70_6# prjMagic_0/bitslice_6/fa_0/a_25_6# prjMagic_0/bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1109 prjMagic_0/bitslice_6/fa_0/a_79_74# prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_6/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1110 prjMagic_0/bitslice_6/fa_0/a_84_74# prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1111 Vdd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1112 prjMagic_0/bitslice_6/sum prjMagic_0/bitslice_6/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1113 prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_6/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1114 Gnd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1115 prjMagic_0/bitslice_6/fa_0/a_2_6# prjMagic_0/bitslice_6/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 prjMagic_0/bitslice_6/fa_0/a_25_6# prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1117 prjMagic_0/bitslice_6/fa_0/a_33_6# prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1118 Gnd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1119 prjMagic_0/bitslice_6/fa_0/a_46_6# prjMagic_0/bitslice_6/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1120 Gnd prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 prjMagic_0/bitslice_6/fa_0/a_46_6# prjMagic_0/bitslice_6/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 prjMagic_0/bitslice_6/fa_0/a_70_6# prjMagic_0/bitslice_6/fa_0/a_25_6# prjMagic_0/bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1123 prjMagic_0/bitslice_6/fa_0/a_79_6# prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_6/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1124 prjMagic_0/bitslice_6/fa_0/a_84_6# prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1125 Gnd prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 prjMagic_0/bitslice_6/sum prjMagic_0/bitslice_6/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1127 prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_6/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1128 prjMagic_0/bitslice_6/mux21_0/nand_1/A Out6 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1129 Vdd prjMagic_0/bitslice_6/mux21_0/nand_2/B prjMagic_0/bitslice_6/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 prjMagic_0/bitslice_6/mux21_0/nand_2/a_9_6# Out6 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1131 prjMagic_0/bitslice_6/mux21_0/nand_1/A prjMagic_0/bitslice_6/mux21_0/nand_2/B prjMagic_0/bitslice_6/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1132 prjMagic_0/bitslice_6/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1133 prjMagic_0/bitslice_6/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1134 prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1135 Vdd prjMagic_0/bitslice_6/mux21_0/nand_1/B prjMagic_0/bitslice_6/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 prjMagic_0/bitslice_6/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_6/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1137 prjMagic_0/bitslice_6/fa_0/A prjMagic_0/bitslice_6/mux21_0/nand_1/B prjMagic_0/bitslice_6/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1138 prjMagic_0/bitslice_6/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1139 Vdd B6 prjMagic_0/bitslice_6/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 prjMagic_0/bitslice_6/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1141 prjMagic_0/bitslice_6/mux21_0/nand_1/B B6 prjMagic_0/bitslice_6/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1142 Vdd A6 prjMagic_0/bitslice_6/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1143 prjMagic_0/bitslice_6/xor2_0/a_33_54# prjMagic_0/bitslice_6/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1144 prjMagic_0/bitslice_6/Y A6 prjMagic_0/bitslice_6/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1145 prjMagic_0/bitslice_6/xor2_0/a_50_54# prjMagic_0/bitslice_6/xor2_0/a_17_6# prjMagic_0/bitslice_6/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1146 Vdd inverter_0/Y prjMagic_0/bitslice_6/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1147 prjMagic_0/bitslice_6/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1148 Gnd A6 prjMagic_0/bitslice_6/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1149 prjMagic_0/bitslice_6/xor2_0/a_33_6# prjMagic_0/bitslice_6/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1150 prjMagic_0/bitslice_6/Y prjMagic_0/bitslice_6/xor2_0/a_17_6# prjMagic_0/bitslice_6/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1151 prjMagic_0/bitslice_6/xor2_0/a_50_6# A6 prjMagic_0/bitslice_6/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1152 Gnd inverter_0/Y prjMagic_0/bitslice_6/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1153 prjMagic_0/bitslice_6/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1154 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1155 prjMagic_0/bitslice_5/dffpos_0/a_n19_n15# prjMagic_0/bitslice_5/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1156 prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1157 prjMagic_0/bitslice_5/dffpos_0/a_n5_n15# prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1158 Vdd prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# prjMagic_0/bitslice_5/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1160 prjMagic_0/bitslice_5/dffpos_0/a_25_n15# prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1161 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# prjMagic_0/bitslice_5/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1162 prjMagic_0/bitslice_5/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1163 Vdd Out5 prjMagic_0/bitslice_5/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1164 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1165 Out5 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1166 prjMagic_0/bitslice_5/dffpos_0/a_n19_n84# prjMagic_0/bitslice_5/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1167 prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# prjMagic_0/bitslice_5/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1168 prjMagic_0/bitslice_5/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1169 Gnd prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# prjMagic_0/bitslice_5/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1171 prjMagic_0/bitslice_5/dffpos_0/a_25_n84# prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1172 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1173 prjMagic_0/bitslice_5/dffpos_0/a_40_n84# prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# prjMagic_0/bitslice_5/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1174 Gnd Out5 prjMagic_0/bitslice_5/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1175 Out5 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1176 Vdd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1177 prjMagic_0/bitslice_5/fa_0/a_2_74# prjMagic_0/bitslice_5/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1178 prjMagic_0/bitslice_5/fa_0/a_25_6# prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1179 prjMagic_0/bitslice_5/fa_0/a_33_74# prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1180 Vdd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1181 prjMagic_0/bitslice_5/fa_0/a_46_74# prjMagic_0/bitslice_5/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1182 Vdd prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1183 prjMagic_0/bitslice_5/fa_0/a_46_74# prjMagic_0/bitslice_5/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1184 prjMagic_0/bitslice_5/fa_0/a_70_6# prjMagic_0/bitslice_5/fa_0/a_25_6# prjMagic_0/bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1185 prjMagic_0/bitslice_5/fa_0/a_79_74# prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_5/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1186 prjMagic_0/bitslice_5/fa_0/a_84_74# prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1187 Vdd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1188 prjMagic_0/bitslice_5/sum prjMagic_0/bitslice_5/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1189 prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_5/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1190 Gnd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1191 prjMagic_0/bitslice_5/fa_0/a_2_6# prjMagic_0/bitslice_5/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 prjMagic_0/bitslice_5/fa_0/a_25_6# prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1193 prjMagic_0/bitslice_5/fa_0/a_33_6# prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1194 Gnd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1195 prjMagic_0/bitslice_5/fa_0/a_46_6# prjMagic_0/bitslice_5/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1196 Gnd prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1197 prjMagic_0/bitslice_5/fa_0/a_46_6# prjMagic_0/bitslice_5/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1198 prjMagic_0/bitslice_5/fa_0/a_70_6# prjMagic_0/bitslice_5/fa_0/a_25_6# prjMagic_0/bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1199 prjMagic_0/bitslice_5/fa_0/a_79_6# prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_5/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1200 prjMagic_0/bitslice_5/fa_0/a_84_6# prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1201 Gnd prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 prjMagic_0/bitslice_5/sum prjMagic_0/bitslice_5/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1203 prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_5/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1204 prjMagic_0/bitslice_5/mux21_0/nand_1/A Out5 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1205 Vdd prjMagic_0/bitslice_5/mux21_0/nand_2/B prjMagic_0/bitslice_5/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1206 prjMagic_0/bitslice_5/mux21_0/nand_2/a_9_6# Out5 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1207 prjMagic_0/bitslice_5/mux21_0/nand_1/A prjMagic_0/bitslice_5/mux21_0/nand_2/B prjMagic_0/bitslice_5/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1208 prjMagic_0/bitslice_5/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1209 prjMagic_0/bitslice_5/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1210 prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1211 Vdd prjMagic_0/bitslice_5/mux21_0/nand_1/B prjMagic_0/bitslice_5/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 prjMagic_0/bitslice_5/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_5/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1213 prjMagic_0/bitslice_5/fa_0/A prjMagic_0/bitslice_5/mux21_0/nand_1/B prjMagic_0/bitslice_5/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1214 prjMagic_0/bitslice_5/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1215 Vdd B5 prjMagic_0/bitslice_5/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 prjMagic_0/bitslice_5/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1217 prjMagic_0/bitslice_5/mux21_0/nand_1/B B5 prjMagic_0/bitslice_5/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1218 Vdd A5 prjMagic_0/bitslice_5/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1219 prjMagic_0/bitslice_5/xor2_0/a_33_54# prjMagic_0/bitslice_5/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1220 prjMagic_0/bitslice_5/Y A5 prjMagic_0/bitslice_5/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1221 prjMagic_0/bitslice_5/xor2_0/a_50_54# prjMagic_0/bitslice_5/xor2_0/a_17_6# prjMagic_0/bitslice_5/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1222 Vdd inverter_0/Y prjMagic_0/bitslice_5/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1223 prjMagic_0/bitslice_5/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1224 Gnd A5 prjMagic_0/bitslice_5/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1225 prjMagic_0/bitslice_5/xor2_0/a_33_6# prjMagic_0/bitslice_5/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1226 prjMagic_0/bitslice_5/Y prjMagic_0/bitslice_5/xor2_0/a_17_6# prjMagic_0/bitslice_5/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1227 prjMagic_0/bitslice_5/xor2_0/a_50_6# A5 prjMagic_0/bitslice_5/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1228 Gnd inverter_0/Y prjMagic_0/bitslice_5/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1229 prjMagic_0/bitslice_5/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1230 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1231 prjMagic_0/bitslice_4/dffpos_0/a_n19_n15# prjMagic_0/bitslice_4/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1232 prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1233 prjMagic_0/bitslice_4/dffpos_0/a_n5_n15# prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1234 Vdd prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# prjMagic_0/bitslice_4/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1236 prjMagic_0/bitslice_4/dffpos_0/a_25_n15# prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1237 prjMagic_0/bitslice_4/dffpos_0/a_30_n84# prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/bitslice_4/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1238 prjMagic_0/bitslice_4/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1239 Vdd Out4 prjMagic_0/bitslice_4/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1240 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1241 Out4 prjMagic_0/bitslice_4/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1242 prjMagic_0/bitslice_4/dffpos_0/a_n19_n84# prjMagic_0/bitslice_4/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1243 prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/bitslice_4/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1244 prjMagic_0/bitslice_4/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1245 Gnd prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# prjMagic_0/bitslice_4/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1246 prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1247 prjMagic_0/bitslice_4/dffpos_0/a_25_n84# prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1248 prjMagic_0/bitslice_4/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_4/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1249 prjMagic_0/bitslice_4/dffpos_0/a_40_n84# prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/bitslice_4/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1250 Gnd Out4 prjMagic_0/bitslice_4/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1251 Out4 prjMagic_0/bitslice_4/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1252 Vdd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1253 prjMagic_0/bitslice_4/fa_0/a_2_74# prjMagic_0/bitslice_4/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 prjMagic_0/bitslice_4/fa_0/a_25_6# prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1255 prjMagic_0/bitslice_4/fa_0/a_33_74# prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1256 Vdd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1257 prjMagic_0/bitslice_4/fa_0/a_46_74# prjMagic_0/bitslice_4/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1258 Vdd prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1259 prjMagic_0/bitslice_4/fa_0/a_46_74# prjMagic_0/bitslice_4/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1260 prjMagic_0/bitslice_4/fa_0/a_70_6# prjMagic_0/bitslice_4/fa_0/a_25_6# prjMagic_0/bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1261 prjMagic_0/bitslice_4/fa_0/a_79_74# prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_4/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1262 prjMagic_0/bitslice_4/fa_0/a_84_74# prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1263 Vdd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1264 prjMagic_0/bitslice_4/sum prjMagic_0/bitslice_4/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1265 prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_4/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1266 Gnd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1267 prjMagic_0/bitslice_4/fa_0/a_2_6# prjMagic_0/bitslice_4/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1268 prjMagic_0/bitslice_4/fa_0/a_25_6# prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1269 prjMagic_0/bitslice_4/fa_0/a_33_6# prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1270 Gnd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1271 prjMagic_0/bitslice_4/fa_0/a_46_6# prjMagic_0/bitslice_4/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1272 Gnd prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1273 prjMagic_0/bitslice_4/fa_0/a_46_6# prjMagic_0/bitslice_4/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1274 prjMagic_0/bitslice_4/fa_0/a_70_6# prjMagic_0/bitslice_4/fa_0/a_25_6# prjMagic_0/bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1275 prjMagic_0/bitslice_4/fa_0/a_79_6# prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_4/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1276 prjMagic_0/bitslice_4/fa_0/a_84_6# prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1277 Gnd prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1278 prjMagic_0/bitslice_4/sum prjMagic_0/bitslice_4/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1279 prjMagic_0/bitslice_5/Cin prjMagic_0/bitslice_4/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1280 prjMagic_0/bitslice_4/mux21_0/nand_1/A Out4 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1281 Vdd prjMagic_0/bitslice_4/mux21_0/nand_2/B prjMagic_0/bitslice_4/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1282 prjMagic_0/bitslice_4/mux21_0/nand_2/a_9_6# Out4 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1283 prjMagic_0/bitslice_4/mux21_0/nand_1/A prjMagic_0/bitslice_4/mux21_0/nand_2/B prjMagic_0/bitslice_4/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1284 prjMagic_0/bitslice_4/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1285 prjMagic_0/bitslice_4/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1286 prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1287 Vdd prjMagic_0/bitslice_4/mux21_0/nand_1/B prjMagic_0/bitslice_4/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1288 prjMagic_0/bitslice_4/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_4/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1289 prjMagic_0/bitslice_4/fa_0/A prjMagic_0/bitslice_4/mux21_0/nand_1/B prjMagic_0/bitslice_4/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1290 prjMagic_0/bitslice_4/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1291 Vdd B4 prjMagic_0/bitslice_4/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 prjMagic_0/bitslice_4/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1293 prjMagic_0/bitslice_4/mux21_0/nand_1/B B4 prjMagic_0/bitslice_4/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1294 Vdd A4 prjMagic_0/bitslice_4/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1295 prjMagic_0/bitslice_4/xor2_0/a_33_54# prjMagic_0/bitslice_4/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1296 prjMagic_0/bitslice_4/Y A4 prjMagic_0/bitslice_4/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1297 prjMagic_0/bitslice_4/xor2_0/a_50_54# prjMagic_0/bitslice_4/xor2_0/a_17_6# prjMagic_0/bitslice_4/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1298 Vdd inverter_0/Y prjMagic_0/bitslice_4/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1299 prjMagic_0/bitslice_4/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1300 Gnd A4 prjMagic_0/bitslice_4/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1301 prjMagic_0/bitslice_4/xor2_0/a_33_6# prjMagic_0/bitslice_4/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1302 prjMagic_0/bitslice_4/Y prjMagic_0/bitslice_4/xor2_0/a_17_6# prjMagic_0/bitslice_4/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1303 prjMagic_0/bitslice_4/xor2_0/a_50_6# A4 prjMagic_0/bitslice_4/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1304 Gnd inverter_0/Y prjMagic_0/bitslice_4/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1305 prjMagic_0/bitslice_4/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1306 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1307 prjMagic_0/bitslice_3/dffpos_0/a_n19_n15# prjMagic_0/bitslice_3/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1308 prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1309 prjMagic_0/bitslice_3/dffpos_0/a_n5_n15# prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1310 Vdd prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# prjMagic_0/bitslice_3/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1311 prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1312 prjMagic_0/bitslice_3/dffpos_0/a_25_n15# prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1313 prjMagic_0/bitslice_3/dffpos_0/a_30_n84# prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/bitslice_3/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1314 prjMagic_0/bitslice_3/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1315 Vdd Out3 prjMagic_0/bitslice_3/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1316 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1317 Out3 prjMagic_0/bitslice_3/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1318 prjMagic_0/bitslice_3/dffpos_0/a_n19_n84# prjMagic_0/bitslice_3/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1319 prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/bitslice_3/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1320 prjMagic_0/bitslice_3/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1321 Gnd prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# prjMagic_0/bitslice_3/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1322 prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1323 prjMagic_0/bitslice_3/dffpos_0/a_25_n84# prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1324 prjMagic_0/bitslice_3/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_3/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1325 prjMagic_0/bitslice_3/dffpos_0/a_40_n84# prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/bitslice_3/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1326 Gnd Out3 prjMagic_0/bitslice_3/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1327 Out3 prjMagic_0/bitslice_3/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1328 Vdd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1329 prjMagic_0/bitslice_3/fa_0/a_2_74# prjMagic_0/bitslice_3/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1330 prjMagic_0/bitslice_3/fa_0/a_25_6# prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1331 prjMagic_0/bitslice_3/fa_0/a_33_74# prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1332 Vdd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1333 prjMagic_0/bitslice_3/fa_0/a_46_74# prjMagic_0/bitslice_3/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1334 Vdd prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1335 prjMagic_0/bitslice_3/fa_0/a_46_74# prjMagic_0/bitslice_3/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1336 prjMagic_0/bitslice_3/fa_0/a_70_6# prjMagic_0/bitslice_3/fa_0/a_25_6# prjMagic_0/bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1337 prjMagic_0/bitslice_3/fa_0/a_79_74# prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_3/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1338 prjMagic_0/bitslice_3/fa_0/a_84_74# prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1339 Vdd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1340 prjMagic_0/bitslice_3/sum prjMagic_0/bitslice_3/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1341 prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_3/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1342 Gnd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1343 prjMagic_0/bitslice_3/fa_0/a_2_6# prjMagic_0/bitslice_3/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1344 prjMagic_0/bitslice_3/fa_0/a_25_6# prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1345 prjMagic_0/bitslice_3/fa_0/a_33_6# prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1346 Gnd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1347 prjMagic_0/bitslice_3/fa_0/a_46_6# prjMagic_0/bitslice_3/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1348 Gnd prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1349 prjMagic_0/bitslice_3/fa_0/a_46_6# prjMagic_0/bitslice_3/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1350 prjMagic_0/bitslice_3/fa_0/a_70_6# prjMagic_0/bitslice_3/fa_0/a_25_6# prjMagic_0/bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1351 prjMagic_0/bitslice_3/fa_0/a_79_6# prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_3/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1352 prjMagic_0/bitslice_3/fa_0/a_84_6# prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1353 Gnd prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1354 prjMagic_0/bitslice_3/sum prjMagic_0/bitslice_3/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1355 prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_3/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1356 prjMagic_0/bitslice_3/mux21_0/nand_1/A Out3 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1357 Vdd prjMagic_0/bitslice_3/mux21_0/nand_2/B prjMagic_0/bitslice_3/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1358 prjMagic_0/bitslice_3/mux21_0/nand_2/a_9_6# Out3 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1359 prjMagic_0/bitslice_3/mux21_0/nand_1/A prjMagic_0/bitslice_3/mux21_0/nand_2/B prjMagic_0/bitslice_3/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1360 prjMagic_0/bitslice_3/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1361 prjMagic_0/bitslice_3/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1362 prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1363 Vdd prjMagic_0/bitslice_3/mux21_0/nand_1/B prjMagic_0/bitslice_3/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1364 prjMagic_0/bitslice_3/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_3/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1365 prjMagic_0/bitslice_3/fa_0/A prjMagic_0/bitslice_3/mux21_0/nand_1/B prjMagic_0/bitslice_3/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1366 prjMagic_0/bitslice_3/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1367 Vdd B3 prjMagic_0/bitslice_3/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1368 prjMagic_0/bitslice_3/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1369 prjMagic_0/bitslice_3/mux21_0/nand_1/B B3 prjMagic_0/bitslice_3/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1370 Vdd A3 prjMagic_0/bitslice_3/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1371 prjMagic_0/bitslice_3/xor2_0/a_33_54# prjMagic_0/bitslice_3/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1372 prjMagic_0/bitslice_3/Y A3 prjMagic_0/bitslice_3/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1373 prjMagic_0/bitslice_3/xor2_0/a_50_54# prjMagic_0/bitslice_3/xor2_0/a_17_6# prjMagic_0/bitslice_3/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1374 Vdd inverter_0/Y prjMagic_0/bitslice_3/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1375 prjMagic_0/bitslice_3/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1376 Gnd A3 prjMagic_0/bitslice_3/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1377 prjMagic_0/bitslice_3/xor2_0/a_33_6# prjMagic_0/bitslice_3/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1378 prjMagic_0/bitslice_3/Y prjMagic_0/bitslice_3/xor2_0/a_17_6# prjMagic_0/bitslice_3/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1379 prjMagic_0/bitslice_3/xor2_0/a_50_6# A3 prjMagic_0/bitslice_3/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1380 Gnd inverter_0/Y prjMagic_0/bitslice_3/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1381 prjMagic_0/bitslice_3/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1382 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1383 prjMagic_0/bitslice_2/dffpos_0/a_n19_n15# prjMagic_0/bitslice_2/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1384 prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1385 prjMagic_0/bitslice_2/dffpos_0/a_n5_n15# prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1386 Vdd prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# prjMagic_0/bitslice_2/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1387 prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1388 prjMagic_0/bitslice_2/dffpos_0/a_25_n15# prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1389 prjMagic_0/bitslice_2/dffpos_0/a_30_n84# prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/bitslice_2/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1390 prjMagic_0/bitslice_2/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1391 Vdd Out2 prjMagic_0/bitslice_2/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1392 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1393 Out2 prjMagic_0/bitslice_2/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1394 prjMagic_0/bitslice_2/dffpos_0/a_n19_n84# prjMagic_0/bitslice_2/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1395 prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/bitslice_2/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1396 prjMagic_0/bitslice_2/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1397 Gnd prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# prjMagic_0/bitslice_2/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1398 prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1399 prjMagic_0/bitslice_2/dffpos_0/a_25_n84# prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1400 prjMagic_0/bitslice_2/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_2/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1401 prjMagic_0/bitslice_2/dffpos_0/a_40_n84# prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/bitslice_2/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1402 Gnd Out2 prjMagic_0/bitslice_2/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1403 Out2 prjMagic_0/bitslice_2/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1404 Vdd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1405 prjMagic_0/bitslice_2/fa_0/a_2_74# prjMagic_0/bitslice_2/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1406 prjMagic_0/bitslice_2/fa_0/a_25_6# prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1407 prjMagic_0/bitslice_2/fa_0/a_33_74# prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1408 Vdd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1409 prjMagic_0/bitslice_2/fa_0/a_46_74# prjMagic_0/bitslice_2/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1410 Vdd prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1411 prjMagic_0/bitslice_2/fa_0/a_46_74# prjMagic_0/bitslice_2/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1412 prjMagic_0/bitslice_2/fa_0/a_70_6# prjMagic_0/bitslice_2/fa_0/a_25_6# prjMagic_0/bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1413 prjMagic_0/bitslice_2/fa_0/a_79_74# prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_2/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1414 prjMagic_0/bitslice_2/fa_0/a_84_74# prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1415 Vdd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1416 prjMagic_0/bitslice_2/sum prjMagic_0/bitslice_2/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1417 prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_2/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1418 Gnd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1419 prjMagic_0/bitslice_2/fa_0/a_2_6# prjMagic_0/bitslice_2/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1420 prjMagic_0/bitslice_2/fa_0/a_25_6# prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1421 prjMagic_0/bitslice_2/fa_0/a_33_6# prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1422 Gnd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1423 prjMagic_0/bitslice_2/fa_0/a_46_6# prjMagic_0/bitslice_2/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1424 Gnd prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1425 prjMagic_0/bitslice_2/fa_0/a_46_6# prjMagic_0/bitslice_2/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1426 prjMagic_0/bitslice_2/fa_0/a_70_6# prjMagic_0/bitslice_2/fa_0/a_25_6# prjMagic_0/bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1427 prjMagic_0/bitslice_2/fa_0/a_79_6# prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_2/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1428 prjMagic_0/bitslice_2/fa_0/a_84_6# prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1429 Gnd prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1430 prjMagic_0/bitslice_2/sum prjMagic_0/bitslice_2/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1431 prjMagic_0/bitslice_3/Cin prjMagic_0/bitslice_2/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1432 prjMagic_0/bitslice_2/mux21_0/nand_1/A Out2 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1433 Vdd prjMagic_0/bitslice_2/mux21_0/nand_2/B prjMagic_0/bitslice_2/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1434 prjMagic_0/bitslice_2/mux21_0/nand_2/a_9_6# Out2 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1435 prjMagic_0/bitslice_2/mux21_0/nand_1/A prjMagic_0/bitslice_2/mux21_0/nand_2/B prjMagic_0/bitslice_2/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1436 prjMagic_0/bitslice_2/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1437 prjMagic_0/bitslice_2/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1438 prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1439 Vdd prjMagic_0/bitslice_2/mux21_0/nand_1/B prjMagic_0/bitslice_2/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1440 prjMagic_0/bitslice_2/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_2/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1441 prjMagic_0/bitslice_2/fa_0/A prjMagic_0/bitslice_2/mux21_0/nand_1/B prjMagic_0/bitslice_2/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1442 prjMagic_0/bitslice_2/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1443 Vdd B2 prjMagic_0/bitslice_2/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1444 prjMagic_0/bitslice_2/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1445 prjMagic_0/bitslice_2/mux21_0/nand_1/B B2 prjMagic_0/bitslice_2/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1446 Vdd A2 prjMagic_0/bitslice_2/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1447 prjMagic_0/bitslice_2/xor2_0/a_33_54# prjMagic_0/bitslice_2/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1448 prjMagic_0/bitslice_2/Y A2 prjMagic_0/bitslice_2/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1449 prjMagic_0/bitslice_2/xor2_0/a_50_54# prjMagic_0/bitslice_2/xor2_0/a_17_6# prjMagic_0/bitslice_2/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1450 Vdd inverter_0/Y prjMagic_0/bitslice_2/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1451 prjMagic_0/bitslice_2/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1452 Gnd A2 prjMagic_0/bitslice_2/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1453 prjMagic_0/bitslice_2/xor2_0/a_33_6# prjMagic_0/bitslice_2/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1454 prjMagic_0/bitslice_2/Y prjMagic_0/bitslice_2/xor2_0/a_17_6# prjMagic_0/bitslice_2/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1455 prjMagic_0/bitslice_2/xor2_0/a_50_6# A2 prjMagic_0/bitslice_2/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1456 Gnd inverter_0/Y prjMagic_0/bitslice_2/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1457 prjMagic_0/bitslice_2/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1458 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1459 prjMagic_0/bitslice_1/dffpos_0/a_n19_n15# prjMagic_0/bitslice_1/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1460 prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1461 prjMagic_0/bitslice_1/dffpos_0/a_n5_n15# prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1462 Vdd prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# prjMagic_0/bitslice_1/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1463 prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1464 prjMagic_0/bitslice_1/dffpos_0/a_25_n15# prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1465 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# prjMagic_0/bitslice_1/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1466 prjMagic_0/bitslice_1/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1467 Vdd Out1 prjMagic_0/bitslice_1/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1468 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1469 Out1 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1470 prjMagic_0/bitslice_1/dffpos_0/a_n19_n84# prjMagic_0/bitslice_1/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1471 prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# prjMagic_0/bitslice_1/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1472 prjMagic_0/bitslice_1/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1473 Gnd prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# prjMagic_0/bitslice_1/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1474 prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1475 prjMagic_0/bitslice_1/dffpos_0/a_25_n84# prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1476 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_1/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1477 prjMagic_0/bitslice_1/dffpos_0/a_40_n84# prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# prjMagic_0/bitslice_1/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1478 Gnd Out1 prjMagic_0/bitslice_1/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1479 Out1 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1480 Vdd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1481 prjMagic_0/bitslice_1/fa_0/a_2_74# prjMagic_0/bitslice_1/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1482 prjMagic_0/bitslice_1/fa_0/a_25_6# prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1483 prjMagic_0/bitslice_1/fa_0/a_33_74# prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1484 Vdd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1485 prjMagic_0/bitslice_1/fa_0/a_46_74# prjMagic_0/bitslice_1/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1486 Vdd prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1487 prjMagic_0/bitslice_1/fa_0/a_46_74# prjMagic_0/bitslice_1/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1488 prjMagic_0/bitslice_1/fa_0/a_70_6# prjMagic_0/bitslice_1/fa_0/a_25_6# prjMagic_0/bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1489 prjMagic_0/bitslice_1/fa_0/a_79_74# prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_1/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1490 prjMagic_0/bitslice_1/fa_0/a_84_74# prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1491 Vdd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1492 prjMagic_0/bitslice_1/sum prjMagic_0/bitslice_1/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1493 prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_1/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1494 Gnd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1495 prjMagic_0/bitslice_1/fa_0/a_2_6# prjMagic_0/bitslice_1/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1496 prjMagic_0/bitslice_1/fa_0/a_25_6# prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1497 prjMagic_0/bitslice_1/fa_0/a_33_6# prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1498 Gnd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1499 prjMagic_0/bitslice_1/fa_0/a_46_6# prjMagic_0/bitslice_1/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1500 Gnd prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1501 prjMagic_0/bitslice_1/fa_0/a_46_6# prjMagic_0/bitslice_1/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1502 prjMagic_0/bitslice_1/fa_0/a_70_6# prjMagic_0/bitslice_1/fa_0/a_25_6# prjMagic_0/bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1503 prjMagic_0/bitslice_1/fa_0/a_79_6# prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_1/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1504 prjMagic_0/bitslice_1/fa_0/a_84_6# prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1505 Gnd prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1506 prjMagic_0/bitslice_1/sum prjMagic_0/bitslice_1/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1507 prjMagic_0/bitslice_2/Cin prjMagic_0/bitslice_1/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1508 prjMagic_0/bitslice_1/mux21_0/nand_1/A Out1 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1509 Vdd prjMagic_0/bitslice_1/mux21_0/nand_2/B prjMagic_0/bitslice_1/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1510 prjMagic_0/bitslice_1/mux21_0/nand_2/a_9_6# Out1 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1511 prjMagic_0/bitslice_1/mux21_0/nand_1/A prjMagic_0/bitslice_1/mux21_0/nand_2/B prjMagic_0/bitslice_1/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1512 prjMagic_0/bitslice_1/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1513 prjMagic_0/bitslice_1/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1514 prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1515 Vdd prjMagic_0/bitslice_1/mux21_0/nand_1/B prjMagic_0/bitslice_1/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1516 prjMagic_0/bitslice_1/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_1/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1517 prjMagic_0/bitslice_1/fa_0/A prjMagic_0/bitslice_1/mux21_0/nand_1/B prjMagic_0/bitslice_1/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1518 prjMagic_0/bitslice_1/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1519 Vdd B1 prjMagic_0/bitslice_1/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1520 prjMagic_0/bitslice_1/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1521 prjMagic_0/bitslice_1/mux21_0/nand_1/B B1 prjMagic_0/bitslice_1/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1522 Vdd A1 prjMagic_0/bitslice_1/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1523 prjMagic_0/bitslice_1/xor2_0/a_33_54# prjMagic_0/bitslice_1/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1524 prjMagic_0/bitslice_1/Y A1 prjMagic_0/bitslice_1/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1525 prjMagic_0/bitslice_1/xor2_0/a_50_54# prjMagic_0/bitslice_1/xor2_0/a_17_6# prjMagic_0/bitslice_1/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1526 Vdd inverter_0/Y prjMagic_0/bitslice_1/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1527 prjMagic_0/bitslice_1/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1528 Gnd A1 prjMagic_0/bitslice_1/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1529 prjMagic_0/bitslice_1/xor2_0/a_33_6# prjMagic_0/bitslice_1/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1530 prjMagic_0/bitslice_1/Y prjMagic_0/bitslice_1/xor2_0/a_17_6# prjMagic_0/bitslice_1/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1531 prjMagic_0/bitslice_1/xor2_0/a_50_6# A1 prjMagic_0/bitslice_1/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1532 Gnd inverter_0/Y prjMagic_0/bitslice_1/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1533 prjMagic_0/bitslice_1/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1534 Vdd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1535 prjMagic_0/bitslice_0/dffpos_0/a_n19_n15# prjMagic_0/bitslice_0/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1536 prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1537 prjMagic_0/bitslice_0/dffpos_0/a_n5_n15# prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1538 Vdd prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# prjMagic_0/bitslice_0/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1539 prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1540 prjMagic_0/bitslice_0/dffpos_0/a_25_n15# prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1541 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# prjMagic_0/bitslice_0/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1542 prjMagic_0/bitslice_0/dffpos_0/a_40_n5# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1543 Vdd Out0 prjMagic_0/bitslice_0/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1544 Gnd prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1545 Out0 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1546 prjMagic_0/bitslice_0/dffpos_0/a_n19_n84# prjMagic_0/bitslice_0/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1547 prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# prjMagic_0/bitslice_0/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1548 prjMagic_0/bitslice_0/dffpos_0/a_n5_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1549 Gnd prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# prjMagic_0/bitslice_0/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1550 prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1551 prjMagic_0/bitslice_0/dffpos_0/a_25_n84# prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1552 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# prjMagic_0/inverter_0/Y prjMagic_0/bitslice_0/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1553 prjMagic_0/bitslice_0/dffpos_0/a_40_n84# prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# prjMagic_0/bitslice_0/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1554 Gnd Out0 prjMagic_0/bitslice_0/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1555 Out0 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1556 Vdd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1557 prjMagic_0/bitslice_0/fa_0/a_2_74# prjMagic_0/bitslice_0/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1558 prjMagic_0/bitslice_0/fa_0/a_25_6# inverter_0/Y prjMagic_0/bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1559 prjMagic_0/bitslice_0/fa_0/a_33_74# prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1560 Vdd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1561 prjMagic_0/bitslice_0/fa_0/a_46_74# prjMagic_0/bitslice_0/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1562 Vdd prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1563 prjMagic_0/bitslice_0/fa_0/a_46_74# inverter_0/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1564 prjMagic_0/bitslice_0/fa_0/a_70_6# prjMagic_0/bitslice_0/fa_0/a_25_6# prjMagic_0/bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1565 prjMagic_0/bitslice_0/fa_0/a_79_74# inverter_0/Y prjMagic_0/bitslice_0/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1566 prjMagic_0/bitslice_0/fa_0/a_84_74# prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1567 Vdd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1568 prjMagic_0/bitslice_0/sum prjMagic_0/bitslice_0/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1569 prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_0/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1570 Gnd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1571 prjMagic_0/bitslice_0/fa_0/a_2_6# prjMagic_0/bitslice_0/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1572 prjMagic_0/bitslice_0/fa_0/a_25_6# inverter_0/Y prjMagic_0/bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1573 prjMagic_0/bitslice_0/fa_0/a_33_6# prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1574 Gnd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1575 prjMagic_0/bitslice_0/fa_0/a_46_6# prjMagic_0/bitslice_0/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1576 Gnd prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1577 prjMagic_0/bitslice_0/fa_0/a_46_6# inverter_0/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1578 prjMagic_0/bitslice_0/fa_0/a_70_6# prjMagic_0/bitslice_0/fa_0/a_25_6# prjMagic_0/bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1579 prjMagic_0/bitslice_0/fa_0/a_79_6# inverter_0/Y prjMagic_0/bitslice_0/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1580 prjMagic_0/bitslice_0/fa_0/a_84_6# prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1581 Gnd prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1582 prjMagic_0/bitslice_0/sum prjMagic_0/bitslice_0/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1583 prjMagic_0/bitslice_1/Cin prjMagic_0/bitslice_0/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1584 prjMagic_0/bitslice_0/mux21_0/nand_1/A Out0 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1585 Vdd prjMagic_0/bitslice_0/mux21_0/nand_2/B prjMagic_0/bitslice_0/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1586 prjMagic_0/bitslice_0/mux21_0/nand_2/a_9_6# Out0 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1587 prjMagic_0/bitslice_0/mux21_0/nand_1/A prjMagic_0/bitslice_0/mux21_0/nand_2/B prjMagic_0/bitslice_0/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1588 prjMagic_0/bitslice_0/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1589 prjMagic_0/bitslice_0/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1590 prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1591 Vdd prjMagic_0/bitslice_0/mux21_0/nand_1/B prjMagic_0/bitslice_0/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1592 prjMagic_0/bitslice_0/mux21_0/nand_1/a_9_6# prjMagic_0/bitslice_0/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1593 prjMagic_0/bitslice_0/fa_0/A prjMagic_0/bitslice_0/mux21_0/nand_1/B prjMagic_0/bitslice_0/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1594 prjMagic_0/bitslice_0/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1595 Vdd B0 prjMagic_0/bitslice_0/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1596 prjMagic_0/bitslice_0/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1597 prjMagic_0/bitslice_0/mux21_0/nand_1/B B0 prjMagic_0/bitslice_0/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1598 Vdd A0 prjMagic_0/bitslice_0/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1599 prjMagic_0/bitslice_0/xor2_0/a_33_54# prjMagic_0/bitslice_0/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1600 prjMagic_0/bitslice_0/Y A0 prjMagic_0/bitslice_0/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1601 prjMagic_0/bitslice_0/xor2_0/a_50_54# prjMagic_0/bitslice_0/xor2_0/a_17_6# prjMagic_0/bitslice_0/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1602 Vdd inverter_0/Y prjMagic_0/bitslice_0/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1603 prjMagic_0/bitslice_0/xor2_0/a_28_44# inverter_0/Y Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1604 Gnd A0 prjMagic_0/bitslice_0/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1605 prjMagic_0/bitslice_0/xor2_0/a_33_6# prjMagic_0/bitslice_0/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1606 prjMagic_0/bitslice_0/Y prjMagic_0/bitslice_0/xor2_0/a_17_6# prjMagic_0/bitslice_0/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1607 prjMagic_0/bitslice_0/xor2_0/a_50_6# A0 prjMagic_0/bitslice_0/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1608 Gnd inverter_0/Y prjMagic_0/bitslice_0/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1609 prjMagic_0/bitslice_0/xor2_0/a_28_44# inverter_0/Y Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1610 prjMagic_0/inverter_0/A loadR Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1611 Vdd inverter_2/Y prjMagic_0/inverter_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1612 prjMagic_0/nand_0/a_9_6# loadR Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1613 prjMagic_0/inverter_0/A inverter_2/Y prjMagic_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1614 prjMagic_1/inverter_0/Y prjMagic_1/inverter_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1615 prjMagic_1/inverter_0/Y prjMagic_1/inverter_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1616 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1617 prjMagic_1/bitslice_7/dffpos_0/a_n19_n15# prjMagic_1/gundy Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1618 prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1619 prjMagic_1/bitslice_7/dffpos_0/a_n5_n15# prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1620 Vdd prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# prjMagic_1/bitslice_7/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1621 prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1622 prjMagic_1/bitslice_7/dffpos_0/a_25_n15# prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1623 prjMagic_1/bitslice_7/dffpos_0/a_30_n84# prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/bitslice_7/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1624 prjMagic_1/bitslice_7/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1625 Vdd 1Out7 prjMagic_1/bitslice_7/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1626 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1627 1Out7 prjMagic_1/bitslice_7/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1628 prjMagic_1/bitslice_7/dffpos_0/a_n19_n84# prjMagic_1/gundy Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1629 prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/bitslice_7/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1630 prjMagic_1/bitslice_7/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1631 Gnd prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# prjMagic_1/bitslice_7/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1632 prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1633 prjMagic_1/bitslice_7/dffpos_0/a_25_n84# prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1634 prjMagic_1/bitslice_7/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_7/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1635 prjMagic_1/bitslice_7/dffpos_0/a_40_n84# prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/bitslice_7/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1636 Gnd 1Out7 prjMagic_1/bitslice_7/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1637 1Out7 prjMagic_1/bitslice_7/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1638 Vdd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1639 prjMagic_1/bitslice_7/fa_0/a_2_74# prjMagic_1/bitslice_7/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1640 prjMagic_1/bitslice_7/fa_0/a_25_6# prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_7/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1641 prjMagic_1/bitslice_7/fa_0/a_33_74# prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1642 Vdd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1643 prjMagic_1/bitslice_7/fa_0/a_46_74# prjMagic_1/bitslice_7/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1644 Vdd prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1645 prjMagic_1/bitslice_7/fa_0/a_46_74# prjMagic_1/bitslice_7/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1646 prjMagic_1/bitslice_7/fa_0/a_70_6# prjMagic_1/bitslice_7/fa_0/a_25_6# prjMagic_1/bitslice_7/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1647 prjMagic_1/bitslice_7/fa_0/a_79_74# prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_7/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1648 prjMagic_1/bitslice_7/fa_0/a_84_74# prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1649 Vdd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1650 prjMagic_1/gundy prjMagic_1/bitslice_7/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1651 Cout1 prjMagic_1/bitslice_7/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1652 Gnd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1653 prjMagic_1/bitslice_7/fa_0/a_2_6# prjMagic_1/bitslice_7/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1654 prjMagic_1/bitslice_7/fa_0/a_25_6# prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_7/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1655 prjMagic_1/bitslice_7/fa_0/a_33_6# prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1656 Gnd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1657 prjMagic_1/bitslice_7/fa_0/a_46_6# prjMagic_1/bitslice_7/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1658 Gnd prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1659 prjMagic_1/bitslice_7/fa_0/a_46_6# prjMagic_1/bitslice_7/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1660 prjMagic_1/bitslice_7/fa_0/a_70_6# prjMagic_1/bitslice_7/fa_0/a_25_6# prjMagic_1/bitslice_7/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1661 prjMagic_1/bitslice_7/fa_0/a_79_6# prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_7/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1662 prjMagic_1/bitslice_7/fa_0/a_84_6# prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1663 Gnd prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1664 prjMagic_1/gundy prjMagic_1/bitslice_7/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1665 Cout1 prjMagic_1/bitslice_7/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1666 prjMagic_1/bitslice_7/mux21_0/nand_1/A 1Out7 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1667 Vdd prjMagic_1/bitslice_7/mux21_0/nand_2/B prjMagic_1/bitslice_7/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1668 prjMagic_1/bitslice_7/mux21_0/nand_2/a_9_6# 1Out7 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1669 prjMagic_1/bitslice_7/mux21_0/nand_1/A prjMagic_1/bitslice_7/mux21_0/nand_2/B prjMagic_1/bitslice_7/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1670 prjMagic_1/bitslice_7/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1671 prjMagic_1/bitslice_7/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1672 prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1673 Vdd prjMagic_1/bitslice_7/mux21_0/nand_1/B prjMagic_1/bitslice_7/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1674 prjMagic_1/bitslice_7/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_7/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1675 prjMagic_1/bitslice_7/fa_0/A prjMagic_1/bitslice_7/mux21_0/nand_1/B prjMagic_1/bitslice_7/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1676 prjMagic_1/bitslice_7/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1677 Vdd B7 prjMagic_1/bitslice_7/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1678 prjMagic_1/bitslice_7/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1679 prjMagic_1/bitslice_7/mux21_0/nand_1/B B7 prjMagic_1/bitslice_7/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1680 Vdd A7 prjMagic_1/bitslice_7/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1681 prjMagic_1/bitslice_7/xor2_0/a_33_54# prjMagic_1/bitslice_7/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1682 prjMagic_1/bitslice_7/Y A7 prjMagic_1/bitslice_7/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1683 prjMagic_1/bitslice_7/xor2_0/a_50_54# prjMagic_1/bitslice_7/xor2_0/a_17_6# prjMagic_1/bitslice_7/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1684 Vdd subtract prjMagic_1/bitslice_7/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1685 prjMagic_1/bitslice_7/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1686 Gnd A7 prjMagic_1/bitslice_7/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1687 prjMagic_1/bitslice_7/xor2_0/a_33_6# prjMagic_1/bitslice_7/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1688 prjMagic_1/bitslice_7/Y prjMagic_1/bitslice_7/xor2_0/a_17_6# prjMagic_1/bitslice_7/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1689 prjMagic_1/bitslice_7/xor2_0/a_50_6# A7 prjMagic_1/bitslice_7/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1690 Gnd subtract prjMagic_1/bitslice_7/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1691 prjMagic_1/bitslice_7/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1692 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1693 prjMagic_1/bitslice_6/dffpos_0/a_n19_n15# prjMagic_1/bitslice_6/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1694 prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1695 prjMagic_1/bitslice_6/dffpos_0/a_n5_n15# prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1696 Vdd prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# prjMagic_1/bitslice_6/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1697 prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1698 prjMagic_1/bitslice_6/dffpos_0/a_25_n15# prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1699 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# prjMagic_1/bitslice_6/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1700 prjMagic_1/bitslice_6/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1701 Vdd 1Out6 prjMagic_1/bitslice_6/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1702 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1703 1Out6 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1704 prjMagic_1/bitslice_6/dffpos_0/a_n19_n84# prjMagic_1/bitslice_6/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1705 prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# prjMagic_1/bitslice_6/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1706 prjMagic_1/bitslice_6/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1707 Gnd prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# prjMagic_1/bitslice_6/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1708 prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1709 prjMagic_1/bitslice_6/dffpos_0/a_25_n84# prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1710 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_6/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1711 prjMagic_1/bitslice_6/dffpos_0/a_40_n84# prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# prjMagic_1/bitslice_6/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1712 Gnd 1Out6 prjMagic_1/bitslice_6/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1713 1Out6 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1714 Vdd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1715 prjMagic_1/bitslice_6/fa_0/a_2_74# prjMagic_1/bitslice_6/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1716 prjMagic_1/bitslice_6/fa_0/a_25_6# prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_6/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1717 prjMagic_1/bitslice_6/fa_0/a_33_74# prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1718 Vdd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1719 prjMagic_1/bitslice_6/fa_0/a_46_74# prjMagic_1/bitslice_6/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1720 Vdd prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1721 prjMagic_1/bitslice_6/fa_0/a_46_74# prjMagic_1/bitslice_6/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1722 prjMagic_1/bitslice_6/fa_0/a_70_6# prjMagic_1/bitslice_6/fa_0/a_25_6# prjMagic_1/bitslice_6/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1723 prjMagic_1/bitslice_6/fa_0/a_79_74# prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_6/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1724 prjMagic_1/bitslice_6/fa_0/a_84_74# prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1725 Vdd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1726 prjMagic_1/bitslice_6/sum prjMagic_1/bitslice_6/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1727 prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_6/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1728 Gnd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1729 prjMagic_1/bitslice_6/fa_0/a_2_6# prjMagic_1/bitslice_6/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1730 prjMagic_1/bitslice_6/fa_0/a_25_6# prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_6/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1731 prjMagic_1/bitslice_6/fa_0/a_33_6# prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1732 Gnd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1733 prjMagic_1/bitslice_6/fa_0/a_46_6# prjMagic_1/bitslice_6/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1734 Gnd prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1735 prjMagic_1/bitslice_6/fa_0/a_46_6# prjMagic_1/bitslice_6/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1736 prjMagic_1/bitslice_6/fa_0/a_70_6# prjMagic_1/bitslice_6/fa_0/a_25_6# prjMagic_1/bitslice_6/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1737 prjMagic_1/bitslice_6/fa_0/a_79_6# prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_6/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1738 prjMagic_1/bitslice_6/fa_0/a_84_6# prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1739 Gnd prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1740 prjMagic_1/bitslice_6/sum prjMagic_1/bitslice_6/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1741 prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_6/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1742 prjMagic_1/bitslice_6/mux21_0/nand_1/A 1Out6 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1743 Vdd prjMagic_1/bitslice_6/mux21_0/nand_2/B prjMagic_1/bitslice_6/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1744 prjMagic_1/bitslice_6/mux21_0/nand_2/a_9_6# 1Out6 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1745 prjMagic_1/bitslice_6/mux21_0/nand_1/A prjMagic_1/bitslice_6/mux21_0/nand_2/B prjMagic_1/bitslice_6/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1746 prjMagic_1/bitslice_6/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1747 prjMagic_1/bitslice_6/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1748 prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1749 Vdd prjMagic_1/bitslice_6/mux21_0/nand_1/B prjMagic_1/bitslice_6/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1750 prjMagic_1/bitslice_6/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_6/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1751 prjMagic_1/bitslice_6/fa_0/A prjMagic_1/bitslice_6/mux21_0/nand_1/B prjMagic_1/bitslice_6/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1752 prjMagic_1/bitslice_6/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1753 Vdd B6 prjMagic_1/bitslice_6/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1754 prjMagic_1/bitslice_6/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1755 prjMagic_1/bitslice_6/mux21_0/nand_1/B B6 prjMagic_1/bitslice_6/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1756 Vdd A6 prjMagic_1/bitslice_6/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1757 prjMagic_1/bitslice_6/xor2_0/a_33_54# prjMagic_1/bitslice_6/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1758 prjMagic_1/bitslice_6/Y A6 prjMagic_1/bitslice_6/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1759 prjMagic_1/bitslice_6/xor2_0/a_50_54# prjMagic_1/bitslice_6/xor2_0/a_17_6# prjMagic_1/bitslice_6/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1760 Vdd subtract prjMagic_1/bitslice_6/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1761 prjMagic_1/bitslice_6/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1762 Gnd A6 prjMagic_1/bitslice_6/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1763 prjMagic_1/bitslice_6/xor2_0/a_33_6# prjMagic_1/bitslice_6/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1764 prjMagic_1/bitslice_6/Y prjMagic_1/bitslice_6/xor2_0/a_17_6# prjMagic_1/bitslice_6/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1765 prjMagic_1/bitslice_6/xor2_0/a_50_6# A6 prjMagic_1/bitslice_6/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1766 Gnd subtract prjMagic_1/bitslice_6/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1767 prjMagic_1/bitslice_6/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1768 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1769 prjMagic_1/bitslice_5/dffpos_0/a_n19_n15# prjMagic_1/bitslice_5/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1770 prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1771 prjMagic_1/bitslice_5/dffpos_0/a_n5_n15# prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1772 Vdd prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# prjMagic_1/bitslice_5/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1773 prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1774 prjMagic_1/bitslice_5/dffpos_0/a_25_n15# prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1775 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# prjMagic_1/bitslice_5/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1776 prjMagic_1/bitslice_5/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1777 Vdd 1Out5 prjMagic_1/bitslice_5/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1778 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1779 1Out5 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1780 prjMagic_1/bitslice_5/dffpos_0/a_n19_n84# prjMagic_1/bitslice_5/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1781 prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# prjMagic_1/bitslice_5/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1782 prjMagic_1/bitslice_5/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1783 Gnd prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# prjMagic_1/bitslice_5/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1784 prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1785 prjMagic_1/bitslice_5/dffpos_0/a_25_n84# prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1786 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1787 prjMagic_1/bitslice_5/dffpos_0/a_40_n84# prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# prjMagic_1/bitslice_5/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1788 Gnd 1Out5 prjMagic_1/bitslice_5/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1789 1Out5 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1790 Vdd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1791 prjMagic_1/bitslice_5/fa_0/a_2_74# prjMagic_1/bitslice_5/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1792 prjMagic_1/bitslice_5/fa_0/a_25_6# prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_5/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1793 prjMagic_1/bitslice_5/fa_0/a_33_74# prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1794 Vdd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1795 prjMagic_1/bitslice_5/fa_0/a_46_74# prjMagic_1/bitslice_5/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1796 Vdd prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1797 prjMagic_1/bitslice_5/fa_0/a_46_74# prjMagic_1/bitslice_5/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1798 prjMagic_1/bitslice_5/fa_0/a_70_6# prjMagic_1/bitslice_5/fa_0/a_25_6# prjMagic_1/bitslice_5/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1799 prjMagic_1/bitslice_5/fa_0/a_79_74# prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_5/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1800 prjMagic_1/bitslice_5/fa_0/a_84_74# prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1801 Vdd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1802 prjMagic_1/bitslice_5/sum prjMagic_1/bitslice_5/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1803 prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_5/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1804 Gnd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1805 prjMagic_1/bitslice_5/fa_0/a_2_6# prjMagic_1/bitslice_5/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1806 prjMagic_1/bitslice_5/fa_0/a_25_6# prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_5/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1807 prjMagic_1/bitslice_5/fa_0/a_33_6# prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1808 Gnd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1809 prjMagic_1/bitslice_5/fa_0/a_46_6# prjMagic_1/bitslice_5/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1810 Gnd prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1811 prjMagic_1/bitslice_5/fa_0/a_46_6# prjMagic_1/bitslice_5/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1812 prjMagic_1/bitslice_5/fa_0/a_70_6# prjMagic_1/bitslice_5/fa_0/a_25_6# prjMagic_1/bitslice_5/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1813 prjMagic_1/bitslice_5/fa_0/a_79_6# prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_5/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1814 prjMagic_1/bitslice_5/fa_0/a_84_6# prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1815 Gnd prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1816 prjMagic_1/bitslice_5/sum prjMagic_1/bitslice_5/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1817 prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_5/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1818 prjMagic_1/bitslice_5/mux21_0/nand_1/A 1Out5 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1819 Vdd prjMagic_1/bitslice_5/mux21_0/nand_2/B prjMagic_1/bitslice_5/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1820 prjMagic_1/bitslice_5/mux21_0/nand_2/a_9_6# 1Out5 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1821 prjMagic_1/bitslice_5/mux21_0/nand_1/A prjMagic_1/bitslice_5/mux21_0/nand_2/B prjMagic_1/bitslice_5/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1822 prjMagic_1/bitslice_5/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1823 prjMagic_1/bitslice_5/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1824 prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1825 Vdd prjMagic_1/bitslice_5/mux21_0/nand_1/B prjMagic_1/bitslice_5/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1826 prjMagic_1/bitslice_5/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_5/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1827 prjMagic_1/bitslice_5/fa_0/A prjMagic_1/bitslice_5/mux21_0/nand_1/B prjMagic_1/bitslice_5/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1828 prjMagic_1/bitslice_5/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1829 Vdd B5 prjMagic_1/bitslice_5/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1830 prjMagic_1/bitslice_5/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1831 prjMagic_1/bitslice_5/mux21_0/nand_1/B B5 prjMagic_1/bitslice_5/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1832 Vdd A5 prjMagic_1/bitslice_5/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1833 prjMagic_1/bitslice_5/xor2_0/a_33_54# prjMagic_1/bitslice_5/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1834 prjMagic_1/bitslice_5/Y A5 prjMagic_1/bitslice_5/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1835 prjMagic_1/bitslice_5/xor2_0/a_50_54# prjMagic_1/bitslice_5/xor2_0/a_17_6# prjMagic_1/bitslice_5/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1836 Vdd subtract prjMagic_1/bitslice_5/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1837 prjMagic_1/bitslice_5/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1838 Gnd A5 prjMagic_1/bitslice_5/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1839 prjMagic_1/bitslice_5/xor2_0/a_33_6# prjMagic_1/bitslice_5/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1840 prjMagic_1/bitslice_5/Y prjMagic_1/bitslice_5/xor2_0/a_17_6# prjMagic_1/bitslice_5/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1841 prjMagic_1/bitslice_5/xor2_0/a_50_6# A5 prjMagic_1/bitslice_5/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1842 Gnd subtract prjMagic_1/bitslice_5/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1843 prjMagic_1/bitslice_5/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1844 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1845 prjMagic_1/bitslice_4/dffpos_0/a_n19_n15# prjMagic_1/bitslice_4/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1846 prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1847 prjMagic_1/bitslice_4/dffpos_0/a_n5_n15# prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1848 Vdd prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# prjMagic_1/bitslice_4/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1849 prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1850 prjMagic_1/bitslice_4/dffpos_0/a_25_n15# prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1851 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# prjMagic_1/bitslice_4/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1852 prjMagic_1/bitslice_4/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1853 Vdd 1Out4 prjMagic_1/bitslice_4/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1854 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1855 1Out4 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1856 prjMagic_1/bitslice_4/dffpos_0/a_n19_n84# prjMagic_1/bitslice_4/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1857 prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# prjMagic_1/bitslice_4/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1858 prjMagic_1/bitslice_4/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1859 Gnd prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# prjMagic_1/bitslice_4/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1860 prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1861 prjMagic_1/bitslice_4/dffpos_0/a_25_n84# prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1862 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1863 prjMagic_1/bitslice_4/dffpos_0/a_40_n84# prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# prjMagic_1/bitslice_4/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1864 Gnd 1Out4 prjMagic_1/bitslice_4/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1865 1Out4 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1866 Vdd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1867 prjMagic_1/bitslice_4/fa_0/a_2_74# prjMagic_1/bitslice_4/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1868 prjMagic_1/bitslice_4/fa_0/a_25_6# prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_4/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1869 prjMagic_1/bitslice_4/fa_0/a_33_74# prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1870 Vdd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1871 prjMagic_1/bitslice_4/fa_0/a_46_74# prjMagic_1/bitslice_4/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1872 Vdd prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1873 prjMagic_1/bitslice_4/fa_0/a_46_74# prjMagic_1/bitslice_4/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1874 prjMagic_1/bitslice_4/fa_0/a_70_6# prjMagic_1/bitslice_4/fa_0/a_25_6# prjMagic_1/bitslice_4/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1875 prjMagic_1/bitslice_4/fa_0/a_79_74# prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_4/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1876 prjMagic_1/bitslice_4/fa_0/a_84_74# prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1877 Vdd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1878 prjMagic_1/bitslice_4/sum prjMagic_1/bitslice_4/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1879 prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_4/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1880 Gnd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1881 prjMagic_1/bitslice_4/fa_0/a_2_6# prjMagic_1/bitslice_4/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1882 prjMagic_1/bitslice_4/fa_0/a_25_6# prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_4/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1883 prjMagic_1/bitslice_4/fa_0/a_33_6# prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1884 Gnd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1885 prjMagic_1/bitslice_4/fa_0/a_46_6# prjMagic_1/bitslice_4/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1886 Gnd prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1887 prjMagic_1/bitslice_4/fa_0/a_46_6# prjMagic_1/bitslice_4/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1888 prjMagic_1/bitslice_4/fa_0/a_70_6# prjMagic_1/bitslice_4/fa_0/a_25_6# prjMagic_1/bitslice_4/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1889 prjMagic_1/bitslice_4/fa_0/a_79_6# prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_4/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1890 prjMagic_1/bitslice_4/fa_0/a_84_6# prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1891 Gnd prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1892 prjMagic_1/bitslice_4/sum prjMagic_1/bitslice_4/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1893 prjMagic_1/bitslice_5/Cin prjMagic_1/bitslice_4/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1894 prjMagic_1/bitslice_4/mux21_0/nand_1/A 1Out4 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1895 Vdd prjMagic_1/bitslice_4/mux21_0/nand_2/B prjMagic_1/bitslice_4/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1896 prjMagic_1/bitslice_4/mux21_0/nand_2/a_9_6# 1Out4 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1897 prjMagic_1/bitslice_4/mux21_0/nand_1/A prjMagic_1/bitslice_4/mux21_0/nand_2/B prjMagic_1/bitslice_4/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1898 prjMagic_1/bitslice_4/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1899 prjMagic_1/bitslice_4/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1900 prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1901 Vdd prjMagic_1/bitslice_4/mux21_0/nand_1/B prjMagic_1/bitslice_4/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1902 prjMagic_1/bitslice_4/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_4/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1903 prjMagic_1/bitslice_4/fa_0/A prjMagic_1/bitslice_4/mux21_0/nand_1/B prjMagic_1/bitslice_4/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1904 prjMagic_1/bitslice_4/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1905 Vdd B4 prjMagic_1/bitslice_4/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1906 prjMagic_1/bitslice_4/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1907 prjMagic_1/bitslice_4/mux21_0/nand_1/B B4 prjMagic_1/bitslice_4/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1908 Vdd A4 prjMagic_1/bitslice_4/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1909 prjMagic_1/bitslice_4/xor2_0/a_33_54# prjMagic_1/bitslice_4/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1910 prjMagic_1/bitslice_4/Y A4 prjMagic_1/bitslice_4/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1911 prjMagic_1/bitslice_4/xor2_0/a_50_54# prjMagic_1/bitslice_4/xor2_0/a_17_6# prjMagic_1/bitslice_4/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1912 Vdd subtract prjMagic_1/bitslice_4/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1913 prjMagic_1/bitslice_4/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1914 Gnd A4 prjMagic_1/bitslice_4/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1915 prjMagic_1/bitslice_4/xor2_0/a_33_6# prjMagic_1/bitslice_4/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1916 prjMagic_1/bitslice_4/Y prjMagic_1/bitslice_4/xor2_0/a_17_6# prjMagic_1/bitslice_4/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1917 prjMagic_1/bitslice_4/xor2_0/a_50_6# A4 prjMagic_1/bitslice_4/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1918 Gnd subtract prjMagic_1/bitslice_4/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1919 prjMagic_1/bitslice_4/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1920 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1921 prjMagic_1/bitslice_3/dffpos_0/a_n19_n15# prjMagic_1/bitslice_3/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1922 prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1923 prjMagic_1/bitslice_3/dffpos_0/a_n5_n15# prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1924 Vdd prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# prjMagic_1/bitslice_3/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1925 prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1926 prjMagic_1/bitslice_3/dffpos_0/a_25_n15# prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1927 prjMagic_1/bitslice_3/dffpos_0/a_30_n84# prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/bitslice_3/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M1928 prjMagic_1/bitslice_3/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1929 Vdd 1Out3 prjMagic_1/bitslice_3/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1930 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1931 1Out3 prjMagic_1/bitslice_3/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1932 prjMagic_1/bitslice_3/dffpos_0/a_n19_n84# prjMagic_1/bitslice_3/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1933 prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/bitslice_3/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1934 prjMagic_1/bitslice_3/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1935 Gnd prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# prjMagic_1/bitslice_3/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1936 prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1937 prjMagic_1/bitslice_3/dffpos_0/a_25_n84# prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1938 prjMagic_1/bitslice_3/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M1939 prjMagic_1/bitslice_3/dffpos_0/a_40_n84# prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/bitslice_3/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1940 Gnd 1Out3 prjMagic_1/bitslice_3/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1941 1Out3 prjMagic_1/bitslice_3/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1942 Vdd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M1943 prjMagic_1/bitslice_3/fa_0/a_2_74# prjMagic_1/bitslice_3/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1944 prjMagic_1/bitslice_3/fa_0/a_25_6# prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_3/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1945 prjMagic_1/bitslice_3/fa_0/a_33_74# prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1946 Vdd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1947 prjMagic_1/bitslice_3/fa_0/a_46_74# prjMagic_1/bitslice_3/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M1948 Vdd prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1949 prjMagic_1/bitslice_3/fa_0/a_46_74# prjMagic_1/bitslice_3/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1950 prjMagic_1/bitslice_3/fa_0/a_70_6# prjMagic_1/bitslice_3/fa_0/a_25_6# prjMagic_1/bitslice_3/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1951 prjMagic_1/bitslice_3/fa_0/a_79_74# prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_3/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1952 prjMagic_1/bitslice_3/fa_0/a_84_74# prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1953 Vdd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1954 prjMagic_1/bitslice_3/sum prjMagic_1/bitslice_3/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1955 prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_3/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1956 Gnd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M1957 prjMagic_1/bitslice_3/fa_0/a_2_6# prjMagic_1/bitslice_3/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1958 prjMagic_1/bitslice_3/fa_0/a_25_6# prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_3/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1959 prjMagic_1/bitslice_3/fa_0/a_33_6# prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1960 Gnd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1961 prjMagic_1/bitslice_3/fa_0/a_46_6# prjMagic_1/bitslice_3/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M1962 Gnd prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1963 prjMagic_1/bitslice_3/fa_0/a_46_6# prjMagic_1/bitslice_3/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1964 prjMagic_1/bitslice_3/fa_0/a_70_6# prjMagic_1/bitslice_3/fa_0/a_25_6# prjMagic_1/bitslice_3/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M1965 prjMagic_1/bitslice_3/fa_0/a_79_6# prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_3/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1966 prjMagic_1/bitslice_3/fa_0/a_84_6# prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M1967 Gnd prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1968 prjMagic_1/bitslice_3/sum prjMagic_1/bitslice_3/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1969 prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_3/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1970 prjMagic_1/bitslice_3/mux21_0/nand_1/A 1Out3 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1971 Vdd prjMagic_1/bitslice_3/mux21_0/nand_2/B prjMagic_1/bitslice_3/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1972 prjMagic_1/bitslice_3/mux21_0/nand_2/a_9_6# 1Out3 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1973 prjMagic_1/bitslice_3/mux21_0/nand_1/A prjMagic_1/bitslice_3/mux21_0/nand_2/B prjMagic_1/bitslice_3/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1974 prjMagic_1/bitslice_3/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1975 prjMagic_1/bitslice_3/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1976 prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1977 Vdd prjMagic_1/bitslice_3/mux21_0/nand_1/B prjMagic_1/bitslice_3/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1978 prjMagic_1/bitslice_3/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_3/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1979 prjMagic_1/bitslice_3/fa_0/A prjMagic_1/bitslice_3/mux21_0/nand_1/B prjMagic_1/bitslice_3/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1980 prjMagic_1/bitslice_3/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1981 Vdd B3 prjMagic_1/bitslice_3/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1982 prjMagic_1/bitslice_3/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1983 prjMagic_1/bitslice_3/mux21_0/nand_1/B B3 prjMagic_1/bitslice_3/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1984 Vdd A3 prjMagic_1/bitslice_3/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1985 prjMagic_1/bitslice_3/xor2_0/a_33_54# prjMagic_1/bitslice_3/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1986 prjMagic_1/bitslice_3/Y A3 prjMagic_1/bitslice_3/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M1987 prjMagic_1/bitslice_3/xor2_0/a_50_54# prjMagic_1/bitslice_3/xor2_0/a_17_6# prjMagic_1/bitslice_3/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M1988 Vdd subtract prjMagic_1/bitslice_3/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1989 prjMagic_1/bitslice_3/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1990 Gnd A3 prjMagic_1/bitslice_3/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1991 prjMagic_1/bitslice_3/xor2_0/a_33_6# prjMagic_1/bitslice_3/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1992 prjMagic_1/bitslice_3/Y prjMagic_1/bitslice_3/xor2_0/a_17_6# prjMagic_1/bitslice_3/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M1993 prjMagic_1/bitslice_3/xor2_0/a_50_6# A3 prjMagic_1/bitslice_3/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M1994 Gnd subtract prjMagic_1/bitslice_3/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1995 prjMagic_1/bitslice_3/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1996 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M1997 prjMagic_1/bitslice_2/dffpos_0/a_n19_n15# prjMagic_1/bitslice_2/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M1998 prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1999 prjMagic_1/bitslice_2/dffpos_0/a_n5_n15# prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M2000 Vdd prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# prjMagic_1/bitslice_2/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2001 prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2002 prjMagic_1/bitslice_2/dffpos_0/a_25_n15# prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2003 prjMagic_1/bitslice_2/dffpos_0/a_30_n84# prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/bitslice_2/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M2004 prjMagic_1/bitslice_2/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2005 Vdd 1Out2 prjMagic_1/bitslice_2/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2006 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2007 1Out2 prjMagic_1/bitslice_2/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2008 prjMagic_1/bitslice_2/dffpos_0/a_n19_n84# prjMagic_1/bitslice_2/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2009 prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/bitslice_2/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2010 prjMagic_1/bitslice_2/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2011 Gnd prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# prjMagic_1/bitslice_2/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2012 prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2013 prjMagic_1/bitslice_2/dffpos_0/a_25_n84# prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2014 prjMagic_1/bitslice_2/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_2/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M2015 prjMagic_1/bitslice_2/dffpos_0/a_40_n84# prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/bitslice_2/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2016 Gnd 1Out2 prjMagic_1/bitslice_2/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2017 1Out2 prjMagic_1/bitslice_2/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2018 Vdd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M2019 prjMagic_1/bitslice_2/fa_0/a_2_74# prjMagic_1/bitslice_2/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2020 prjMagic_1/bitslice_2/fa_0/a_25_6# prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_2/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2021 prjMagic_1/bitslice_2/fa_0/a_33_74# prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2022 Vdd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2023 prjMagic_1/bitslice_2/fa_0/a_46_74# prjMagic_1/bitslice_2/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M2024 Vdd prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2025 prjMagic_1/bitslice_2/fa_0/a_46_74# prjMagic_1/bitslice_2/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2026 prjMagic_1/bitslice_2/fa_0/a_70_6# prjMagic_1/bitslice_2/fa_0/a_25_6# prjMagic_1/bitslice_2/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M2027 prjMagic_1/bitslice_2/fa_0/a_79_74# prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_2/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2028 prjMagic_1/bitslice_2/fa_0/a_84_74# prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2029 Vdd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2030 prjMagic_1/bitslice_2/sum prjMagic_1/bitslice_2/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2031 prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_2/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2032 Gnd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M2033 prjMagic_1/bitslice_2/fa_0/a_2_6# prjMagic_1/bitslice_2/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2034 prjMagic_1/bitslice_2/fa_0/a_25_6# prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_2/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M2035 prjMagic_1/bitslice_2/fa_0/a_33_6# prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2036 Gnd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2037 prjMagic_1/bitslice_2/fa_0/a_46_6# prjMagic_1/bitslice_2/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M2038 Gnd prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2039 prjMagic_1/bitslice_2/fa_0/a_46_6# prjMagic_1/bitslice_2/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2040 prjMagic_1/bitslice_2/fa_0/a_70_6# prjMagic_1/bitslice_2/fa_0/a_25_6# prjMagic_1/bitslice_2/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2041 prjMagic_1/bitslice_2/fa_0/a_79_6# prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_2/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2042 prjMagic_1/bitslice_2/fa_0/a_84_6# prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2043 Gnd prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2044 prjMagic_1/bitslice_2/sum prjMagic_1/bitslice_2/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2045 prjMagic_1/bitslice_3/Cin prjMagic_1/bitslice_2/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2046 prjMagic_1/bitslice_2/mux21_0/nand_1/A 1Out2 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2047 Vdd prjMagic_1/bitslice_2/mux21_0/nand_2/B prjMagic_1/bitslice_2/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2048 prjMagic_1/bitslice_2/mux21_0/nand_2/a_9_6# 1Out2 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2049 prjMagic_1/bitslice_2/mux21_0/nand_1/A prjMagic_1/bitslice_2/mux21_0/nand_2/B prjMagic_1/bitslice_2/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2050 prjMagic_1/bitslice_2/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2051 prjMagic_1/bitslice_2/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2052 prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2053 Vdd prjMagic_1/bitslice_2/mux21_0/nand_1/B prjMagic_1/bitslice_2/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2054 prjMagic_1/bitslice_2/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_2/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2055 prjMagic_1/bitslice_2/fa_0/A prjMagic_1/bitslice_2/mux21_0/nand_1/B prjMagic_1/bitslice_2/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2056 prjMagic_1/bitslice_2/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2057 Vdd B2 prjMagic_1/bitslice_2/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2058 prjMagic_1/bitslice_2/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2059 prjMagic_1/bitslice_2/mux21_0/nand_1/B B2 prjMagic_1/bitslice_2/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2060 Vdd A2 prjMagic_1/bitslice_2/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M2061 prjMagic_1/bitslice_2/xor2_0/a_33_54# prjMagic_1/bitslice_2/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2062 prjMagic_1/bitslice_2/Y A2 prjMagic_1/bitslice_2/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M2063 prjMagic_1/bitslice_2/xor2_0/a_50_54# prjMagic_1/bitslice_2/xor2_0/a_17_6# prjMagic_1/bitslice_2/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2064 Vdd subtract prjMagic_1/bitslice_2/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M2065 prjMagic_1/bitslice_2/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2066 Gnd A2 prjMagic_1/bitslice_2/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2067 prjMagic_1/bitslice_2/xor2_0/a_33_6# prjMagic_1/bitslice_2/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2068 prjMagic_1/bitslice_2/Y prjMagic_1/bitslice_2/xor2_0/a_17_6# prjMagic_1/bitslice_2/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M2069 prjMagic_1/bitslice_2/xor2_0/a_50_6# A2 prjMagic_1/bitslice_2/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2070 Gnd subtract prjMagic_1/bitslice_2/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2071 prjMagic_1/bitslice_2/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2072 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M2073 prjMagic_1/bitslice_1/dffpos_0/a_n19_n15# prjMagic_1/bitslice_1/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M2074 prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2075 prjMagic_1/bitslice_1/dffpos_0/a_n5_n15# prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M2076 Vdd prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# prjMagic_1/bitslice_1/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2077 prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2078 prjMagic_1/bitslice_1/dffpos_0/a_25_n15# prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2079 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# prjMagic_1/bitslice_1/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M2080 prjMagic_1/bitslice_1/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2081 Vdd 1Out1 prjMagic_1/bitslice_1/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2082 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2083 1Out1 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2084 prjMagic_1/bitslice_1/dffpos_0/a_n19_n84# prjMagic_1/bitslice_1/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2085 prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# prjMagic_1/bitslice_1/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2086 prjMagic_1/bitslice_1/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2087 Gnd prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# prjMagic_1/bitslice_1/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2088 prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2089 prjMagic_1/bitslice_1/dffpos_0/a_25_n84# prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2090 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M2091 prjMagic_1/bitslice_1/dffpos_0/a_40_n84# prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# prjMagic_1/bitslice_1/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2092 Gnd 1Out1 prjMagic_1/bitslice_1/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2093 1Out1 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2094 Vdd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M2095 prjMagic_1/bitslice_1/fa_0/a_2_74# prjMagic_1/bitslice_1/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2096 prjMagic_1/bitslice_1/fa_0/a_25_6# prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_1/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2097 prjMagic_1/bitslice_1/fa_0/a_33_74# prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2098 Vdd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2099 prjMagic_1/bitslice_1/fa_0/a_46_74# prjMagic_1/bitslice_1/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M2100 Vdd prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2101 prjMagic_1/bitslice_1/fa_0/a_46_74# prjMagic_1/bitslice_1/Cin Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2102 prjMagic_1/bitslice_1/fa_0/a_70_6# prjMagic_1/bitslice_1/fa_0/a_25_6# prjMagic_1/bitslice_1/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M2103 prjMagic_1/bitslice_1/fa_0/a_79_74# prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_1/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2104 prjMagic_1/bitslice_1/fa_0/a_84_74# prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2105 Vdd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2106 prjMagic_1/bitslice_1/sum prjMagic_1/bitslice_1/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2107 prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_1/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2108 Gnd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M2109 prjMagic_1/bitslice_1/fa_0/a_2_6# prjMagic_1/bitslice_1/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2110 prjMagic_1/bitslice_1/fa_0/a_25_6# prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_1/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M2111 prjMagic_1/bitslice_1/fa_0/a_33_6# prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2112 Gnd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2113 prjMagic_1/bitslice_1/fa_0/a_46_6# prjMagic_1/bitslice_1/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M2114 Gnd prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2115 prjMagic_1/bitslice_1/fa_0/a_46_6# prjMagic_1/bitslice_1/Cin Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2116 prjMagic_1/bitslice_1/fa_0/a_70_6# prjMagic_1/bitslice_1/fa_0/a_25_6# prjMagic_1/bitslice_1/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2117 prjMagic_1/bitslice_1/fa_0/a_79_6# prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_1/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2118 prjMagic_1/bitslice_1/fa_0/a_84_6# prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2119 Gnd prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2120 prjMagic_1/bitslice_1/sum prjMagic_1/bitslice_1/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2121 prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_1/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2122 prjMagic_1/bitslice_1/mux21_0/nand_1/A 1Out1 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2123 Vdd prjMagic_1/bitslice_1/mux21_0/nand_2/B prjMagic_1/bitslice_1/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2124 prjMagic_1/bitslice_1/mux21_0/nand_2/a_9_6# 1Out1 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2125 prjMagic_1/bitslice_1/mux21_0/nand_1/A prjMagic_1/bitslice_1/mux21_0/nand_2/B prjMagic_1/bitslice_1/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2126 prjMagic_1/bitslice_1/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2127 prjMagic_1/bitslice_1/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2128 prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2129 Vdd prjMagic_1/bitslice_1/mux21_0/nand_1/B prjMagic_1/bitslice_1/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2130 prjMagic_1/bitslice_1/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_1/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2131 prjMagic_1/bitslice_1/fa_0/A prjMagic_1/bitslice_1/mux21_0/nand_1/B prjMagic_1/bitslice_1/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2132 prjMagic_1/bitslice_1/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2133 Vdd B1 prjMagic_1/bitslice_1/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2134 prjMagic_1/bitslice_1/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2135 prjMagic_1/bitslice_1/mux21_0/nand_1/B B1 prjMagic_1/bitslice_1/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2136 Vdd A1 prjMagic_1/bitslice_1/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M2137 prjMagic_1/bitslice_1/xor2_0/a_33_54# prjMagic_1/bitslice_1/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2138 prjMagic_1/bitslice_1/Y A1 prjMagic_1/bitslice_1/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M2139 prjMagic_1/bitslice_1/xor2_0/a_50_54# prjMagic_1/bitslice_1/xor2_0/a_17_6# prjMagic_1/bitslice_1/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2140 Vdd subtract prjMagic_1/bitslice_1/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M2141 prjMagic_1/bitslice_1/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2142 Gnd A1 prjMagic_1/bitslice_1/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2143 prjMagic_1/bitslice_1/xor2_0/a_33_6# prjMagic_1/bitslice_1/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2144 prjMagic_1/bitslice_1/Y prjMagic_1/bitslice_1/xor2_0/a_17_6# prjMagic_1/bitslice_1/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M2145 prjMagic_1/bitslice_1/xor2_0/a_50_6# A1 prjMagic_1/bitslice_1/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2146 Gnd subtract prjMagic_1/bitslice_1/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2147 prjMagic_1/bitslice_1/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2148 Vdd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M2149 prjMagic_1/bitslice_0/dffpos_0/a_n19_n15# prjMagic_1/bitslice_0/sum Vdd Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M2150 prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n19_n15# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2151 prjMagic_1/bitslice_0/dffpos_0/a_n5_n15# prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# Vdd CMOSPTT w=20 l=2
+  ad=80 pd=48 as=0 ps=0
M2152 Vdd prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# prjMagic_1/bitslice_0/dffpos_0/a_n5_n15# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2153 prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2154 prjMagic_1/bitslice_0/dffpos_0/a_25_n15# prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# Vdd Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2155 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# prjMagic_1/bitslice_0/dffpos_0/a_25_n15# Vdd CMOSPTT w=20 l=2
+  ad=150 pd=56 as=0 ps=0
M2156 prjMagic_1/bitslice_0/dffpos_0/a_40_n5# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_30_n84# Vdd CMOSPTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2157 Vdd 1Out0 prjMagic_1/bitslice_0/dffpos_0/a_40_n5# Vdd CMOSPTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2158 Gnd prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2159 1Out0 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2160 prjMagic_1/bitslice_0/dffpos_0/a_n19_n84# prjMagic_1/bitslice_0/sum Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2161 prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# prjMagic_1/bitslice_0/dffpos_0/a_n19_n84# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2162 prjMagic_1/bitslice_0/dffpos_0/a_n5_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2163 Gnd prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# prjMagic_1/bitslice_0/dffpos_0/a_n5_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2164 prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2165 prjMagic_1/bitslice_0/dffpos_0/a_25_n84# prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# Gnd Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2166 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_25_n84# Gnd CMOSNTT w=10 l=2
+  ad=80 pd=36 as=0 ps=0
M2167 prjMagic_1/bitslice_0/dffpos_0/a_40_n84# prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# prjMagic_1/bitslice_0/dffpos_0/a_30_n84# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2168 Gnd 1Out0 prjMagic_1/bitslice_0/dffpos_0/a_40_n84# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2169 1Out0 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2170 Vdd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=220 ps=102
M2171 prjMagic_1/bitslice_0/fa_0/a_2_74# prjMagic_1/bitslice_0/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2172 prjMagic_1/bitslice_0/fa_0/a_25_6# subtract prjMagic_1/bitslice_0/fa_0/a_2_74# Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2173 prjMagic_1/bitslice_0/fa_0/a_33_74# prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_25_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2174 Vdd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_33_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2175 prjMagic_1/bitslice_0/fa_0/a_46_74# prjMagic_1/bitslice_0/fa_0/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=240 pd=104 as=0 ps=0
M2176 Vdd prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2177 prjMagic_1/bitslice_0/fa_0/a_46_74# subtract Vdd Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2178 prjMagic_1/bitslice_0/fa_0/a_70_6# prjMagic_1/bitslice_0/fa_0/a_25_6# prjMagic_1/bitslice_0/fa_0/a_46_74# Vdd CMOSPTT w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M2179 prjMagic_1/bitslice_0/fa_0/a_79_74# subtract prjMagic_1/bitslice_0/fa_0/a_70_6# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2180 prjMagic_1/bitslice_0/fa_0/a_84_74# prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_79_74# Vdd CMOSPTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2181 Vdd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_84_74# Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2182 prjMagic_1/bitslice_0/sum prjMagic_1/bitslice_0/fa_0/a_70_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2183 prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_0/fa_0/a_25_6# Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2184 Gnd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=110 ps=62
M2185 prjMagic_1/bitslice_0/fa_0/a_2_6# prjMagic_1/bitslice_0/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2186 prjMagic_1/bitslice_0/fa_0/a_25_6# subtract prjMagic_1/bitslice_0/fa_0/a_2_6# Gnd CMOSNTT w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M2187 prjMagic_1/bitslice_0/fa_0/a_33_6# prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_25_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2188 Gnd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_33_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2189 prjMagic_1/bitslice_0/fa_0/a_46_6# prjMagic_1/bitslice_0/fa_0/A Gnd Gnd CMOSNTT w=10 l=2
+  ad=120 pd=64 as=0 ps=0
M2190 Gnd prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2191 prjMagic_1/bitslice_0/fa_0/a_46_6# subtract Gnd Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2192 prjMagic_1/bitslice_0/fa_0/a_70_6# prjMagic_1/bitslice_0/fa_0/a_25_6# prjMagic_1/bitslice_0/fa_0/a_46_6# Gnd CMOSNTT w=10 l=2
+  ad=70 pd=34 as=0 ps=0
M2193 prjMagic_1/bitslice_0/fa_0/a_79_6# subtract prjMagic_1/bitslice_0/fa_0/a_70_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2194 prjMagic_1/bitslice_0/fa_0/a_84_6# prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/fa_0/a_79_6# Gnd CMOSNTT w=10 l=2
+  ad=30 pd=26 as=0 ps=0
M2195 Gnd prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/fa_0/a_84_6# Gnd CMOSNTT w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M2196 prjMagic_1/bitslice_0/sum prjMagic_1/bitslice_0/fa_0/a_70_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2197 prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_0/fa_0/a_25_6# Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2198 prjMagic_1/bitslice_0/mux21_0/nand_1/A 1Out0 Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2199 Vdd prjMagic_1/bitslice_0/mux21_0/nand_2/B prjMagic_1/bitslice_0/mux21_0/nand_1/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2200 prjMagic_1/bitslice_0/mux21_0/nand_2/a_9_6# 1Out0 Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2201 prjMagic_1/bitslice_0/mux21_0/nand_1/A prjMagic_1/bitslice_0/mux21_0/nand_2/B prjMagic_1/bitslice_0/mux21_0/nand_2/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2202 prjMagic_1/bitslice_0/mux21_0/nand_2/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2203 prjMagic_1/bitslice_0/mux21_0/nand_2/B loadB Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2204 prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/mux21_0/nand_1/A Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2205 Vdd prjMagic_1/bitslice_0/mux21_0/nand_1/B prjMagic_1/bitslice_0/fa_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2206 prjMagic_1/bitslice_0/mux21_0/nand_1/a_9_6# prjMagic_1/bitslice_0/mux21_0/nand_1/A Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2207 prjMagic_1/bitslice_0/fa_0/A prjMagic_1/bitslice_0/mux21_0/nand_1/B prjMagic_1/bitslice_0/mux21_0/nand_1/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2208 prjMagic_1/bitslice_0/mux21_0/nand_1/B loadB Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2209 Vdd B0 prjMagic_1/bitslice_0/mux21_0/nand_1/B Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2210 prjMagic_1/bitslice_0/mux21_0/nand_0/a_9_6# loadB Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2211 prjMagic_1/bitslice_0/mux21_0/nand_1/B B0 prjMagic_1/bitslice_0/mux21_0/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2212 Vdd A0 prjMagic_1/bitslice_0/xor2_0/a_17_6# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=200 ps=90
M2213 prjMagic_1/bitslice_0/xor2_0/a_33_54# prjMagic_1/bitslice_0/xor2_0/a_28_44# Vdd Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2214 prjMagic_1/bitslice_0/Y A0 prjMagic_1/bitslice_0/xor2_0/a_33_54# Vdd CMOSPTT w=40 l=2
+  ad=400 pd=100 as=0 ps=0
M2215 prjMagic_1/bitslice_0/xor2_0/a_50_54# prjMagic_1/bitslice_0/xor2_0/a_17_6# prjMagic_1/bitslice_0/Y Vdd CMOSPTT w=40 l=2
+  ad=120 pd=86 as=0 ps=0
M2216 Vdd subtract prjMagic_1/bitslice_0/xor2_0/a_50_54# Vdd CMOSPTT w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M2217 prjMagic_1/bitslice_0/xor2_0/a_28_44# subtract Vdd Vdd CMOSPTT w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M2218 Gnd A0 prjMagic_1/bitslice_0/xor2_0/a_17_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M2219 prjMagic_1/bitslice_0/xor2_0/a_33_6# prjMagic_1/bitslice_0/xor2_0/a_28_44# Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2220 prjMagic_1/bitslice_0/Y prjMagic_1/bitslice_0/xor2_0/a_17_6# prjMagic_1/bitslice_0/xor2_0/a_33_6# Gnd CMOSNTT w=20 l=2
+  ad=200 pd=60 as=0 ps=0
M2221 prjMagic_1/bitslice_0/xor2_0/a_50_6# A0 prjMagic_1/bitslice_0/Y Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2222 Gnd subtract prjMagic_1/bitslice_0/xor2_0/a_50_6# Gnd CMOSNTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2223 prjMagic_1/bitslice_0/xor2_0/a_28_44# subtract Gnd Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2224 prjMagic_1/inverter_0/A loadR Vdd Vdd CMOSPTT w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M2225 Vdd inverter_2/Y prjMagic_1/inverter_0/A Vdd CMOSPTT w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M2226 prjMagic_1/nand_0/a_9_6# loadR Gnd Gnd CMOSNTT w=20 l=2
+  ad=60 pd=46 as=0 ps=0
M2227 prjMagic_1/inverter_0/A inverter_2/Y prjMagic_1/nand_0/a_9_6# Gnd CMOSNTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2228 inverter_0/Y subtract Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2229 inverter_0/Y subtract Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2230 inverter_2/Y inverter_1/Y Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2231 inverter_2/Y inverter_1/Y Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M2232 inverter_1/Y clk Vdd Vdd CMOSPTT w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M2233 inverter_1/Y clk Gnd Gnd CMOSNTT w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 Vdd prjMagic_1/bitslice_4/mux21_0/nand_1/B 2.097720fF
C1 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# 3.159600fF
C2 Vdd prjMagic_1/bitslice_7/xor2_0/a_17_6# 2.059560fF
C3 prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/bitslice_3/dffpos_0/a_30_n84# 2.081040fF
C4 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# 2.571480fF
C5 prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C6 prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C7 prjMagic_0/bitslice_0/fa_0/a_70_6# inverter_0/Y 2.233260fF
C8 Vdd prjMagic_1/bitslice_1/xor2_0/a_17_6# 2.059560fF
C9 Gnd prjMagic_1/bitslice_6/sum 5.857320fF
C10 prjMagic_1/bitslice_1/Cin prjMagic_1/bitslice_1/fa_0/a_70_6# 2.233260fF
C11 prjMagic_0/inverter_0/Y prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# 3.159600fF
C12 prjMagic_0/bitslice_2/sum Gnd 5.857320fF
C13 Vdd prjMagic_1/bitslice_1/xor2_0/a_28_44# 2.119800fF
C14 Vdd prjMagic_1/bitslice_0/fa_0/a_25_6# 3.134880fF
C15 Vdd prjMagic_0/bitslice_6/xor2_0/a_17_6# 2.059560fF
C16 loadB subtract 2.514300fF
C17 Vdd prjMagic_1/bitslice_6/mux21_0/nand_2/B 5.855850fF
C18 Vdd prjMagic_0/bitslice_1/xor2_0/a_17_6# 2.059560fF
C19 prjMagic_0/bitslice_4/fa_0/A Vdd 8.476560fF
C20 prjMagic_1/bitslice_3/fa_0/a_25_6# Vdd 3.134880fF
C21 prjMagic_0/bitslice_2/xor2_0/a_28_44# Vdd 2.119800fF
C22 prjMagic_1/bitslice_7/fa_0/a_25_6# Vdd 3.134880fF
C23 prjMagic_1/bitslice_7/Cin prjMagic_1/bitslice_7/fa_0/a_70_6# 2.233260fF
C24 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# 2.571480fF
C25 prjMagic_0/bitslice_5/sum Gnd 5.857320fF
C26 Vdd inverter_2/Y 4.160160fF
C27 prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C28 prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C29 prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/bitslice_3/dffpos_0/a_30_n84# 2.081040fF
C30 loadB inverter_0/Y 3.032940fF
C31 prjMagic_1/bitslice_4/xor2_0/a_28_44# Vdd 2.119800fF
C32 Vdd prjMagic_1/bitslice_0/mux21_0/nand_2/B 5.855850fF
C33 Vdd prjMagic_0/bitslice_5/fa_0/a_25_6# 3.134880fF
C34 prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# prjMagic_1/inverter_0/Y 3.159600fF
C35 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# 2.081040fF
C36 prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C37 prjMagic_1/bitslice_6/xor2_0/a_17_6# Vdd 2.059560fF
C38 prjMagic_0/bitslice_3/fa_0/a_70_6# prjMagic_0/bitslice_3/Cin 2.233260fF
C39 Vdd prjMagic_1/bitslice_4/xor2_0/a_17_6# 2.059560fF
C40 prjMagic_0/bitslice_0/xor2_0/a_28_44# Vdd 2.119800fF
C41 prjMagic_0/bitslice_2/fa_0/a_25_6# Vdd 3.134880fF
C42 prjMagic_0/bitslice_1/fa_0/a_25_6# Vdd 3.134880fF
C43 prjMagic_0/bitslice_2/mux21_0/nand_1/B Vdd 2.097720fF
C44 prjMagic_0/bitslice_3/sum Gnd 5.857320fF
C45 prjMagic_0/bitslice_6/fa_0/a_25_6# Vdd 3.134880fF
C46 prjMagic_1/bitslice_3/fa_0/a_70_6# prjMagic_1/bitslice_3/Cin 2.233260fF
C47 Vdd prjMagic_0/bitslice_7/mux21_0/nand_2/B 5.855850fF
C48 Vdd prjMagic_0/bitslice_7/fa_0/a_25_6# 3.134880fF
C49 Gnd prjMagic_1/bitslice_1/sum 5.857320fF
C50 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# 3.159600fF
C51 prjMagic_1/bitslice_6/Cin prjMagic_1/bitslice_6/fa_0/a_70_6# 2.233260fF
C52 prjMagic_1/bitslice_5/fa_0/a_70_6# prjMagic_1/bitslice_5/Cin 2.233260fF
C53 prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# prjMagic_1/inverter_0/Y 3.159600fF
C54 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# 2.081040fF
C55 prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C56 Gnd prjMagic_0/bitslice_6/sum 5.857320fF
C57 Vdd prjMagic_1/bitslice_6/xor2_0/a_28_44# 2.119800fF
C58 Vdd prjMagic_1/bitslice_2/fa_0/a_25_6# 3.134880fF
C59 prjMagic_1/bitslice_7/mux21_0/nand_1/B Vdd 2.097720fF
C60 Vdd prjMagic_1/bitslice_5/fa_0/a_25_6# 3.134880fF
C61 prjMagic_0/bitslice_7/Cin prjMagic_0/bitslice_7/fa_0/a_70_6# 2.233260fF
C62 prjMagic_1/bitslice_5/xor2_0/a_17_6# Vdd 2.059560fF
C63 Vdd prjMagic_1/bitslice_0/fa_0/A 8.476560fF
C64 prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C65 prjMagic_0/bitslice_4/mux21_0/nand_1/B Vdd 2.097720fF
C66 Vdd prjMagic_1/bitslice_0/mux21_0/nand_1/B 2.097720fF
C67 Gnd prjMagic_1/bitslice_2/sum 5.857320fF
C68 Vdd prjMagic_0/bitslice_2/fa_0/A 8.476560fF
C69 prjMagic_1/bitslice_7/mux21_0/nand_2/B Vdd 5.855850fF
C70 prjMagic_1/bitslice_7/fa_0/A Vdd 8.476560fF
C71 prjMagic_0/bitslice_4/sum Gnd 5.857320fF
C72 prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C73 Gnd subtract 3.965880fF
C74 prjMagic_0/bitslice_1/mux21_0/nand_1/B Vdd 2.097720fF
C75 Vdd prjMagic_1/bitslice_2/xor2_0/a_28_44# 2.119800fF
C76 prjMagic_1/bitslice_7/xor2_0/a_28_44# Vdd 2.119800fF
C77 prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C78 loadB Gnd 10.999682fF
C79 Vdd prjMagic_1/bitslice_2/xor2_0/a_17_6# 2.059560fF
C80 prjMagic_1/bitslice_3/xor2_0/a_17_6# Vdd 2.059560fF
C81 Vdd prjMagic_0/bitslice_4/xor2_0/a_28_44# 2.119800fF
C82 Vdd prjMagic_0/bitslice_3/fa_0/A 8.476560fF
C83 Vdd prjMagic_0/bitslice_7/xor2_0/a_28_44# 2.119800fF
C84 subtract Vdd 6.487560fF
C85 Vdd prjMagic_1/bitslice_1/fa_0/a_25_6# 3.134880fF
C86 prjMagic_0/bitslice_7/mux21_0/nand_1/B Vdd 2.097720fF
C87 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# 2.081040fF
C88 prjMagic_0/bitslice_3/fa_0/a_25_6# Vdd 3.134880fF
C89 prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/bitslice_7/dffpos_0/a_30_n84# 2.081040fF
C90 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# 2.081040fF
C91 Gnd inverter_0/Y 4.343879fF
C92 loadB Vdd 13.344542fF
C93 prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C94 prjMagic_1/bitslice_5/sum Gnd 5.857320fF
C95 Vdd inverter_0/Y 7.689240fF
C96 Gnd prjMagic_1/bitslice_4/sum 5.857320fF
C97 prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# prjMagic_1/inverter_0/Y 2.571480fF
C98 Vdd prjMagic_1/bitslice_5/mux21_0/nand_2/B 5.855850fF
C99 Vdd prjMagic_1/bitslice_1/mux21_0/nand_2/B 5.855850fF
C100 Vdd prjMagic_0/bitslice_2/mux21_0/nand_2/B 5.855850fF
C101 Gnd prjMagic_1/bitslice_3/sum 5.857320fF
C102 Vdd prjMagic_0/bitslice_5/mux21_0/nand_1/B 2.097720fF
C103 prjMagic_0/bitslice_5/mux21_0/nand_2/B Vdd 5.855850fF
C104 prjMagic_1/bitslice_3/mux21_0/nand_1/B Vdd 2.097720fF
C105 Vdd prjMagic_1/bitslice_4/mux21_0/nand_2/B 5.855850fF
C106 prjMagic_1/bitslice_4/Cin prjMagic_1/bitslice_4/fa_0/a_70_6# 2.233260fF
C107 Vdd prjMagic_0/bitslice_7/fa_0/A 8.476560fF
C108 prjMagic_0/bitslice_5/xor2_0/a_17_6# Vdd 2.059560fF
C109 Vdd prjMagic_1/bitslice_2/mux21_0/nand_2/B 5.855850fF
C110 Gnd prjMagic_0/bitslice_1/sum 5.857320fF
C111 prjMagic_0/bitslice_5/fa_0/a_70_6# prjMagic_0/bitslice_5/Cin 2.233260fF
C112 Vdd prjMagic_0/bitslice_0/fa_0/a_25_6# 3.134880fF
C113 prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# prjMagic_1/inverter_0/Y 3.159600fF
C114 prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/bitslice_2/dffpos_0/a_30_n84# 2.081040fF
C115 prjMagic_0/bitslice_4/mux21_0/nand_2/B Vdd 5.855850fF
C116 Vdd prjMagic_0/bitslice_0/fa_0/A 8.476560fF
C117 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# 2.571480fF
C118 Gnd prjMagic_1/inverter_0/Y 2.544000fF
C119 prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# prjMagic_0/bitslice_7/dffpos_0/a_30_n84# 2.081040fF
C120 prjMagic_0/bitslice_6/fa_0/A Vdd 8.476560fF
C121 Vdd prjMagic_1/bitslice_1/fa_0/A 8.476560fF
C122 prjMagic_0/bitslice_1/mux21_0/nand_2/B Vdd 5.855850fF
C123 Gnd prjMagic_0/bitslice_0/sum 5.857320fF
C124 Vdd prjMagic_1/bitslice_1/mux21_0/nand_1/B 2.097720fF
C125 Vdd prjMagic_1/inverter_0/Y 11.673119fF
C126 prjMagic_0/bitslice_6/mux21_0/nand_1/B Vdd 2.097720fF
C127 prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C128 prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# prjMagic_1/inverter_0/Y 2.571480fF
C129 prjMagic_0/bitslice_7/xor2_0/a_17_6# Vdd 2.059560fF
C130 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# 3.159600fF
C131 prjMagic_0/bitslice_4/Cin prjMagic_0/bitslice_4/fa_0/a_70_6# 2.233260fF
C132 prjMagic_0/bitslice_1/xor2_0/a_28_44# Vdd 2.119800fF
C133 Vdd prjMagic_0/bitslice_5/xor2_0/a_28_44# 2.119800fF
C134 prjMagic_1/bitslice_3/xor2_0/a_28_44# Vdd 2.119800fF
C135 Vdd prjMagic_1/bitslice_6/mux21_0/nand_1/B 2.097720fF
C136 prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# prjMagic_1/inverter_0/Y 3.159600fF
C137 Vdd prjMagic_1/bitslice_4/fa_0/a_25_6# 3.134880fF
C138 Gnd Vdd 11.245681fF
C139 Vdd prjMagic_1/bitslice_4/fa_0/A 8.476560fF
C140 subtract prjMagic_1/bitslice_0/fa_0/a_70_6# 2.233260fF
C141 Gnd prjMagic_0/inverter_0/Y 2.544000fF
C142 Vdd prjMagic_1/bitslice_0/xor2_0/a_28_44# 2.119800fF
C143 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# 2.571480fF
C144 Vdd prjMagic_1/bitslice_0/xor2_0/a_17_6# 2.059560fF
C145 Vdd prjMagic_0/inverter_0/Y 11.673119fF
C146 prjMagic_0/bitslice_0/xor2_0/a_17_6# Vdd 2.059560fF
C147 prjMagic_0/inverter_0/Y prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# 2.571480fF
C148 prjMagic_1/bitslice_6/fa_0/A Vdd 8.476560fF
C149 prjMagic_0/bitslice_1/fa_0/a_70_6# prjMagic_0/bitslice_1/Cin 2.233260fF
C150 prjMagic_1/inverter_0/Y prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# 3.159600fF
C151 prjMagic_1/bitslice_5/mux21_0/nand_1/B Vdd 2.097720fF
C152 prjMagic_0/bitslice_4/xor2_0/a_17_6# Vdd 2.059560fF
C153 prjMagic_0/bitslice_2/xor2_0/a_17_6# Vdd 2.059560fF
C154 Vdd prjMagic_0/bitslice_4/fa_0/a_25_6# 3.134880fF
C155 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# 2.081040fF
C156 prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C157 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# 2.081040fF
C158 Vdd prjMagic_0/bitslice_0/mux21_0/nand_2/B 5.855850fF
C159 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# 2.081040fF
C160 Vdd prjMagic_0/bitslice_6/mux21_0/nand_2/B 5.855850fF
C161 prjMagic_1/bitslice_3/fa_0/A Vdd 8.476560fF
C162 prjMagic_1/bitslice_2/Cin prjMagic_1/bitslice_2/fa_0/a_70_6# 2.233260fF
C163 prjMagic_1/bitslice_5/fa_0/A Vdd 8.476560fF
C164 Gnd prjMagic_0/gundy 5.857320fF
C165 prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# prjMagic_0/bitslice_4/dffpos_0/a_30_n84# 2.081040fF
C166 Vdd prjMagic_1/bitslice_6/fa_0/a_25_6# 3.134880fF
C167 prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# prjMagic_1/inverter_0/Y 2.571480fF
C168 prjMagic_1/bitslice_3/mux21_0/nand_2/B Vdd 5.855850fF
C169 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# 2.081040fF
C170 prjMagic_0/bitslice_6/xor2_0/a_28_44# Vdd 2.119800fF
C171 prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# prjMagic_0/bitslice_2/dffpos_0/a_30_n84# 2.081040fF
C172 prjMagic_0/bitslice_6/Cin prjMagic_0/bitslice_6/fa_0/a_70_6# 2.233260fF
C173 prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# prjMagic_1/inverter_0/Y 2.571480fF
C174 Vdd prjMagic_0/bitslice_5/fa_0/A 8.476560fF
C175 Gnd prjMagic_1/bitslice_0/sum 5.857320fF
C176 prjMagic_0/bitslice_3/mux21_0/nand_1/B Vdd 2.097720fF
C177 prjMagic_1/gundy Gnd 5.857320fF
C178 prjMagic_0/bitslice_3/xor2_0/a_17_6# Vdd 2.059560fF
C179 prjMagic_0/bitslice_3/xor2_0/a_28_44# Vdd 2.119800fF
C180 prjMagic_0/bitslice_2/fa_0/a_70_6# prjMagic_0/bitslice_2/Cin 2.233260fF
C181 prjMagic_0/bitslice_3/mux21_0/nand_2/B Vdd 5.855850fF
C182 Vdd prjMagic_1/bitslice_2/fa_0/A 8.476560fF
C183 Vdd prjMagic_0/bitslice_0/mux21_0/nand_1/B 2.097720fF
C184 prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# prjMagic_0/inverter_0/Y 3.159600fF
C185 Vdd prjMagic_1/bitslice_2/mux21_0/nand_1/B 2.097720fF
C186 prjMagic_1/bitslice_5/xor2_0/a_28_44# Vdd 2.119800fF
C187 Vdd prjMagic_0/bitslice_1/fa_0/A 8.476560fF
C188 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# 2.081040fF
C189 prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# prjMagic_0/inverter_0/Y 2.571480fF
C190 inverter_1/Y gnd! 3.044160fF
C191 inverter_0/Y gnd! 136.491969fF
C192 inverter_2/Y gnd! 10.893883fF
C193 prjMagic_1/bitslice_0/Y gnd! 18.021119fF
C194 prjMagic_1/bitslice_0/xor2_0/a_17_6# gnd! 4.666380fF
C195 prjMagic_1/bitslice_0/xor2_0/a_28_44# gnd! 4.104630fF
C196 prjMagic_1/bitslice_0/fa_0/A gnd! 7.977440fF
C197 prjMagic_1/bitslice_0/mux21_0/nand_1/B gnd! 3.001320fF
C198 prjMagic_1/bitslice_0/mux21_0/nand_1/A gnd! 6.037200fF
C199 prjMagic_1/bitslice_0/mux21_0/nand_2/B gnd! 2.382240fF
C200 prjMagic_1/bitslice_0/sum gnd! 8.877960fF
C201 prjMagic_1/bitslice_0/fa_0/a_70_6# gnd! 3.242790fF
C202 prjMagic_1/bitslice_0/fa_0/a_25_6# gnd! 9.314280fF
C203 prjMagic_1/bitslice_0/dffpos_0/a_30_n84# gnd! 4.448070fF
C204 prjMagic_1/bitslice_0/dffpos_0/a_n14_n84# gnd! 4.801770fF
C205 prjMagic_1/bitslice_0/dffpos_0/a_n2_n86# gnd! 5.164560fF
C206 prjMagic_1/bitslice_0/dffpos_0/a_n34_n84# gnd! 8.655120fF
C207 prjMagic_1/bitslice_1/Y gnd! 18.021119fF
C208 prjMagic_1/bitslice_1/xor2_0/a_17_6# gnd! 4.666380fF
C209 prjMagic_1/bitslice_1/xor2_0/a_28_44# gnd! 4.104630fF
C210 prjMagic_1/bitslice_1/fa_0/A gnd! 7.977440fF
C211 prjMagic_1/bitslice_1/mux21_0/nand_1/B gnd! 3.001320fF
C212 prjMagic_1/bitslice_1/mux21_0/nand_1/A gnd! 6.037200fF
C213 prjMagic_1/bitslice_1/mux21_0/nand_2/B gnd! 2.382240fF
C214 prjMagic_1/bitslice_1/sum gnd! 8.877960fF
C215 prjMagic_1/bitslice_1/fa_0/a_70_6# gnd! 3.242790fF
C216 prjMagic_1/bitslice_1/fa_0/a_25_6# gnd! 9.314280fF
C217 prjMagic_1/bitslice_1/dffpos_0/a_30_n84# gnd! 4.448070fF
C218 prjMagic_1/bitslice_1/dffpos_0/a_n14_n84# gnd! 4.801770fF
C219 prjMagic_1/bitslice_1/dffpos_0/a_n2_n86# gnd! 5.164560fF
C220 prjMagic_1/bitslice_1/dffpos_0/a_n34_n84# gnd! 8.655120fF
C221 prjMagic_1/bitslice_2/Y gnd! 18.021119fF
C222 prjMagic_1/bitslice_2/xor2_0/a_17_6# gnd! 4.666380fF
C223 prjMagic_1/bitslice_2/xor2_0/a_28_44# gnd! 4.104630fF
C224 prjMagic_1/bitslice_2/fa_0/A gnd! 7.977440fF
C225 prjMagic_1/bitslice_2/mux21_0/nand_1/B gnd! 3.001320fF
C226 prjMagic_1/bitslice_2/mux21_0/nand_1/A gnd! 6.037200fF
C227 prjMagic_1/bitslice_2/mux21_0/nand_2/B gnd! 2.382240fF
C228 prjMagic_1/bitslice_2/sum gnd! 8.877960fF
C229 prjMagic_1/bitslice_2/fa_0/a_70_6# gnd! 3.242790fF
C230 prjMagic_1/bitslice_2/fa_0/a_25_6# gnd! 9.314280fF
C231 prjMagic_1/bitslice_2/dffpos_0/a_30_n84# gnd! 4.448070fF
C232 prjMagic_1/bitslice_2/dffpos_0/a_n14_n84# gnd! 4.801770fF
C233 prjMagic_1/bitslice_2/dffpos_0/a_n2_n86# gnd! 5.164560fF
C234 prjMagic_1/bitslice_2/dffpos_0/a_n34_n84# gnd! 8.655120fF
C235 prjMagic_1/bitslice_3/Y gnd! 18.021119fF
C236 prjMagic_1/bitslice_3/xor2_0/a_17_6# gnd! 4.666380fF
C237 prjMagic_1/bitslice_3/xor2_0/a_28_44# gnd! 4.104630fF
C238 prjMagic_1/bitslice_3/fa_0/A gnd! 7.977440fF
C239 prjMagic_1/bitslice_3/mux21_0/nand_1/B gnd! 3.001320fF
C240 prjMagic_1/bitslice_3/mux21_0/nand_1/A gnd! 6.037200fF
C241 prjMagic_1/bitslice_3/mux21_0/nand_2/B gnd! 2.382240fF
C242 prjMagic_1/bitslice_3/sum gnd! 8.877960fF
C243 prjMagic_1/bitslice_3/fa_0/a_70_6# gnd! 3.242790fF
C244 prjMagic_1/bitslice_3/fa_0/a_25_6# gnd! 9.314280fF
C245 prjMagic_1/bitslice_3/dffpos_0/a_30_n84# gnd! 4.448070fF
C246 prjMagic_1/bitslice_3/dffpos_0/a_n14_n84# gnd! 4.801770fF
C247 prjMagic_1/bitslice_3/dffpos_0/a_n2_n86# gnd! 5.164560fF
C248 prjMagic_1/bitslice_3/dffpos_0/a_n34_n84# gnd! 8.655120fF
C249 prjMagic_1/bitslice_4/Y gnd! 18.021119fF
C250 prjMagic_1/bitslice_4/xor2_0/a_17_6# gnd! 4.666380fF
C251 prjMagic_1/bitslice_4/xor2_0/a_28_44# gnd! 4.104630fF
C252 prjMagic_1/bitslice_4/fa_0/A gnd! 7.977440fF
C253 prjMagic_1/bitslice_4/mux21_0/nand_1/B gnd! 3.001320fF
C254 prjMagic_1/bitslice_4/mux21_0/nand_1/A gnd! 6.037200fF
C255 prjMagic_1/bitslice_4/mux21_0/nand_2/B gnd! 2.382240fF
C256 prjMagic_1/bitslice_4/sum gnd! 8.877960fF
C257 prjMagic_1/bitslice_4/fa_0/a_70_6# gnd! 3.242790fF
C258 prjMagic_1/bitslice_4/fa_0/a_25_6# gnd! 9.314280fF
C259 prjMagic_1/bitslice_4/dffpos_0/a_30_n84# gnd! 4.448070fF
C260 prjMagic_1/bitslice_4/dffpos_0/a_n14_n84# gnd! 4.801770fF
C261 prjMagic_1/bitslice_4/dffpos_0/a_n2_n86# gnd! 5.164560fF
C262 prjMagic_1/bitslice_4/dffpos_0/a_n34_n84# gnd! 8.655120fF
C263 prjMagic_1/bitslice_5/Y gnd! 18.021119fF
C264 prjMagic_1/bitslice_5/xor2_0/a_17_6# gnd! 4.666380fF
C265 prjMagic_1/bitslice_5/xor2_0/a_28_44# gnd! 4.104630fF
C266 prjMagic_1/bitslice_5/fa_0/A gnd! 7.977440fF
C267 prjMagic_1/bitslice_5/mux21_0/nand_1/B gnd! 3.001320fF
C268 prjMagic_1/bitslice_5/mux21_0/nand_1/A gnd! 6.037200fF
C269 prjMagic_1/bitslice_5/mux21_0/nand_2/B gnd! 2.382240fF
C270 prjMagic_1/bitslice_5/sum gnd! 8.877960fF
C271 prjMagic_1/bitslice_5/fa_0/a_70_6# gnd! 3.242790fF
C272 prjMagic_1/bitslice_5/fa_0/a_25_6# gnd! 9.314280fF
C273 prjMagic_1/bitslice_5/dffpos_0/a_30_n84# gnd! 4.448070fF
C274 prjMagic_1/bitslice_5/dffpos_0/a_n14_n84# gnd! 4.801770fF
C275 prjMagic_1/bitslice_5/dffpos_0/a_n2_n86# gnd! 5.164560fF
C276 prjMagic_1/bitslice_5/dffpos_0/a_n34_n84# gnd! 8.655120fF
C277 prjMagic_1/bitslice_6/Y gnd! 18.021119fF
C278 prjMagic_1/bitslice_6/xor2_0/a_17_6# gnd! 4.666380fF
C279 prjMagic_1/bitslice_6/xor2_0/a_28_44# gnd! 4.104630fF
C280 prjMagic_1/bitslice_6/fa_0/A gnd! 7.977440fF
C281 prjMagic_1/bitslice_6/mux21_0/nand_1/B gnd! 3.001320fF
C282 prjMagic_1/bitslice_6/mux21_0/nand_1/A gnd! 6.037200fF
C283 prjMagic_1/bitslice_6/mux21_0/nand_2/B gnd! 2.382240fF
C284 prjMagic_1/bitslice_6/sum gnd! 8.877960fF
C285 prjMagic_1/bitslice_6/fa_0/a_70_6# gnd! 3.242790fF
C286 prjMagic_1/bitslice_6/fa_0/a_25_6# gnd! 9.314280fF
C287 prjMagic_1/bitslice_6/dffpos_0/a_30_n84# gnd! 4.448070fF
C288 prjMagic_1/bitslice_6/dffpos_0/a_n14_n84# gnd! 4.801770fF
C289 prjMagic_1/bitslice_6/dffpos_0/a_n2_n86# gnd! 5.164560fF
C290 prjMagic_1/bitslice_6/dffpos_0/a_n34_n84# gnd! 8.655120fF
C291 prjMagic_1/bitslice_7/Y gnd! 18.021119fF
C292 subtract gnd! 108.603203fF
C293 prjMagic_1/bitslice_7/xor2_0/a_17_6# gnd! 4.666380fF
C294 prjMagic_1/bitslice_7/xor2_0/a_28_44# gnd! 4.104630fF
C295 loadB gnd! 325.719000fF
C296 prjMagic_1/bitslice_7/fa_0/A gnd! 7.977440fF
C297 prjMagic_1/bitslice_7/mux21_0/nand_1/B gnd! 3.001320fF
C298 prjMagic_1/bitslice_7/mux21_0/nand_1/A gnd! 6.037200fF
C299 prjMagic_1/bitslice_7/mux21_0/nand_2/B gnd! 2.382240fF
C300 prjMagic_1/bitslice_7/fa_0/a_70_6# gnd! 3.242790fF
C301 prjMagic_1/bitslice_7/fa_0/a_25_6# gnd! 9.314280fF
C302 prjMagic_1/bitslice_7/dffpos_0/a_30_n84# gnd! 4.448070fF
C303 prjMagic_1/bitslice_7/dffpos_0/a_n14_n84# gnd! 4.801770fF
C304 prjMagic_1/bitslice_7/dffpos_0/a_n2_n86# gnd! 5.164560fF
C305 prjMagic_1/bitslice_7/dffpos_0/a_n34_n84# gnd! 8.655120fF
C306 prjMagic_1/inverter_0/Y gnd! 153.770641fF
C307 prjMagic_1/inverter_0/A gnd! 8.251561fF
C308 prjMagic_0/bitslice_0/Y gnd! 18.021119fF
C309 prjMagic_0/bitslice_0/xor2_0/a_17_6# gnd! 4.666380fF
C310 prjMagic_0/bitslice_0/xor2_0/a_28_44# gnd! 4.104630fF
C311 prjMagic_0/bitslice_0/fa_0/A gnd! 7.718120fF
C312 prjMagic_0/bitslice_0/mux21_0/nand_1/B gnd! 3.001320fF
C313 prjMagic_0/bitslice_0/mux21_0/nand_1/A gnd! 6.037200fF
C314 prjMagic_0/bitslice_0/mux21_0/nand_2/B gnd! 2.145240fF
C315 Out0 gnd! 87.716727fF
C316 prjMagic_0/bitslice_0/sum gnd! 8.877960fF
C317 prjMagic_0/bitslice_0/fa_0/a_70_6# gnd! 3.242790fF
C318 prjMagic_0/bitslice_0/fa_0/a_25_6# gnd! 9.314280fF
C319 prjMagic_0/bitslice_0/dffpos_0/a_30_n84# gnd! 3.784590fF
C320 prjMagic_0/bitslice_0/dffpos_0/a_n14_n84# gnd! 4.801770fF
C321 prjMagic_0/bitslice_0/dffpos_0/a_n2_n86# gnd! 5.164560fF
C322 prjMagic_0/bitslice_0/dffpos_0/a_n34_n84# gnd! 8.655120fF
C323 prjMagic_0/bitslice_1/Y gnd! 18.021119fF
C324 prjMagic_0/bitslice_1/xor2_0/a_17_6# gnd! 4.666380fF
C325 prjMagic_0/bitslice_1/xor2_0/a_28_44# gnd! 4.104630fF
C326 prjMagic_0/bitslice_1/fa_0/A gnd! 7.718120fF
C327 prjMagic_0/bitslice_1/mux21_0/nand_1/B gnd! 3.001320fF
C328 prjMagic_0/bitslice_1/mux21_0/nand_1/A gnd! 6.037200fF
C329 prjMagic_0/bitslice_1/mux21_0/nand_2/B gnd! 2.145240fF
C330 Out1 gnd! 76.024156fF
C331 prjMagic_0/bitslice_1/sum gnd! 8.877960fF
C332 prjMagic_0/bitslice_1/fa_0/a_70_6# gnd! 3.242790fF
C333 prjMagic_0/bitslice_1/fa_0/a_25_6# gnd! 9.314280fF
C334 prjMagic_0/bitslice_1/dffpos_0/a_30_n84# gnd! 3.784590fF
C335 prjMagic_0/bitslice_1/dffpos_0/a_n14_n84# gnd! 4.801770fF
C336 prjMagic_0/bitslice_1/dffpos_0/a_n2_n86# gnd! 5.164560fF
C337 prjMagic_0/bitslice_1/dffpos_0/a_n34_n84# gnd! 8.655120fF
C338 prjMagic_0/bitslice_2/Y gnd! 18.021119fF
C339 prjMagic_0/bitslice_2/xor2_0/a_17_6# gnd! 4.666380fF
C340 prjMagic_0/bitslice_2/xor2_0/a_28_44# gnd! 4.104630fF
C341 prjMagic_0/bitslice_2/fa_0/A gnd! 7.718120fF
C342 prjMagic_0/bitslice_2/mux21_0/nand_1/B gnd! 3.001320fF
C343 prjMagic_0/bitslice_2/mux21_0/nand_1/A gnd! 6.037200fF
C344 prjMagic_0/bitslice_2/mux21_0/nand_2/B gnd! 2.145240fF
C345 Out2 gnd! 67.966133fF
C346 prjMagic_0/bitslice_2/sum gnd! 8.877960fF
C347 prjMagic_0/bitslice_2/fa_0/a_70_6# gnd! 3.242790fF
C348 prjMagic_0/bitslice_2/fa_0/a_25_6# gnd! 9.314280fF
C349 prjMagic_0/bitslice_2/dffpos_0/a_30_n84# gnd! 3.784590fF
C350 prjMagic_0/bitslice_2/dffpos_0/a_n14_n84# gnd! 4.801770fF
C351 prjMagic_0/bitslice_2/dffpos_0/a_n2_n86# gnd! 5.164560fF
C352 prjMagic_0/bitslice_2/dffpos_0/a_n34_n84# gnd! 8.655120fF
C353 prjMagic_0/bitslice_3/Y gnd! 18.021119fF
C354 prjMagic_0/bitslice_3/xor2_0/a_17_6# gnd! 4.666380fF
C355 prjMagic_0/bitslice_3/xor2_0/a_28_44# gnd! 4.104630fF
C356 prjMagic_0/bitslice_3/fa_0/A gnd! 7.718120fF
C357 prjMagic_0/bitslice_3/mux21_0/nand_1/B gnd! 3.001320fF
C358 prjMagic_0/bitslice_3/mux21_0/nand_1/A gnd! 6.037200fF
C359 prjMagic_0/bitslice_3/mux21_0/nand_2/B gnd! 2.145240fF
C360 Out3 gnd! 58.928160fF
C361 prjMagic_0/bitslice_3/sum gnd! 8.877960fF
C362 prjMagic_0/bitslice_3/fa_0/a_70_6# gnd! 3.242790fF
C363 prjMagic_0/bitslice_3/fa_0/a_25_6# gnd! 9.314280fF
C364 prjMagic_0/bitslice_3/dffpos_0/a_30_n84# gnd! 3.784590fF
C365 prjMagic_0/bitslice_3/dffpos_0/a_n14_n84# gnd! 4.801770fF
C366 prjMagic_0/bitslice_3/dffpos_0/a_n2_n86# gnd! 5.164560fF
C367 prjMagic_0/bitslice_3/dffpos_0/a_n34_n84# gnd! 8.655120fF
C368 prjMagic_0/bitslice_4/Y gnd! 18.021119fF
C369 prjMagic_0/bitslice_4/xor2_0/a_17_6# gnd! 4.666380fF
C370 prjMagic_0/bitslice_4/xor2_0/a_28_44# gnd! 4.104630fF
C371 prjMagic_0/bitslice_4/fa_0/A gnd! 7.718120fF
C372 prjMagic_0/bitslice_4/mux21_0/nand_1/B gnd! 3.001320fF
C373 prjMagic_0/bitslice_4/mux21_0/nand_1/A gnd! 6.037200fF
C374 prjMagic_0/bitslice_4/mux21_0/nand_2/B gnd! 2.145240fF
C375 Out4 gnd! 50.394660fF
C376 prjMagic_0/bitslice_4/sum gnd! 8.877960fF
C377 prjMagic_0/bitslice_4/fa_0/a_70_6# gnd! 3.242790fF
C378 prjMagic_0/bitslice_4/fa_0/a_25_6# gnd! 9.314280fF
C379 prjMagic_0/bitslice_4/dffpos_0/a_30_n84# gnd! 3.784590fF
C380 prjMagic_0/bitslice_4/dffpos_0/a_n14_n84# gnd! 4.801770fF
C381 prjMagic_0/bitslice_4/dffpos_0/a_n2_n86# gnd! 5.164560fF
C382 prjMagic_0/bitslice_4/dffpos_0/a_n34_n84# gnd! 8.655120fF
C383 prjMagic_0/bitslice_5/Y gnd! 18.021119fF
C384 prjMagic_0/bitslice_5/xor2_0/a_17_6# gnd! 4.666380fF
C385 prjMagic_0/bitslice_5/xor2_0/a_28_44# gnd! 4.104630fF
C386 prjMagic_0/bitslice_5/fa_0/A gnd! 7.718120fF
C387 prjMagic_0/bitslice_5/mux21_0/nand_1/B gnd! 3.001320fF
C388 prjMagic_0/bitslice_5/mux21_0/nand_1/A gnd! 6.037200fF
C389 prjMagic_0/bitslice_5/mux21_0/nand_2/B gnd! 2.145240fF
C390 Out5 gnd! 41.783863fF
C391 prjMagic_0/bitslice_5/sum gnd! 8.877960fF
C392 prjMagic_0/bitslice_5/fa_0/a_70_6# gnd! 3.242790fF
C393 prjMagic_0/bitslice_5/fa_0/a_25_6# gnd! 9.314280fF
C394 prjMagic_0/bitslice_5/dffpos_0/a_30_n84# gnd! 3.784590fF
C395 prjMagic_0/bitslice_5/dffpos_0/a_n14_n84# gnd! 4.801770fF
C396 prjMagic_0/bitslice_5/dffpos_0/a_n2_n86# gnd! 5.164560fF
C397 prjMagic_0/bitslice_5/dffpos_0/a_n34_n84# gnd! 8.655120fF
C398 prjMagic_0/bitslice_6/Y gnd! 18.021119fF
C399 prjMagic_0/bitslice_6/xor2_0/a_17_6# gnd! 4.666380fF
C400 prjMagic_0/bitslice_6/xor2_0/a_28_44# gnd! 4.104630fF
C401 prjMagic_0/bitslice_6/fa_0/A gnd! 7.718120fF
C402 prjMagic_0/bitslice_6/mux21_0/nand_1/B gnd! 3.001320fF
C403 prjMagic_0/bitslice_6/mux21_0/nand_1/A gnd! 6.037200fF
C404 prjMagic_0/bitslice_6/mux21_0/nand_2/B gnd! 2.145240fF
C405 Out6 gnd! 33.352602fF
C406 prjMagic_0/bitslice_6/sum gnd! 8.877960fF
C407 prjMagic_0/bitslice_6/fa_0/a_70_6# gnd! 3.242790fF
C408 prjMagic_0/bitslice_6/fa_0/a_25_6# gnd! 9.314280fF
C409 prjMagic_0/bitslice_6/dffpos_0/a_30_n84# gnd! 3.784590fF
C410 prjMagic_0/bitslice_6/dffpos_0/a_n14_n84# gnd! 4.801770fF
C411 prjMagic_0/bitslice_6/dffpos_0/a_n2_n86# gnd! 5.164560fF
C412 prjMagic_0/bitslice_6/dffpos_0/a_n34_n84# gnd! 8.655120fF
C413 Gnd gnd! 2527.982750fF
C414 prjMagic_0/bitslice_7/Y gnd! 18.021119fF
C415 prjMagic_0/bitslice_7/xor2_0/a_17_6# gnd! 4.666380fF
C416 prjMagic_0/bitslice_7/xor2_0/a_28_44# gnd! 4.104630fF
C417 prjMagic_0/bitslice_7/fa_0/A gnd! 7.718120fF
C418 prjMagic_0/bitslice_7/mux21_0/nand_1/B gnd! 3.001320fF
C419 prjMagic_0/bitslice_7/mux21_0/nand_1/A gnd! 6.037200fF
C420 prjMagic_0/bitslice_7/mux21_0/nand_2/B gnd! 2.145240fF
C421 Out7 gnd! 24.748672fF
C422 prjMagic_0/bitslice_7/fa_0/a_70_6# gnd! 3.242790fF
C423 prjMagic_0/bitslice_7/fa_0/a_25_6# gnd! 9.314280fF
C424 prjMagic_0/bitslice_7/dffpos_0/a_30_n84# gnd! 3.784590fF
C425 prjMagic_0/bitslice_7/dffpos_0/a_n14_n84# gnd! 4.801770fF
C426 prjMagic_0/bitslice_7/dffpos_0/a_n2_n86# gnd! 5.164560fF
C427 prjMagic_0/bitslice_7/dffpos_0/a_n34_n84# gnd! 8.655120fF
C428 prjMagic_0/inverter_0/Y gnd! 148.452219fF
C429 prjMagic_0/inverter_0/A gnd! 8.251561fF


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
