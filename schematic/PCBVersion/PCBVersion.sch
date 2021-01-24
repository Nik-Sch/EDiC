EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 14
Title "ALU"
Date "2021-01-20"
Rev "v01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR02
U 1 1 600C77C0
P 1250 750
F 0 "#PWR02" H 1250 600 50  0001 C CNN
F 1 "+5V" H 1265 923 50  0000 C CNN
F 2 "" H 1250 750 50  0001 C CNN
F 3 "" H 1250 750 50  0001 C CNN
	1    1250 750 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 603135A8
P 1250 900
F 0 "#FLG02" H 1250 975 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 1073 50  0000 C CNN
F 2 "" H 1250 900 50  0001 C CNN
F 3 "~" H 1250 900 50  0001 C CNN
	1    1250 900 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60311B16
P 950 900
F 0 "#PWR01" H 950 650 50  0001 C CNN
F 1 "GND" H 955 727 50  0000 C CNN
F 2 "" H 950 900 50  0001 C CNN
F 3 "" H 950 900 50  0001 C CNN
	1    950  900 
	1    0    0    -1  
$EndComp
$Sheet
S 3450 1150 1000 1950
U 600C5001
F0 "Alu" 50
F1 "Alu.sch" 50
F2 "a0" I L 3450 1200 50 
F3 "b0" I L 3450 2100 50 
F4 "b1" I L 3450 2200 50 
F5 "b2" I L 3450 2300 50 
F6 "b3" I L 3450 2400 50 
F7 "b4" I L 3450 2500 50 
F8 "b5" I L 3450 2600 50 
F9 "b6" I L 3450 2700 50 
F10 "b7" I L 3450 2800 50 
F11 "a1" I L 3450 1300 50 
F12 "a2" I L 3450 1400 50 
F13 "a3" I L 3450 1500 50 
F14 "a4" I L 3450 1600 50 
F15 "a5" I L 3450 1700 50 
F16 "a6" I L 3450 1800 50 
F17 "a7" I L 3450 1900 50 
F18 "y0" O R 4450 1250 50 
F19 "y1" O R 4450 1350 50 
F20 "y2" O R 4450 1450 50 
F21 "y3" O R 4450 1550 50 
F22 "y4" O R 4450 1650 50 
F23 "y5" O R 4450 1750 50 
F24 "y6" O R 4450 1850 50 
F25 "y7" O R 4450 1950 50 
$EndSheet
$Sheet
S 2200 1150 1000 2000
U 601B5CAE
F0 "regset" 50
F1 "Regset.sch" 50
F2 "d0" I L 2200 1200 50 
F3 "d1" I L 2200 1300 50 
F4 "d2" I L 2200 1400 50 
F5 "d3" I L 2200 1500 50 
F6 "d4" I L 2200 1600 50 
F7 "d5" I L 2200 1700 50 
F8 "d6" I L 2200 1800 50 
F9 "d7" I L 2200 1900 50 
F10 "a0" O R 3200 1200 50 
F11 "a1" O R 3200 1300 50 
F12 "a2" O R 3200 1400 50 
F13 "a3" O R 3200 1500 50 
F14 "a4" O R 3200 1600 50 
F15 "a5" O R 3200 1700 50 
F16 "a6" O R 3200 1800 50 
F17 "a7" O R 3200 1900 50 
F18 "b0" O R 3200 2100 50 
F19 "b1" O R 3200 2200 50 
F20 "b2" O R 3200 2300 50 
F21 "b3" O R 3200 2400 50 
F22 "b4" O R 3200 2500 50 
F23 "b5" O R 3200 2600 50 
F24 "b6" O R 3200 2700 50 
F25 "b7" O R 3200 2800 50 
$EndSheet
Wire Wire Line
	3200 1200 3450 1200
Wire Wire Line
	3200 1300 3450 1300
Wire Wire Line
	3200 1400 3450 1400
Wire Wire Line
	3450 1500 3200 1500
Wire Wire Line
	3200 1600 3450 1600
Wire Wire Line
	3200 1700 3450 1700
Wire Wire Line
	3200 1800 3450 1800
Wire Wire Line
	3200 1900 3450 1900
Wire Wire Line
	3200 2100 3450 2100
Wire Wire Line
	3200 2200 3450 2200
Wire Wire Line
	3200 2300 3450 2300
Wire Wire Line
	3450 2400 3200 2400
Wire Wire Line
	3200 2500 3450 2500
Wire Wire Line
	3200 2600 3450 2600
Wire Wire Line
	3200 2700 3450 2700
Wire Wire Line
	3200 2800 3450 2800
