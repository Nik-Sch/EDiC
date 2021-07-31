EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 18 19
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R57
U 1 1 608AA627
P 2800 1250
F 0 "R57" H 2870 1296 50  0000 L CNN
F 1 "1k" H 2870 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2730 1250 50  0001 C CNN
F 3 "~" H 2800 1250 50  0001 C CNN
	1    2800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1500 2800 1400
Connection ~ 2800 1500
Wire Wire Line
	2250 1700 2300 1700
Wire Wire Line
	2300 2150 1150 2150
Wire Wire Line
	1150 2150 1150 1300
Wire Wire Line
	1150 1300 1250 1300
Wire Wire Line
	800  1500 1250 1500
$Comp
L Device:C_Small C1
U 1 1 608B0200
P 800 1600
F 0 "C1" H 892 1646 50  0000 L CNN
F 1 "10nF" H 892 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 800 1600 50  0001 C CNN
F 3 "~" H 800 1600 50  0001 C CNN
	1    800  1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 608B1958
P 2500 2400
F 0 "C2" H 2591 2446 50  0000 L CNN
F 1 "1uF" H 2591 2355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2500 2400 50  0001 C CNN
F 3 "~" H 2500 2400 50  0001 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1600 2800 1500
Wire Wire Line
	2250 1500 2800 1500
Connection ~ 2300 2150
$Comp
L Device:R_POT RV1
U 1 1 601221B7
P 2500 1950
F 0 "RV1" H 2430 1996 50  0000 R CNN
F 1 "1M" H 2430 1905 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_PTV09A-1_Single_Vertical" H 2500 1950 50  0001 C CNN
F 3 "~" H 2500 1950 50  0001 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2100 2500 2150
Wire Wire Line
	2300 2150 2500 2150
Wire Wire Line
	2300 1700 2300 2150
Connection ~ 2500 2150
Wire Wire Line
	2500 2150 2500 2300
$Comp
L Device:R R52
U 1 1 601289F2
P 2800 1750
F 0 "R52" H 2870 1796 50  0000 L CNN
F 1 "1k" H 2870 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2730 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1950 2800 1950
Wire Wire Line
	2800 1950 2800 1900
NoConn ~ 2500 1800
$Comp
L Timer:NA555P U50
U 1 1 6012E986
P 5100 1500
F 0 "U50" H 5100 2081 50  0000 C CNN
F 1 "NA555P" H 5100 1990 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5750 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 5950 1100 50  0001 C CNN
F 4 "X" H 5100 1500 50  0001 C CNN "Spice_Primitive"
F 5 "LM555" H 5100 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 5100 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/niklas/dev/KiCad-Spice-Library/Models/uncategorized/Bordodynovs Electronics Lib/sub/timers.lib" H 5100 1500 50  0001 C CNN "Spice_Lib_File"
	1    5100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0199
U 1 1 6012E98C
P 5100 1100
F 0 "#PWR0199" H 5100 950 50  0001 C CNN
F 1 "+5V" H 5115 1273 50  0000 C CNN
F 2 "" H 5100 1100 50  0001 C CNN
F 3 "" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0200
U 1 1 6012E992
P 5100 1900
F 0 "#PWR0200" H 5100 1650 50  0001 C CNN
F 1 "GND" H 5105 1727 50  0000 C CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0198
U 1 1 6012E998
P 4600 1700
F 0 "#PWR0198" H 4600 1550 50  0001 C CNN
F 1 "+5V" H 4615 1873 50  0000 C CNN
F 2 "" H 4600 1700 50  0001 C CNN
F 3 "" H 4600 1700 50  0001 C CNN
	1    4600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0203
U 1 1 6012E99E
P 6000 1100
F 0 "#PWR0203" H 6000 950 50  0001 C CNN
F 1 "+5V" H 6015 1273 50  0000 C CNN
F 2 "" H 6000 1100 50  0001 C CNN
F 3 "" H 6000 1100 50  0001 C CNN
	1    6000 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R56
U 1 1 6012E9A4
P 6000 1250
F 0 "R56" H 6070 1296 50  0000 L CNN
F 1 "1M" H 6070 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5930 1250 50  0001 C CNN
F 3 "~" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1500 6000 1400
Wire Wire Line
	5600 1700 5750 1700
