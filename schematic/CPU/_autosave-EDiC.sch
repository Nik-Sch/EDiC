EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 18
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
P 1200 900
F 0 "#PWR02" H 1200 750 50  0001 C CNN
F 1 "+5V" H 1215 1073 50  0000 C CNN
F 2 "" H 1200 900 50  0001 C CNN
F 3 "" H 1200 900 50  0001 C CNN
	1    1200 900 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 603135A8
P 1200 1050
F 0 "#FLG02" H 1200 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1223 50  0000 C CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 60311B16
P 900 1050
F 0 "#PWR01" H 900 800 50  0001 C CNN
F 1 "GND" H 905 877 50  0000 C CNN
F 2 "" H 900 1050 50  0001 C CNN
F 3 "" H 900 1050 50  0001 C CNN
	1    900  1050
	1    0    0    -1  
$EndComp
$Sheet
S 7650 4300 1000 1950
U 600C5001
F0 "Alu" 50
F1 "Alu.sch" 50
F2 "a0" I L 7650 4350 50 
F3 "a1" I L 7650 4450 50 
F4 "a2" I L 7650 4550 50 
F5 "a3" I L 7650 4650 50 
F6 "a4" I L 7650 4750 50 
F7 "a5" I L 7650 4850 50 
F8 "a6" I L 7650 4950 50 
F9 "a7" I L 7650 5050 50 
F10 "bus7" B L 7650 5950 50 
F11 "bus6" B L 7650 5850 50 
F12 "bus5" B L 7650 5750 50 
F13 "bus4" B L 7650 5650 50 
F14 "bus3" B L 7650 5550 50 
F15 "bus2" B L 7650 5450 50 
F16 "bus1" B L 7650 5350 50 
F17 "bus0" B L 7650 5250 50 
$EndSheet
Wire Wire Line
	7050 4350 7650 4350
Wire Wire Line
	7050 4450 7650 4450
Wire Wire Line
	7050 4550 7650 4550
Wire Wire Line
	7650 4650 7050 4650
Wire Wire Line
	7050 4750 7650 4750
Wire Wire Line
	7050 4850 7650 4850
Wire Wire Line
	7050 4950 7650 4950
Wire Wire Line
	7050 5050 7650 5050
Wire Wire Line
	7050 5250 7650 5250
Wire Wire Line
	7050 5350 7650 5350
Wire Wire Line
	7050 5450 7650 5450
Wire Wire Line
	7650 5550 7050 5550
Wire Wire Line
	7050 5650 7650 5650
Wire Wire Line
	7050 5750 7650 5750
Wire Wire Line
	7050 5850 7650 5850
Wire Wire Line
	7050 5950 7650 5950
Text Label 7600 5250 2    50   ~ 0
bus0
Text Label 7600 5350 2    50   ~ 0
bus1
Text Label 7600 5450 2    50   ~ 0
bus2
Text Label 7600 5550 2    50   ~ 0
bus3
Text Label 7600 5650 2    50   ~ 0
bus4
Text Label 7600 5750 2    50   ~ 0
bus5
Text Label 7600 5850 2    50   ~ 0
bus6
Text Label 7600 5950 2    50   ~ 0
bus7
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6025A1E2
P 900 900
F 0 "#FLG01" H 900 975 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1073 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "~" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1050 1200 900 
Wire Wire Line
	900  900  900  1050