Text Label 3400 2100 2    50   ~ 0
bus0
Text Label 3400 2200 2    50   ~ 0
bus1
Text Label 3400 2300 2    50   ~ 0
bus2
Text Label 3400 2400 2    50   ~ 0
bus3
Text Label 3400 2500 2    50   ~ 0
bus4
Text Label 3400 2600 2    50   ~ 0
bus5
Text Label 3400 2700 2    50   ~ 0
bus6
Text Label 3400 2800 2    50   ~ 0
bus7
Text Label 2200 1200 2    50   ~ 0
bus0
Text Label 2200 1300 2    50   ~ 0
bus1
Text Label 2200 1400 2    50   ~ 0
bus2
Text Label 2200 1500 2    50   ~ 0
bus3
Text Label 2200 1600 2    50   ~ 0
bus4
Text Label 2200 1700 2    50   ~ 0
bus5
Text Label 2200 1800 2    50   ~ 0
bus6
Text Label 2200 1900 2    50   ~ 0
bus7
Text Label 4450 1250 0    50   ~ 0
bus0
Text Label 4450 1350 0    50   ~ 0
bus1
Text Label 4450 1450 0    50   ~ 0
bus2
Text Label 4450 1550 0    50   ~ 0
bus3
Text Label 4450 1650 0    50   ~ 0
bus4
Text Label 4450 1750 0    50   ~ 0
bus5
Text Label 4450 1850 0    50   ~ 0
bus6
Text Label 4450 1950 0    50   ~ 0
bus7
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6025A1E2
P 950 750
F 0 "#FLG01" H 950 825 50  0001 C CNN
F 1 "PWR_FLAG" H 950 923 50  0000 C CNN
F 2 "" H 950 750 50  0001 C CNN
F 3 "~" H 950 750 50  0001 C CNN
	1    950  750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 900  1250 750 
Wire Wire Line
	950  750  950  900 
Text GLabel 9300 1850 2    50   Output ~ 0
ctrlAluNOE
Text GLabel 9300 1700 2    50   Output ~ 0
ctrlAluNWrY
Text GLabel 9300 1550 2    50   Output ~ 0
ctrlAluOp1
Text GLabel 9300 1400 2    50   Output ~ 0
ctrlAluOp0
Text GLabel 9300 1250 2    50   Output ~ 0
ctrlAluSub
$Comp
L power:+5V #PWR0107
U 1 1 6030CA22
P 9200 850
F 0 "#PWR0107" H 9200 700 50  0001 C CNN
F 1 "+5V" H 9215 1023 50  0000 C CNN
F 2 "" H 9200 850 50  0001 C CNN
F 3 "" H 9200 850 50  0001 C CNN
	1    9200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 850  9200 1050
Wire Wire Line
	9200 1850 9300 1850
Wire Wire Line
	9300 1700 9200 1700
Connection ~ 9200 1700
Wire Wire Line
	9200 1700 9200 1850
Wire Wire Line
	9200 1550 9300 1550
Connection ~ 9200 1550
Wire Wire Line
	9200 1550 9200 1700
Wire Wire Line
	9300 1400 9200 1400
Connection ~ 9200 1400
Wire Wire Line
	9200 1400 9200 1550
Wire Wire Line
	9200 1250 9300 1250
Connection ~ 9200 1250
Wire Wire Line
	9200 1250 9200 1400
Text GLabel 9300 2000 2    50   Output ~ 0
ctrlReg0NWr
Text GLabel 9300 2150 2    50   Output ~ 0
ctrlReg1NWr
Text GLabel 9300 2300 2    50   Output ~ 0
ctrlAluSel
Text GLabel 9300 2450 2    50   Output ~ 0
ctrlRegBusSel
Text GLabel 9300 2600 2    50   Output ~ 0
ctrlRegBusNOE
Wire Wire Line
	9200 1850 9200 2000
Wire Wire Line
	9200 2000 9300 2000
Connection ~ 9200 1850
Wire Wire Line
	9200 2000 9200 2150
Wire Wire Line
	9200 2600 9300 2600
Connection ~ 9200 2000
Wire Wire Line
	9300 2450 9200 2450
Connection ~ 9200 2450
Wire Wire Line
	9200 2450 9200 2600
Wire Wire Line
	9200 2300 9300 2300
Connection ~ 9200 2300
Wire Wire Line
	9200 2300 9200 2450
Wire Wire Line
	9300 2150 9200 2150
Connection ~ 9200 2150
Wire Wire Line
	9200 2150 9200 2300
Text GLabel 9300 1050 2    50   Output ~ 0
clk
Wire Wire Line
	9200 1050 9300 1050
Connection ~ 9200 1050
Wire Wire Line
	9200 1050 9200 1250
$EndSCHEMATC