Wire Wire Line
	4150 1500 4600 1500
$Comp
L power:GND #PWR0195
U 1 1 6012E9B1
P 4150 1700
F 0 "#PWR0195" H 4150 1450 50  0001 C CNN
F 1 "GND" H 4155 1527 50  0000 C CNN
F 2 "" H 4150 1700 50  0001 C CNN
F 3 "" H 4150 1700 50  0001 C CNN
	1    4150 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0201
U 1 1 6012E9B7
P 5750 1900
F 0 "#PWR0201" H 5750 1650 50  0001 C CNN
F 1 "GND" H 5755 1727 50  0000 C CNN
F 2 "" H 5750 1900 50  0001 C CNN
F 3 "" H 5750 1900 50  0001 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6012E9BD
P 4150 1600
F 0 "C3" H 4242 1646 50  0000 L CNN
F 1 "10nF" H 4242 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 4150 1600 50  0001 C CNN
F 3 "~" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1500 5750 1500
Text Label 2400 1300 0    50   ~ 0
clk0
Wire Wire Line
	2250 1300 2400 1300
Text Label 5700 1300 0    50   ~ 0
clk1
Wire Wire Line
	5600 1300 5700 1300
Wire Wire Line
	5750 1700 5750 1500
Connection ~ 5750 1500
Wire Wire Line
	5750 1500 6000 1500
$Comp
L Switch:SW_Push SW1
U 1 1 60135EA0
P 4100 1300
F 0 "SW1" H 4100 1585 50  0000 C CNN
F 1 "clk_switch" H 4100 1494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4100 1500 50  0001 C CNN
F 3 "~" H 4100 1500 50  0001 C CNN
	1    4100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1300 4450 1300
$Comp
L Device:R R53
U 1 1 6013A6DE
P 4450 1150
F 0 "R53" H 4520 1196 50  0000 L CNN
F 1 "1k" H 4520 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 1150 50  0001 C CNN
F 3 "~" H 4450 1150 50  0001 C CNN
	1    4450 1150
	1    0    0    -1  
$EndComp
Connection ~ 4450 1300
$Comp
L power:+5V #PWR0196
U 1 1 6013B6F9
P 4450 1000
F 0 "#PWR0196" H 4450 850 50  0001 C CNN
F 1 "+5V" H 4465 1173 50  0000 C CNN
F 2 "" H 4450 1000 50  0001 C CNN
F 3 "" H 4450 1000 50  0001 C CNN
	1    4450 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0194
U 1 1 6013BB60
P 3900 1300
F 0 "#PWR0194" H 3900 1050 50  0001 C CNN
F 1 "GND" H 3905 1127 50  0000 C CNN
F 2 "" H 3900 1300 50  0001 C CNN
F 3 "" H 3900 1300 50  0001 C CNN
	1    3900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 6013C9B1
P 2500 2500
F 0 "#PWR0208" H 2500 2250 50  0001 C CNN
F 1 "GND" H 2505 2327 50  0000 C CNN
F 2 "" H 2500 2500 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 6013CEB4
P 800 1700
F 0 "#PWR0193" H 800 1450 50  0001 C CNN
F 1 "GND" H 805 1527 50  0000 C CNN
F 2 "" H 800 1700 50  0001 C CNN
F 3 "" H 800 1700 50  0001 C CNN
	1    800  1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0206
U 1 1 6013DA37
P 1750 1900
F 0 "#PWR0206" H 1750 1650 50  0001 C CNN
F 1 "GND" H 1755 1727 50  0000 C CNN
F 2 "" H 1750 1900 50  0001 C CNN
F 3 "" H 1750 1900 50  0001 C CNN
	1    1750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0209
U 1 1 6013DE1A
P 2800 1100
F 0 "#PWR0209" H 2800 950 50  0001 C CNN
F 1 "+5V" H 2815 1273 50  0000 C CNN
F 2 "" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0205
U 1 1 6013E4C2
P 1750 1100
F 0 "#PWR0205" H 1750 950 50  0001 C CNN
F 1 "+5V" H 1765 1273 50  0000 C CNN
F 2 "" H 1750 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0204
U 1 1 6013E93C
P 1250 1700
F 0 "#PWR0204" H 1250 1550 50  0001 C CNN
F 1 "+5V" H 1265 1873 50  0000 C CNN
F 2 "" H 1250 1700 50  0001 C CNN
F 3 "" H 1250 1700 50  0001 C CNN
	1    1250 1700
	1    0    0    -1  