$Sheet
S 13150 5200 750  900 
U 608A8AE7
F0 "clock" 50
F1 "Clock.sch" 50
$EndSheet
$Sheet
S 6050 4300 1000 2000
U 601B5CAE
F0 "regset" 50
F1 "Regset.sch" 50
F2 "a0" O R 7050 4350 50 
F3 "a1" O R 7050 4450 50 
F4 "a2" O R 7050 4550 50 
F5 "a3" O R 7050 4650 50 
F6 "a4" O R 7050 4750 50 
F7 "a5" O R 7050 4850 50 
F8 "a6" O R 7050 4950 50 
F9 "a7" O R 7050 5050 50 
F10 "bus0" B R 7050 5250 50 
F11 "bus1" B R 7050 5350 50 
F12 "bus2" B R 7050 5450 50 
F13 "bus3" B R 7050 5550 50 
F14 "bus4" B R 7050 5650 50 
F15 "bus5" B R 7050 5750 50 
F16 "bus6" B R 7050 5850 50 
F17 "bus7" B R 7050 5950 50 
$EndSheet
$Sheet
S 9400 3900 1850 2200
U 61492876
F0 "memory" 50
F1 "Memory.sch" 50
F2 "bus0" B R 11250 4000 50 
F3 "bus1" B R 11250 4100 50 
F4 "bus2" B R 11250 4200 50 
F5 "bus3" B R 11250 4300 50 
F6 "bus4" B R 11250 4400 50 
F7 "bus5" B R 11250 4500 50 
F8 "bus6" B R 11250 4600 50 
F9 "bus7" B R 11250 4700 50 
F10 "instr7" O R 11250 6000 50 
F11 "instr6" O R 11250 5900 50 
F12 "instr5" O R 11250 5800 50 
F13 "instr4" O R 11250 5700 50 
F14 "instr3" O R 11250 5600 50 
F15 "instr2" O R 11250 5500 50 
F16 "instr1" O R 11250 5400 50 
F17 "instr0" O R 11250 5300 50 
$EndSheet
Text Label 11500 4000 0    50   ~ 0
bus0
Text Label 11500 4100 0    50   ~ 0
bus1
Text Label 11500 4200 0    50   ~ 0
bus2
Text Label 11500 4300 0    50   ~ 0
bus3
Text Label 11500 4400 0    50   ~ 0
bus4
Text Label 11500 4500 0    50   ~ 0
bus5
Text Label 11500 4600 0    50   ~ 0
bus6
Text Label 11500 4700 0    50   ~ 0
bus7
Wire Wire Line
	11250 4000 11850 4000
Wire Wire Line
	11250 4100 11850 4100
Wire Wire Line
	11250 4200 11850 4200
Wire Wire Line
	11250 4300 11850 4300
Wire Wire Line
	11250 4400 11850 4400
Wire Wire Line
	11250 4500 11850 4500
Wire Wire Line
	11250 4600 11850 4600
Wire Wire Line
	11250 4700 11850 4700
$Sheet
S 11550 5200 1000 1450
U 601BB1C4
F0 "control" 50
F1 "Control.sch" 50
F2 "instrCode0" I L 11550 5300 50 
F3 "instrCode1" I L 11550 5400 50 
F4 "instrCode2" I L 11550 5500 50 
F5 "instrCode3" I L 11550 5600 50 
F6 "instrCode4" I L 11550 5700 50 
F7 "instrCode5" I L 11550 5800 50 
F8 "instrCode6" I L 11550 5900 50 
F9 "instrCode7" I L 11550 6000 50 
$EndSheet
Wire Wire Line
	11250 5300 11550 5300
Wire Wire Line
	11250 5400 11550 5400
Wire Wire Line
	11250 5500 11550 5500
Wire Wire Line
	11250 5600 11550 5600
Wire Wire Line
	11250 5700 11550 5700
Wire Wire Line
	11250 5800 11550 5800
Wire Wire Line
	11250 5900 11550 5900
Wire Wire Line
	11250 6000 11550 6000
$Sheet
S 11850 3650 900  1150
U 62CA6149
F0 "io" 50
F1 "io.sch" 50
F2 "bus7" T L 11850 4700 50 
F3 "bus6" T L 11850 4600 50 
F4 "bus5" T L 11850 4500 50 
F5 "bus4" T L 11850 4400 50 
F6 "bus3" T L 11850 4300 50 
F7 "bus2" T L 11850 4200 50 
F8 "bus1" T L 11850 4100 50 
F9 "bus0" T L 11850 4000 50 
$EndSheet
$Comp
L EDiC-rescue:74ABT540 U?
U 1 1 63407316
P 4400 3850
AR Path="/600C5001/63407316" Ref="U?"  Part="1" 
AR Path="/601B5CAE/63407316" Ref="U?"  Part="1" 
AR Path="/63407316" Ref="U1"  Part="1" 
F 0 "U1" H 4100 4831 50  0000 C CNN
F 1 "74ABT540" H 4100 4740 50  0000 C CNN
F 2 "" H 4600 3425 50  0001 C CNN
F 3 "" H 4600 3425 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6340731C
P 3500 4350
AR Path="/600C5001/6340731C" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6340731C" Ref="#PWR?"  Part="1" 
AR Path="/6340731C" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3500 4100 50  0001 C CNN
F 1 "GND" H 3505 4177 50  0000 C CNN
F 2 "" H 3500 4350 50  0001 C CNN
F 3 "" H 3500 4350 50  0001 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4350 3600 4350
Wire Wire Line
	3600 4250 3500 4250
Wire Wire Line
	3500 4250 3500 4350