$EndComp
$Comp
L Timer:NA555P U51
U 1 1 608A8DEC
P 1750 1500
F 0 "U51" H 1750 2081 50  0000 C CNN
F 1 "NA555P" H 1750 1990 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2400 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 2600 1100 50  0001 C CNN
F 4 "X" H 1750 1500 50  0001 C CNN "Spice_Primitive"
F 5 "LM555" H 1750 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 1750 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/niklas/dev/KiCad-Spice-Library/Models/uncategorized/Bordodynovs Electronics Lib/sub/timers.lib" H 1750 1500 50  0001 C CNN "Spice_Lib_File"
	1    1750 1500
	1    0    0    -1  
$EndComp
Text Notes 1850 650  2    50   ~ 0
clock gen
Text Notes 5650 700  2    50   ~ 0
manual clock button (debounce)
Wire Wire Line
	4450 1300 4600 1300
$Comp
L Device:CP1_Small C7
U 1 1 60DB0132
P 5750 1800
F 0 "C7" H 5841 1846 50  0000 L CNN
F 1 "1uF" H 5841 1755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5750 1800 50  0001 C CNN
F 3 "~" H 5750 1800 50  0001 C CNN
	1    5750 1800
	1    0    0    -1  
$EndComp
Connection ~ 5750 1700
$Comp
L Timer:NA555P U71
U 1 1 60DB3578
P 8500 1500
F 0 "U71" H 8500 2081 50  0000 C CNN
F 1 "NA555P" H 8500 1990 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 9150 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 9350 1100 50  0001 C CNN
F 4 "X" H 8500 1500 50  0001 C CNN "Spice_Primitive"
F 5 "LM555" H 8500 1500 50  0001 C CNN "Spice_Model"
F 6 "Y" H 8500 1500 50  0001 C CNN "Spice_Netlist_Enabled"
F 7 "/home/niklas/dev/KiCad-Spice-Library/Models/uncategorized/Bordodynovs Electronics Lib/sub/timers.lib" H 8500 1500 50  0001 C CNN "Spice_Lib_File"
	1    8500 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0269
U 1 1 60DB357E
P 8500 1100
F 0 "#PWR0269" H 8500 950 50  0001 C CNN
F 1 "+5V" H 8515 1273 50  0000 C CNN
F 2 "" H 8500 1100 50  0001 C CNN
F 3 "" H 8500 1100 50  0001 C CNN
	1    8500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0270
U 1 1 60DB3584
P 8500 1900
F 0 "#PWR0270" H 8500 1650 50  0001 C CNN
F 1 "GND" H 8505 1727 50  0000 C CNN
F 2 "" H 8500 1900 50  0001 C CNN
F 3 "" H 8500 1900 50  0001 C CNN
	1    8500 1900
	1    0    0    -1  
$EndComp
Text Notes 8950 700  2    50   ~ 0
clock select (debounce)
$Comp
L Switch:SW_SPDT SW2
U 1 1 60DD8CC7
P 7150 1500
F 0 "SW2" H 7150 1785 50  0000 C CNN
F 1 "SW_SPDT" H 7150 1694 50  0000 C CNN
F 2 "" H 7150 1500 50  0001 C CNN
F 3 "~" H 7150 1500 50  0001 C CNN
	1    7150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R63
U 1 1 60DDDB3D
P 7750 1050
F 0 "R63" H 7820 1096 50  0000 L CNN
F 1 "1k" H 7820 1005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7680 1050 50  0001 C CNN
F 3 "~" H 7750 1050 50  0001 C CNN
	1    7750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1300 7750 1200
$Comp
L power:+5V #PWR0267
U 1 1 60DDDB44
P 7750 900
F 0 "#PWR0267" H 7750 750 50  0001 C CNN
F 1 "+5V" H 7765 1073 50  0000 C CNN
F 2 "" H 7750 900 50  0001 C CNN
F 3 "" H 7750 900 50  0001 C CNN
	1    7750 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R62
U 1 1 60DDEC09
P 7500 1700
F 0 "R62" H 7570 1746 50  0000 L CNN
F 1 "1k" H 7570 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7430 1700 50  0001 C CNN
F 3 "~" H 7500 1700 50  0001 C CNN
	1    7500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1300 8000 1300
Wire Wire Line
	7750 1300 7350 1300
Wire Wire Line
	7350 1300 7350 1400
Connection ~ 7750 1300
$Comp
L power:+5V #PWR0266
U 1 1 60DE28EF
P 7500 1550
F 0 "#PWR0266" H 7500 1400 50  0001 C CNN
F 1 "+5V" H 7515 1723 50  0000 C CNN
F 2 "" H 7500 1550 50  0001 C CNN
F 3 "" H 7500 1550 50  0001 C CNN
	1    7500 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0265
U 1 1 60DE5374
P 6800 1550
F 0 "#PWR0265" H 6800 1300 50  0001 C CNN
F 1 "GND" H 6805 1377 50  0000 C CNN
F 2 "" H 6800 1550 50  0001 C CNN
F 3 "" H 6800 1550 50  0001 C CNN
	1    6800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1500 6950 1500
Wire Wire Line
	6800 1550 6800 1500
$Comp
L power:GND #PWR0268
U 1 1 60DE778A
P 7800 1700
F 0 "#PWR0268" H 7800 1450 50  0001 C CNN
F 1 "GND" H 7805 1527 50  0000 C CNN
F 2 "" H 7800 1700 50  0001 C CNN
F 3 "" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60DE7790
P 7800 1600
F 0 "C8" H 7892 1646 50  0000 L CNN
F 1 "10nF" H 7892 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Radial_D6.3mm_H5.0mm_P2.50mm" H 7800 1600 50  0001 C CNN
F 3 "~" H 7800 1600 50  0001 C CNN
	1    7800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1500 8000 1500
Wire Wire Line
	8000 1950 8000 1700
Wire Wire Line
	7350 1600 7350 1950
Wire Wire Line
	7350 1950 7500 1950
Wire Wire Line
	7500 1850 7500 1950
Connection ~ 7500 1950
Wire Wire Line
	7500 1950 8000 1950
$Comp
L power:GND #PWR0271
U 1 1 60DF318C
P 9100 1750
F 0 "#PWR0271" H 9100 1500 50  0001 C CNN
F 1 "GND" H 9105 1577 50  0000 C CNN
F 2 "" H 9100 1750 50  0001 C CNN
F 3 "" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1700 9100 1700
Wire Wire Line
	9100 1750 9100 1700
Wire Wire Line
	9000 1300 9150 1300
Text Label 9150 1300 0    50   ~ 0
clkSel
$Comp
L 74xx:74LS157 U69
U 1 1 60DF5742
P 6800 5400
F 0 "U69" H 6800 6481 50  0000 C CNN
F 1 "74LS157" H 6800 6390 50  0000 C CNN
F 2 "" H 6800 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 6800 5400 50  0001 C CNN
	1    6800 5400
	1    0    0    -1  
$EndComp
NoConn ~ 6300 5100
NoConn ~ 6300 5200
NoConn ~ 6300 5400
NoConn ~ 6300 5500
NoConn ~ 6300 5700
NoConn ~ 6300 5800
NoConn ~ 7300 5700
NoConn ~ 7300 5400
NoConn ~ 7300 5100
$Comp
L power:GND #PWR0264
U 1 1 60DFA379
P 6800 6400
F 0 "#PWR0264" H 6800 6150 50  0001 C CNN
F 1 "GND" H 6805 6227 50  0000 C CNN
F 2 "" H 6800 6400 50  0001 C CNN
F 3 "" H 6800 6400 50  0001 C CNN
	1    6800 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0263
U 1 1 60DFA820
P 6800 4500
F 0 "#PWR0263" H 6800 4350 50  0001 C CNN
F 1 "+5V" H 6815 4673 50  0000 C CNN
F 2 "" H 6800 4500 50  0001 C CNN
F 3 "" H 6800 4500 50  0001 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0262
U 1 1 60DFAFF6
P 6300 6100
F 0 "#PWR0262" H 6300 5850 50  0001 C CNN
F 1 "GND" H 6305 5927 50  0000 C CNN
F 2 "" H 6300 6100 50  0001 C CNN
F 3 "" H 6300 6100 50  0001 C CNN
	1    6300 6100
	1    0    0    -1  