Connection ~ 3500 4350
$Comp
L power:GND #PWR?
U 1 1 63407326
P 4100 4650
AR Path="/600C5001/63407326" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63407326" Ref="#PWR?"  Part="1" 
AR Path="/63407326" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 4100 4400 50  0001 C CNN
F 1 "GND" H 4105 4477 50  0000 C CNN
F 2 "" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6340732C
P 4100 3050
AR Path="/600C5001/6340732C" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6340732C" Ref="#PWR?"  Part="1" 
AR Path="/6340732C" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4100 2900 50  0001 C CNN
F 1 "+5V" H 4100 3300 50  0000 C CNN
F 2 "" H 4100 3050 50  0001 C CNN
F 3 "" H 4100 3050 50  0001 C CNN
	1    4100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 63407332
P 4900 3350
AR Path="/600C5001/63407332" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407332" Ref="D?"  Part="1" 
AR Path="/63407332" Ref="D1"  Part="1" 
F 0 "D1" H 4700 3400 50  0000 C CNN
F 1 "LED_Small" H 5150 3400 50  0000 C CNN
F 2 "" V 4900 3350 50  0001 C CNN
F 3 "~" V 4900 3350 50  0001 C CNN
	1    4900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3350 4600 3350
$Comp
L Device:R_Network08 RN?
U 1 1 63407339
P 5600 3750
AR Path="/61492876/63407339" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/63407339" Ref="RN?"  Part="1" 
AR Path="/63407339" Ref="RN2"  Part="1" 
F 0 "RN2" H 5988 3796 50  0000 L CNN
F 1 "220" H 5988 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 6075 3750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5600 3750 50  0001 C CNN
	1    5600 3750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6340733F
P 5900 3250
AR Path="/61492876/6340733F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6340733F" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6340733F" Ref="#PWR?"  Part="1" 
AR Path="/6340733F" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5900 3100 50  0001 C CNN
F 1 "+5V" H 5915 3423 50  0000 C CNN
F 2 "" H 5900 3250 50  0001 C CNN
F 3 "" H 5900 3250 50  0001 C CNN
	1    5900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3250 5900 3350
Wire Wire Line
	5900 3350 5800 3350
Wire Wire Line
	5400 3350 5000 3350
$Comp
L Device:LED_Small D?
U 1 1 63407348
P 4900 3450
AR Path="/600C5001/63407348" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407348" Ref="D?"  Part="1" 
AR Path="/63407348" Ref="D2"  Part="1" 
F 0 "D2" H 4700 3500 50  0000 C CNN
F 1 "LED_Small" H 5150 3500 50  0000 C CNN
F 2 "" V 4900 3450 50  0001 C CNN
F 3 "~" V 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3450 4600 3450
Wire Wire Line
	5400 3450 5000 3450
$Comp
L Device:LED_Small D?
U 1 1 63407350
P 4900 3550
AR Path="/600C5001/63407350" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407350" Ref="D?"  Part="1" 
AR Path="/63407350" Ref="D3"  Part="1" 
F 0 "D3" H 4700 3600 50  0000 C CNN
F 1 "LED_Small" H 5150 3600 50  0000 C CNN
F 2 "" V 4900 3550 50  0001 C CNN
F 3 "~" V 4900 3550 50  0001 C CNN
	1    4900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3550 4600 3550
Wire Wire Line
	5400 3550 5000 3550
$Comp
L Device:LED_Small D?
U 1 1 63407358
P 4900 3650
AR Path="/600C5001/63407358" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407358" Ref="D?"  Part="1" 
AR Path="/63407358" Ref="D4"  Part="1" 
F 0 "D4" H 4700 3700 50  0000 C CNN
F 1 "LED_Small" H 5150 3700 50  0000 C CNN
F 2 "" V 4900 3650 50  0001 C CNN
F 3 "~" V 4900 3650 50  0001 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3650 4600 3650
Wire Wire Line
	5400 3650 5000 3650
$Comp
L Device:LED_Small D?
U 1 1 63407360
P 4900 3750
AR Path="/600C5001/63407360" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407360" Ref="D?"  Part="1" 
AR Path="/63407360" Ref="D5"  Part="1" 
F 0 "D5" H 4700 3800 50  0000 C CNN
F 1 "LED_Small" H 5150 3800 50  0000 C CNN
F 2 "" V 4900 3750 50  0001 C CNN
F 3 "~" V 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3750 4600 3750
Wire Wire Line
	5400 3750 5000 3750