$EndComp
Text Label 6300 6000 2    50   ~ 0
clkSel
Text Label 6300 4900 2    50   ~ 0
clk1
Text Label 6300 4800 2    50   ~ 0
clk0
$Comp
L 74xx:74LS00 U70
U 3 1 60E0828E
P 7800 4450
F 0 "U70" H 7800 4775 50  0000 C CNN
F 1 "74LS00" H 7800 4684 50  0000 C CNN
F 2 "" H 7800 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 7800 4450 50  0001 C CNN
	3    7800 4450
	1    0    0    -1  
$EndComp
Text Label 7350 4450 2    50   ~ 0
halt
Wire Wire Line
	7350 4450 7350 4350
Wire Wire Line
	7350 4350 7500 4350
Wire Wire Line
	7350 4450 7350 4550
Connection ~ 7350 4450
$Comp
L 74xx:74LS00 U70
U 2 1 60E0BD15
P 8550 4700
F 0 "U70" H 8550 4383 50  0000 C CNN
F 1 "74LS00" H 8550 4474 50  0000 C CNN
F 2 "" H 8550 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8550 4700 50  0001 C CNN
	2    8550 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 4550 7500 4550
Wire Wire Line
	8100 4450 8200 4450
Wire Wire Line
	8200 4450 8200 4600
Wire Wire Line
	8200 4600 8250 4600
Wire Wire Line
	7300 4800 8250 4800
Text GLabel 10000 4700 2    100  Output ~ 20
clk
Wire Wire Line
	8850 4700 8950 4700
$Comp
L 74xx:74LS00 U70
U 1 1 60E24209
P 9350 4700
F 0 "U70" H 9350 5025 50  0000 C CNN
F 1 "74LS00" H 9350 4934 50  0000 C CNN
F 2 "" H 9350 4700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9350 4700 50  0001 C CNN
	1    9350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 9050 4600
Wire Wire Line
	8950 4600 8950 4700
Wire Wire Line
	8950 4800 9050 4800
Connection ~ 8950 4700
Wire Wire Line
	8950 4700 8950 4800
Wire Wire Line
	9650 4700 9850 4700
$Comp
L 74xx:74LS00 U70
U 4 1 60E2FD93
P 10200 5200
F 0 "U70" H 10200 5525 50  0000 C CNN
F 1 "74LS00" H 10200 5434 50  0000 C CNN
F 2 "" H 10200 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 10200 5200 50  0001 C CNN
	4    10200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4700 9850 5100
Wire Wire Line
	9850 5300 9900 5300
Connection ~ 9850 4700
Wire Wire Line
	9850 4700 10000 4700
Wire Wire Line
	9900 5100 9850 5100
Connection ~ 9850 5100
Wire Wire Line
	9850 5100 9850 5300
Wire Wire Line
	10500 5200 10650 5200
Text GLabel 10650 5200 2    100  Output ~ 20
~clk~
$Comp
L 74xx:74LS00 U70
U 5 1 60E554D6
P 8750 5900
F 0 "U70" H 8980 5946 50  0000 L CNN
F 1 "74LS00" H 8980 5855 50  0000 L CNN
F 2 "" H 8750 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 8750 5900 50  0001 C CNN
	5    8750 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0273
U 1 1 60E58C31
P 8750 6400
F 0 "#PWR0273" H 8750 6150 50  0001 C CNN
F 1 "GND" H 8755 6227 50  0000 C CNN
F 2 "" H 8750 6400 50  0001 C CNN
F 3 "" H 8750 6400 50  0001 C CNN
	1    8750 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0272
U 1 1 60E59009
P 8750 5400
F 0 "#PWR0272" H 8750 5250 50  0001 C CNN
F 1 "+5V" H 8765 5573 50  0000 C CNN
F 2 "" H 8750 5400 50  0001 C CNN
F 3 "" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60E606DF
P 9850 5750
AR Path="/601B5CAE/60E606DF" Ref="R?"  Part="1" 
AR Path="/600C5001/60E606DF" Ref="R?"  Part="1" 
AR Path="/60ECA4CB/60E606DF" Ref="R?"  Part="1" 
AR Path="/601BB1C4/60E606DF" Ref="R?"  Part="1" 
AR Path="/608A8AE7/60E606DF" Ref="R71"  Part="1" 
F 0 "R71" V 9643 5750 50  0000 C CNN
F 1 "1k" V 9734 5750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9780 5750 50  0001 C CNN
F 3 "~" H 9850 5750 50  0001 C CNN
	1    9850 5750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60E606EC
P 9850 5900
AR Path="/601B5CAE/60E606EC" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60E606EC" Ref="#PWR?"  Part="1" 
AR Path="/60ECA4CB/60E606EC" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/60E606EC" Ref="#PWR?"  Part="1" 
AR Path="/608A8AE7/60E606EC" Ref="#PWR0283"  Part="1" 
F 0 "#PWR0283" H 9850 5650 50  0001 C CNN
F 1 "GND" H 9855 5727 50  0000 C CNN
F 2 "" H 9850 5900 50  0001 C CNN
F 3 "" H 9850 5900 50  0001 C CNN
	1    9850 5900
	1    0    0    -1  
$EndComp
Connection ~ 9850 5300
$Comp
L Device:LED D?
U 1 1 60E606E5
P 9850 5450
AR Path="/601B5CAE/60E606E5" Ref="D?"  Part="1" 
AR Path="/600C5001/60E606E5" Ref="D?"  Part="1" 
AR Path="/60ECA4CB/60E606E5" Ref="D?"  Part="1" 
AR Path="/601BB1C4/60E606E5" Ref="D?"  Part="1" 
AR Path="/608A8AE7/60E606E5" Ref="D55"  Part="1" 
F 0 "D55" H 9843 5195 50  0000 C CNN
F 1 "clk" H 9843 5286 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9850 5450 50  0001 C CNN
F 3 "~" H 9850 5450 50  0001 C CNN
	1    9850 5450
	0    -1   -1   0   
$EndComp
Text HLabel 2900 5350 0    50   Input ~ 0
haltPulse
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 60E70F59
P 3300 5350
F 0 "Q1" H 3491 5396 50  0000 L CNN
F 1 "BC337" H 3491 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3500 5275 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 3300 5350 50  0001 L CNN
	1    3300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5350 3100 5350
$Comp
L power:GND #PWR0276
U 1 1 60E74F3A
P 3400 5550
F 0 "#PWR0276" H 3400 5300 50  0001 C CNN
F 1 "GND" H 3405 5377 50  0000 C CNN
F 2 "" H 3400 5550 50  0001 C CNN
F 3 "" H 3400 5550 50  0001 C CNN
	1    3400 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R64
U 1 1 60E75AE1
P 3400 4850
F 0 "R64" H 3470 4896 50  0000 L CNN
F 1 "100k" H 3470 4805 50  0000 L CNN
F 2 "" V 3330 4850 50  0001 C CNN
F 3 "~" H 3400 4850 50  0001 C CNN
	1    3400 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0275
U 1 1 60E75F15
P 3400 4700
F 0 "#PWR0275" H 3400 4550 50  0001 C CNN
F 1 "+5V" H 3415 4873 50  0000 C CNN
F 2 "" H 3400 4700 50  0001 C CNN
F 3 "" H 3400 4700 50  0001 C CNN
	1    3400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5000 3400 5100
$Comp
L Transistor_BJT:BC337 Q2
U 1 1 60E79F49
P 4450 3650
F 0 "Q2" H 4641 3696 50  0000 L CNN
F 1 "BC337" H 4641 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4650 3575 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4450 3650 50  0001 L CNN
	1    4450 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0278
U 1 1 60E7A824
P 4550 3850
F 0 "#PWR0278" H 4550 3600 50  0001 C CNN
F 1 "GND" H 4555 3677 50  0000 C CNN
F 2 "" H 4550 3850 50  0001 C CNN
F 3 "" H 4550 3850 50  0001 C CNN
	1    4550 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R68