$Comp
L Device:LED_Small D?
U 1 1 63407368
P 4900 3850
AR Path="/600C5001/63407368" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407368" Ref="D?"  Part="1" 
AR Path="/63407368" Ref="D6"  Part="1" 
F 0 "D6" H 4700 3900 50  0000 C CNN
F 1 "LED_Small" H 5150 3900 50  0000 C CNN
F 2 "" V 4900 3850 50  0001 C CNN
F 3 "~" V 4900 3850 50  0001 C CNN
	1    4900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3850 4600 3850
Wire Wire Line
	5400 3850 5000 3850
$Comp
L Device:LED_Small D?
U 1 1 63407370
P 4900 3950
AR Path="/600C5001/63407370" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407370" Ref="D?"  Part="1" 
AR Path="/63407370" Ref="D7"  Part="1" 
F 0 "D7" H 4700 4000 50  0000 C CNN
F 1 "LED_Small" H 5150 4000 50  0000 C CNN
F 2 "" V 4900 3950 50  0001 C CNN
F 3 "~" V 4900 3950 50  0001 C CNN
	1    4900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3950 4600 3950
Wire Wire Line
	5400 3950 5000 3950
$Comp
L Device:LED_Small D?
U 1 1 63407378
P 4900 4050
AR Path="/600C5001/63407378" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63407378" Ref="D?"  Part="1" 
AR Path="/63407378" Ref="D8"  Part="1" 
F 0 "D8" H 4700 4100 50  0000 C CNN
F 1 "LED_Small" H 5150 4100 50  0000 C CNN
F 2 "" V 4900 4050 50  0001 C CNN
F 3 "~" V 4900 4050 50  0001 C CNN
	1    4900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4050 4600 4050
Wire Wire Line
	5400 4050 5000 4050
Text Label 3450 3350 2    50   ~ 0
bus0
Text Label 3450 3450 2    50   ~ 0
bus1
Text Label 3450 3550 2    50   ~ 0
bus2
Text Label 3450 3650 2    50   ~ 0
bus3
Text Label 3450 3750 2    50   ~ 0
bus4
Text Label 3450 3850 2    50   ~ 0
bus5
Text Label 3450 3950 2    50   ~ 0
bus6
Text Label 3450 4050 2    50   ~ 0
bus7
Wire Wire Line
	3600 3350 3450 3350
Wire Wire Line
	3600 3450 3450 3450
Wire Wire Line
	3600 3550 3450 3550
Wire Wire Line
	3600 3650 3450 3650
Wire Wire Line
	3600 3750 3450 3750
Wire Wire Line
	3600 3850 3450 3850
Wire Wire Line
	3600 3950 3450 3950
Wire Wire Line
	3600 4050 3450 4050
$Comp
L Device:R_Network08 RN?
U 1 1 6341601C
P 5600 2200
AR Path="/61492876/6341601C" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/6341601C" Ref="RN?"  Part="1" 
AR Path="/6341601C" Ref="RN1"  Part="1" 
F 0 "RN1" H 5988 2246 50  0000 L CNN
F 1 "10k" H 5988 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 6075 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5600 2200 50  0001 C CNN
	1    5600 2200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63416022
P 5900 1700
AR Path="/61492876/63416022" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/63416022" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63416022" Ref="#PWR?"  Part="1" 
AR Path="/63416022" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5900 1550 50  0001 C CNN
F 1 "+5V" H 5915 1873 50  0000 C CNN
F 2 "" H 5900 1700 50  0001 C CNN
F 3 "" H 5900 1700 50  0001 C CNN
	1    5900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1700 5900 1800
Wire Wire Line
	5900 1800 5800 1800
Text Label 5250 1800 2    50   ~ 0
bus0
Text Label 5250 1900 2    50   ~ 0
bus1
Text Label 5250 2000 2    50   ~ 0
bus2
Text Label 5250 2100 2    50   ~ 0
bus3
Text Label 5250 2200 2    50   ~ 0
bus4
Text Label 5250 2300 2    50   ~ 0
bus5
Text Label 5250 2400 2    50   ~ 0
bus6
Text Label 5250 2500 2    50   ~ 0
bus7
Wire Wire Line
	5400 1800 5250 1800
Wire Wire Line
	5400 1900 5250 1900
Wire Wire Line
	5400 2000 5250 2000
Wire Wire Line
	5400 2100 5250 2100
Wire Wire Line
	5400 2200 5250 2200
Wire Wire Line
	5400 2300 5250 2300
Wire Wire Line
	5400 2400 5250 2400
Wire Wire Line
	5400 2500 5250 2500
$EndSCHEMATC