U 1 1 60E7B801
P 4550 3150
F 0 "R68" H 4620 3196 50  0000 L CNN
F 1 "10k" H 4620 3105 50  0000 L CNN
F 2 "" V 4480 3150 50  0001 C CNN
F 3 "~" H 4550 3150 50  0001 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0277
U 1 1 60E7B807
P 4550 3000
F 0 "#PWR0277" H 4550 2850 50  0001 C CNN
F 1 "+5V" H 4565 3173 50  0000 C CNN
F 2 "" H 4550 3000 50  0001 C CNN
F 3 "" H 4550 3000 50  0001 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3300 4550 3350
$Comp
L Transistor_BJT:BC337 Q3
U 1 1 60E8103F
P 4450 5100
F 0 "Q3" H 4641 5146 50  0000 L CNN
F 1 "BC337" H 4641 5055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4650 5025 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 4450 5100 50  0001 L CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0280
U 1 1 60E81045
P 4550 5300
F 0 "#PWR0280" H 4550 5050 50  0001 C CNN
F 1 "GND" H 4555 5127 50  0000 C CNN
F 2 "" H 4550 5300 50  0001 C CNN
F 3 "" H 4550 5300 50  0001 C CNN
	1    4550 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R69
U 1 1 60E8104B
P 4550 4600
F 0 "R69" H 4620 4646 50  0000 L CNN
F 1 "10k" H 4620 4555 50  0000 L CNN
F 2 "" V 4480 4600 50  0001 C CNN
F 3 "~" H 4550 4600 50  0001 C CNN
	1    4550 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0279
U 1 1 60E81051
P 4550 4450
F 0 "#PWR0279" H 4550 4300 50  0001 C CNN
F 1 "+5V" H 4565 4623 50  0000 C CNN
F 2 "" H 4550 4450 50  0001 C CNN
F 3 "" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
Connection ~ 4550 3350
Wire Wire Line
	4550 3350 4550 3450
Wire Wire Line
	4550 4750 4550 4800
$Comp
L Device:R R67
U 1 1 60E9814C
P 4250 4150
F 0 "R67" H 4320 4196 50  0000 L CNN
F 1 "10k" H 4320 4105 50  0000 L CNN
F 2 "" V 4180 4150 50  0001 C CNN
F 3 "~" H 4250 4150 50  0001 C CNN
	1    4250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4300 4250 4800
Wire Wire Line
	4250 4800 4550 4800
Connection ~ 4550 4800
Wire Wire Line
	4550 4800 4550 4900
Wire Wire Line
	4250 3650 4250 4000
$Comp
L Device:R R66
U 1 1 60E9F2E4
P 4000 4150
F 0 "R66" H 4070 4196 50  0000 L CNN
F 1 "10k" H 4070 4105 50  0000 L CNN
F 2 "" V 3930 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4300 4000 5100
Wire Wire Line
	4000 5100 4250 5100
Wire Wire Line
	4000 4000 4000 3350
Wire Wire Line
	4000 3350 4550 3350
Text Notes 4700 2750 2    50   ~ 0
halt latch
Connection ~ 3400 5100
Wire Wire Line
	3400 5100 3400 5150
Connection ~ 4000 5100
Wire Wire Line
	3400 5100 4000 5100
Text Notes 3600 4400 2    50   ~ 0
pulse invert
$Comp
L Switch:SW_Push SW3
U 1 1 60EB1414
P 3300 3650
F 0 "SW3" H 3300 3935 50  0000 C CNN
F 1 "continue_switch" H 3300 3844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3300 3850 50  0001 C CNN
F 3 "~" H 3300 3850 50  0001 C CNN
	1    3300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3650 3650 3650
Connection ~ 4250 3650
$Comp
L power:GND #PWR0274
U 1 1 60EB650E
P 3100 3650
F 0 "#PWR0274" H 3100 3400 50  0001 C CNN
F 1 "GND" H 3105 3477 50  0000 C CNN
F 2 "" H 3100 3650 50  0001 C CNN
F 3 "" H 3100 3650 50  0001 C CNN
	1    3100 3650
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC337 Q4
U 1 1 60EBBFE1
P 5200 4800
F 0 "Q4" H 5391 4846 50  0000 L CNN
F 1 "BC337" H 5391 4755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5400 4725 50  0001 L CIN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/bc337.pdf" H 5200 4800 50  0001 L CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4800 5000 4800
$Comp
L power:+5V #PWR0281
U 1 1 60EBE666
P 5300 4600
F 0 "#PWR0281" H 5300 4450 50  0001 C CNN
F 1 "+5V" H 5315 4773 50  0000 C CNN
F 2 "" H 5300 4600 50  0001 C CNN
F 3 "" H 5300 4600 50  0001 C CNN
	1    5300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R70
U 1 1 60EBECF9
P 5300 5400
F 0 "R70" H 5370 5446 50  0000 L CNN
F 1 "1k" H 5370 5355 50  0000 L CNN
F 2 "" V 5230 5400 50  0001 C CNN
F 3 "~" H 5300 5400 50  0001 C CNN
	1    5300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5250 5300 5150
$Comp
L power:GND #PWR0282
U 1 1 60EC2C09
P 5300 5550
F 0 "#PWR0282" H 5300 5300 50  0001 C CNN
F 1 "GND" H 5305 5377 50  0000 C CNN
F 2 "" H 5300 5550 50  0001 C CNN
F 3 "" H 5300 5550 50  0001 C CNN
	1    5300 5550
	1    0    0    -1  
$EndComp
Connection ~ 5300 5150
Wire Wire Line
	5300 5150 5300 5000
Text Label 5650 5150 0    50   ~ 0
halt
Wire Wire Line
	6000 5150 6000 4450
Wire Wire Line
	6000 4450 7350 4450
Wire Wire Line
	5300 5150 6000 5150
Wire Notes Line
	4900 5600 4900 2650
Wire Notes Line
	4900 2650 3950 2650
Wire Notes Line
	3950 2650 3950 5600
Wire Notes Line
	3950 5600 4900 5600
Wire Notes Line
	3750 4250 3750 5850
Wire Notes Line
	3750 5850 3050 5850
Wire Notes Line
	3050 5850 3050 4250
Wire Notes Line
	3050 4250 3750 4250
Wire Notes Line
	5650 4200 5650 5800
Wire Notes Line
	5650 5800 5000 5800
Wire Notes Line
	5000 5800 5000 4200
Wire Notes Line
	5000 4200 5650 4200
Text Notes 5500 4300 2    50   ~ 0
halt amp
$Comp
L Device:CP1_Small C9
U 1 1 60F419BF
P 9900 3750
F 0 "C9" H 9991 3796 50  0000 L CNN
F 1 "10uF" H 9991 3705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9900 3750 50  0001 C CNN
F 3 "~" H 9900 3750 50  0001 C CNN
	1    9900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0285
U 1 1 60F4211A
P 9900 3850
F 0 "#PWR0285" H 9900 3600 50  0001 C CNN
F 1 "GND" H 9905 3677 50  0000 C CNN
F 2 "" H 9900 3850 50  0001 C CNN
F 3 "" H 9900 3850 50  0001 C CNN
	1    9900 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R72
U 1 1 60F44681
P 9900 3200
F 0 "R72" H 9970 3246 50  0000 L CNN
F 1 "10k" H 9970 3155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9830 3200 50  0001 C CNN
F 3 "~" H 9900 3200 50  0001 C CNN
	1    9900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0284
U 1 1 60F44EA3
P 9900 3050
F 0 "#PWR0284" H 9900 2900 50  0001 C CNN
F 1 "+5V" H 9915 3223 50  0000 C CNN
F 2 "" H 9900 3050 50  0001 C CNN
F 3 "" H 9900 3050 50  0001 C CNN
	1    9900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3350 9900 3450
Text GLabel 10200 3450 2    100  Output ~ 20
~reset~
Wire Wire Line
	9900 3450 10200 3450
Connection ~ 9900 3450
Wire Wire Line
	9900 3450 9900 3650
Text GLabel 3350 3200 0    50   Input ~ 0
~reset~
$Comp
L Device:R R65
U 1 1 60FB8BF8
P 3650 3350
F 0 "R65" H 3720 3396 50  0000 L CNN
F 1 "100k" H 3720 3305 50  0000 L CNN
F 2 "" V 3580 3350 50  0001 C CNN
F 3 "~" H 3650 3350 50  0001 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3200 3650 3200
Wire Wire Line
	3650 3500 3650 3650
Connection ~ 3650 3650
Wire Wire Line
	3650 3650 4250 3650
NoConn ~ 9000 1500
$EndSCHEMATC