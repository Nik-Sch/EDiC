EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A0 46811 33110
encoding utf-8
Sheet 1 1
Title "EDiC - Educational Digital Computer"
Date "2021-11-30"
Rev "v01"
Comp "Niklas Schelten"
Comment1 "Master Thesis"
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
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 63407316
P 4400 3850
AR Path="/600C5001/63407316" Ref="U?"  Part="1" 
AR Path="/601B5CAE/63407316" Ref="U?"  Part="1" 
AR Path="/63407316" Ref="U1"  Part="1" 
F 0 "U1" H 4100 4831 50  0000 C CNN
F 1 "74ABT540" H 4100 4900 50  0000 C CNN
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
F 1 "+5V" H 4200 3100 50  0000 C CNN
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
Wire Wire Line
	3600 3350 3250 3350
Wire Wire Line
	3600 3450 3250 3450
Wire Wire Line
	3600 3550 3250 3550
Wire Wire Line
	3600 3650 3250 3650
Wire Wire Line
	3600 3750 3250 3750
Wire Wire Line
	3600 3850 3250 3850
Wire Wire Line
	3600 3950 3250 3950
Wire Wire Line
	3600 4050 3250 4050
$Comp
L Device:R_Network08 RN?
U 1 1 6341601C
P 3850 2150
AR Path="/61492876/6341601C" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/6341601C" Ref="RN?"  Part="1" 
AR Path="/6341601C" Ref="RN1"  Part="1" 
F 0 "RN1" H 4238 2196 50  0000 L CNN
F 1 "10k" H 4238 2105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4325 2150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3850 2150 50  0001 C CNN
	1    3850 2150
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63416022
P 4150 1650
AR Path="/61492876/63416022" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/63416022" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63416022" Ref="#PWR?"  Part="1" 
AR Path="/63416022" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4150 1500 50  0001 C CNN
F 1 "+5V" H 4165 1823 50  0000 C CNN
F 2 "" H 4150 1650 50  0001 C CNN
F 3 "" H 4150 1650 50  0001 C CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1650 4150 1750
Wire Wire Line
	4150 1750 4050 1750
Text Label 3600 1750 2    75   ~ 0
bus0
Text Label 3600 1850 2    75   ~ 0
bus1
Text Label 3600 1950 2    75   ~ 0
bus2
Text Label 3600 2050 2    75   ~ 0
bus3
Text Label 3600 2150 2    75   ~ 0
bus4
Text Label 3600 2250 2    75   ~ 0
bus5
Text Label 3600 2350 2    75   ~ 0
bus6
Text Label 3600 2450 2    75   ~ 0
bus7
Wire Wire Line
	3650 1750 3250 1750
Wire Wire Line
	3650 1850 3250 1850
Text Label 3600 4050 2    75   ~ 0
bus7
Text Label 3600 3950 2    75   ~ 0
bus6
Text Label 3600 3850 2    75   ~ 0
bus5
Text Label 3600 3750 2    75   ~ 0
bus4
Text Label 3600 3650 2    75   ~ 0
bus3
Text Label 3600 3550 2    75   ~ 0
bus2
Text Label 3600 3450 2    75   ~ 0
bus1
Text Label 3600 3350 2    75   ~ 0
bus0
Wire Wire Line
	3650 2450 3250 2450
Wire Wire Line
	3650 2350 3250 2350
Wire Wire Line
	3650 2250 3250 2250
Wire Wire Line
	3650 2150 3250 2150
Wire Wire Line
	3650 2050 3250 2050
Wire Wire Line
	3650 1950 3250 1950
Entry Wire Line
	3150 1650 3250 1750
Entry Wire Line
	3150 1750 3250 1850
Entry Wire Line
	3150 1850 3250 1950
Entry Wire Line
	3150 1950 3250 2050
Entry Wire Line
	3150 2050 3250 2150
Entry Wire Line
	3150 2150 3250 2250
Entry Wire Line
	3150 2250 3250 2350
Entry Wire Line
	3150 2350 3250 2450
Entry Wire Line
	3150 3250 3250 3350
Entry Wire Line
	3150 3350 3250 3450
Entry Wire Line
	3150 3450 3250 3550
Entry Wire Line
	3150 3550 3250 3650
Entry Wire Line
	3150 3650 3250 3750
Entry Wire Line
	3150 3750 3250 3850
Entry Wire Line
	3150 3850 3250 3950
Entry Wire Line
	3150 3950 3250 4050
$Comp
L power:+5V #PWR?
U 1 1 61AEA885
P 3600 8150
AR Path="/601B5CAE/61AEA885" Ref="#PWR?"  Part="1" 
AR Path="/61AEA885" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 8000 50  0001 C CNN
F 1 "+5V" H 3700 8250 50  0000 C CNN
F 2 "" H 3600 8150 50  0001 C CNN
F 3 "" H 3600 8150 50  0001 C CNN
	1    3600 8150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA88B
P 3600 5650
AR Path="/601B5CAE/61AEA88B" Ref="#PWR?"  Part="1" 
AR Path="/61AEA88B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 5500 50  0001 C CNN
F 1 "+5V" H 3700 5750 50  0000 C CNN
F 2 "" H 3600 5650 50  0001 C CNN
F 3 "" H 3600 5650 50  0001 C CNN
	1    3600 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA891
P 3600 7200
AR Path="/601B5CAE/61AEA891" Ref="#PWR?"  Part="1" 
AR Path="/61AEA891" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 6950 50  0001 C CNN
F 1 "GND" H 3605 7027 50  0000 C CNN
F 2 "" H 3600 7200 50  0001 C CNN
F 3 "" H 3600 7200 50  0001 C CNN
	1    3600 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA897
P 5550 7450
AR Path="/601B5CAE/61AEA897" Ref="#PWR?"  Part="1" 
AR Path="/61AEA897" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 7200 50  0001 C CNN
F 1 "GND" H 5555 7277 50  0000 C CNN
F 2 "" H 5550 7450 50  0001 C CNN
F 3 "" H 5550 7450 50  0001 C CNN
	1    5550 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA89D
P 5550 9950
AR Path="/601B5CAE/61AEA89D" Ref="#PWR?"  Part="1" 
AR Path="/61AEA89D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 9700 50  0001 C CNN
F 1 "GND" H 5555 9777 50  0000 C CNN
F 2 "" H 5550 9950 50  0001 C CNN
F 3 "" H 5550 9950 50  0001 C CNN
	1    5550 9950
	1    0    0    -1  
$EndComp
Text Label 4100 5850 0    75   ~ 0
r00
Text Label 4100 5950 0    75   ~ 0
r01
Text Label 4100 6050 0    75   ~ 0
r02
Text Label 4100 6150 0    75   ~ 0
r03
Text Label 4100 6250 0    75   ~ 0
r04
Text Label 4100 6350 0    75   ~ 0
r05
Text Label 4100 6450 0    75   ~ 0
r06
Text Label 4100 6550 0    75   ~ 0
r07
Text Label 4100 8350 0    75   ~ 0
r10
Text Label 4100 8450 0    75   ~ 0
r11
Text Label 4100 8550 0    75   ~ 0
r12
Text Label 4100 8650 0    75   ~ 0
r13
Text Label 4100 8750 0    75   ~ 0
r14
Text Label 4100 8850 0    75   ~ 0
r15
Text Label 4100 8950 0    75   ~ 0
r16
Text Label 4100 9050 0    75   ~ 0
r17
Text Label 5050 5850 2    75   ~ 0
r00
Text Label 5050 5950 2    75   ~ 0
r10
Text Label 5050 6150 2    75   ~ 0
r01
Text Label 5050 6250 2    75   ~ 0
r11
Text Label 5050 6450 2    75   ~ 0
r02
Text Label 5050 6750 2    75   ~ 0
r03
Text Label 5050 8350 2    75   ~ 0
r04
Text Label 5050 8650 2    75   ~ 0
r05
Text Label 5050 8950 2    75   ~ 0
r06
Text Label 5050 9250 2    75   ~ 0
r07
Text Label 5050 6550 2    75   ~ 0
r12
Text Label 5050 6850 2    75   ~ 0
r13
Text Label 5050 8450 2    75   ~ 0
r14
Text Label 5050 8750 2    75   ~ 0
r15
Text Label 5050 9050 2    75   ~ 0
r16
Text Label 5050 9350 2    75   ~ 0
r17
$Comp
L power:GND #PWR?
U 1 1 61AEA8C3
P 5050 7150
AR Path="/601B5CAE/61AEA8C3" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 6900 50  0001 C CNN
F 1 "GND" H 5055 6977 50  0000 C CNN
F 2 "" H 5050 7150 50  0001 C CNN
F 3 "" H 5050 7150 50  0001 C CNN
	1    5050 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA8C9
P 5050 9650
AR Path="/601B5CAE/61AEA8C9" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 9400 50  0001 C CNN
F 1 "GND" H 5055 9477 50  0000 C CNN
F 2 "" H 5050 9650 50  0001 C CNN
F 3 "" H 5050 9650 50  0001 C CNN
	1    5050 9650
	1    0    0    -1  
$EndComp
Text GLabel 5050 7050 0    75   Input ~ 0
ctrlRegAluSel
Text GLabel 5050 9550 0    75   Input ~ 0
ctrlRegAluSel
$Comp
L power:+5V #PWR?
U 1 1 61AEA8DA
P 5550 5550
AR Path="/601B5CAE/61AEA8DA" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8DA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 5400 50  0001 C CNN
F 1 "+5V" H 5650 5650 50  0000 C CNN
F 2 "" H 5550 5550 50  0001 C CNN
F 3 "" H 5550 5550 50  0001 C CNN
	1    5550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA8E0
P 5550 8050
AR Path="/601B5CAE/61AEA8E0" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 7900 50  0001 C CNN
F 1 "+5V" H 5650 8150 50  0000 C CNN
F 2 "" H 5550 8050 50  0001 C CNN
F 3 "" H 5550 8050 50  0001 C CNN
	1    5550 8050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA8E6
P 8050 5700
AR Path="/601B5CAE/61AEA8E6" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 5550 50  0001 C CNN
F 1 "+5V" H 8150 5800 50  0000 C CNN
F 2 "" H 8050 5700 50  0001 C CNN
F 3 "" H 8050 5700 50  0001 C CNN
	1    8050 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA8EC
P 8050 7300
AR Path="/601B5CAE/61AEA8EC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA8EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 7050 50  0001 C CNN
F 1 "GND" H 8055 7127 50  0000 C CNN
F 2 "" H 8050 7300 50  0001 C CNN
F 3 "" H 8050 7300 50  0001 C CNN
	1    8050 7300
	1    0    0    -1  
$EndComp
Text GLabel 2850 6850 0    75   Input ~ 0
~ctrlReg0WE~
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 61AEA8F3
P 3600 6350
AR Path="/601B5CAE/61AEA8F3" Ref="U?"  Part="1" 
AR Path="/61AEA8F3" Ref="U?"  Part="1" 
F 0 "U?" H 3600 7231 50  0000 C CNN
F 1 "74AS825" H 3600 7300 50  0000 C CNN
F 2 "" H 3600 6350 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 3600 6350 50  0001 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 61AEA8F9
P 5550 6450
AR Path="/601B5CAE/61AEA8F9" Ref="U?"  Part="1" 
AR Path="/61AEA8F9" Ref="U?"  Part="1" 
F 0 "U?" H 5550 7531 50  0000 C CNN
F 1 "74LS157" H 5550 7600 50  0000 C CNN
F 2 "" H 5550 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5550 6450 50  0001 C CNN
	1    5550 6450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 61AEA8FF
P 5550 8950
AR Path="/601B5CAE/61AEA8FF" Ref="U?"  Part="1" 
AR Path="/61AEA8FF" Ref="U?"  Part="1" 
F 0 "U?" H 5550 10031 50  0000 C CNN
F 1 "74LS157" H 5550 10100 50  0000 C CNN
F 2 "" H 5550 8950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5550 8950 50  0001 C CNN
	1    5550 8950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61AEA905
P 8050 6500
AR Path="/601B5CAE/61AEA905" Ref="U?"  Part="1" 
AR Path="/61AEA905" Ref="U?"  Part="1" 
F 0 "U?" H 8050 7481 50  0000 C CNN
F 1 "74LS245" H 8050 7550 50  0000 C CNN
F 2 "" H 8050 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8050 6500 50  0001 C CNN
	1    8050 6500
	1    0    0    -1  
$EndComp
Text GLabel 3100 6750 0    75   Input ~ 0
clk
Text GLabel 2950 7100 0    75   Input ~ 0
~reset~
Wire Wire Line
	2950 7100 3000 7100
Wire Wire Line
	3000 7100 3000 6950
Wire Wire Line
	3000 6950 3100 6950
Wire Wire Line
	4100 6750 4150 6750
Wire Wire Line
	4150 6750 4150 6850
Wire Wire Line
	4100 6950 4150 6950
Connection ~ 4150 6950
Wire Wire Line
	4150 6950 4150 7000
Wire Wire Line
	4100 6850 4150 6850
Connection ~ 4150 6850
Wire Wire Line
	4150 6850 4150 6950
$Comp
L power:GND #PWR?
U 1 1 61AEA918
P 4150 7000
AR Path="/601B5CAE/61AEA918" Ref="#PWR?"  Part="1" 
AR Path="/61AEA918" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 6750 50  0001 C CNN
F 1 "GND" H 4155 6827 50  0000 C CNN
F 2 "" H 4150 7000 50  0001 C CNN
F 3 "" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA91E
P 3600 9700
AR Path="/601B5CAE/61AEA91E" Ref="#PWR?"  Part="1" 
AR Path="/61AEA91E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 9450 50  0001 C CNN
F 1 "GND" H 3605 9527 50  0000 C CNN
F 2 "" H 3600 9700 50  0001 C CNN
F 3 "" H 3600 9700 50  0001 C CNN
	1    3600 9700
	1    0    0    -1  
$EndComp
Text GLabel 2850 9350 0    75   Input ~ 0
~ctrlReg1WE~
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 61AEA925
P 3600 8850
AR Path="/601B5CAE/61AEA925" Ref="U?"  Part="1" 
AR Path="/61AEA925" Ref="U?"  Part="1" 
F 0 "U?" H 3600 9731 50  0000 C CNN
F 1 "74AS825" H 3600 9800 50  0000 C CNN
F 2 "" H 3600 8850 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 3600 8850 50  0001 C CNN
	1    3600 8850
	1    0    0    -1  
$EndComp
Text GLabel 3100 9250 0    75   Input ~ 0
clk
Text GLabel 2950 9600 0    75   Input ~ 0
~reset~
Wire Wire Line
	2950 9600 3000 9600
Wire Wire Line
	3000 9600 3000 9450
Wire Wire Line
	3000 9450 3100 9450
Wire Wire Line
	4100 9250 4150 9250
Wire Wire Line
	4150 9250 4150 9350
Wire Wire Line
	4100 9450 4150 9450
Connection ~ 4150 9450
Wire Wire Line
	4150 9450 4150 9500
Wire Wire Line
	4100 9350 4150 9350
Connection ~ 4150 9350
Wire Wire Line
	4150 9350 4150 9450
$Comp
L power:GND #PWR?
U 1 1 61AEA938
P 4150 9500
AR Path="/601B5CAE/61AEA938" Ref="#PWR?"  Part="1" 
AR Path="/61AEA938" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 9250 50  0001 C CNN
F 1 "GND" H 4155 9327 50  0000 C CNN
F 2 "" H 4150 9500 50  0001 C CNN
F 3 "" H 4150 9500 50  0001 C CNN
	1    4150 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6850 3100 6850
Wire Wire Line
	2850 9350 3100 9350
Text Label 7550 6000 2    75   ~ 0
r00
Text Label 7550 6100 2    75   ~ 0
r01
Text Label 7550 6200 2    75   ~ 0
r02
Text Label 7550 6300 2    75   ~ 0
r03
Text Label 7550 6400 2    75   ~ 0
r04
Text Label 7550 6500 2    75   ~ 0
r05
Text Label 7550 6600 2    75   ~ 0
r06
Text Label 7550 6700 2    75   ~ 0
r07
$Comp
L power:+5V #PWR?
U 1 1 61AEA95F
P 7350 6900
AR Path="/601B5CAE/61AEA95F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA95F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 6750 50  0001 C CNN
F 1 "+5V" H 7365 7073 50  0000 C CNN
F 2 "" H 7350 6900 50  0001 C CNN
F 3 "" H 7350 6900 50  0001 C CNN
	1    7350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6900 7550 6900
Text GLabel 7350 7000 0    75   Input ~ 0
~ctrlReg0BusOE~
Wire Wire Line
	7350 7000 7550 7000
$Comp
L power:+5V #PWR?
U 1 1 61AEA969
P 8050 7850
AR Path="/601B5CAE/61AEA969" Ref="#PWR?"  Part="1" 
AR Path="/61AEA969" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 7700 50  0001 C CNN
F 1 "+5V" H 8150 7950 50  0000 C CNN
F 2 "" H 8050 7850 50  0001 C CNN
F 3 "" H 8050 7850 50  0001 C CNN
	1    8050 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA96F
P 8050 9450
AR Path="/601B5CAE/61AEA96F" Ref="#PWR?"  Part="1" 
AR Path="/61AEA96F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 9200 50  0001 C CNN
F 1 "GND" H 8055 9277 50  0000 C CNN
F 2 "" H 8050 9450 50  0001 C CNN
F 3 "" H 8050 9450 50  0001 C CNN
	1    8050 9450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61AEA975
P 8050 8650
AR Path="/601B5CAE/61AEA975" Ref="U?"  Part="1" 
AR Path="/61AEA975" Ref="U?"  Part="1" 
F 0 "U?" H 8050 9631 50  0000 C CNN
F 1 "74LS245" H 8050 9700 50  0000 C CNN
F 2 "" H 8050 8650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 8050 8650 50  0001 C CNN
	1    8050 8650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA982
P 7350 9050
AR Path="/601B5CAE/61AEA982" Ref="#PWR?"  Part="1" 
AR Path="/61AEA982" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 8900 50  0001 C CNN
F 1 "+5V" H 7365 9223 50  0000 C CNN
F 2 "" H 7350 9050 50  0001 C CNN
F 3 "" H 7350 9050 50  0001 C CNN
	1    7350 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 9050 7550 9050
Text GLabel 7350 9150 0    75   Input ~ 0
~ctrlReg1BusOE~
Wire Wire Line
	7350 9150 7550 9150
Text Label 7550 8150 2    75   ~ 0
r10
Text Label 7550 8250 2    75   ~ 0
r11
Text Label 7550 8350 2    75   ~ 0
r12
Text Label 7550 8450 2    75   ~ 0
r13
Text Label 7550 8550 2    75   ~ 0
r14
Text Label 7550 8650 2    75   ~ 0
r15
Text Label 7550 8750 2    75   ~ 0
r16
Text Label 7550 8850 2    75   ~ 0
r17
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 61AEA993
P 10600 6500
AR Path="/600C5001/61AEA993" Ref="U?"  Part="1" 
AR Path="/601B5CAE/61AEA993" Ref="U?"  Part="1" 
AR Path="/61AEA993" Ref="U?"  Part="1" 
F 0 "U?" H 10300 7481 50  0000 C CNN
F 1 "74ABT540" H 10300 7390 50  0000 C CNN
F 2 "" H 10800 6075 50  0001 C CNN
F 3 "" H 10800 6075 50  0001 C CNN
	1    10600 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEA999
P 9700 7000
AR Path="/600C5001/61AEA999" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEA999" Ref="#PWR?"  Part="1" 
AR Path="/61AEA999" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9700 6750 50  0001 C CNN
F 1 "GND" H 9705 6827 50  0000 C CNN
F 2 "" H 9700 7000 50  0001 C CNN
F 3 "" H 9700 7000 50  0001 C CNN
	1    9700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 7000 9800 7000
Wire Wire Line
	9800 6900 9700 6900
Wire Wire Line
	9700 6900 9700 7000
Connection ~ 9700 7000
$Comp
L power:GND #PWR?
U 1 1 61AEA9A3
P 10300 7300
AR Path="/600C5001/61AEA9A3" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEA9A3" Ref="#PWR?"  Part="1" 
AR Path="/61AEA9A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 7050 50  0001 C CNN
F 1 "GND" H 10305 7127 50  0000 C CNN
F 2 "" H 10300 7300 50  0001 C CNN
F 3 "" H 10300 7300 50  0001 C CNN
	1    10300 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA9A9
P 10300 5700
AR Path="/600C5001/61AEA9A9" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEA9A9" Ref="#PWR?"  Part="1" 
AR Path="/61AEA9A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 5550 50  0001 C CNN
F 1 "+5V" H 10300 5950 50  0000 C CNN
F 2 "" H 10300 5700 50  0001 C CNN
F 3 "" H 10300 5700 50  0001 C CNN
	1    10300 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 61AEA9AF
P 11100 6000
AR Path="/600C5001/61AEA9AF" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9AF" Ref="D?"  Part="1" 
AR Path="/61AEA9AF" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6050 50  0000 C CNN
F 1 "LED_Small" H 11350 6050 50  0000 C CNN
F 2 "" V 11100 6000 50  0001 C CNN
F 3 "~" V 11100 6000 50  0001 C CNN
	1    11100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6000 10800 6000
$Comp
L Device:R_Network08 RN?
U 1 1 61AEA9B6
P 11800 6400
AR Path="/61492876/61AEA9B6" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/61AEA9B6" Ref="RN?"  Part="1" 
AR Path="/61AEA9B6" Ref="RN?"  Part="1" 
F 0 "RN?" H 12188 6446 50  0000 L CNN
F 1 "220" H 12188 6355 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 12275 6400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 11800 6400 50  0001 C CNN
	1    11800 6400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEA9BC
P 12100 5900
AR Path="/61492876/61AEA9BC" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61AEA9BC" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEA9BC" Ref="#PWR?"  Part="1" 
AR Path="/61AEA9BC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12100 5750 50  0001 C CNN
F 1 "+5V" H 12115 6073 50  0000 C CNN
F 2 "" H 12100 5900 50  0001 C CNN
F 3 "" H 12100 5900 50  0001 C CNN
	1    12100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 5900 12100 6000
Wire Wire Line
	12100 6000 12000 6000
Wire Wire Line
	11600 6000 11200 6000
$Comp
L Device:LED_Small D?
U 1 1 61AEA9C5
P 11100 6100
AR Path="/600C5001/61AEA9C5" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9C5" Ref="D?"  Part="1" 
AR Path="/61AEA9C5" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6150 50  0000 C CNN
F 1 "LED_Small" H 11350 6150 50  0000 C CNN
F 2 "" V 11100 6100 50  0001 C CNN
F 3 "~" V 11100 6100 50  0001 C CNN
	1    11100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6100 10800 6100
Wire Wire Line
	11600 6100 11200 6100
$Comp
L Device:LED_Small D?
U 1 1 61AEA9CD
P 11100 6200
AR Path="/600C5001/61AEA9CD" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9CD" Ref="D?"  Part="1" 
AR Path="/61AEA9CD" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6250 50  0000 C CNN
F 1 "LED_Small" H 11350 6250 50  0000 C CNN
F 2 "" V 11100 6200 50  0001 C CNN
F 3 "~" V 11100 6200 50  0001 C CNN
	1    11100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6200 10800 6200
Wire Wire Line
	11600 6200 11200 6200
$Comp
L Device:LED_Small D?
U 1 1 61AEA9D5
P 11100 6300
AR Path="/600C5001/61AEA9D5" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9D5" Ref="D?"  Part="1" 
AR Path="/61AEA9D5" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6350 50  0000 C CNN
F 1 "LED_Small" H 11350 6350 50  0000 C CNN
F 2 "" V 11100 6300 50  0001 C CNN
F 3 "~" V 11100 6300 50  0001 C CNN
	1    11100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6300 10800 6300
Wire Wire Line
	11600 6300 11200 6300
$Comp
L Device:LED_Small D?
U 1 1 61AEA9DD
P 11100 6400
AR Path="/600C5001/61AEA9DD" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9DD" Ref="D?"  Part="1" 
AR Path="/61AEA9DD" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6450 50  0000 C CNN
F 1 "LED_Small" H 11350 6450 50  0000 C CNN
F 2 "" V 11100 6400 50  0001 C CNN
F 3 "~" V 11100 6400 50  0001 C CNN
	1    11100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6400 10800 6400
Wire Wire Line
	11600 6400 11200 6400
$Comp
L Device:LED_Small D?
U 1 1 61AEA9E5
P 11100 6500
AR Path="/600C5001/61AEA9E5" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9E5" Ref="D?"  Part="1" 
AR Path="/61AEA9E5" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6550 50  0000 C CNN
F 1 "LED_Small" H 11350 6550 50  0000 C CNN
F 2 "" V 11100 6500 50  0001 C CNN
F 3 "~" V 11100 6500 50  0001 C CNN
	1    11100 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6500 10800 6500
Wire Wire Line
	11600 6500 11200 6500
$Comp
L Device:LED_Small D?
U 1 1 61AEA9ED
P 11100 6600
AR Path="/600C5001/61AEA9ED" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9ED" Ref="D?"  Part="1" 
AR Path="/61AEA9ED" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6650 50  0000 C CNN
F 1 "LED_Small" H 11350 6650 50  0000 C CNN
F 2 "" V 11100 6600 50  0001 C CNN
F 3 "~" V 11100 6600 50  0001 C CNN
	1    11100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6600 10800 6600
Wire Wire Line
	11600 6600 11200 6600
$Comp
L Device:LED_Small D?
U 1 1 61AEA9F5
P 11100 6700
AR Path="/600C5001/61AEA9F5" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEA9F5" Ref="D?"  Part="1" 
AR Path="/61AEA9F5" Ref="D?"  Part="1" 
F 0 "D?" H 10900 6750 50  0000 C CNN
F 1 "LED_Small" H 11350 6750 50  0000 C CNN
F 2 "" V 11100 6700 50  0001 C CNN
F 3 "~" V 11100 6700 50  0001 C CNN
	1    11100 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 6700 10800 6700
Wire Wire Line
	11600 6700 11200 6700
Text Label 9800 6000 2    75   ~ 0
r00
Text Label 9800 6100 2    75   ~ 0
r01
Text Label 9800 6200 2    75   ~ 0
r02
Text Label 9800 6300 2    75   ~ 0
r03
Text Label 9800 6400 2    75   ~ 0
r04
Text Label 9800 6500 2    75   ~ 0
r05
Text Label 9800 6600 2    75   ~ 0
r06
Text Label 9800 6700 2    75   ~ 0
r07
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 61AEAA05
P 10600 8650
AR Path="/600C5001/61AEAA05" Ref="U?"  Part="1" 
AR Path="/601B5CAE/61AEAA05" Ref="U?"  Part="1" 
AR Path="/61AEAA05" Ref="U?"  Part="1" 
F 0 "U?" H 10300 9631 50  0000 C CNN
F 1 "74ABT540" H 10300 9700 50  0000 C CNN
F 2 "" H 10800 8225 50  0001 C CNN
F 3 "" H 10800 8225 50  0001 C CNN
	1    10600 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61AEAA0B
P 9700 9150
AR Path="/600C5001/61AEAA0B" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEAA0B" Ref="#PWR?"  Part="1" 
AR Path="/61AEAA0B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9700 8900 50  0001 C CNN
F 1 "GND" H 9705 8977 50  0000 C CNN
F 2 "" H 9700 9150 50  0001 C CNN
F 3 "" H 9700 9150 50  0001 C CNN
	1    9700 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 9150 9800 9150
Wire Wire Line
	9800 9050 9700 9050
Wire Wire Line
	9700 9050 9700 9150
Connection ~ 9700 9150
$Comp
L power:GND #PWR?
U 1 1 61AEAA15
P 10300 9450
AR Path="/600C5001/61AEAA15" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEAA15" Ref="#PWR?"  Part="1" 
AR Path="/61AEAA15" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 9200 50  0001 C CNN
F 1 "GND" H 10305 9277 50  0000 C CNN
F 2 "" H 10300 9450 50  0001 C CNN
F 3 "" H 10300 9450 50  0001 C CNN
	1    10300 9450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEAA1B
P 10300 7850
AR Path="/600C5001/61AEAA1B" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEAA1B" Ref="#PWR?"  Part="1" 
AR Path="/61AEAA1B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 7700 50  0001 C CNN
F 1 "+5V" H 10400 7950 50  0000 C CNN
F 2 "" H 10300 7850 50  0001 C CNN
F 3 "" H 10300 7850 50  0001 C CNN
	1    10300 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 61AEAA21
P 11100 8150
AR Path="/600C5001/61AEAA21" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA21" Ref="D?"  Part="1" 
AR Path="/61AEAA21" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8200 50  0000 C CNN
F 1 "LED_Small" H 11350 8200 50  0000 C CNN
F 2 "" V 11100 8150 50  0001 C CNN
F 3 "~" V 11100 8150 50  0001 C CNN
	1    11100 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8150 10800 8150
$Comp
L Device:R_Network08 RN?
U 1 1 61AEAA28
P 11800 8550
AR Path="/61492876/61AEAA28" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/61AEAA28" Ref="RN?"  Part="1" 
AR Path="/61AEAA28" Ref="RN?"  Part="1" 
F 0 "RN?" H 12188 8596 50  0000 L CNN
F 1 "220" H 12188 8505 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 12275 8550 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 11800 8550 50  0001 C CNN
	1    11800 8550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61AEAA2E
P 12100 8050
AR Path="/61492876/61AEAA2E" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61AEAA2E" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/61AEAA2E" Ref="#PWR?"  Part="1" 
AR Path="/61AEAA2E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12100 7900 50  0001 C CNN
F 1 "+5V" H 12115 8223 50  0000 C CNN
F 2 "" H 12100 8050 50  0001 C CNN
F 3 "" H 12100 8050 50  0001 C CNN
	1    12100 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 8050 12100 8150
Wire Wire Line
	12100 8150 12000 8150
Wire Wire Line
	11600 8150 11200 8150
$Comp
L Device:LED_Small D?
U 1 1 61AEAA37
P 11100 8250
AR Path="/600C5001/61AEAA37" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA37" Ref="D?"  Part="1" 
AR Path="/61AEAA37" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8300 50  0000 C CNN
F 1 "LED_Small" H 11350 8300 50  0000 C CNN
F 2 "" V 11100 8250 50  0001 C CNN
F 3 "~" V 11100 8250 50  0001 C CNN
	1    11100 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8250 10800 8250
Wire Wire Line
	11600 8250 11200 8250
$Comp
L Device:LED_Small D?
U 1 1 61AEAA3F
P 11100 8350
AR Path="/600C5001/61AEAA3F" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA3F" Ref="D?"  Part="1" 
AR Path="/61AEAA3F" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8400 50  0000 C CNN
F 1 "LED_Small" H 11350 8400 50  0000 C CNN
F 2 "" V 11100 8350 50  0001 C CNN
F 3 "~" V 11100 8350 50  0001 C CNN
	1    11100 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8350 10800 8350
Wire Wire Line
	11600 8350 11200 8350
$Comp
L Device:LED_Small D?
U 1 1 61AEAA47
P 11100 8450
AR Path="/600C5001/61AEAA47" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA47" Ref="D?"  Part="1" 
AR Path="/61AEAA47" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8500 50  0000 C CNN
F 1 "LED_Small" H 11350 8500 50  0000 C CNN
F 2 "" V 11100 8450 50  0001 C CNN
F 3 "~" V 11100 8450 50  0001 C CNN
	1    11100 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8450 10800 8450
Wire Wire Line
	11600 8450 11200 8450
$Comp
L Device:LED_Small D?
U 1 1 61AEAA4F
P 11100 8550
AR Path="/600C5001/61AEAA4F" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA4F" Ref="D?"  Part="1" 
AR Path="/61AEAA4F" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8600 50  0000 C CNN
F 1 "LED_Small" H 11350 8600 50  0000 C CNN
F 2 "" V 11100 8550 50  0001 C CNN
F 3 "~" V 11100 8550 50  0001 C CNN
	1    11100 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8550 10800 8550
Wire Wire Line
	11600 8550 11200 8550
$Comp
L Device:LED_Small D?
U 1 1 61AEAA57
P 11100 8650
AR Path="/600C5001/61AEAA57" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA57" Ref="D?"  Part="1" 
AR Path="/61AEAA57" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8700 50  0000 C CNN
F 1 "LED_Small" H 11350 8700 50  0000 C CNN
F 2 "" V 11100 8650 50  0001 C CNN
F 3 "~" V 11100 8650 50  0001 C CNN
	1    11100 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8650 10800 8650
Wire Wire Line
	11600 8650 11200 8650
$Comp
L Device:LED_Small D?
U 1 1 61AEAA5F
P 11100 8750
AR Path="/600C5001/61AEAA5F" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA5F" Ref="D?"  Part="1" 
AR Path="/61AEAA5F" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8800 50  0000 C CNN
F 1 "LED_Small" H 11350 8800 50  0000 C CNN
F 2 "" V 11100 8750 50  0001 C CNN
F 3 "~" V 11100 8750 50  0001 C CNN
	1    11100 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8750 10800 8750
Wire Wire Line
	11600 8750 11200 8750
$Comp
L Device:LED_Small D?
U 1 1 61AEAA67
P 11100 8850
AR Path="/600C5001/61AEAA67" Ref="D?"  Part="1" 
AR Path="/601B5CAE/61AEAA67" Ref="D?"  Part="1" 
AR Path="/61AEAA67" Ref="D?"  Part="1" 
F 0 "D?" H 10900 8900 50  0000 C CNN
F 1 "LED_Small" H 11350 8900 50  0000 C CNN
F 2 "" V 11100 8850 50  0001 C CNN
F 3 "~" V 11100 8850 50  0001 C CNN
	1    11100 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8850 10800 8850
Wire Wire Line
	11600 8850 11200 8850
Text Label 9800 8150 2    75   ~ 0
r10
Text Label 9800 8250 2    75   ~ 0
r11
Text Label 9800 8350 2    75   ~ 0
r12
Text Label 9800 8450 2    75   ~ 0
r13
Text Label 9800 8550 2    75   ~ 0
r14
Text Label 9800 8650 2    75   ~ 0
r15
Text Label 9800 8750 2    75   ~ 0
r16
Text Label 9800 8850 2    75   ~ 0
r17
Wire Wire Line
	3100 5850 2850 5850
Wire Wire Line
	3100 5950 2850 5950
Wire Wire Line
	3100 6050 2850 6050
Wire Wire Line
	3100 6150 2850 6150
Wire Wire Line
	3100 6250 2850 6250
Wire Wire Line
	3100 6350 2850 6350
Wire Wire Line
	3100 6450 2850 6450
Wire Wire Line
	3100 6550 2850 6550
Text Label 3100 6550 2    75   ~ 0
bus7
Text Label 3100 6450 2    75   ~ 0
bus6
Text Label 3100 6350 2    75   ~ 0
bus5
Text Label 3100 6250 2    75   ~ 0
bus4
Text Label 3100 6150 2    75   ~ 0
bus3
Text Label 3100 6050 2    75   ~ 0
bus2
Text Label 3100 5950 2    75   ~ 0
bus1
Text Label 3100 5850 2    75   ~ 0
bus0
Entry Wire Line
	2750 5750 2850 5850
Entry Wire Line
	2750 5850 2850 5950
Entry Wire Line
	2750 5950 2850 6050
Entry Wire Line
	2750 6050 2850 6150
Entry Wire Line
	2750 6150 2850 6250
Entry Wire Line
	2750 6250 2850 6350
Entry Wire Line
	2750 6350 2850 6450
Entry Wire Line
	2750 6450 2850 6550
Wire Wire Line
	3100 8350 2850 8350
Wire Wire Line
	3100 8450 2850 8450
Wire Wire Line
	3100 8550 2850 8550
Wire Wire Line
	3100 8650 2850 8650
Wire Wire Line
	3100 8750 2850 8750
Wire Wire Line
	3100 8850 2850 8850
Wire Wire Line
	3100 8950 2850 8950
Wire Wire Line
	3100 9050 2850 9050
Text Label 3100 9050 2    75   ~ 0
bus7
Text Label 3100 8950 2    75   ~ 0
bus6
Text Label 3100 8850 2    75   ~ 0
bus5
Text Label 3100 8750 2    75   ~ 0
bus4
Text Label 3100 8650 2    75   ~ 0
bus3
Text Label 3100 8550 2    75   ~ 0
bus2
Text Label 3100 8450 2    75   ~ 0
bus1
Text Label 3100 8350 2    75   ~ 0
bus0
Entry Wire Line
	2750 8250 2850 8350
Entry Wire Line
	2750 8350 2850 8450
Entry Wire Line
	2750 8450 2850 8550
Entry Wire Line
	2750 8550 2850 8650
Entry Wire Line
	2750 8650 2850 8750
Entry Wire Line
	2750 8750 2850 8850
Entry Wire Line
	2750 8850 2850 8950
Entry Wire Line
	2750 8950 2850 9050
Wire Bus Line
	2750 8000 2100 8000
Wire Bus Line
	2100 8000 2100 5100
Wire Bus Line
	2100 5100 2750 5100
Wire Bus Line
	2750 5100 2750 2850
Wire Bus Line
	2750 2850 3150 2850
Connection ~ 2750 5100
Connection ~ 3150 2850
Wire Wire Line
	8550 6000 8900 6000
Wire Wire Line
	8550 6100 8900 6100
Wire Wire Line
	8550 6200 8900 6200
Wire Wire Line
	8550 6300 8900 6300
Wire Wire Line
	8550 6400 8900 6400
Wire Wire Line
	8550 6500 8900 6500
Wire Wire Line
	8550 6600 8900 6600
Wire Wire Line
	8550 6700 8900 6700
Text Label 8550 6700 0    75   ~ 0
bus7
Text Label 8550 6600 0    75   ~ 0
bus6
Text Label 8550 6500 0    75   ~ 0
bus5
Text Label 8550 6400 0    75   ~ 0
bus4
Text Label 8550 6300 0    75   ~ 0
bus3
Text Label 8550 6200 0    75   ~ 0
bus2
Text Label 8550 6100 0    75   ~ 0
bus1
Text Label 8550 6000 0    75   ~ 0
bus0
Entry Wire Line
	9000 5900 8900 6000
Entry Wire Line
	9000 6000 8900 6100
Entry Wire Line
	9000 6100 8900 6200
Entry Wire Line
	9000 6200 8900 6300
Entry Wire Line
	9000 6300 8900 6400
Entry Wire Line
	9000 6400 8900 6500
Entry Wire Line
	9000 6500 8900 6600
Entry Wire Line
	9000 6600 8900 6700
Wire Wire Line
	8550 8150 8900 8150
Wire Wire Line
	8550 8250 8900 8250
Wire Wire Line
	8550 8350 8900 8350
Wire Wire Line
	8550 8450 8900 8450
Wire Wire Line
	8550 8550 8900 8550
Wire Wire Line
	8550 8650 8900 8650
Wire Wire Line
	8550 8750 8900 8750
Wire Wire Line
	8550 8850 8900 8850
Text Label 8550 8850 0    75   ~ 0
bus7
Text Label 8550 8750 0    75   ~ 0
bus6
Text Label 8550 8650 0    75   ~ 0
bus5
Text Label 8550 8550 0    75   ~ 0
bus4
Text Label 8550 8450 0    75   ~ 0
bus3
Text Label 8550 8350 0    75   ~ 0
bus2
Text Label 8550 8250 0    75   ~ 0
bus1
Text Label 8550 8150 0    75   ~ 0
bus0
Entry Wire Line
	9000 8050 8900 8150
Entry Wire Line
	9000 8150 8900 8250
Entry Wire Line
	9000 8250 8900 8350
Entry Wire Line
	9000 8350 8900 8450
Entry Wire Line
	9000 8450 8900 8550
Entry Wire Line
	9000 8550 8900 8650
Entry Wire Line
	9000 8650 8900 8750
Entry Wire Line
	9000 8750 8900 8850
Wire Bus Line
	2750 5100 9000 5100
Wire Wire Line
	6050 6750 6300 6750
Wire Wire Line
	6050 8950 6300 8950
Wire Wire Line
	6050 5850 6300 5850
Wire Wire Line
	6050 6450 6300 6450
Wire Wire Line
	6050 9250 6300 9250
Wire Wire Line
	6050 6150 6300 6150
Wire Wire Line
	6050 8350 6300 8350
Entry Wire Line
	6400 6850 6300 6750
Entry Wire Line
	6400 9050 6300 8950
Entry Wire Line
	6400 5950 6300 5850
Entry Wire Line
	6400 6550 6300 6450
Entry Wire Line
	6400 6250 6300 6150
Entry Wire Line
	6400 8450 6300 8350
Entry Wire Line
	6400 9350 6300 9250
Entry Wire Line
	6400 8750 6300 8650
Wire Wire Line
	6050 8650 6300 8650
Text Label 6100 5850 0    75   ~ 0
a0
Text Label 6100 6150 0    75   ~ 0
a1
Text Label 6100 6450 0    75   ~ 0
a2
Text Label 6100 6750 0    75   ~ 0
a3
Text Label 6100 9250 0    75   ~ 0
a7
Text Label 6100 8950 0    75   ~ 0
a6
Text Label 6100 8650 0    75   ~ 0
a5
Text Label 6100 8350 0    75   ~ 0
a4
$Comp
L power:+5V #PWR?
U 1 1 61EF6431
P 15650 19100
AR Path="/600C5001/61EF6431" Ref="#PWR?"  Part="1" 
AR Path="/61EF6431" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15650 18950 50  0001 C CNN
F 1 "+5V" H 15665 19273 50  0000 C CNN
F 2 "" H 15650 19100 50  0001 C CNN
F 3 "" H 15650 19100 50  0001 C CNN
	1    15650 19100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6437
P 16150 17900
AR Path="/600C5001/61EF6437" Ref="#PWR?"  Part="1" 
AR Path="/61EF6437" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16150 17750 50  0001 C CNN
F 1 "+5V" H 16150 18150 50  0000 C CNN
F 2 "" H 16150 17900 50  0001 C CNN
F 3 "" H 16150 17900 50  0001 C CNN
	1    16150 17900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF643D
P 16150 19500
AR Path="/600C5001/61EF643D" Ref="#PWR?"  Part="1" 
AR Path="/61EF643D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16150 19250 50  0001 C CNN
F 1 "GND" H 16155 19327 50  0000 C CNN
F 2 "" H 16150 19500 50  0001 C CNN
F 3 "" H 16150 19500 50  0001 C CNN
	1    16150 19500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 61EF6443
P 16150 18700
AR Path="/600C5001/61EF6443" Ref="U?"  Part="1" 
AR Path="/61EF6443" Ref="U?"  Part="1" 
F 0 "U?" H 16150 19681 50  0000 C CNN
F 1 "74LS245" H 16150 19590 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 16150 18700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 16150 18700 50  0001 C CNN
	1    16150 18700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6449
P 13600 18000
AR Path="/600C5001/61EF6449" Ref="#PWR?"  Part="1" 
AR Path="/61EF6449" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13600 17850 50  0001 C CNN
F 1 "+5V" H 13600 18250 50  0000 C CNN
F 2 "" H 13600 18000 50  0001 C CNN
F 3 "" H 13600 18000 50  0001 C CNN
	1    13600 18000
	1    0    0    -1  
$EndComp
Text Label 3850 11950 2    75   ~ 0
bus0
$Comp
L power:GND #PWR?
U 1 1 61EF64CF
P 1250 11850
AR Path="/600C5001/61EF64CF" Ref="#PWR?"  Part="1" 
AR Path="/61EF64CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 11600 50  0001 C CNN
F 1 "GND" H 1255 11677 50  0000 C CNN
F 2 "" H 1250 11850 50  0001 C CNN
F 3 "" H 1250 11850 50  0001 C CNN
	1    1250 11850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF64DB
P 1250 10850
AR Path="/600C5001/61EF64DB" Ref="#PWR?"  Part="1" 
AR Path="/61EF64DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 10700 50  0001 C CNN
F 1 "+5V" H 1265 11023 50  0000 C CNN
F 2 "" H 1250 10850 50  0001 C CNN
F 3 "" H 1250 10850 50  0001 C CNN
	1    1250 10850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 61EF64FF
P 1250 11350
AR Path="/600C5001/61EF64FF" Ref="U?"  Part="5" 
AR Path="/61EF64FF" Ref="U?"  Part="5" 
F 0 "U?" H 1480 11396 50  0000 L CNN
F 1 "74LS86" H 1480 11305 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 11350 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 1250 11350 50  0001 C CNN
	5    1250 11350
	1    0    0    -1  
$EndComp
Text GLabel 19000 24350 2    75   Output ~ 0
flagZero
Wire Wire Line
	13500 21850 13700 21850
Text GLabel 19000 24500 2    75   Output ~ 0
flagNegative
Wire Wire Line
	12050 18900 12050 23450
$Comp
L power:GND #PWR?
U 1 1 61EF6575
P 13600 19550
AR Path="/601B5CAE/61EF6575" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF6575" Ref="#PWR?"  Part="1" 
AR Path="/61EF6575" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13600 19300 50  0001 C CNN
F 1 "GND" H 13605 19377 50  0000 C CNN
F 2 "" H 13600 19550 50  0001 C CNN
F 3 "" H 13600 19550 50  0001 C CNN
	1    13600 19550
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 61EF657B
P 13600 18700
AR Path="/601B5CAE/61EF657B" Ref="U?"  Part="1" 
AR Path="/600C5001/61EF657B" Ref="U?"  Part="1" 
AR Path="/61EF657B" Ref="U?"  Part="1" 
F 0 "U?" H 13600 19581 50  0000 C CNN
F 1 "74AS825" H 13600 19490 50  0000 C CNN
F 2 "" H 13600 18700 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 13600 18700 50  0001 C CNN
	1    13600 18700
	1    0    0    -1  
$EndComp
Text GLabel 13100 19100 0    75   Input ~ 0
clk
Text GLabel 12950 19400 0    75   Input ~ 0
~reset~
Wire Wire Line
	12950 19400 13000 19400
Wire Wire Line
	13000 19400 13000 19300
Wire Wire Line
	13000 19300 13100 19300
Wire Wire Line
	14100 19100 14100 19200
Connection ~ 14100 19300
Wire Wire Line
	14100 19300 14100 19350
Connection ~ 14100 19200
Wire Wire Line
	14100 19200 14100 19300
$Comp
L power:GND #PWR?
U 1 1 61EF658B
P 14100 19350
AR Path="/601B5CAE/61EF658B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF658B" Ref="#PWR?"  Part="1" 
AR Path="/61EF658B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14100 19100 50  0001 C CNN
F 1 "GND" H 14105 19177 50  0000 C CNN
F 2 "" H 14100 19350 50  0001 C CNN
F 3 "" H 14100 19350 50  0001 C CNN
	1    14100 19350
	1    0    0    -1  
$EndComp
Wire Wire Line
	12800 19200 13100 19200
Text GLabel 12800 19200 0    75   Input ~ 0
~ctrlAluYWE~
Text GLabel 15650 19200 0    75   Input ~ 0
~ctrlAluOE~
Text HLabel 16800 18200 2    50   BiDi ~ 0
bus0
Wire Wire Line
	16650 18200 16800 18200
Text HLabel 16800 18300 2    50   BiDi ~ 0
bus1
Wire Wire Line
	16650 18300 16800 18300
Text HLabel 16800 18400 2    50   BiDi ~ 0
bus2
Wire Wire Line
	16650 18400 16800 18400
Text HLabel 16800 18500 2    50   BiDi ~ 0
bus3
Wire Wire Line
	16650 18500 16800 18500
Text HLabel 16800 18600 2    50   BiDi ~ 0
bus4
Wire Wire Line
	16650 18600 16800 18600
Text HLabel 16800 18700 2    50   BiDi ~ 0
bus5
Wire Wire Line
	16650 18700 16800 18700
Text HLabel 16800 18800 2    50   BiDi ~ 0
bus6
Wire Wire Line
	16650 18800 16800 18800
Text HLabel 16800 18900 2    50   BiDi ~ 0
bus7
Wire Wire Line
	16650 18900 16800 18900
Text GLabel 19000 24800 2    75   Output ~ 0
flagCarry
Text GLabel 19000 24650 2    75   Output ~ 0
flagOverflow
$Comp
L 74xx:74LS86 U?
U 2 1 61EF65B7
P 14100 21850
AR Path="/600C5001/61EF65B7" Ref="U?"  Part="2" 
AR Path="/61EF65B7" Ref="U?"  Part="2" 
F 0 "U?" H 14100 22175 50  0000 C CNN
F 1 "74LS86" H 14100 22084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14100 21850 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 14100 21850 50  0001 C CNN
	2    14100 21850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6602
P 9250 12100
AR Path="/600C5001/61EF6602" Ref="#PWR?"  Part="1" 
AR Path="/61EF6602" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 11950 50  0001 C CNN
F 1 "+5V" H 9350 12200 50  0000 C CNN
F 2 "" H 9250 12100 50  0001 C CNN
F 3 "" H 9250 12100 50  0001 C CNN
	1    9250 12100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS153 U?
U 1 1 61EF6608
P 9250 15750
AR Path="/600C5001/61EF6608" Ref="U?"  Part="1" 
AR Path="/61EF6608" Ref="U?"  Part="1" 
F 0 "U?" H 9250 16931 50  0000 C CNN
F 1 "74LS153" H 9250 17000 50  0000 C CNN
F 2 "" H 9250 15750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 9250 15750 50  0001 C CNN
	1    9250 15750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF660E
P 9250 16850
AR Path="/600C5001/61EF660E" Ref="#PWR?"  Part="1" 
AR Path="/61EF660E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 16600 50  0001 C CNN
F 1 "GND" H 9255 16677 50  0000 C CNN
F 2 "" H 9250 16850 50  0001 C CNN
F 3 "" H 9250 16850 50  0001 C CNN
	1    9250 16850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6614
P 9250 14750
AR Path="/600C5001/61EF6614" Ref="#PWR?"  Part="1" 
AR Path="/61EF6614" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 14600 50  0001 C CNN
F 1 "+5V" H 9350 14850 50  0000 C CNN
F 2 "" H 9250 14750 50  0001 C CNN
F 3 "" H 9250 14750 50  0001 C CNN
	1    9250 14750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF661A
P 8550 15450
AR Path="/600C5001/61EF661A" Ref="#PWR?"  Part="1" 
AR Path="/61EF661A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 15200 50  0001 C CNN
F 1 "GND" H 8555 15277 50  0000 C CNN
F 2 "" H 8550 15450 50  0001 C CNN
F 3 "" H 8550 15450 50  0001 C CNN
	1    8550 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 15450 8750 15450
$Comp
L power:GND #PWR?
U 1 1 61EF6621
P 8550 16150
AR Path="/600C5001/61EF6621" Ref="#PWR?"  Part="1" 
AR Path="/61EF6621" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 15900 50  0001 C CNN
F 1 "GND" H 8555 15977 50  0000 C CNN
F 2 "" H 8550 16150 50  0001 C CNN
F 3 "" H 8550 16150 50  0001 C CNN
	1    8550 16150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 16150 8750 16150
Wire Wire Line
	8750 16250 8750 16150
Wire Wire Line
	8750 15450 8750 15550
$Comp
L 74xx:74LS153 U?
U 1 1 61EF662A
P 9250 18400
AR Path="/600C5001/61EF662A" Ref="U?"  Part="1" 
AR Path="/61EF662A" Ref="U?"  Part="1" 
F 0 "U?" H 9250 19581 50  0000 C CNN
F 1 "74LS153" H 9250 19650 50  0000 C CNN
F 2 "" H 9250 18400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 9250 18400 50  0001 C CNN
	1    9250 18400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6630
P 9250 19500
AR Path="/600C5001/61EF6630" Ref="#PWR?"  Part="1" 
AR Path="/61EF6630" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 19250 50  0001 C CNN
F 1 "GND" H 9255 19327 50  0000 C CNN
F 2 "" H 9250 19500 50  0001 C CNN
F 3 "" H 9250 19500 50  0001 C CNN
	1    9250 19500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6636
P 9250 17400
AR Path="/600C5001/61EF6636" Ref="#PWR?"  Part="1" 
AR Path="/61EF6636" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 17250 50  0001 C CNN
F 1 "+5V" H 9350 17500 50  0000 C CNN
F 2 "" H 9250 17400 50  0001 C CNN
F 3 "" H 9250 17400 50  0001 C CNN
	1    9250 17400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF663C
P 8550 18100
AR Path="/600C5001/61EF663C" Ref="#PWR?"  Part="1" 
AR Path="/61EF663C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 17850 50  0001 C CNN
F 1 "GND" H 8555 17927 50  0000 C CNN
F 2 "" H 8550 18100 50  0001 C CNN
F 3 "" H 8550 18100 50  0001 C CNN
	1    8550 18100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 18100 8750 18100
$Comp
L power:GND #PWR?
U 1 1 61EF6643
P 8550 18800
AR Path="/600C5001/61EF6643" Ref="#PWR?"  Part="1" 
AR Path="/61EF6643" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 18550 50  0001 C CNN
F 1 "GND" H 8555 18627 50  0000 C CNN
F 2 "" H 8550 18800 50  0001 C CNN
F 3 "" H 8550 18800 50  0001 C CNN
	1    8550 18800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 18800 8750 18800
Wire Wire Line
	8750 18900 8750 18800
Wire Wire Line
	8750 18100 8750 18200
Text GLabel 8750 19100 0    75   Input ~ 0
ctrlAluOp0
Text GLabel 8750 19350 0    75   Input ~ 0
ctrlAluOp1
$Comp
L 74xx:74LS153 U?
U 1 1 61EF664E
P 9250 21050
AR Path="/600C5001/61EF664E" Ref="U?"  Part="1" 
AR Path="/61EF664E" Ref="U?"  Part="1" 
F 0 "U?" H 9250 22231 50  0000 C CNN
F 1 "74LS153" H 9250 22300 50  0000 C CNN
F 2 "" H 9250 21050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 9250 21050 50  0001 C CNN
	1    9250 21050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6654
P 9250 22150
AR Path="/600C5001/61EF6654" Ref="#PWR?"  Part="1" 
AR Path="/61EF6654" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 21900 50  0001 C CNN
F 1 "GND" H 9255 21977 50  0000 C CNN
F 2 "" H 9250 22150 50  0001 C CNN
F 3 "" H 9250 22150 50  0001 C CNN
	1    9250 22150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF665A
P 9250 20050
AR Path="/600C5001/61EF665A" Ref="#PWR?"  Part="1" 
AR Path="/61EF665A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 19900 50  0001 C CNN
F 1 "+5V" H 9350 20150 50  0000 C CNN
F 2 "" H 9250 20050 50  0001 C CNN
F 3 "" H 9250 20050 50  0001 C CNN
	1    9250 20050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6660
P 8550 20750
AR Path="/600C5001/61EF6660" Ref="#PWR?"  Part="1" 
AR Path="/61EF6660" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 20500 50  0001 C CNN
F 1 "GND" H 8555 20577 50  0000 C CNN
F 2 "" H 8550 20750 50  0001 C CNN
F 3 "" H 8550 20750 50  0001 C CNN
	1    8550 20750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 20750 8750 20750
$Comp
L power:GND #PWR?
U 1 1 61EF6667
P 8550 21450
AR Path="/600C5001/61EF6667" Ref="#PWR?"  Part="1" 
AR Path="/61EF6667" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 21200 50  0001 C CNN
F 1 "GND" H 8555 21277 50  0000 C CNN
F 2 "" H 8550 21450 50  0001 C CNN
F 3 "" H 8550 21450 50  0001 C CNN
	1    8550 21450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 21450 8750 21450
Wire Wire Line
	8750 21550 8750 21450
Wire Wire Line
	8750 20750 8750 20850
Wire Wire Line
	8750 12800 8750 12900
Wire Wire Line
	8750 13600 8750 13500
Wire Wire Line
	8550 13500 8750 13500
$Comp
L power:GND #PWR?
U 1 1 61EF6673
P 8550 13500
AR Path="/600C5001/61EF6673" Ref="#PWR?"  Part="1" 
AR Path="/61EF6673" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 13250 50  0001 C CNN
F 1 "GND" H 8555 13327 50  0000 C CNN
F 2 "" H 8550 13500 50  0001 C CNN
F 3 "" H 8550 13500 50  0001 C CNN
	1    8550 13500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 12800 8750 12800
$Comp
L power:GND #PWR?
U 1 1 61EF667A
P 8550 12800
AR Path="/600C5001/61EF667A" Ref="#PWR?"  Part="1" 
AR Path="/61EF667A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8550 12550 50  0001 C CNN
F 1 "GND" H 8555 12627 50  0000 C CNN
F 2 "" H 8550 12800 50  0001 C CNN
F 3 "" H 8550 12800 50  0001 C CNN
	1    8550 12800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6680
P 9250 14200
AR Path="/600C5001/61EF6680" Ref="#PWR?"  Part="1" 
AR Path="/61EF6680" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9250 13950 50  0001 C CNN
F 1 "GND" H 9255 14027 50  0000 C CNN
F 2 "" H 9250 14200 50  0001 C CNN
F 3 "" H 9250 14200 50  0001 C CNN
	1    9250 14200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS153 U?
U 1 1 61EF6686
P 9250 13100
AR Path="/600C5001/61EF6686" Ref="U?"  Part="1" 
AR Path="/61EF6686" Ref="U?"  Part="1" 
F 0 "U?" H 9250 14281 50  0000 C CNN
F 1 "74LS153" H 9250 14350 50  0000 C CNN
F 2 "" H 9250 13100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS153" H 9250 13100 50  0001 C CNN
	1    9250 13100
	1    0    0    -1  
$EndComp
Text Label 8750 12400 2    75   ~ 0
adder0
Text Label 8750 12500 2    75   ~ 0
and0
Text Label 8750 12600 2    75   ~ 0
xor0
Text Label 8750 12700 2    75   ~ 0
shift0
Text Label 8750 13100 2    75   ~ 0
adder1
Text Label 8750 13200 2    75   ~ 0
and1
Text Label 8750 13300 2    75   ~ 0
xor1
Text Label 8750 13400 2    75   ~ 0
shift1
Text Label 8750 15050 2    75   ~ 0
adder2
Text Label 8750 15150 2    75   ~ 0
and2
Text Label 8750 15250 2    75   ~ 0
xor2
Text Label 8750 15350 2    75   ~ 0
shift2
Text Label 8750 15750 2    75   ~ 0
adder3
Text Label 8750 15850 2    75   ~ 0
and3
Text Label 8750 15950 2    75   ~ 0
xor3
Text Label 8750 16050 2    75   ~ 0
shift3
Text Label 8750 17700 2    75   ~ 0
adder4
Text Label 8750 17800 2    75   ~ 0
and4
Text Label 8750 17900 2    75   ~ 0
xor4
Text Label 8750 18000 2    75   ~ 0
shift4
Text Label 8750 18400 2    75   ~ 0
adder5
Text Label 8750 18500 2    75   ~ 0
and5
Text Label 8750 18600 2    75   ~ 0
xor5
Text Label 8750 18700 2    75   ~ 0
shift5
Text Label 8750 20350 2    75   ~ 0
adder6
Text Label 8750 20450 2    75   ~ 0
and6
Text Label 8750 20550 2    75   ~ 0
xor6
Text Label 8750 20650 2    75   ~ 0
shift6
Text Label 8750 21050 2    75   ~ 0
adder7
Text Label 8750 21150 2    75   ~ 0
and7
Text Label 8750 21250 2    75   ~ 0
xor7
Text Label 8750 21350 2    75   ~ 0
shift7
Wire Wire Line
	9750 21050 11000 21050
Wire Wire Line
	11000 21050 11000 18900
Wire Wire Line
	11000 18900 12050 18900
Wire Wire Line
	13100 18800 11950 18800
Wire Wire Line
	10900 18800 10900 20350
Wire Wire Line
	10900 20350 9750 20350
Wire Wire Line
	9750 18400 9950 18400
Wire Wire Line
	9950 18400 9950 18700
Wire Wire Line
	9950 18700 11850 18700
Wire Wire Line
	13100 18600 11750 18600
Wire Wire Line
	10050 18600 10050 17700
Wire Wire Line
	10050 17700 9750 17700
Wire Wire Line
	9750 15750 10150 15750
Wire Wire Line
	10150 15750 10150 18500
Wire Wire Line
	10150 18500 11650 18500
Wire Wire Line
	13100 18400 11550 18400
Wire Wire Line
	10250 18400 10250 15050
Wire Wire Line
	10250 15050 9750 15050
Wire Wire Line
	9750 13100 10350 13100
Wire Wire Line
	9750 12400 10450 12400
Wire Wire Line
	10350 18300 11450 18300
Wire Wire Line
	10350 13100 10350 18300
Wire Wire Line
	13100 18200 11350 18200
Wire Wire Line
	10450 12400 10450 18200
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 61EF66C4
P 13600 22650
AR Path="/600C5001/61EF66C4" Ref="U?"  Part="1" 
AR Path="/61EF66C4" Ref="U?"  Part="1" 
F 0 "U?" H 13544 22633 100 0000 L CNN
F 1 "74F521" H 13544 22467 100 0000 L CNN
F 2 "" H 13600 22650 100 0001 C CNN
F 3 "" H 13600 22650 100 0001 C CNN
	1    13600 22650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF66CA
P 13000 23950
AR Path="/600C5001/61EF66CA" Ref="#PWR?"  Part="1" 
AR Path="/61EF66CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13000 23700 50  0001 C CNN
F 1 "GND" H 13005 23777 50  0000 C CNN
F 2 "" H 13000 23950 50  0001 C CNN
F 3 "" H 13000 23950 50  0001 C CNN
	1    13000 23950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF66D0
P 13000 21550
AR Path="/600C5001/61EF66D0" Ref="#PWR?"  Part="1" 
AR Path="/61EF66D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13000 21400 50  0001 C CNN
F 1 "+5V" H 13015 21723 50  0000 C CNN
F 2 "" H 13000 21550 50  0001 C CNN
F 3 "" H 13000 21550 50  0001 C CNN
	1    13000 21550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF66D6
P 12300 22550
AR Path="/600C5001/61EF66D6" Ref="#PWR?"  Part="1" 
AR Path="/61EF66D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12300 22300 50  0001 C CNN
F 1 "GND" H 12305 22377 50  0000 C CNN
F 2 "" H 12300 22550 50  0001 C CNN
F 3 "" H 12300 22550 50  0001 C CNN
	1    12300 22550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 22550 12500 22550
Wire Wire Line
	12500 21850 12300 21850
Wire Wire Line
	12300 21850 12300 21950
Connection ~ 12300 22550
Wire Wire Line
	12300 22450 12500 22450
Connection ~ 12300 22450
Wire Wire Line
	12300 22450 12300 22550
Wire Wire Line
	12500 22350 12300 22350
Connection ~ 12300 22350
Wire Wire Line
	12300 22350 12300 22450
Wire Wire Line
	12300 22250 12500 22250
Connection ~ 12300 22250
Wire Wire Line
	12300 22250 12300 22350
Wire Wire Line
	12500 22150 12300 22150
Connection ~ 12300 22150
Wire Wire Line
	12300 22150 12300 22250
Wire Wire Line
	12300 22050 12500 22050
Connection ~ 12300 22050
Wire Wire Line
	12300 22050 12300 22150
Wire Wire Line
	12500 21950 12300 21950
Connection ~ 12300 21950
Wire Wire Line
	12300 21950 12300 22050
Wire Wire Line
	14100 18900 14300 18900
Wire Wire Line
	14100 18800 14400 18800
Wire Wire Line
	14100 18700 14500 18700
Wire Wire Line
	14100 18400 14800 18400
Wire Wire Line
	14100 18300 14900 18300
Wire Wire Line
	14100 18200 15000 18200
Wire Wire Line
	14100 18500 14700 18500
Wire Wire Line
	12050 24200 12050 23450
Wire Wire Line
	12050 23450 12500 23450
Wire Wire Line
	12500 23350 11950 23350
Wire Wire Line
	11950 23350 11950 18800
Wire Wire Line
	11850 18700 11850 23250
Wire Wire Line
	11850 23250 12500 23250
Wire Wire Line
	12500 23150 11750 23150
Wire Wire Line
	12500 23050 11650 23050
Wire Wire Line
	12500 22950 11550 22950
Wire Wire Line
	12500 22850 11450 22850
Wire Wire Line
	12500 22750 11350 22750
Wire Wire Line
	14100 18600 14600 18600
Wire Wire Line
	11750 23150 11750 18600
Wire Wire Line
	11650 23050 11650 18500
Wire Wire Line
	11550 22950 11550 18400
Wire Wire Line
	11450 22850 11450 18300
Wire Wire Line
	11350 22750 11350 18200
Connection ~ 15000 18200
Wire Wire Line
	15000 18200 15650 18200
$Comp
L power:GND #PWR?
U 1 1 61EF670D
P 12350 23750
AR Path="/61492876/61EF670D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF670D" Ref="#PWR?"  Part="1" 
AR Path="/61EF670D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12350 23500 50  0001 C CNN
F 1 "GND" H 12355 23577 50  0000 C CNN
F 2 "" H 12350 23750 50  0001 C CNN
F 3 "" H 12350 23750 50  0001 C CNN
	1    12350 23750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 23750 12350 23650
Wire Wire Line
	12350 23650 12500 23650
Wire Wire Line
	15650 20450 15000 20450
Wire Wire Line
	15000 20450 15000 18200
Wire Wire Line
	14900 18300 14900 20550
Wire Wire Line
	14900 20550 15650 20550
Connection ~ 14900 18300
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 61EF671A
P 16450 20950
AR Path="/600C5001/61EF671A" Ref="U?"  Part="1" 
AR Path="/61EF671A" Ref="U?"  Part="1" 
F 0 "U?" H 16150 21931 50  0000 C CNN
F 1 "74ABT540" H 16150 21840 50  0000 C CNN
F 2 "" H 16650 20525 50  0001 C CNN
F 3 "" H 16650 20525 50  0001 C CNN
	1    16450 20950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 20650 14800 20650
Wire Wire Line
	14800 20650 14800 18400
Connection ~ 14800 18400
Wire Wire Line
	14700 18500 14700 20750
Wire Wire Line
	14700 20750 15650 20750
Connection ~ 14700 18500
Wire Wire Line
	14600 18600 14600 20850
Wire Wire Line
	14600 20850 15650 20850
Connection ~ 14600 18600
Wire Wire Line
	15650 20950 14500 20950
Wire Wire Line
	14500 20950 14500 18700
Connection ~ 14500 18700
Wire Wire Line
	14400 18800 14400 21050
Wire Wire Line
	14400 21050 15650 21050
Connection ~ 14400 18800
Wire Wire Line
	15650 21150 14300 21150
Wire Wire Line
	14300 21150 14300 18900
Connection ~ 14300 18900
$Comp
L power:GND #PWR?
U 1 1 61EF6732
P 15550 21450
AR Path="/600C5001/61EF6732" Ref="#PWR?"  Part="1" 
AR Path="/61EF6732" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15550 21200 50  0001 C CNN
F 1 "GND" H 15555 21277 50  0000 C CNN
F 2 "" H 15550 21450 50  0001 C CNN
F 3 "" H 15550 21450 50  0001 C CNN
	1    15550 21450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 21450 15650 21450
Wire Wire Line
	15650 21350 15550 21350
Wire Wire Line
	15550 21350 15550 21450
Connection ~ 15550 21450
$Comp
L power:GND #PWR?
U 1 1 61EF673C
P 16150 21750
AR Path="/600C5001/61EF673C" Ref="#PWR?"  Part="1" 
AR Path="/61EF673C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16150 21500 50  0001 C CNN
F 1 "GND" H 16155 21577 50  0000 C CNN
F 2 "" H 16150 21750 50  0001 C CNN
F 3 "" H 16150 21750 50  0001 C CNN
	1    16150 21750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6742
P 16150 20150
AR Path="/600C5001/61EF6742" Ref="#PWR?"  Part="1" 
AR Path="/61EF6742" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16150 20000 50  0001 C CNN
F 1 "+5V" H 16150 20400 50  0000 C CNN
F 2 "" H 16150 20150 50  0001 C CNN
F 3 "" H 16150 20150 50  0001 C CNN
	1    16150 20150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 61EF6748
P 16950 20450
AR Path="/600C5001/61EF6748" Ref="D?"  Part="1" 
AR Path="/61EF6748" Ref="D?"  Part="1" 
F 0 "D?" H 16750 20500 50  0000 C CNN
F 1 "LED_Small" H 17200 20500 50  0000 C CNN
F 2 "" V 16950 20450 50  0001 C CNN
F 3 "~" V 16950 20450 50  0001 C CNN
	1    16950 20450
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20450 16650 20450
$Comp
L Device:R_Network08 RN?
U 1 1 61EF674F
P 17650 20850
AR Path="/61492876/61EF674F" Ref="RN?"  Part="1" 
AR Path="/600C5001/61EF674F" Ref="RN?"  Part="1" 
AR Path="/61EF674F" Ref="RN?"  Part="1" 
F 0 "RN?" H 18038 20896 50  0000 L CNN
F 1 "220" H 18038 20805 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 18125 20850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 17650 20850 50  0001 C CNN
	1    17650 20850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF6755
P 17950 20350
AR Path="/61492876/61EF6755" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF6755" Ref="#PWR?"  Part="1" 
AR Path="/61EF6755" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17950 20200 50  0001 C CNN
F 1 "+5V" H 17965 20523 50  0000 C CNN
F 2 "" H 17950 20350 50  0001 C CNN
F 3 "" H 17950 20350 50  0001 C CNN
	1    17950 20350
	1    0    0    -1  
$EndComp
Wire Wire Line
	17950 20350 17950 20450
Wire Wire Line
	17950 20450 17850 20450
Wire Wire Line
	17450 20450 17050 20450
$Comp
L Device:LED_Small D?
U 1 1 61EF675E
P 16950 20550
AR Path="/600C5001/61EF675E" Ref="D?"  Part="1" 
AR Path="/61EF675E" Ref="D?"  Part="1" 
F 0 "D?" H 16750 20600 50  0000 C CNN
F 1 "LED_Small" H 17200 20600 50  0000 C CNN
F 2 "" V 16950 20550 50  0001 C CNN
F 3 "~" V 16950 20550 50  0001 C CNN
	1    16950 20550
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20550 16650 20550
Wire Wire Line
	17450 20550 17050 20550
$Comp
L Device:LED_Small D?
U 1 1 61EF6766
P 16950 20650
AR Path="/600C5001/61EF6766" Ref="D?"  Part="1" 
AR Path="/61EF6766" Ref="D?"  Part="1" 
F 0 "D?" H 16750 20700 50  0000 C CNN
F 1 "LED_Small" H 17200 20700 50  0000 C CNN
F 2 "" V 16950 20650 50  0001 C CNN
F 3 "~" V 16950 20650 50  0001 C CNN
	1    16950 20650
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20650 16650 20650
Wire Wire Line
	17450 20650 17050 20650
$Comp
L Device:LED_Small D?
U 1 1 61EF676E
P 16950 20750
AR Path="/600C5001/61EF676E" Ref="D?"  Part="1" 
AR Path="/61EF676E" Ref="D?"  Part="1" 
F 0 "D?" H 16750 20800 50  0000 C CNN
F 1 "LED_Small" H 17200 20800 50  0000 C CNN
F 2 "" V 16950 20750 50  0001 C CNN
F 3 "~" V 16950 20750 50  0001 C CNN
	1    16950 20750
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20750 16650 20750
Wire Wire Line
	17450 20750 17050 20750
$Comp
L Device:LED_Small D?
U 1 1 61EF6776
P 16950 20850
AR Path="/600C5001/61EF6776" Ref="D?"  Part="1" 
AR Path="/61EF6776" Ref="D?"  Part="1" 
F 0 "D?" H 16750 20900 50  0000 C CNN
F 1 "LED_Small" H 17200 20900 50  0000 C CNN
F 2 "" V 16950 20850 50  0001 C CNN
F 3 "~" V 16950 20850 50  0001 C CNN
	1    16950 20850
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20850 16650 20850
Wire Wire Line
	17450 20850 17050 20850
$Comp
L Device:LED_Small D?
U 1 1 61EF677E
P 16950 20950
AR Path="/600C5001/61EF677E" Ref="D?"  Part="1" 
AR Path="/61EF677E" Ref="D?"  Part="1" 
F 0 "D?" H 16750 21000 50  0000 C CNN
F 1 "LED_Small" H 17200 21000 50  0000 C CNN
F 2 "" V 16950 20950 50  0001 C CNN
F 3 "~" V 16950 20950 50  0001 C CNN
	1    16950 20950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 20950 16650 20950
Wire Wire Line
	17450 20950 17050 20950
$Comp
L Device:LED_Small D?
U 1 1 61EF6786
P 16950 21050
AR Path="/600C5001/61EF6786" Ref="D?"  Part="1" 
AR Path="/61EF6786" Ref="D?"  Part="1" 
F 0 "D?" H 16750 21100 50  0000 C CNN
F 1 "LED_Small" H 17200 21100 50  0000 C CNN
F 2 "" V 16950 21050 50  0001 C CNN
F 3 "~" V 16950 21050 50  0001 C CNN
	1    16950 21050
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 21050 16650 21050
Wire Wire Line
	17450 21050 17050 21050
$Comp
L Device:LED_Small D?
U 1 1 61EF678E
P 16950 21150
AR Path="/600C5001/61EF678E" Ref="D?"  Part="1" 
AR Path="/61EF678E" Ref="D?"  Part="1" 
F 0 "D?" H 16750 21200 50  0000 C CNN
F 1 "LED_Small" H 17200 21200 50  0000 C CNN
F 2 "" V 16950 21150 50  0001 C CNN
F 3 "~" V 16950 21150 50  0001 C CNN
	1    16950 21150
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 21150 16650 21150
Wire Wire Line
	17450 21150 17050 21150
Text GLabel 8750 16450 0    75   Input ~ 0
ctrlAluOp0
Text GLabel 8750 16700 0    75   Input ~ 0
ctrlAluOp1
Text GLabel 8750 13800 0    75   Input ~ 0
ctrlAluOp0
Text GLabel 8750 14050 0    75   Input ~ 0
ctrlAluOp1
Text GLabel 8750 21750 0    75   Input ~ 0
ctrlAluOp0
$Comp
L power:+5V #PWR?
U 1 1 61EF679C
P 18250 24200
AR Path="/600C5001/61EF679C" Ref="#PWR?"  Part="1" 
AR Path="/61EF679C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18250 24050 50  0001 C CNN
F 1 "+5V" H 18250 24450 50  0000 C CNN
F 2 "" H 18250 24200 50  0001 C CNN
F 3 "" H 18250 24200 50  0001 C CNN
	1    18250 24200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF67A2
P 18250 25750
AR Path="/601B5CAE/61EF67A2" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF67A2" Ref="#PWR?"  Part="1" 
AR Path="/61EF67A2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18250 25500 50  0001 C CNN
F 1 "GND" H 18255 25577 50  0000 C CNN
F 2 "" H 18250 25750 50  0001 C CNN
F 3 "" H 18250 25750 50  0001 C CNN
	1    18250 25750
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 61EF67A8
P 18250 24900
AR Path="/601B5CAE/61EF67A8" Ref="U?"  Part="1" 
AR Path="/600C5001/61EF67A8" Ref="U?"  Part="1" 
AR Path="/61EF67A8" Ref="U?"  Part="1" 
F 0 "U?" H 18250 25781 50  0000 C CNN
F 1 "74AS825" H 18250 25690 50  0000 C CNN
F 2 "" H 18250 24900 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 18250 24900 50  0001 C CNN
	1    18250 24900
	1    0    0    -1  
$EndComp
Text GLabel 17750 25300 0    75   Input ~ 0
clk
Text GLabel 17600 25650 0    75   Input ~ 0
~reset~
Wire Wire Line
	17600 25650 17650 25650
Wire Wire Line
	17650 25650 17650 25500
Wire Wire Line
	17650 25500 17750 25500
Wire Wire Line
	18750 25300 18750 25400
Connection ~ 18750 25500
Wire Wire Line
	18750 25500 18750 25550
Connection ~ 18750 25400
Wire Wire Line
	18750 25400 18750 25500
$Comp
L power:GND #PWR?
U 1 1 61EF67B8
P 18750 25550
AR Path="/601B5CAE/61EF67B8" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF67B8" Ref="#PWR?"  Part="1" 
AR Path="/61EF67B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18750 25300 50  0001 C CNN
F 1 "GND" H 18755 25377 50  0000 C CNN
F 2 "" H 18750 25550 50  0001 C CNN
F 3 "" H 18750 25550 50  0001 C CNN
	1    18750 25550
	1    0    0    -1  
$EndComp
Text GLabel 17450 25400 0    75   Input ~ 0
~ctrlAluYWE~
Wire Wire Line
	14300 18900 15650 18900
Wire Wire Line
	14400 18800 15650 18800
Wire Wire Line
	14500 18700 15650 18700
Wire Wire Line
	14600 18600 15650 18600
Wire Wire Line
	14700 18500 15650 18500
Wire Wire Line
	14800 18400 15650 18400
Wire Wire Line
	14900 18300 15650 18300
Connection ~ 11350 18200
Wire Wire Line
	11350 18200 10450 18200
Connection ~ 11450 18300
Wire Wire Line
	11450 18300 13100 18300
Connection ~ 11550 18400
Wire Wire Line
	11550 18400 10250 18400
Connection ~ 11650 18500
Wire Wire Line
	11650 18500 13100 18500
Connection ~ 11750 18600
Wire Wire Line
	11750 18600 10050 18600
Connection ~ 11850 18700
Wire Wire Line
	11850 18700 13100 18700
Connection ~ 11950 18800
Wire Wire Line
	11950 18800 10900 18800
Connection ~ 12050 18900
Wire Wire Line
	12050 18900 13100 18900
Text Label 14600 24200 0    75   ~ 0
flagN
NoConn ~ 18750 24800
NoConn ~ 18750 24900
NoConn ~ 18750 25000
NoConn ~ 18750 25100
Wire Wire Line
	17750 24800 17650 24800
Wire Wire Line
	17650 24800 17650 24900
Wire Wire Line
	17650 25100 17750 25100
Wire Wire Line
	17750 25000 17650 25000
Connection ~ 17650 25000
Wire Wire Line
	17650 25000 17650 25100
Wire Wire Line
	17650 24900 17750 24900
Connection ~ 17650 24900
Wire Wire Line
	17650 24900 17650 25000
$Comp
L power:+5V #PWR?
U 1 1 61EF67ED
P 17500 25000
AR Path="/600C5001/61EF67ED" Ref="#PWR?"  Part="1" 
AR Path="/61EF67ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17500 24850 50  0001 C CNN
F 1 "+5V" H 17515 25173 50  0000 C CNN
F 2 "" H 17500 25000 50  0001 C CNN
F 3 "" H 17500 25000 50  0001 C CNN
	1    17500 25000
	1    0    0    -1  
$EndComp
Wire Wire Line
	17500 25000 17650 25000
Text Label 14600 24050 0    75   ~ 0
flagZ
Wire Wire Line
	14500 21850 14400 21850
Wire Wire Line
	13700 21850 13700 21750
Wire Wire Line
	13700 21750 13800 21750
Wire Wire Line
	13700 21850 13700 21950
Wire Wire Line
	13700 21950 13800 21950
Connection ~ 13700 21850
$Comp
L power:GND #PWR?
U 1 1 61EF6805
P 16000 26700
AR Path="/608A8AE7/61EF6805" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF6805" Ref="#PWR?"  Part="1" 
AR Path="/61EF6805" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 26450 50  0001 C CNN
F 1 "GND" H 16005 26527 50  0000 C CNN
F 2 "" H 16000 26700 50  0001 C CNN
F 3 "" H 16000 26700 50  0001 C CNN
	1    16000 26700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61EF680B
P 16000 24800
AR Path="/608A8AE7/61EF680B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF680B" Ref="#PWR?"  Part="1" 
AR Path="/61EF680B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 24650 50  0001 C CNN
F 1 "+5V" H 16000 25050 50  0000 C CNN
F 2 "" H 16000 24800 50  0001 C CNN
F 3 "" H 16000 24800 50  0001 C CNN
	1    16000 24800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EF6817
P 15500 26400
AR Path="/608A8AE7/61EF6817" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/61EF6817" Ref="#PWR?"  Part="1" 
AR Path="/61EF6817" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15500 26150 50  0001 C CNN
F 1 "GND" H 15505 26227 50  0000 C CNN
F 2 "" H 15500 26400 50  0001 C CNN
F 3 "" H 15500 26400 50  0001 C CNN
	1    15500 26400
	1    0    0    -1  
$EndComp
NoConn ~ 16500 25200
Text GLabel 15350 26000 0    75   Input ~ 0
ctrlAluOp0
Text GLabel 15350 26250 0    75   Input ~ 0
ctrlAluOp1
Wire Wire Line
	15250 24500 15250 25100
Wire Wire Line
	15500 25200 15250 25200
Wire Wire Line
	15500 26400 15500 26200
Wire Wire Line
	15500 25300 15250 25300
Wire Wire Line
	15250 25300 15250 25200
Connection ~ 15250 25200
NoConn ~ 15500 25500
NoConn ~ 15500 25600
NoConn ~ 15500 25700
NoConn ~ 15500 25800
Text Label 14600 25400 0    75   ~ 0
flagCShift
Wire Wire Line
	2000 12400 2000 12350
Wire Wire Line
	1250 13900 1250 13950
Wire Wire Line
	2000 13950 2000 13900
Wire Wire Line
	2000 15000 2000 14950
Wire Wire Line
	1250 14950 1250 15000
Wire Wire Line
	2000 13450 2000 13400
Wire Wire Line
	2000 11900 2000 11850
Wire Wire Line
	1250 13400 1250 13450
Wire Wire Line
	1250 12350 1250 12400
Wire Wire Line
	2000 10800 2000 10850
$Comp
L power:+5V #PWR?
U 1 1 62525F5D
P 2000 13900
AR Path="/60248238/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F5D" Ref="#PWR?"  Part="1" 
AR Path="/62525F5D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 13750 50  0001 C CNN
F 1 "+5V" H 2015 14073 50  0000 C CNN
F 2 "" H 2000 13900 50  0001 C CNN
F 3 "" H 2000 13900 50  0001 C CNN
	1    2000 13900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62525F63
P 1250 13900
AR Path="/60248238/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F63" Ref="#PWR?"  Part="1" 
AR Path="/62525F63" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 13750 50  0001 C CNN
F 1 "+5V" H 1265 14073 50  0000 C CNN
F 2 "" H 1250 13900 50  0001 C CNN
F 3 "" H 1250 13900 50  0001 C CNN
	1    1250 13900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 62525F69
P 1250 14450
AR Path="/60248238/62525F69" Ref="U?"  Part="5" 
AR Path="/60260EB9/62525F69" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/62525F69" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/62525F69" Ref="U?"  Part="5" 
AR Path="/61EF6542/62525F69" Ref="U?"  Part="5" 
AR Path="/61EF655B/62525F69" Ref="U?"  Part="5" 
AR Path="/62525F69" Ref="U?"  Part="5" 
F 0 "U?" H 1480 14496 50  0000 L CNN
F 1 "74LS08" H 1480 14405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 14450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1250 14450 50  0001 C CNN
	5    1250 14450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62525F6F
P 2000 11900
AR Path="/60248238/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F6F" Ref="#PWR?"  Part="1" 
AR Path="/62525F6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 11650 50  0001 C CNN
F 1 "GND" H 2005 11727 50  0000 C CNN
F 2 "" H 2000 11900 50  0001 C CNN
F 3 "" H 2000 11900 50  0001 C CNN
	1    2000 11900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62525F75
P 1250 13450
AR Path="/60248238/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F75" Ref="#PWR?"  Part="1" 
AR Path="/62525F75" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 13200 50  0001 C CNN
F 1 "GND" H 1255 13277 50  0000 C CNN
F 2 "" H 1250 13450 50  0001 C CNN
F 3 "" H 1250 13450 50  0001 C CNN
	1    1250 13450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62525F7B
P 2000 13450
AR Path="/60248238/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F7B" Ref="#PWR?"  Part="1" 
AR Path="/62525F7B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 13200 50  0001 C CNN
F 1 "GND" H 2005 13277 50  0000 C CNN
F 2 "" H 2000 13450 50  0001 C CNN
F 3 "" H 2000 13450 50  0001 C CNN
	1    2000 13450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62525F81
P 1250 15000
AR Path="/60248238/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F81" Ref="#PWR?"  Part="1" 
AR Path="/62525F81" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 14750 50  0001 C CNN
F 1 "GND" H 1255 14827 50  0000 C CNN
F 2 "" H 1250 15000 50  0001 C CNN
F 3 "" H 1250 15000 50  0001 C CNN
	1    1250 15000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62525F87
P 2000 15000
AR Path="/60248238/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F87" Ref="#PWR?"  Part="1" 
AR Path="/62525F87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 14750 50  0001 C CNN
F 1 "GND" H 2005 14827 50  0000 C CNN
F 2 "" H 2000 15000 50  0001 C CNN
F 3 "" H 2000 15000 50  0001 C CNN
	1    2000 15000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62525F8D
P 2000 12350
AR Path="/60248238/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F8D" Ref="#PWR?"  Part="1" 
AR Path="/62525F8D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 12200 50  0001 C CNN
F 1 "+5V" H 2015 12523 50  0000 C CNN
F 2 "" H 2000 12350 50  0001 C CNN
F 3 "" H 2000 12350 50  0001 C CNN
	1    2000 12350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62525F93
P 1250 12350
AR Path="/60248238/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F93" Ref="#PWR?"  Part="1" 
AR Path="/62525F93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 12200 50  0001 C CNN
F 1 "+5V" H 1265 12523 50  0000 C CNN
F 2 "" H 1250 12350 50  0001 C CNN
F 3 "" H 1250 12350 50  0001 C CNN
	1    1250 12350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 62525F99
P 2000 10800
AR Path="/60248238/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/62525F99" Ref="#PWR?"  Part="1" 
AR Path="/62525F99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 10650 50  0001 C CNN
F 1 "+5V" H 2015 10973 50  0000 C CNN
F 2 "" H 2000 10800 50  0001 C CNN
F 3 "" H 2000 10800 50  0001 C CNN
	1    2000 10800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 62525F9F
P 2000 14450
AR Path="/60248238/62525F9F" Ref="U?"  Part="5" 
AR Path="/60260EB9/62525F9F" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/62525F9F" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/62525F9F" Ref="U?"  Part="5" 
AR Path="/61EF6542/62525F9F" Ref="U?"  Part="5" 
AR Path="/61EF655B/62525F9F" Ref="U?"  Part="5" 
AR Path="/62525F9F" Ref="U?"  Part="5" 
F 0 "U?" H 2230 14496 50  0000 L CNN
F 1 "74LS32" H 2230 14405 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 14450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2000 14450 50  0001 C CNN
	5    2000 14450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 62525FA5
P 1250 12900
AR Path="/60248238/62525FA5" Ref="U?"  Part="5" 
AR Path="/60260EB9/62525FA5" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/62525FA5" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/62525FA5" Ref="U?"  Part="5" 
AR Path="/61EF6542/62525FA5" Ref="U?"  Part="5" 
AR Path="/61EF655B/62525FA5" Ref="U?"  Part="5" 
AR Path="/62525FA5" Ref="U?"  Part="5" 
F 0 "U?" H 1480 12946 50  0000 L CNN
F 1 "74LS08" H 1480 12855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 12900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1250 12900 50  0001 C CNN
	5    1250 12900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 62525FAB
P 2000 12900
AR Path="/60248238/62525FAB" Ref="U?"  Part="5" 
AR Path="/60260EB9/62525FAB" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/62525FAB" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/62525FAB" Ref="U?"  Part="5" 
AR Path="/61EF6542/62525FAB" Ref="U?"  Part="5" 
AR Path="/61EF655B/62525FAB" Ref="U?"  Part="5" 
AR Path="/62525FAB" Ref="U?"  Part="5" 
F 0 "U?" H 2230 12946 50  0000 L CNN
F 1 "74LS86" H 2230 12855 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 12900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2000 12900 50  0001 C CNN
	5    2000 12900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 62525FB1
P 2000 11350
AR Path="/60248238/62525FB1" Ref="U?"  Part="5" 
AR Path="/60260EB9/62525FB1" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/62525FB1" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/62525FB1" Ref="U?"  Part="5" 
AR Path="/61EF6542/62525FB1" Ref="U?"  Part="5" 
AR Path="/61EF655B/62525FB1" Ref="U?"  Part="5" 
AR Path="/62525FB1" Ref="U?"  Part="5" 
F 0 "U?" H 2230 11396 50  0000 L CNN
F 1 "74LS86" H 2230 11305 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 11350 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2000 11350 50  0001 C CNN
	5    2000 11350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 62586640
P 5200 11450
AR Path="/600C5001/60248238/6016C9C5/62586640" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/62586640" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/62586640" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/62586640" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/62586640" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/62586640" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/62586640" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/62586640" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/62586640" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/62586640" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/62586640" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/62586640" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/62586640" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/62586640" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/62586640" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/62586640" Ref="U?"  Part="1" 
AR Path="/62525FCD/62586640" Ref="U?"  Part="1" 
AR Path="/62525FD6/62586640" Ref="U?"  Part="1" 
AR Path="/62525FDF/62586640" Ref="U?"  Part="1" 
AR Path="/62525FE8/62586640" Ref="U?"  Part="1" 
AR Path="/62586640" Ref="U?"  Part="1" 
F 0 "U?" H 5200 11775 50  0000 C CNN
F 1 "74LS08" H 5200 11684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 11450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 11450 50  0001 C CNN
	1    5200 11450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 11350 4850 11350
Wire Wire Line
	4850 11350 4850 11850
Wire Wire Line
	4850 11850 4900 11850
Wire Wire Line
	4900 11550 4750 11550
Wire Wire Line
	4750 11550 4750 12050
Wire Wire Line
	4750 12050 4900 12050
Connection ~ 4750 12050
Connection ~ 4850 11350
$Comp
L 74xx:74LS86 U?
U 1 1 62586677
P 5200 11950
AR Path="/600C5001/60248238/6016C9C5/62586677" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/62586677" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/62586677" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/62586677" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/62586677" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/62586677" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/62586677" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/62586677" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/62586677" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/62586677" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/62586677" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/62586677" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/62586677" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/62586677" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/62586677" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/62586677" Ref="U?"  Part="1" 
AR Path="/62525FCD/62586677" Ref="U?"  Part="1" 
AR Path="/62525FD6/62586677" Ref="U?"  Part="1" 
AR Path="/62525FDF/62586677" Ref="U?"  Part="1" 
AR Path="/62525FE8/62586677" Ref="U?"  Part="1" 
AR Path="/62586677" Ref="U?"  Part="1" 
F 0 "U?" H 5200 12275 50  0000 C CNN
F 1 "74LS86" H 5200 12184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 11950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 11950 50  0001 C CNN
	1    5200 11950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 11450 6200 11200
Wire Wire Line
	5700 12050 5700 11950
$Comp
L 74xx:74LS32 U?
U 1 1 62586671
P 6750 11550
AR Path="/600C5001/60248238/6016C9C5/62586671" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/62586671" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/62586671" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/62586671" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/62586671" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/62586671" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/62586671" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/62586671" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/62586671" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/62586671" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/62586671" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/62586671" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/62586671" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/62586671" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/62586671" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/62586671" Ref="U?"  Part="1" 
AR Path="/62525FCD/62586671" Ref="U?"  Part="1" 
AR Path="/62525FD6/62586671" Ref="U?"  Part="1" 
AR Path="/62525FDF/62586671" Ref="U?"  Part="1" 
AR Path="/62525FE8/62586671" Ref="U?"  Part="1" 
AR Path="/62586671" Ref="U?"  Part="1" 
F 0 "U?" H 6750 11875 50  0000 C CNN
F 1 "74LS32" H 6750 11784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 11550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 11550 50  0001 C CNN
	1    6750 11550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 11850 6450 11650
Wire Wire Line
	6350 11850 6450 11850
Wire Wire Line
	5500 11450 6200 11450
Wire Wire Line
	5700 11950 5750 11950
Connection ~ 5700 11950
Wire Wire Line
	5700 11150 5700 11950
Wire Wire Line
	5750 11150 5700 11150
Wire Wire Line
	5500 11950 5700 11950
Wire Wire Line
	5600 10950 5350 10950
Connection ~ 5600 10950
Wire Wire Line
	5600 11750 5750 11750
Wire Wire Line
	5600 10950 5600 11750
Wire Wire Line
	5750 10950 5600 10950
$Comp
L 74xx:74LS86 U?
U 1 1 62586654
P 6050 11050
AR Path="/600C5001/60248238/6016C9C5/62586654" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/62586654" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/62586654" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/62586654" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/62586654" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/62586654" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/62586654" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/62586654" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/62586654" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/62586654" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/62586654" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/62586654" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/62586654" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/62586654" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/62586654" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/62586654" Ref="U?"  Part="1" 
AR Path="/62525FCD/62586654" Ref="U?"  Part="1" 
AR Path="/62525FD6/62586654" Ref="U?"  Part="1" 
AR Path="/62525FDF/62586654" Ref="U?"  Part="1" 
AR Path="/62525FE8/62586654" Ref="U?"  Part="1" 
AR Path="/62586654" Ref="U?"  Part="1" 
F 0 "U?" H 6050 11375 50  0000 C CNN
F 1 "74LS86" H 6050 11284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 11050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 11050 50  0001 C CNN
	1    6050 11050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6258664E
P 6050 11850
AR Path="/600C5001/60248238/6016C9C5/6258664E" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6258664E" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6258664E" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6258664E" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6258664E" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6258664E" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6258664E" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6258664E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6258664E" Ref="U?"  Part="1" 
AR Path="/62525FCD/6258664E" Ref="U?"  Part="1" 
AR Path="/62525FD6/6258664E" Ref="U?"  Part="1" 
AR Path="/62525FDF/6258664E" Ref="U?"  Part="1" 
AR Path="/62525FE8/6258664E" Ref="U?"  Part="1" 
AR Path="/6258664E" Ref="U?"  Part="1" 
F 0 "U?" H 6050 12175 50  0000 C CNN
F 1 "74LS08" H 6050 12084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 11850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 11850 50  0001 C CNN
	1    6050 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 11450 6450 11450
Connection ~ 6200 11450
Wire Wire Line
	4500 12050 4750 12050
$Comp
L 74xx:74LS86 U?
U 1 1 62FA08D2
P 4200 12050
AR Path="/600C5001/62FA08D2" Ref="U?"  Part="1" 
AR Path="/62FA08D2" Ref="U?"  Part="1" 
F 0 "U?" H 4200 12375 50  0000 C CNN
F 1 "74LS86" H 4200 12284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 12050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 12050 50  0001 C CNN
	1    4200 12050
	1    0    0    -1  
$EndComp
Text GLabel 3900 12150 0    75   Input ~ 0
ctrlAluSub
Text GLabel 5350 10950 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 11350 2    75   ~ 0
a0
Wire Wire Line
	4650 11350 4850 11350
Entry Wire Line
	4550 11250 4650 11350
Entry Wire Line
	7300 11050 7400 11150
Entry Wire Line
	7500 11200 7600 11300
Entry Wire Line
	7700 12050 7800 12150
Wire Wire Line
	6350 11050 7300 11050
Text Label 7200 11050 2    75   ~ 0
adder0
Wire Wire Line
	6200 11200 7500 11200
Text Label 7200 11200 2    75   ~ 0
and0
Text Label 7200 12050 2    75   ~ 0
xor0
Wire Wire Line
	5700 12050 7700 12050
Text Label 3850 13700 2    75   ~ 0
bus1
Wire Wire Line
	3250 13700 3900 13700
$Comp
L 74xx:74LS08 U?
U 1 1 640CC99B
P 5200 13200
AR Path="/600C5001/60248238/6016C9C5/640CC99B" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/640CC99B" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/640CC99B" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/640CC99B" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/640CC99B" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/640CC99B" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/640CC99B" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/640CC99B" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/640CC99B" Ref="U?"  Part="1" 
AR Path="/62525FCD/640CC99B" Ref="U?"  Part="1" 
AR Path="/62525FD6/640CC99B" Ref="U?"  Part="1" 
AR Path="/62525FDF/640CC99B" Ref="U?"  Part="1" 
AR Path="/62525FE8/640CC99B" Ref="U?"  Part="1" 
AR Path="/640CC99B" Ref="U?"  Part="1" 
F 0 "U?" H 5200 13525 50  0000 C CNN
F 1 "74LS08" H 5200 13434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 13200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 13200 50  0001 C CNN
	1    5200 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 13100 4850 13100
Wire Wire Line
	4850 13100 4850 13600
Wire Wire Line
	4850 13600 4900 13600
Wire Wire Line
	4900 13300 4750 13300
Wire Wire Line
	4750 13300 4750 13800
Wire Wire Line
	4750 13800 4900 13800
Connection ~ 4750 13800
Connection ~ 4850 13100
$Comp
L 74xx:74LS86 U?
U 1 1 640CC9A9
P 5200 13700
AR Path="/600C5001/60248238/6016C9C5/640CC9A9" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/640CC9A9" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/640CC9A9" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/640CC9A9" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/640CC9A9" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/640CC9A9" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/640CC9A9" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/640CC9A9" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/640CC9A9" Ref="U?"  Part="1" 
AR Path="/62525FCD/640CC9A9" Ref="U?"  Part="1" 
AR Path="/62525FD6/640CC9A9" Ref="U?"  Part="1" 
AR Path="/62525FDF/640CC9A9" Ref="U?"  Part="1" 
AR Path="/62525FE8/640CC9A9" Ref="U?"  Part="1" 
AR Path="/640CC9A9" Ref="U?"  Part="1" 
F 0 "U?" H 5200 14025 50  0000 C CNN
F 1 "74LS86" H 5200 13934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 13700 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 13700 50  0001 C CNN
	1    5200 13700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 13200 6200 12950
Wire Wire Line
	5700 13800 5700 13700
$Comp
L 74xx:74LS32 U?
U 1 1 640CC9B1
P 6750 13300
AR Path="/600C5001/60248238/6016C9C5/640CC9B1" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/640CC9B1" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/640CC9B1" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/640CC9B1" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/640CC9B1" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/640CC9B1" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/640CC9B1" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/640CC9B1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/640CC9B1" Ref="U?"  Part="1" 
AR Path="/62525FCD/640CC9B1" Ref="U?"  Part="1" 
AR Path="/62525FD6/640CC9B1" Ref="U?"  Part="1" 
AR Path="/62525FDF/640CC9B1" Ref="U?"  Part="1" 
AR Path="/62525FE8/640CC9B1" Ref="U?"  Part="1" 
AR Path="/640CC9B1" Ref="U?"  Part="1" 
F 0 "U?" H 6750 13625 50  0000 C CNN
F 1 "74LS32" H 6750 13534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 13300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 13300 50  0001 C CNN
	1    6750 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 13600 6450 13400
Wire Wire Line
	6350 13600 6450 13600
Wire Wire Line
	5500 13200 6200 13200
Wire Wire Line
	5700 13700 5750 13700
Connection ~ 5700 13700
Wire Wire Line
	5700 12900 5700 13700
Wire Wire Line
	5750 12900 5700 12900
Wire Wire Line
	5500 13700 5700 13700
Wire Wire Line
	5600 13500 5750 13500
Wire Wire Line
	5600 12700 5600 13500
Wire Wire Line
	5750 12700 5600 12700
$Comp
L 74xx:74LS86 U?
U 1 1 640CC9C5
P 6050 12800
AR Path="/600C5001/60248238/6016C9C5/640CC9C5" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/640CC9C5" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/640CC9C5" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/640CC9C5" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/640CC9C5" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/640CC9C5" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/640CC9C5" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/640CC9C5" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/640CC9C5" Ref="U?"  Part="1" 
AR Path="/62525FCD/640CC9C5" Ref="U?"  Part="1" 
AR Path="/62525FD6/640CC9C5" Ref="U?"  Part="1" 
AR Path="/62525FDF/640CC9C5" Ref="U?"  Part="1" 
AR Path="/62525FE8/640CC9C5" Ref="U?"  Part="1" 
AR Path="/640CC9C5" Ref="U?"  Part="1" 
F 0 "U?" H 6050 13125 50  0000 C CNN
F 1 "74LS86" H 6050 13034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 12800 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 12800 50  0001 C CNN
	1    6050 12800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 640CC9CB
P 6050 13600
AR Path="/600C5001/60248238/6016C9C5/640CC9CB" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/640CC9CB" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/640CC9CB" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/640CC9CB" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/640CC9CB" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/640CC9CB" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/640CC9CB" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/640CC9CB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/640CC9CB" Ref="U?"  Part="1" 
AR Path="/62525FCD/640CC9CB" Ref="U?"  Part="1" 
AR Path="/62525FD6/640CC9CB" Ref="U?"  Part="1" 
AR Path="/62525FDF/640CC9CB" Ref="U?"  Part="1" 
AR Path="/62525FE8/640CC9CB" Ref="U?"  Part="1" 
AR Path="/640CC9CB" Ref="U?"  Part="1" 
F 0 "U?" H 6050 13925 50  0000 C CNN
F 1 "74LS08" H 6050 13834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 13600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 13600 50  0001 C CNN
	1    6050 13600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 13200 6450 13200
Connection ~ 6200 13200
Wire Wire Line
	4500 13800 4750 13800
$Comp
L 74xx:74LS86 U?
U 1 1 640CC9D4
P 4200 13800
AR Path="/600C5001/640CC9D4" Ref="U?"  Part="1" 
AR Path="/640CC9D4" Ref="U?"  Part="1" 
F 0 "U?" H 4200 14125 50  0000 C CNN
F 1 "74LS86" H 4200 14034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 13800 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 13800 50  0001 C CNN
	1    4200 13800
	1    0    0    -1  
$EndComp
Text GLabel 3900 13900 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 13100 2    75   ~ 0
a1
Wire Wire Line
	4700 13100 4850 13100
Entry Wire Line
	4600 13000 4700 13100
Entry Wire Line
	3150 13600 3250 13700
Entry Wire Line
	7300 12800 7400 12900
Entry Wire Line
	7500 12950 7600 13050
Entry Wire Line
	7700 13800 7800 13900
Wire Wire Line
	6350 12800 7300 12800
Text Label 7200 12800 2    75   ~ 0
adder1
Wire Wire Line
	6200 12950 7500 12950
Text Label 7200 12950 2    75   ~ 0
and1
Text Label 7200 13800 2    75   ~ 0
xor1
Wire Wire Line
	5700 13800 7700 13800
Text Label 3850 15450 2    75   ~ 0
bus2
Wire Wire Line
	3250 15450 3900 15450
$Comp
L 74xx:74LS08 U?
U 1 1 6414131E
P 5200 14950
AR Path="/600C5001/60248238/6016C9C5/6414131E" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6414131E" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6414131E" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6414131E" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6414131E" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6414131E" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6414131E" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6414131E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6414131E" Ref="U?"  Part="1" 
AR Path="/62525FCD/6414131E" Ref="U?"  Part="1" 
AR Path="/62525FD6/6414131E" Ref="U?"  Part="1" 
AR Path="/62525FDF/6414131E" Ref="U?"  Part="1" 
AR Path="/62525FE8/6414131E" Ref="U?"  Part="1" 
AR Path="/6414131E" Ref="U?"  Part="1" 
F 0 "U?" H 5200 15275 50  0000 C CNN
F 1 "74LS08" H 5200 15184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 14950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 14950 50  0001 C CNN
	1    5200 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 14850 4850 14850
Wire Wire Line
	4850 14850 4850 15350
Wire Wire Line
	4850 15350 4900 15350
Wire Wire Line
	4900 15050 4750 15050
Wire Wire Line
	4750 15050 4750 15550
Wire Wire Line
	4750 15550 4900 15550
Connection ~ 4750 15550
Connection ~ 4850 14850
$Comp
L 74xx:74LS86 U?
U 1 1 6414132C
P 5200 15450
AR Path="/600C5001/60248238/6016C9C5/6414132C" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6414132C" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6414132C" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6414132C" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6414132C" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6414132C" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6414132C" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6414132C" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6414132C" Ref="U?"  Part="1" 
AR Path="/62525FCD/6414132C" Ref="U?"  Part="1" 
AR Path="/62525FD6/6414132C" Ref="U?"  Part="1" 
AR Path="/62525FDF/6414132C" Ref="U?"  Part="1" 
AR Path="/62525FE8/6414132C" Ref="U?"  Part="1" 
AR Path="/6414132C" Ref="U?"  Part="1" 
F 0 "U?" H 5200 15775 50  0000 C CNN
F 1 "74LS86" H 5200 15684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 15450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 15450 50  0001 C CNN
	1    5200 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 14950 6200 14700
Wire Wire Line
	5700 15550 5700 15450
$Comp
L 74xx:74LS32 U?
U 1 1 64141334
P 6750 15050
AR Path="/600C5001/60248238/6016C9C5/64141334" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64141334" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64141334" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64141334" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64141334" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64141334" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64141334" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64141334" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64141334" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64141334" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64141334" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64141334" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64141334" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64141334" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64141334" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64141334" Ref="U?"  Part="1" 
AR Path="/62525FCD/64141334" Ref="U?"  Part="1" 
AR Path="/62525FD6/64141334" Ref="U?"  Part="1" 
AR Path="/62525FDF/64141334" Ref="U?"  Part="1" 
AR Path="/62525FE8/64141334" Ref="U?"  Part="1" 
AR Path="/64141334" Ref="U?"  Part="1" 
F 0 "U?" H 6750 15375 50  0000 C CNN
F 1 "74LS32" H 6750 15284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 15050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 15050 50  0001 C CNN
	1    6750 15050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 15350 6450 15150
Wire Wire Line
	6350 15350 6450 15350
Wire Wire Line
	5500 14950 6200 14950
Wire Wire Line
	5700 15450 5750 15450
Connection ~ 5700 15450
Wire Wire Line
	5700 14650 5700 15450
Wire Wire Line
	5750 14650 5700 14650
Wire Wire Line
	5500 15450 5700 15450
Connection ~ 5600 14450
Wire Wire Line
	5600 15250 5750 15250
Wire Wire Line
	5600 14450 5600 15250
Wire Wire Line
	5750 14450 5600 14450
$Comp
L 74xx:74LS86 U?
U 1 1 64141348
P 6050 14550
AR Path="/600C5001/60248238/6016C9C5/64141348" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64141348" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64141348" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64141348" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64141348" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64141348" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64141348" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64141348" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64141348" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64141348" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64141348" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64141348" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64141348" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64141348" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64141348" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64141348" Ref="U?"  Part="1" 
AR Path="/62525FCD/64141348" Ref="U?"  Part="1" 
AR Path="/62525FD6/64141348" Ref="U?"  Part="1" 
AR Path="/62525FDF/64141348" Ref="U?"  Part="1" 
AR Path="/62525FE8/64141348" Ref="U?"  Part="1" 
AR Path="/64141348" Ref="U?"  Part="1" 
F 0 "U?" H 6050 14875 50  0000 C CNN
F 1 "74LS86" H 6050 14784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 14550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 14550 50  0001 C CNN
	1    6050 14550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6414134E
P 6050 15350
AR Path="/600C5001/60248238/6016C9C5/6414134E" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6414134E" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6414134E" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6414134E" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6414134E" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6414134E" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6414134E" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6414134E" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6414134E" Ref="U?"  Part="1" 
AR Path="/62525FCD/6414134E" Ref="U?"  Part="1" 
AR Path="/62525FD6/6414134E" Ref="U?"  Part="1" 
AR Path="/62525FDF/6414134E" Ref="U?"  Part="1" 
AR Path="/62525FE8/6414134E" Ref="U?"  Part="1" 
AR Path="/6414134E" Ref="U?"  Part="1" 
F 0 "U?" H 6050 15675 50  0000 C CNN
F 1 "74LS08" H 6050 15584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 15350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 15350 50  0001 C CNN
	1    6050 15350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 14950 6450 14950
Connection ~ 6200 14950
Wire Wire Line
	4500 15550 4750 15550
$Comp
L 74xx:74LS86 U?
U 1 1 64141357
P 4200 15550
AR Path="/600C5001/64141357" Ref="U?"  Part="1" 
AR Path="/64141357" Ref="U?"  Part="1" 
F 0 "U?" H 4200 15875 50  0000 C CNN
F 1 "74LS86" H 4200 15784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 15550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 15550 50  0001 C CNN
	1    4200 15550
	1    0    0    -1  
$EndComp
Text GLabel 3900 15650 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 14850 2    75   ~ 0
a2
Wire Wire Line
	4650 14850 4850 14850
Entry Wire Line
	4550 14750 4650 14850
Entry Wire Line
	3150 15350 3250 15450
Entry Wire Line
	7300 14550 7400 14650
Entry Wire Line
	7500 14700 7600 14800
Entry Wire Line
	7700 15550 7800 15650
Wire Wire Line
	6350 14550 7300 14550
Text Label 7200 14550 2    75   ~ 0
adder2
Wire Wire Line
	6200 14700 7500 14700
Text Label 7200 14700 2    75   ~ 0
and2
Text Label 7200 15550 2    75   ~ 0
xor2
Wire Wire Line
	5700 15550 7700 15550
Text Label 3850 17200 2    75   ~ 0
bus3
Wire Wire Line
	3250 17200 3900 17200
$Comp
L 74xx:74LS08 U?
U 1 1 641BEC5F
P 5200 16700
AR Path="/600C5001/60248238/6016C9C5/641BEC5F" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/641BEC5F" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/641BEC5F" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/641BEC5F" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/641BEC5F" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/641BEC5F" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/641BEC5F" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/641BEC5F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/641BEC5F" Ref="U?"  Part="1" 
AR Path="/62525FCD/641BEC5F" Ref="U?"  Part="1" 
AR Path="/62525FD6/641BEC5F" Ref="U?"  Part="1" 
AR Path="/62525FDF/641BEC5F" Ref="U?"  Part="1" 
AR Path="/62525FE8/641BEC5F" Ref="U?"  Part="1" 
AR Path="/641BEC5F" Ref="U?"  Part="1" 
F 0 "U?" H 5200 17025 50  0000 C CNN
F 1 "74LS08" H 5200 16934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 16700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 16700 50  0001 C CNN
	1    5200 16700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 16600 4850 16600
Wire Wire Line
	4850 16600 4850 17100
Wire Wire Line
	4850 17100 4900 17100
Wire Wire Line
	4900 16800 4750 16800
Wire Wire Line
	4750 16800 4750 17300
Wire Wire Line
	4750 17300 4900 17300
Connection ~ 4750 17300
Connection ~ 4850 16600
$Comp
L 74xx:74LS86 U?
U 1 1 641BEC6D
P 5200 17200
AR Path="/600C5001/60248238/6016C9C5/641BEC6D" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/641BEC6D" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/641BEC6D" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/641BEC6D" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/641BEC6D" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/641BEC6D" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/641BEC6D" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/641BEC6D" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/641BEC6D" Ref="U?"  Part="1" 
AR Path="/62525FCD/641BEC6D" Ref="U?"  Part="1" 
AR Path="/62525FD6/641BEC6D" Ref="U?"  Part="1" 
AR Path="/62525FDF/641BEC6D" Ref="U?"  Part="1" 
AR Path="/62525FE8/641BEC6D" Ref="U?"  Part="1" 
AR Path="/641BEC6D" Ref="U?"  Part="1" 
F 0 "U?" H 5200 17525 50  0000 C CNN
F 1 "74LS86" H 5200 17434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 17200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 17200 50  0001 C CNN
	1    5200 17200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 16700 6200 16450
Wire Wire Line
	5700 17300 5700 17200
$Comp
L 74xx:74LS32 U?
U 1 1 641BEC75
P 6750 16800
AR Path="/600C5001/60248238/6016C9C5/641BEC75" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/641BEC75" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/641BEC75" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/641BEC75" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/641BEC75" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/641BEC75" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/641BEC75" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/641BEC75" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/641BEC75" Ref="U?"  Part="1" 
AR Path="/62525FCD/641BEC75" Ref="U?"  Part="1" 
AR Path="/62525FD6/641BEC75" Ref="U?"  Part="1" 
AR Path="/62525FDF/641BEC75" Ref="U?"  Part="1" 
AR Path="/62525FE8/641BEC75" Ref="U?"  Part="1" 
AR Path="/641BEC75" Ref="U?"  Part="1" 
F 0 "U?" H 6750 17125 50  0000 C CNN
F 1 "74LS32" H 6750 17034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 16800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 16800 50  0001 C CNN
	1    6750 16800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 17100 6450 16900
Wire Wire Line
	6350 17100 6450 17100
Wire Wire Line
	5500 16700 6200 16700
Wire Wire Line
	5700 17200 5750 17200
Connection ~ 5700 17200
Wire Wire Line
	5700 16400 5700 17200
Wire Wire Line
	5750 16400 5700 16400
Wire Wire Line
	5500 17200 5700 17200
Wire Wire Line
	5600 17000 5750 17000
Wire Wire Line
	5600 16200 5600 17000
Wire Wire Line
	5750 16200 5600 16200
$Comp
L 74xx:74LS86 U?
U 1 1 641BEC89
P 6050 16300
AR Path="/600C5001/60248238/6016C9C5/641BEC89" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/641BEC89" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/641BEC89" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/641BEC89" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/641BEC89" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/641BEC89" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/641BEC89" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/641BEC89" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/641BEC89" Ref="U?"  Part="1" 
AR Path="/62525FCD/641BEC89" Ref="U?"  Part="1" 
AR Path="/62525FD6/641BEC89" Ref="U?"  Part="1" 
AR Path="/62525FDF/641BEC89" Ref="U?"  Part="1" 
AR Path="/62525FE8/641BEC89" Ref="U?"  Part="1" 
AR Path="/641BEC89" Ref="U?"  Part="1" 
F 0 "U?" H 6050 16625 50  0000 C CNN
F 1 "74LS86" H 6050 16534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 16300 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 16300 50  0001 C CNN
	1    6050 16300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 641BEC8F
P 6050 17100
AR Path="/600C5001/60248238/6016C9C5/641BEC8F" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/641BEC8F" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/641BEC8F" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/641BEC8F" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/641BEC8F" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/641BEC8F" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/641BEC8F" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/641BEC8F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/641BEC8F" Ref="U?"  Part="1" 
AR Path="/62525FCD/641BEC8F" Ref="U?"  Part="1" 
AR Path="/62525FD6/641BEC8F" Ref="U?"  Part="1" 
AR Path="/62525FDF/641BEC8F" Ref="U?"  Part="1" 
AR Path="/62525FE8/641BEC8F" Ref="U?"  Part="1" 
AR Path="/641BEC8F" Ref="U?"  Part="1" 
F 0 "U?" H 6050 17425 50  0000 C CNN
F 1 "74LS08" H 6050 17334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 17100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 17100 50  0001 C CNN
	1    6050 17100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 16700 6450 16700
Connection ~ 6200 16700
Wire Wire Line
	4500 17300 4750 17300
$Comp
L 74xx:74LS86 U?
U 1 1 641BEC98
P 4200 17300
AR Path="/600C5001/641BEC98" Ref="U?"  Part="1" 
AR Path="/641BEC98" Ref="U?"  Part="1" 
F 0 "U?" H 4200 17625 50  0000 C CNN
F 1 "74LS86" H 4200 17534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 17300 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 17300 50  0001 C CNN
	1    4200 17300
	1    0    0    -1  
$EndComp
Text GLabel 3900 17400 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 16600 2    75   ~ 0
a3
Wire Wire Line
	4650 16600 4850 16600
Entry Wire Line
	4550 16500 4650 16600
Entry Wire Line
	3150 17100 3250 17200
Entry Wire Line
	7300 16300 7400 16400
Entry Wire Line
	7500 16450 7600 16550
Entry Wire Line
	7700 17300 7800 17400
Wire Wire Line
	6350 16300 7300 16300
Text Label 7200 16300 2    75   ~ 0
adder3
Wire Wire Line
	6200 16450 7500 16450
Text Label 7200 16450 2    75   ~ 0
and3
Text Label 7200 17300 2    75   ~ 0
xor3
Wire Wire Line
	5700 17300 7700 17300
Text Label 3850 18950 2    75   ~ 0
bus4
Wire Wire Line
	3250 18950 3900 18950
$Comp
L 74xx:74LS08 U?
U 1 1 642474C1
P 5200 18450
AR Path="/600C5001/60248238/6016C9C5/642474C1" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642474C1" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642474C1" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642474C1" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642474C1" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642474C1" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642474C1" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642474C1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642474C1" Ref="U?"  Part="1" 
AR Path="/62525FCD/642474C1" Ref="U?"  Part="1" 
AR Path="/62525FD6/642474C1" Ref="U?"  Part="1" 
AR Path="/62525FDF/642474C1" Ref="U?"  Part="1" 
AR Path="/62525FE8/642474C1" Ref="U?"  Part="1" 
AR Path="/642474C1" Ref="U?"  Part="1" 
F 0 "U?" H 5200 18775 50  0000 C CNN
F 1 "74LS08" H 5200 18684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 18450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 18450 50  0001 C CNN
	1    5200 18450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 18350 4850 18350
Wire Wire Line
	4850 18350 4850 18850
Wire Wire Line
	4850 18850 4900 18850
Wire Wire Line
	4900 18550 4750 18550
Wire Wire Line
	4750 18550 4750 19050
Wire Wire Line
	4750 19050 4900 19050
Connection ~ 4750 19050
Connection ~ 4850 18350
$Comp
L 74xx:74LS86 U?
U 1 1 642474CF
P 5200 18950
AR Path="/600C5001/60248238/6016C9C5/642474CF" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642474CF" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642474CF" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642474CF" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642474CF" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642474CF" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642474CF" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642474CF" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642474CF" Ref="U?"  Part="1" 
AR Path="/62525FCD/642474CF" Ref="U?"  Part="1" 
AR Path="/62525FD6/642474CF" Ref="U?"  Part="1" 
AR Path="/62525FDF/642474CF" Ref="U?"  Part="1" 
AR Path="/62525FE8/642474CF" Ref="U?"  Part="1" 
AR Path="/642474CF" Ref="U?"  Part="1" 
F 0 "U?" H 5200 19275 50  0000 C CNN
F 1 "74LS86" H 5200 19184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 18950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 18950 50  0001 C CNN
	1    5200 18950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 18450 6200 18200
Wire Wire Line
	5700 19050 5700 18950
$Comp
L 74xx:74LS32 U?
U 1 1 642474D7
P 6750 18550
AR Path="/600C5001/60248238/6016C9C5/642474D7" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642474D7" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642474D7" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642474D7" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642474D7" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642474D7" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642474D7" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642474D7" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642474D7" Ref="U?"  Part="1" 
AR Path="/62525FCD/642474D7" Ref="U?"  Part="1" 
AR Path="/62525FD6/642474D7" Ref="U?"  Part="1" 
AR Path="/62525FDF/642474D7" Ref="U?"  Part="1" 
AR Path="/62525FE8/642474D7" Ref="U?"  Part="1" 
AR Path="/642474D7" Ref="U?"  Part="1" 
F 0 "U?" H 6750 18875 50  0000 C CNN
F 1 "74LS32" H 6750 18784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 18550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 18550 50  0001 C CNN
	1    6750 18550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 18850 6450 18650
Wire Wire Line
	6350 18850 6450 18850
Wire Wire Line
	5500 18450 6200 18450
Wire Wire Line
	5700 18950 5750 18950
Connection ~ 5700 18950
Wire Wire Line
	5700 18150 5700 18950
Wire Wire Line
	5750 18150 5700 18150
Wire Wire Line
	5500 18950 5700 18950
Connection ~ 5600 17950
Wire Wire Line
	5600 18750 5750 18750
Wire Wire Line
	5600 17950 5600 18750
Wire Wire Line
	5750 17950 5600 17950
$Comp
L 74xx:74LS86 U?
U 1 1 642474EB
P 6050 18050
AR Path="/600C5001/60248238/6016C9C5/642474EB" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642474EB" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642474EB" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642474EB" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642474EB" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642474EB" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642474EB" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642474EB" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642474EB" Ref="U?"  Part="1" 
AR Path="/62525FCD/642474EB" Ref="U?"  Part="1" 
AR Path="/62525FD6/642474EB" Ref="U?"  Part="1" 
AR Path="/62525FDF/642474EB" Ref="U?"  Part="1" 
AR Path="/62525FE8/642474EB" Ref="U?"  Part="1" 
AR Path="/642474EB" Ref="U?"  Part="1" 
F 0 "U?" H 6050 18375 50  0000 C CNN
F 1 "74LS86" H 6050 18284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 18050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 18050 50  0001 C CNN
	1    6050 18050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 642474F1
P 6050 18850
AR Path="/600C5001/60248238/6016C9C5/642474F1" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642474F1" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642474F1" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642474F1" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642474F1" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642474F1" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642474F1" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642474F1" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642474F1" Ref="U?"  Part="1" 
AR Path="/62525FCD/642474F1" Ref="U?"  Part="1" 
AR Path="/62525FD6/642474F1" Ref="U?"  Part="1" 
AR Path="/62525FDF/642474F1" Ref="U?"  Part="1" 
AR Path="/62525FE8/642474F1" Ref="U?"  Part="1" 
AR Path="/642474F1" Ref="U?"  Part="1" 
F 0 "U?" H 6050 19175 50  0000 C CNN
F 1 "74LS08" H 6050 19084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 18850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 18850 50  0001 C CNN
	1    6050 18850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 18450 6450 18450
Connection ~ 6200 18450
Wire Wire Line
	4500 19050 4750 19050
$Comp
L 74xx:74LS86 U?
U 1 1 642474FA
P 4200 19050
AR Path="/600C5001/642474FA" Ref="U?"  Part="1" 
AR Path="/642474FA" Ref="U?"  Part="1" 
F 0 "U?" H 4200 19375 50  0000 C CNN
F 1 "74LS86" H 4200 19284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 19050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 19050 50  0001 C CNN
	1    4200 19050
	1    0    0    -1  
$EndComp
Text GLabel 3900 19150 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 18350 2    75   ~ 0
a4
Wire Wire Line
	4650 18350 4850 18350
Entry Wire Line
	4550 18250 4650 18350
Entry Wire Line
	3150 18850 3250 18950
Entry Wire Line
	7300 18050 7400 18150
Entry Wire Line
	7500 18200 7600 18300
Entry Wire Line
	7700 19050 7800 19150
Wire Wire Line
	6350 18050 7300 18050
Text Label 7200 18050 2    75   ~ 0
adder4
Wire Wire Line
	6200 18200 7500 18200
Text Label 7200 18200 2    75   ~ 0
and4
Text Label 7200 19050 2    75   ~ 0
xor4
Wire Wire Line
	5700 19050 7700 19050
Text Label 3850 20700 2    75   ~ 0
bus5
Wire Wire Line
	3250 20700 3900 20700
$Comp
L 74xx:74LS08 U?
U 1 1 642DAF69
P 5200 20200
AR Path="/600C5001/60248238/6016C9C5/642DAF69" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642DAF69" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642DAF69" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642DAF69" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642DAF69" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642DAF69" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642DAF69" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642DAF69" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642DAF69" Ref="U?"  Part="1" 
AR Path="/62525FCD/642DAF69" Ref="U?"  Part="1" 
AR Path="/62525FD6/642DAF69" Ref="U?"  Part="1" 
AR Path="/62525FDF/642DAF69" Ref="U?"  Part="1" 
AR Path="/62525FE8/642DAF69" Ref="U?"  Part="1" 
AR Path="/642DAF69" Ref="U?"  Part="1" 
F 0 "U?" H 5200 20525 50  0000 C CNN
F 1 "74LS08" H 5200 20434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 20200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 20200 50  0001 C CNN
	1    5200 20200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 20100 4850 20100
Wire Wire Line
	4850 20100 4850 20600
Wire Wire Line
	4850 20600 4900 20600
Wire Wire Line
	4900 20300 4750 20300
Wire Wire Line
	4750 20300 4750 20800
Wire Wire Line
	4750 20800 4900 20800
Connection ~ 4750 20800
Connection ~ 4850 20100
$Comp
L 74xx:74LS86 U?
U 1 1 642DAF77
P 5200 20700
AR Path="/600C5001/60248238/6016C9C5/642DAF77" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642DAF77" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642DAF77" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642DAF77" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642DAF77" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642DAF77" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642DAF77" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642DAF77" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642DAF77" Ref="U?"  Part="1" 
AR Path="/62525FCD/642DAF77" Ref="U?"  Part="1" 
AR Path="/62525FD6/642DAF77" Ref="U?"  Part="1" 
AR Path="/62525FDF/642DAF77" Ref="U?"  Part="1" 
AR Path="/62525FE8/642DAF77" Ref="U?"  Part="1" 
AR Path="/642DAF77" Ref="U?"  Part="1" 
F 0 "U?" H 5200 21025 50  0000 C CNN
F 1 "74LS86" H 5200 20934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 20700 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 20700 50  0001 C CNN
	1    5200 20700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 20200 6200 19950
Wire Wire Line
	5700 20800 5700 20700
$Comp
L 74xx:74LS32 U?
U 1 1 642DAF7F
P 6750 20300
AR Path="/600C5001/60248238/6016C9C5/642DAF7F" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642DAF7F" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642DAF7F" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642DAF7F" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642DAF7F" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642DAF7F" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642DAF7F" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642DAF7F" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642DAF7F" Ref="U?"  Part="1" 
AR Path="/62525FCD/642DAF7F" Ref="U?"  Part="1" 
AR Path="/62525FD6/642DAF7F" Ref="U?"  Part="1" 
AR Path="/62525FDF/642DAF7F" Ref="U?"  Part="1" 
AR Path="/62525FE8/642DAF7F" Ref="U?"  Part="1" 
AR Path="/642DAF7F" Ref="U?"  Part="1" 
F 0 "U?" H 6750 20625 50  0000 C CNN
F 1 "74LS32" H 6750 20534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 20300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 20300 50  0001 C CNN
	1    6750 20300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 20600 6450 20400
Wire Wire Line
	6350 20600 6450 20600
Wire Wire Line
	5500 20200 6200 20200
Wire Wire Line
	5700 20700 5750 20700
Connection ~ 5700 20700
Wire Wire Line
	5700 19900 5700 20700
Wire Wire Line
	5750 19900 5700 19900
Wire Wire Line
	5500 20700 5700 20700
Wire Wire Line
	5600 20500 5750 20500
Wire Wire Line
	5600 19700 5600 20500
Wire Wire Line
	5750 19700 5600 19700
$Comp
L 74xx:74LS86 U?
U 1 1 642DAF93
P 6050 19800
AR Path="/600C5001/60248238/6016C9C5/642DAF93" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642DAF93" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642DAF93" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642DAF93" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642DAF93" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642DAF93" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642DAF93" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642DAF93" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642DAF93" Ref="U?"  Part="1" 
AR Path="/62525FCD/642DAF93" Ref="U?"  Part="1" 
AR Path="/62525FD6/642DAF93" Ref="U?"  Part="1" 
AR Path="/62525FDF/642DAF93" Ref="U?"  Part="1" 
AR Path="/62525FE8/642DAF93" Ref="U?"  Part="1" 
AR Path="/642DAF93" Ref="U?"  Part="1" 
F 0 "U?" H 6050 20125 50  0000 C CNN
F 1 "74LS86" H 6050 20034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 19800 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 19800 50  0001 C CNN
	1    6050 19800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 642DAF99
P 6050 20600
AR Path="/600C5001/60248238/6016C9C5/642DAF99" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/642DAF99" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/642DAF99" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/642DAF99" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/642DAF99" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/642DAF99" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/642DAF99" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/642DAF99" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/642DAF99" Ref="U?"  Part="1" 
AR Path="/62525FCD/642DAF99" Ref="U?"  Part="1" 
AR Path="/62525FD6/642DAF99" Ref="U?"  Part="1" 
AR Path="/62525FDF/642DAF99" Ref="U?"  Part="1" 
AR Path="/62525FE8/642DAF99" Ref="U?"  Part="1" 
AR Path="/642DAF99" Ref="U?"  Part="1" 
F 0 "U?" H 6050 20925 50  0000 C CNN
F 1 "74LS08" H 6050 20834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 20600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 20600 50  0001 C CNN
	1    6050 20600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 20200 6450 20200
Connection ~ 6200 20200
Wire Wire Line
	4500 20800 4750 20800
$Comp
L 74xx:74LS86 U?
U 1 1 642DAFA2
P 4200 20800
AR Path="/600C5001/642DAFA2" Ref="U?"  Part="1" 
AR Path="/642DAFA2" Ref="U?"  Part="1" 
F 0 "U?" H 4200 21125 50  0000 C CNN
F 1 "74LS86" H 4200 21034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 20800 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 20800 50  0001 C CNN
	1    4200 20800
	1    0    0    -1  
$EndComp
Text GLabel 3900 20900 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 20100 2    75   ~ 0
a5
Wire Wire Line
	4650 20100 4850 20100
Entry Wire Line
	4550 20000 4650 20100
Entry Wire Line
	3150 20600 3250 20700
Entry Wire Line
	7300 19800 7400 19900
Entry Wire Line
	7500 19950 7600 20050
Entry Wire Line
	7700 20800 7800 20900
Wire Wire Line
	6350 19800 7300 19800
Text Label 7200 19800 2    75   ~ 0
adder5
Wire Wire Line
	6200 19950 7500 19950
Text Label 7200 19950 2    75   ~ 0
and5
Text Label 7200 20800 2    75   ~ 0
xor5
Wire Wire Line
	5700 20800 7700 20800
Text Label 3850 22450 2    75   ~ 0
bus6
Wire Wire Line
	3250 22450 3900 22450
$Comp
L 74xx:74LS08 U?
U 1 1 64380C3A
P 5200 21950
AR Path="/600C5001/60248238/6016C9C5/64380C3A" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64380C3A" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64380C3A" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64380C3A" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64380C3A" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64380C3A" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64380C3A" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64380C3A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64380C3A" Ref="U?"  Part="1" 
AR Path="/62525FCD/64380C3A" Ref="U?"  Part="1" 
AR Path="/62525FD6/64380C3A" Ref="U?"  Part="1" 
AR Path="/62525FDF/64380C3A" Ref="U?"  Part="1" 
AR Path="/62525FE8/64380C3A" Ref="U?"  Part="1" 
AR Path="/64380C3A" Ref="U?"  Part="1" 
F 0 "U?" H 5200 22275 50  0000 C CNN
F 1 "74LS08" H 5200 22184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 21950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 21950 50  0001 C CNN
	1    5200 21950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 21850 4850 21850
Wire Wire Line
	4850 21850 4850 22350
Wire Wire Line
	4850 22350 4900 22350
Wire Wire Line
	4900 22050 4750 22050
Wire Wire Line
	4750 22050 4750 22550
Wire Wire Line
	4750 22550 4900 22550
Connection ~ 4750 22550
Connection ~ 4850 21850
$Comp
L 74xx:74LS86 U?
U 1 1 64380C48
P 5200 22450
AR Path="/600C5001/60248238/6016C9C5/64380C48" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64380C48" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64380C48" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64380C48" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64380C48" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64380C48" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64380C48" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64380C48" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64380C48" Ref="U?"  Part="1" 
AR Path="/62525FCD/64380C48" Ref="U?"  Part="1" 
AR Path="/62525FD6/64380C48" Ref="U?"  Part="1" 
AR Path="/62525FDF/64380C48" Ref="U?"  Part="1" 
AR Path="/62525FE8/64380C48" Ref="U?"  Part="1" 
AR Path="/64380C48" Ref="U?"  Part="1" 
F 0 "U?" H 5200 22775 50  0000 C CNN
F 1 "74LS86" H 5200 22684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 22450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 22450 50  0001 C CNN
	1    5200 22450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 21950 6200 21700
Wire Wire Line
	5700 22550 5700 22450
$Comp
L 74xx:74LS32 U?
U 1 1 64380C50
P 6750 22050
AR Path="/600C5001/60248238/6016C9C5/64380C50" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64380C50" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64380C50" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64380C50" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64380C50" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64380C50" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64380C50" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64380C50" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64380C50" Ref="U?"  Part="1" 
AR Path="/62525FCD/64380C50" Ref="U?"  Part="1" 
AR Path="/62525FD6/64380C50" Ref="U?"  Part="1" 
AR Path="/62525FDF/64380C50" Ref="U?"  Part="1" 
AR Path="/62525FE8/64380C50" Ref="U?"  Part="1" 
AR Path="/64380C50" Ref="U?"  Part="1" 
F 0 "U?" H 6750 22375 50  0000 C CNN
F 1 "74LS32" H 6750 22284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 22050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 22050 50  0001 C CNN
	1    6750 22050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 22350 6450 22150
Wire Wire Line
	6350 22350 6450 22350
Wire Wire Line
	5500 21950 6200 21950
Wire Wire Line
	5700 22450 5750 22450
Connection ~ 5700 22450
Wire Wire Line
	5700 21650 5700 22450
Wire Wire Line
	5750 21650 5700 21650
Wire Wire Line
	5500 22450 5700 22450
Wire Wire Line
	5600 22250 5750 22250
Wire Wire Line
	5600 21450 5600 22250
Wire Wire Line
	5750 21450 5600 21450
$Comp
L 74xx:74LS86 U?
U 1 1 64380C64
P 6050 21550
AR Path="/600C5001/60248238/6016C9C5/64380C64" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64380C64" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64380C64" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64380C64" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64380C64" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64380C64" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64380C64" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64380C64" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64380C64" Ref="U?"  Part="1" 
AR Path="/62525FCD/64380C64" Ref="U?"  Part="1" 
AR Path="/62525FD6/64380C64" Ref="U?"  Part="1" 
AR Path="/62525FDF/64380C64" Ref="U?"  Part="1" 
AR Path="/62525FE8/64380C64" Ref="U?"  Part="1" 
AR Path="/64380C64" Ref="U?"  Part="1" 
F 0 "U?" H 6050 21875 50  0000 C CNN
F 1 "74LS86" H 6050 21784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 21550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 21550 50  0001 C CNN
	1    6050 21550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 64380C6A
P 6050 22350
AR Path="/600C5001/60248238/6016C9C5/64380C6A" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/64380C6A" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/64380C6A" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/64380C6A" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/64380C6A" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/64380C6A" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/64380C6A" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/64380C6A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/64380C6A" Ref="U?"  Part="1" 
AR Path="/62525FCD/64380C6A" Ref="U?"  Part="1" 
AR Path="/62525FD6/64380C6A" Ref="U?"  Part="1" 
AR Path="/62525FDF/64380C6A" Ref="U?"  Part="1" 
AR Path="/62525FE8/64380C6A" Ref="U?"  Part="1" 
AR Path="/64380C6A" Ref="U?"  Part="1" 
F 0 "U?" H 6050 22675 50  0000 C CNN
F 1 "74LS08" H 6050 22584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 22350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 22350 50  0001 C CNN
	1    6050 22350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 21950 6450 21950
Connection ~ 6200 21950
Wire Wire Line
	4500 22550 4750 22550
$Comp
L 74xx:74LS86 U?
U 1 1 64380C73
P 4200 22550
AR Path="/600C5001/64380C73" Ref="U?"  Part="1" 
AR Path="/64380C73" Ref="U?"  Part="1" 
F 0 "U?" H 4200 22875 50  0000 C CNN
F 1 "74LS86" H 4200 22784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 22550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 22550 50  0001 C CNN
	1    4200 22550
	1    0    0    -1  
$EndComp
Text GLabel 3900 22650 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 21850 2    75   ~ 0
a6
Wire Wire Line
	4650 21850 4850 21850
Entry Wire Line
	4550 21750 4650 21850
Entry Wire Line
	3150 22350 3250 22450
Entry Wire Line
	7300 21550 7400 21650
Entry Wire Line
	7500 21700 7600 21800
Entry Wire Line
	7700 22550 7800 22650
Wire Wire Line
	6350 21550 7300 21550
Text Label 7200 21550 2    75   ~ 0
adder6
Wire Wire Line
	6200 21700 7500 21700
Text Label 7200 21700 2    75   ~ 0
and6
Text Label 7200 22550 2    75   ~ 0
xor6
Wire Wire Line
	5700 22550 7700 22550
Text Label 3850 24200 2    75   ~ 0
bus7
Wire Wire Line
	3250 24200 3900 24200
$Comp
L 74xx:74LS08 U?
U 1 1 6442C484
P 5200 23700
AR Path="/600C5001/60248238/6016C9C5/6442C484" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6442C484" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6442C484" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6442C484" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6442C484" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6442C484" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6442C484" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6442C484" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6442C484" Ref="U?"  Part="1" 
AR Path="/62525FCD/6442C484" Ref="U?"  Part="1" 
AR Path="/62525FD6/6442C484" Ref="U?"  Part="1" 
AR Path="/62525FDF/6442C484" Ref="U?"  Part="1" 
AR Path="/62525FE8/6442C484" Ref="U?"  Part="1" 
AR Path="/6442C484" Ref="U?"  Part="1" 
F 0 "U?" H 5200 24025 50  0000 C CNN
F 1 "74LS08" H 5200 23934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 23700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5200 23700 50  0001 C CNN
	1    5200 23700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 23600 4850 23600
Wire Wire Line
	4850 23600 4850 24100
Wire Wire Line
	4850 24100 4900 24100
Wire Wire Line
	4900 23800 4750 23800
Wire Wire Line
	4750 23800 4750 24300
Wire Wire Line
	4750 24300 4900 24300
Connection ~ 4750 24300
Connection ~ 4850 23600
$Comp
L 74xx:74LS86 U?
U 1 1 6442C492
P 5200 24200
AR Path="/600C5001/60248238/6016C9C5/6442C492" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6442C492" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6442C492" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6442C492" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6442C492" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6442C492" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6442C492" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6442C492" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6442C492" Ref="U?"  Part="1" 
AR Path="/62525FCD/6442C492" Ref="U?"  Part="1" 
AR Path="/62525FD6/6442C492" Ref="U?"  Part="1" 
AR Path="/62525FDF/6442C492" Ref="U?"  Part="1" 
AR Path="/62525FE8/6442C492" Ref="U?"  Part="1" 
AR Path="/6442C492" Ref="U?"  Part="1" 
F 0 "U?" H 5200 24525 50  0000 C CNN
F 1 "74LS86" H 5200 24434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5200 24200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5200 24200 50  0001 C CNN
	1    5200 24200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 23700 6200 23450
Wire Wire Line
	5700 24300 5700 24200
$Comp
L 74xx:74LS32 U?
U 1 1 6442C49A
P 6750 23800
AR Path="/600C5001/60248238/6016C9C5/6442C49A" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6442C49A" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6442C49A" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6442C49A" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6442C49A" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6442C49A" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6442C49A" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6442C49A" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6442C49A" Ref="U?"  Part="1" 
AR Path="/62525FCD/6442C49A" Ref="U?"  Part="1" 
AR Path="/62525FD6/6442C49A" Ref="U?"  Part="1" 
AR Path="/62525FDF/6442C49A" Ref="U?"  Part="1" 
AR Path="/62525FE8/6442C49A" Ref="U?"  Part="1" 
AR Path="/6442C49A" Ref="U?"  Part="1" 
F 0 "U?" H 6750 24125 50  0000 C CNN
F 1 "74LS32" H 6750 24034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6750 23800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6750 23800 50  0001 C CNN
	1    6750 23800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 24100 6450 23900
Wire Wire Line
	6350 24100 6450 24100
Wire Wire Line
	5500 23700 6200 23700
Wire Wire Line
	5700 24200 5750 24200
Connection ~ 5700 24200
Wire Wire Line
	5700 23400 5700 24200
Wire Wire Line
	5750 23400 5700 23400
Wire Wire Line
	5500 24200 5700 24200
Wire Wire Line
	5600 24000 5750 24000
Wire Wire Line
	5600 23200 5600 24000
Wire Wire Line
	5750 23200 5600 23200
$Comp
L 74xx:74LS86 U?
U 1 1 6442C4AE
P 6050 23300
AR Path="/600C5001/60248238/6016C9C5/6442C4AE" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6442C4AE" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6442C4AE" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6442C4AE" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6442C4AE" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6442C4AE" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6442C4AE" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6442C4AE" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6442C4AE" Ref="U?"  Part="1" 
AR Path="/62525FCD/6442C4AE" Ref="U?"  Part="1" 
AR Path="/62525FD6/6442C4AE" Ref="U?"  Part="1" 
AR Path="/62525FDF/6442C4AE" Ref="U?"  Part="1" 
AR Path="/62525FE8/6442C4AE" Ref="U?"  Part="1" 
AR Path="/6442C4AE" Ref="U?"  Part="1" 
F 0 "U?" H 6050 23625 50  0000 C CNN
F 1 "74LS86" H 6050 23534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 23300 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 23300 50  0001 C CNN
	1    6050 23300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6442C4B4
P 6050 24100
AR Path="/600C5001/60248238/6016C9C5/6442C4B4" Ref="U?"  Part="4" 
AR Path="/600C5001/60248238/6016C700/6442C4B4" Ref="U?"  Part="3" 
AR Path="/600C5001/60248238/6016C4DC/6442C4B4" Ref="U?"  Part="2" 
AR Path="/600C5001/60248238/6014201D/6442C4B4" Ref="U?"  Part="1" 
AR Path="/600C5001/60260EB9/6016C9C5/6442C4B4" Ref="U?"  Part="4" 
AR Path="/600C5001/60260EB9/6016C700/6442C4B4" Ref="U?"  Part="3" 
AR Path="/600C5001/60260EB9/6016C4DC/6442C4B4" Ref="U?"  Part="2" 
AR Path="/600C5001/60260EB9/6014201D/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C9C5/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C700/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF6542/6016C4DC/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF6542/6014201D/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C9C5/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C700/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF655B/6016C4DC/6442C4B4" Ref="U?"  Part="1" 
AR Path="/61EF655B/6014201D/6442C4B4" Ref="U?"  Part="1" 
AR Path="/62525FCD/6442C4B4" Ref="U?"  Part="1" 
AR Path="/62525FD6/6442C4B4" Ref="U?"  Part="1" 
AR Path="/62525FDF/6442C4B4" Ref="U?"  Part="1" 
AR Path="/62525FE8/6442C4B4" Ref="U?"  Part="1" 
AR Path="/6442C4B4" Ref="U?"  Part="1" 
F 0 "U?" H 6050 24425 50  0000 C CNN
F 1 "74LS08" H 6050 24334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 24100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6050 24100 50  0001 C CNN
	1    6050 24100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 23700 6450 23700
Connection ~ 6200 23700
Wire Wire Line
	4500 24300 4750 24300
$Comp
L 74xx:74LS86 U?
U 1 1 6442C4BD
P 4200 24300
AR Path="/600C5001/6442C4BD" Ref="U?"  Part="1" 
AR Path="/6442C4BD" Ref="U?"  Part="1" 
F 0 "U?" H 4200 24625 50  0000 C CNN
F 1 "74LS86" H 4200 24534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 24300 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4200 24300 50  0001 C CNN
	1    4200 24300
	1    0    0    -1  
$EndComp
Text GLabel 3900 24400 0    75   Input ~ 0
ctrlAluSub
Text Label 4800 23600 2    75   ~ 0
a7
Wire Wire Line
	4650 23600 4850 23600
Entry Wire Line
	4550 23500 4650 23600
Entry Wire Line
	7300 23300 7400 23400
Entry Wire Line
	7500 23450 7600 23550
Entry Wire Line
	7700 24300 7800 24400
Wire Wire Line
	6350 23300 7300 23300
Text Label 7200 23300 2    75   ~ 0
adder7
Wire Wire Line
	6200 23450 7500 23450
Text Label 7200 23450 2    75   ~ 0
and7
Text Label 7200 24300 2    75   ~ 0
xor7
Wire Wire Line
	5700 24300 7700 24300
Wire Wire Line
	5600 12700 5600 12200
Wire Wire Line
	5600 12200 7250 12200
Wire Wire Line
	7250 12200 7250 11550
Wire Wire Line
	7050 11550 7250 11550
Connection ~ 5600 12700
Wire Wire Line
	7250 13300 7250 13950
Wire Wire Line
	7250 13950 5600 13950
Wire Wire Line
	5600 13950 5600 14450
Wire Wire Line
	7050 13300 7250 13300
Wire Wire Line
	5600 16200 5600 15700
Wire Wire Line
	5600 15700 7250 15700
Wire Wire Line
	7250 15700 7250 15050
Wire Wire Line
	7050 15050 7250 15050
Connection ~ 5600 16200
Wire Wire Line
	7250 16800 7250 17450
Wire Wire Line
	7250 17450 5600 17450
Wire Wire Line
	5600 17450 5600 17950
Wire Wire Line
	7050 16800 7250 16800
Wire Wire Line
	5600 23200 5600 22800
Wire Wire Line
	5600 22800 7250 22800
Wire Wire Line
	7250 22800 7250 22050
Wire Wire Line
	7050 22050 7250 22050
Connection ~ 5600 23200
Wire Wire Line
	5600 21450 5600 20950
Wire Wire Line
	5600 20950 7250 20950
Wire Wire Line
	7250 20950 7250 20300
Wire Wire Line
	7050 20300 7250 20300
Connection ~ 5600 21450
Wire Wire Line
	7250 18550 7250 19200
Wire Wire Line
	5600 19200 5600 19700
Wire Wire Line
	7050 18550 7250 18550
Wire Wire Line
	5600 19200 7250 19200
Connection ~ 5600 19700
$Comp
L 74xx:74LS86 U?
U 1 1 64F66365
P 8300 23700
AR Path="/600C5001/64F66365" Ref="U?"  Part="1" 
AR Path="/64F66365" Ref="U?"  Part="1" 
F 0 "U?" H 8300 24025 50  0000 C CNN
F 1 "74LS86" H 8300 23934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8300 23700 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 8300 23700 50  0001 C CNN
	1    8300 23700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 23600 8000 23600
Text Label 14600 24500 0    75   ~ 0
flagC
Text Label 14600 24350 0    75   ~ 0
flagV
Wire Wire Line
	8600 23700 8800 23700
Wire Wire Line
	7050 23800 8000 23800
Wire Wire Line
	7250 22800 7900 22800
Connection ~ 7250 22800
Wire Wire Line
	7900 22800 7900 23300
$Comp
L power:GND #PWR?
U 1 1 66262F19
P 1250 16550
AR Path="/600C5001/66262F19" Ref="#PWR?"  Part="1" 
AR Path="/66262F19" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 16300 50  0001 C CNN
F 1 "GND" H 1255 16377 50  0000 C CNN
F 2 "" H 1250 16550 50  0001 C CNN
F 3 "" H 1250 16550 50  0001 C CNN
	1    1250 16550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66262F1F
P 1250 15550
AR Path="/600C5001/66262F1F" Ref="#PWR?"  Part="1" 
AR Path="/66262F1F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 15400 50  0001 C CNN
F 1 "+5V" H 1265 15723 50  0000 C CNN
F 2 "" H 1250 15550 50  0001 C CNN
F 3 "" H 1250 15550 50  0001 C CNN
	1    1250 15550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 66262F25
P 1250 16050
AR Path="/600C5001/66262F25" Ref="U?"  Part="5" 
AR Path="/66262F25" Ref="U?"  Part="5" 
F 0 "U?" H 1480 16096 50  0000 L CNN
F 1 "74LS86" H 1480 16005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 16050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 1250 16050 50  0001 C CNN
	5    1250 16050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 17100 2000 17050
Wire Wire Line
	1250 18600 1250 18650
Wire Wire Line
	2000 18650 2000 18600
Wire Wire Line
	2000 19700 2000 19650
Wire Wire Line
	1250 19650 1250 19700
Wire Wire Line
	2000 18150 2000 18100
Wire Wire Line
	2000 16600 2000 16550
Wire Wire Line
	1250 18100 1250 18150
Wire Wire Line
	1250 17050 1250 17100
Wire Wire Line
	2000 15500 2000 15550
$Comp
L power:+5V #PWR?
U 1 1 66262F35
P 2000 18600
AR Path="/60248238/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F35" Ref="#PWR?"  Part="1" 
AR Path="/66262F35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 18450 50  0001 C CNN
F 1 "+5V" H 2015 18773 50  0000 C CNN
F 2 "" H 2000 18600 50  0001 C CNN
F 3 "" H 2000 18600 50  0001 C CNN
	1    2000 18600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66262F3B
P 1250 18600
AR Path="/60248238/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F3B" Ref="#PWR?"  Part="1" 
AR Path="/66262F3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 18450 50  0001 C CNN
F 1 "+5V" H 1265 18773 50  0000 C CNN
F 2 "" H 1250 18600 50  0001 C CNN
F 3 "" H 1250 18600 50  0001 C CNN
	1    1250 18600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 66262F41
P 1250 19150
AR Path="/60248238/66262F41" Ref="U?"  Part="5" 
AR Path="/60260EB9/66262F41" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/66262F41" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/66262F41" Ref="U?"  Part="5" 
AR Path="/61EF6542/66262F41" Ref="U?"  Part="5" 
AR Path="/61EF655B/66262F41" Ref="U?"  Part="5" 
AR Path="/66262F41" Ref="U?"  Part="5" 
F 0 "U?" H 1480 19196 50  0000 L CNN
F 1 "74LS08" H 1480 19105 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 19150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1250 19150 50  0001 C CNN
	5    1250 19150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66262F47
P 2000 16600
AR Path="/60248238/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F47" Ref="#PWR?"  Part="1" 
AR Path="/66262F47" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 16350 50  0001 C CNN
F 1 "GND" H 2005 16427 50  0000 C CNN
F 2 "" H 2000 16600 50  0001 C CNN
F 3 "" H 2000 16600 50  0001 C CNN
	1    2000 16600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66262F4D
P 1250 18150
AR Path="/60248238/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F4D" Ref="#PWR?"  Part="1" 
AR Path="/66262F4D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 17900 50  0001 C CNN
F 1 "GND" H 1255 17977 50  0000 C CNN
F 2 "" H 1250 18150 50  0001 C CNN
F 3 "" H 1250 18150 50  0001 C CNN
	1    1250 18150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66262F53
P 2000 18150
AR Path="/60248238/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F53" Ref="#PWR?"  Part="1" 
AR Path="/66262F53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 17900 50  0001 C CNN
F 1 "GND" H 2005 17977 50  0000 C CNN
F 2 "" H 2000 18150 50  0001 C CNN
F 3 "" H 2000 18150 50  0001 C CNN
	1    2000 18150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66262F59
P 1250 19700
AR Path="/60248238/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F59" Ref="#PWR?"  Part="1" 
AR Path="/66262F59" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 19450 50  0001 C CNN
F 1 "GND" H 1255 19527 50  0000 C CNN
F 2 "" H 1250 19700 50  0001 C CNN
F 3 "" H 1250 19700 50  0001 C CNN
	1    1250 19700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66262F5F
P 2000 19700
AR Path="/60248238/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F5F" Ref="#PWR?"  Part="1" 
AR Path="/66262F5F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 19450 50  0001 C CNN
F 1 "GND" H 2005 19527 50  0000 C CNN
F 2 "" H 2000 19700 50  0001 C CNN
F 3 "" H 2000 19700 50  0001 C CNN
	1    2000 19700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66262F65
P 2000 17050
AR Path="/60248238/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F65" Ref="#PWR?"  Part="1" 
AR Path="/66262F65" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 16900 50  0001 C CNN
F 1 "+5V" H 2015 17223 50  0000 C CNN
F 2 "" H 2000 17050 50  0001 C CNN
F 3 "" H 2000 17050 50  0001 C CNN
	1    2000 17050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66262F6B
P 1250 17050
AR Path="/60248238/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F6B" Ref="#PWR?"  Part="1" 
AR Path="/66262F6B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 16900 50  0001 C CNN
F 1 "+5V" H 1265 17223 50  0000 C CNN
F 2 "" H 1250 17050 50  0001 C CNN
F 3 "" H 1250 17050 50  0001 C CNN
	1    1250 17050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66262F71
P 2000 15500
AR Path="/60248238/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60260EB9/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/61EF6542/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/61EF655B/66262F71" Ref="#PWR?"  Part="1" 
AR Path="/66262F71" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 15350 50  0001 C CNN
F 1 "+5V" H 2015 15673 50  0000 C CNN
F 2 "" H 2000 15500 50  0001 C CNN
F 3 "" H 2000 15500 50  0001 C CNN
	1    2000 15500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 66262F77
P 2000 19150
AR Path="/60248238/66262F77" Ref="U?"  Part="5" 
AR Path="/60260EB9/66262F77" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/66262F77" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/66262F77" Ref="U?"  Part="5" 
AR Path="/61EF6542/66262F77" Ref="U?"  Part="5" 
AR Path="/61EF655B/66262F77" Ref="U?"  Part="5" 
AR Path="/66262F77" Ref="U?"  Part="5" 
F 0 "U?" H 2230 19196 50  0000 L CNN
F 1 "74LS32" H 2230 19105 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 19150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 2000 19150 50  0001 C CNN
	5    2000 19150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 66262F7D
P 1250 17600
AR Path="/60248238/66262F7D" Ref="U?"  Part="5" 
AR Path="/60260EB9/66262F7D" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/66262F7D" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/66262F7D" Ref="U?"  Part="5" 
AR Path="/61EF6542/66262F7D" Ref="U?"  Part="5" 
AR Path="/61EF655B/66262F7D" Ref="U?"  Part="5" 
AR Path="/66262F7D" Ref="U?"  Part="5" 
F 0 "U?" H 1480 17646 50  0000 L CNN
F 1 "74LS08" H 1480 17555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 1250 17600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1250 17600 50  0001 C CNN
	5    1250 17600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 66262F83
P 2000 17600
AR Path="/60248238/66262F83" Ref="U?"  Part="5" 
AR Path="/60260EB9/66262F83" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/66262F83" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/66262F83" Ref="U?"  Part="5" 
AR Path="/61EF6542/66262F83" Ref="U?"  Part="5" 
AR Path="/61EF655B/66262F83" Ref="U?"  Part="5" 
AR Path="/66262F83" Ref="U?"  Part="5" 
F 0 "U?" H 2230 17646 50  0000 L CNN
F 1 "74LS86" H 2230 17555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 17600 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2000 17600 50  0001 C CNN
	5    2000 17600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 66262F89
P 2000 16050
AR Path="/60248238/66262F89" Ref="U?"  Part="5" 
AR Path="/60260EB9/66262F89" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/66262F89" Ref="U?"  Part="5" 
AR Path="/600C5001/60260EB9/66262F89" Ref="U?"  Part="5" 
AR Path="/61EF6542/66262F89" Ref="U?"  Part="5" 
AR Path="/61EF655B/66262F89" Ref="U?"  Part="5" 
AR Path="/66262F89" Ref="U?"  Part="5" 
F 0 "U?" H 2230 16096 50  0000 L CNN
F 1 "74LS86" H 2230 16005 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2000 16050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2000 16050 50  0001 C CNN
	5    2000 16050
	1    0    0    -1  
$EndComp
Wire Bus Line
	2100 8000 2100 10250
Connection ~ 2100 8000
Entry Wire Line
	6500 24800 6600 24900
Entry Wire Line
	7900 24800 8000 24900
Entry Wire Line
	9350 24800 9450 24900
Text GLabel 7100 30550 0    75   Input ~ 0
flagCarry
Text GLabel 12000 27150 0    75   Input ~ 0
ctrlAluSub
Text GLabel 12000 29600 0    75   Input ~ 0
ctrlAluSub
Text GLabel 4700 29600 0    75   Input ~ 0
ctrlAluSub
Text GLabel 4700 27150 0    75   Input ~ 0
ctrlAluSub
Wire Wire Line
	9450 27150 9450 29600
Connection ~ 9450 27150
Wire Wire Line
	9450 27150 9850 27150
Wire Wire Line
	9450 24900 9450 27150
Wire Wire Line
	9450 29600 9850 29600
Text Label 9450 25050 0    75   ~ 0
bus2
Wire Wire Line
	8000 27150 8000 29600
Connection ~ 8000 27150
Wire Wire Line
	8000 27150 8350 27150
Wire Wire Line
	8000 24900 8000 27150
Wire Wire Line
	8000 29600 8350 29600
Text Label 8000 25050 0    75   ~ 0
bus1
Text Label 6600 25050 0    75   ~ 0
bus0
Wire Wire Line
	6600 27150 6600 29600
Connection ~ 6600 27150
Wire Wire Line
	6600 27150 6850 27150
Wire Wire Line
	6600 29600 6850 29600
Wire Wire Line
	6600 24900 6600 27150
Wire Bus Line
	3350 24950 4550 24950
Entry Wire Line
	3350 29200 3450 29300
Entry Wire Line
	3350 28900 3450 29000
Entry Wire Line
	3350 28600 3450 28700
Entry Wire Line
	3350 28300 3450 28400
Entry Wire Line
	3350 26750 3450 26850
Entry Wire Line
	3350 26450 3450 26550
Entry Wire Line
	3350 26150 3450 26250
Entry Wire Line
	3350 25850 3450 25950
Wire Wire Line
	5850 29000 6800 29000
Connection ~ 5850 29000
Wire Wire Line
	5850 31300 7100 31300
Wire Wire Line
	5850 29000 5850 31300
Wire Wire Line
	5950 28700 6800 28700
Connection ~ 5950 28700
Wire Wire Line
	5950 28700 5950 31200
Wire Wire Line
	6050 28400 6750 28400
Connection ~ 6050 28400
Wire Wire Line
	6050 28400 6050 31100
Wire Wire Line
	6150 26850 6750 26850
Wire Wire Line
	6250 26550 6750 26550
Wire Wire Line
	6350 26250 5700 26250
Connection ~ 6350 26250
Wire Wire Line
	6350 30800 7100 30800
Wire Wire Line
	6350 26250 6350 30800
Wire Wire Line
	6450 25950 6850 25950
Connection ~ 6450 25950
Wire Wire Line
	6450 30700 7100 30700
Wire Wire Line
	6450 25950 6450 30700
NoConn ~ 8100 30700
$Comp
L power:GND #PWR?
U 1 1 664382DB
P 7100 31900
AR Path="/608A8AE7/664382DB" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/664382DB" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60297135/664382DB" Ref="#PWR?"  Part="1" 
AR Path="/61EF647B/664382DB" Ref="#PWR?"  Part="1" 
AR Path="/664382DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 31650 50  0001 C CNN
F 1 "GND" H 7105 31727 50  0000 C CNN
F 2 "" H 7100 31900 50  0001 C CNN
F 3 "" H 7100 31900 50  0001 C CNN
	1    7100 31900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U?
U 1 1 664382D5
P 7600 31200
AR Path="/608A8AE7/664382D5" Ref="U?"  Part="1" 
AR Path="/600C5001/664382D5" Ref="U?"  Part="1" 
AR Path="/600C5001/60297135/664382D5" Ref="U?"  Part="1" 
AR Path="/61EF647B/664382D5" Ref="U?"  Part="1" 
AR Path="/664382D5" Ref="U?"  Part="1" 
F 0 "U?" H 7600 32281 50  0000 C CNN
F 1 "74LS151" H 7600 32190 50  0000 C CNN
F 2 "" H 7600 31200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 7600 31200 50  0001 C CNN
	1    7600 31200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 664382CF
P 7600 30300
AR Path="/608A8AE7/664382CF" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/664382CF" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60297135/664382CF" Ref="#PWR?"  Part="1" 
AR Path="/61EF647B/664382CF" Ref="#PWR?"  Part="1" 
AR Path="/664382CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 30150 50  0001 C CNN
F 1 "+5V" H 7600 30550 50  0000 C CNN
F 2 "" H 7600 30300 50  0001 C CNN
F 3 "" H 7600 30300 50  0001 C CNN
	1    7600 30300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664382C9
P 7600 32200
AR Path="/608A8AE7/664382C9" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/664382C9" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60297135/664382C9" Ref="#PWR?"  Part="1" 
AR Path="/61EF647B/664382C9" Ref="#PWR?"  Part="1" 
AR Path="/664382C9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 31950 50  0001 C CNN
F 1 "GND" H 7605 32027 50  0000 C CNN
F 2 "" H 7600 32200 50  0001 C CNN
F 3 "" H 7600 32200 50  0001 C CNN
	1    7600 32200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 25950 6450 25950
$Comp
L power:+5V #PWR?
U 1 1 664382C1
P 12500 25650
AR Path="/61EF647B/664382C1" Ref="#PWR?"  Part="1" 
AR Path="/664382C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12500 25500 50  0001 C CNN
F 1 "+5V" H 12600 25750 50  0000 C CNN
F 2 "" H 12500 25650 50  0001 C CNN
F 3 "" H 12500 25650 50  0001 C CNN
	1    12500 25650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 29300 11250 29300
Wire Wire Line
	10850 28700 11150 28700
Wire Wire Line
	10850 28400 11100 28400
Text Notes 12000 25300 0    50   ~ 0
Reverse MUXs
Wire Wire Line
	11250 29300 12000 29300
Connection ~ 11250 29300
Wire Wire Line
	11250 26050 12000 26050
Wire Wire Line
	11250 29300 11250 26050
Wire Wire Line
	11200 29000 10850 29000
Connection ~ 11200 29000
Wire Wire Line
	11200 26350 11200 29000
Wire Wire Line
	11200 26350 12000 26350
Wire Wire Line
	11150 28700 12000 28700
Connection ~ 11150 28700
Wire Wire Line
	11150 26650 12000 26650
Wire Wire Line
	11150 28700 11150 26650
Wire Wire Line
	11100 28400 12000 28400
Connection ~ 11100 28400
Wire Wire Line
	11100 26950 12000 26950
Wire Wire Line
	11100 28400 11100 26950
Wire Wire Line
	11050 26850 12000 26850
Connection ~ 11050 26850
Wire Wire Line
	11050 28500 12000 28500
Wire Wire Line
	11050 26850 11050 28500
Wire Wire Line
	11000 26550 10850 26550
Connection ~ 11000 26550
Wire Wire Line
	11000 28800 12000 28800
Wire Wire Line
	11000 26550 11000 28800
Wire Wire Line
	10950 26250 12000 26250
Connection ~ 10950 26250
Wire Wire Line
	10950 29100 12000 29100
Wire Wire Line
	10950 26250 10950 29100
Wire Wire Line
	10900 25950 12000 25950
Connection ~ 10900 25950
Wire Wire Line
	10900 29400 12000 29400
Wire Wire Line
	10900 25950 10900 29400
Wire Wire Line
	12000 29000 11200 29000
Wire Wire Line
	10850 26850 11050 26850
Wire Wire Line
	12000 26550 11000 26550
Wire Wire Line
	10850 26250 10950 26250
Wire Wire Line
	10850 25950 10900 25950
$Comp
L power:+5V #PWR?
U 1 1 66438280
P 12500 28100
AR Path="/61EF647B/66438280" Ref="#PWR?"  Part="1" 
AR Path="/66438280" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12500 27950 50  0001 C CNN
F 1 "+5V" H 12600 28200 50  0000 C CNN
F 2 "" H 12500 28100 50  0001 C CNN
F 3 "" H 12500 28100 50  0001 C CNN
	1    12500 28100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6643827A
P 12000 27250
AR Path="/61EF647B/6643827A" Ref="#PWR?"  Part="1" 
AR Path="/6643827A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12000 27000 50  0001 C CNN
F 1 "GND" H 12005 27077 50  0000 C CNN
F 2 "" H 12000 27250 50  0001 C CNN
F 3 "" H 12000 27250 50  0001 C CNN
	1    12000 27250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438274
P 12500 27550
AR Path="/61EF647B/66438274" Ref="#PWR?"  Part="1" 
AR Path="/66438274" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12500 27300 50  0001 C CNN
F 1 "GND" H 12505 27377 50  0000 C CNN
F 2 "" H 12500 27550 50  0001 C CNN
F 3 "" H 12500 27550 50  0001 C CNN
	1    12500 27550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6643826E
P 12000 29700
AR Path="/61EF647B/6643826E" Ref="#PWR?"  Part="1" 
AR Path="/6643826E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12000 29450 50  0001 C CNN
F 1 "GND" H 12005 29527 50  0000 C CNN
F 2 "" H 12000 29700 50  0001 C CNN
F 3 "" H 12000 29700 50  0001 C CNN
	1    12000 29700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438268
P 12500 30000
AR Path="/61EF647B/66438268" Ref="#PWR?"  Part="1" 
AR Path="/66438268" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12500 29750 50  0001 C CNN
F 1 "GND" H 12505 29827 50  0000 C CNN
F 2 "" H 12500 30000 50  0001 C CNN
F 3 "" H 12500 30000 50  0001 C CNN
	1    12500 30000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 66438262
P 12500 29000
AR Path="/61EF647B/66438262" Ref="U?"  Part="1" 
AR Path="/66438262" Ref="U?"  Part="1" 
F 0 "U?" H 12500 30050 50  0000 C CNN
F 1 "74LS157" H 12500 30150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12500 29000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 12500 29000 50  0001 C CNN
	1    12500 29000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 6643825C
P 12500 26550
AR Path="/61EF647B/6643825C" Ref="U?"  Part="1" 
AR Path="/6643825C" Ref="U?"  Part="1" 
F 0 "U?" H 12500 27631 50  0000 C CNN
F 1 "74LS157" H 12500 27700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 12500 26550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 12500 26550 50  0001 C CNN
	1    12500 26550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 28700 8350 28700
Connection ~ 8200 28700
Wire Wire Line
	8200 26950 8200 28700
Wire Wire Line
	8350 26950 8200 26950
Wire Wire Line
	7850 28700 8200 28700
Wire Wire Line
	9600 28400 9850 28400
Connection ~ 9600 28400
Wire Wire Line
	9600 26050 9850 26050
Wire Wire Line
	9600 28400 9600 26050
Wire Wire Line
	9650 28700 9850 28700
Connection ~ 9650 28700
Wire Wire Line
	9650 26350 9850 26350
Wire Wire Line
	9650 28700 9650 26350
Wire Wire Line
	9700 29000 9850 29000
Connection ~ 9700 29000
Wire Wire Line
	9700 26650 9850 26650
Wire Wire Line
	9700 29000 9700 26650
Wire Wire Line
	9750 29300 9850 29300
Connection ~ 9750 29300
Wire Wire Line
	9750 26950 9850 26950
Wire Wire Line
	9750 29300 9750 26950
Wire Wire Line
	9350 26550 9850 26550
Wire Wire Line
	9350 26850 9850 26850
Wire Wire Line
	9350 28400 9600 28400
Wire Wire Line
	9350 28700 9650 28700
Wire Wire Line
	9350 29000 9700 29000
Wire Wire Line
	9350 29300 9750 29300
$Comp
L power:GND #PWR?
U 1 1 66438226
P 9850 28800
AR Path="/61EF647B/66438226" Ref="#PWR?"  Part="1" 
AR Path="/66438226" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 28550 50  0001 C CNN
F 1 "GND" H 9855 28627 50  0000 C CNN
F 2 "" H 9850 28800 50  0001 C CNN
F 3 "" H 9850 28800 50  0001 C CNN
	1    9850 28800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438220
P 9850 28500
AR Path="/61EF647B/66438220" Ref="#PWR?"  Part="1" 
AR Path="/66438220" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 28250 50  0001 C CNN
F 1 "GND" H 9855 28327 50  0000 C CNN
F 2 "" H 9850 28500 50  0001 C CNN
F 3 "" H 9850 28500 50  0001 C CNN
	1    9850 28500
	1    0    0    -1  
$EndComp
Text Notes 10050 25300 0    50   ~ 0
Shift4 MUXs
$Comp
L power:GND #PWR?
U 1 1 66438219
P 9850 29100
AR Path="/61EF647B/66438219" Ref="#PWR?"  Part="1" 
AR Path="/66438219" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 28850 50  0001 C CNN
F 1 "GND" H 9855 28927 50  0000 C CNN
F 2 "" H 9850 29100 50  0001 C CNN
F 3 "" H 9850 29100 50  0001 C CNN
	1    9850 29100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 26250 9850 26250
$Comp
L power:GND #PWR?
U 1 1 66438212
P 9850 29400
AR Path="/61EF647B/66438212" Ref="#PWR?"  Part="1" 
AR Path="/66438212" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 29150 50  0001 C CNN
F 1 "GND" H 9855 29227 50  0000 C CNN
F 2 "" H 9850 29400 50  0001 C CNN
F 3 "" H 9850 29400 50  0001 C CNN
	1    9850 29400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 25950 9850 25950
$Comp
L power:GND #PWR?
U 1 1 6643820B
P 9850 29700
AR Path="/61EF647B/6643820B" Ref="#PWR?"  Part="1" 
AR Path="/6643820B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 29450 50  0001 C CNN
F 1 "GND" H 9855 29527 50  0000 C CNN
F 2 "" H 9850 29700 50  0001 C CNN
F 3 "" H 9850 29700 50  0001 C CNN
	1    9850 29700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438205
P 9850 27250
AR Path="/61EF647B/66438205" Ref="#PWR?"  Part="1" 
AR Path="/66438205" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 27000 50  0001 C CNN
F 1 "GND" H 9855 27077 50  0000 C CNN
F 2 "" H 9850 27250 50  0001 C CNN
F 3 "" H 9850 27250 50  0001 C CNN
	1    9850 27250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 664381FF
P 10350 25650
AR Path="/61EF647B/664381FF" Ref="#PWR?"  Part="1" 
AR Path="/664381FF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 25500 50  0001 C CNN
F 1 "+5V" H 10450 25750 50  0000 C CNN
F 2 "" H 10350 25650 50  0001 C CNN
F 3 "" H 10350 25650 50  0001 C CNN
	1    10350 25650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 664381F9
P 10350 28100
AR Path="/61EF647B/664381F9" Ref="#PWR?"  Part="1" 
AR Path="/664381F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 27950 50  0001 C CNN
F 1 "+5V" H 10450 28200 50  0000 C CNN
F 2 "" H 10350 28100 50  0001 C CNN
F 3 "" H 10350 28100 50  0001 C CNN
	1    10350 28100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664381F3
P 10350 27550
AR Path="/61EF647B/664381F3" Ref="#PWR?"  Part="1" 
AR Path="/664381F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 27300 50  0001 C CNN
F 1 "GND" H 10355 27377 50  0000 C CNN
F 2 "" H 10350 27550 50  0001 C CNN
F 3 "" H 10350 27550 50  0001 C CNN
	1    10350 27550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664381ED
P 10350 30000
AR Path="/61EF647B/664381ED" Ref="#PWR?"  Part="1" 
AR Path="/664381ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10350 29750 50  0001 C CNN
F 1 "GND" H 10355 29827 50  0000 C CNN
F 2 "" H 10350 30000 50  0001 C CNN
F 3 "" H 10350 30000 50  0001 C CNN
	1    10350 30000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 664381E7
P 10350 29000
AR Path="/61EF647B/664381E7" Ref="U?"  Part="1" 
AR Path="/664381E7" Ref="U?"  Part="1" 
F 0 "U?" H 10350 30050 50  0000 C CNN
F 1 "74LS157" H 10350 30150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10350 29000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 10350 29000 50  0001 C CNN
	1    10350 29000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 664381E1
P 10350 26550
AR Path="/61EF647B/664381E1" Ref="U?"  Part="1" 
AR Path="/664381E1" Ref="U?"  Part="1" 
F 0 "U?" H 10350 27631 50  0000 C CNN
F 1 "74LS157" H 10350 27700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10350 26550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 10350 26550 50  0001 C CNN
	1    10350 26550
	1    0    0    -1  
$EndComp
Text Notes 8550 25300 0    50   ~ 0
Shift2 MUXs
Text Notes 7100 25300 0    50   ~ 0
Shift1 MUXs
Text Notes 4900 25300 0    50   ~ 0
Reverse MUXs
Wire Wire Line
	8150 26550 8350 26550
Connection ~ 8150 26550
Wire Wire Line
	8150 26050 8350 26050
Wire Wire Line
	8150 26550 8150 26050
Wire Wire Line
	8200 26850 8350 26850
Connection ~ 8200 26850
Wire Wire Line
	8200 26350 8350 26350
Wire Wire Line
	8200 26850 8200 26350
Wire Wire Line
	8150 28400 8350 28400
Connection ~ 8150 28400
Wire Wire Line
	8150 26650 8350 26650
Wire Wire Line
	8150 28400 8150 26650
Wire Wire Line
	8150 29000 8350 29000
Connection ~ 8150 29000
Wire Wire Line
	8150 28500 8350 28500
Wire Wire Line
	8150 29000 8150 28500
Wire Wire Line
	8200 29300 8350 29300
Connection ~ 8200 29300
Wire Wire Line
	8200 28800 8350 28800
Wire Wire Line
	8200 29300 8200 28800
$Comp
L power:GND #PWR?
U 1 1 664381C4
P 8350 29100
AR Path="/61EF647B/664381C4" Ref="#PWR?"  Part="1" 
AR Path="/664381C4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 28850 50  0001 C CNN
F 1 "GND" H 8355 28927 50  0000 C CNN
F 2 "" H 8350 29100 50  0001 C CNN
F 3 "" H 8350 29100 50  0001 C CNN
	1    8350 29100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 29300 8200 29300
Wire Wire Line
	7850 29000 8150 29000
Wire Wire Line
	7850 28400 8150 28400
Wire Wire Line
	7850 26850 8200 26850
Wire Wire Line
	7850 26550 8150 26550
Wire Wire Line
	7850 26250 8350 26250
$Comp
L power:GND #PWR?
U 1 1 664381B8
P 8350 29400
AR Path="/61EF647B/664381B8" Ref="#PWR?"  Part="1" 
AR Path="/664381B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 29150 50  0001 C CNN
F 1 "GND" H 8355 29227 50  0000 C CNN
F 2 "" H 8350 29400 50  0001 C CNN
F 3 "" H 8350 29400 50  0001 C CNN
	1    8350 29400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 25950 8350 25950
$Comp
L power:GND #PWR?
U 1 1 664381B1
P 8350 29700
AR Path="/61EF647B/664381B1" Ref="#PWR?"  Part="1" 
AR Path="/664381B1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 29450 50  0001 C CNN
F 1 "GND" H 8355 29527 50  0000 C CNN
F 2 "" H 8350 29700 50  0001 C CNN
F 3 "" H 8350 29700 50  0001 C CNN
	1    8350 29700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664381AB
P 8350 27250
AR Path="/61EF647B/664381AB" Ref="#PWR?"  Part="1" 
AR Path="/664381AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8350 27000 50  0001 C CNN
F 1 "GND" H 8355 27077 50  0000 C CNN
F 2 "" H 8350 27250 50  0001 C CNN
F 3 "" H 8350 27250 50  0001 C CNN
	1    8350 27250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 664381A5
P 8850 25650
AR Path="/61EF647B/664381A5" Ref="#PWR?"  Part="1" 
AR Path="/664381A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 25500 50  0001 C CNN
F 1 "+5V" H 8950 25750 50  0000 C CNN
F 2 "" H 8850 25650 50  0001 C CNN
F 3 "" H 8850 25650 50  0001 C CNN
	1    8850 25650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6643819F
P 8850 28100
AR Path="/61EF647B/6643819F" Ref="#PWR?"  Part="1" 
AR Path="/6643819F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 27950 50  0001 C CNN
F 1 "+5V" H 8950 28200 50  0000 C CNN
F 2 "" H 8850 28100 50  0001 C CNN
F 3 "" H 8850 28100 50  0001 C CNN
	1    8850 28100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438199
P 8850 27550
AR Path="/61EF647B/66438199" Ref="#PWR?"  Part="1" 
AR Path="/66438199" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 27300 50  0001 C CNN
F 1 "GND" H 8855 27377 50  0000 C CNN
F 2 "" H 8850 27550 50  0001 C CNN
F 3 "" H 8850 27550 50  0001 C CNN
	1    8850 27550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438193
P 8850 30000
AR Path="/61EF647B/66438193" Ref="#PWR?"  Part="1" 
AR Path="/66438193" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 29750 50  0001 C CNN
F 1 "GND" H 8855 29827 50  0000 C CNN
F 2 "" H 8850 30000 50  0001 C CNN
F 3 "" H 8850 30000 50  0001 C CNN
	1    8850 30000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 6643818D
P 8850 29000
AR Path="/61EF647B/6643818D" Ref="U?"  Part="1" 
AR Path="/6643818D" Ref="U?"  Part="1" 
F 0 "U?" H 8850 30050 50  0000 C CNN
F 1 "74LS157" H 8850 30150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8850 29000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 8850 29000 50  0001 C CNN
	1    8850 29000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 66438187
P 8850 26550
AR Path="/61EF647B/66438187" Ref="U?"  Part="1" 
AR Path="/66438187" Ref="U?"  Part="1" 
F 0 "U?" H 8850 27631 50  0000 C CNN
F 1 "74LS157" H 8850 27700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8850 26550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 8850 26550 50  0001 C CNN
	1    8850 26550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 26250 6350 26250
Connection ~ 6750 26250
Wire Wire Line
	6750 26050 6850 26050
Wire Wire Line
	6750 26250 6750 26050
Wire Wire Line
	6750 26550 6850 26550
Connection ~ 6750 26550
Wire Wire Line
	6750 26350 6850 26350
Wire Wire Line
	6750 26550 6750 26350
Wire Wire Line
	6750 26850 6850 26850
Connection ~ 6750 26850
Wire Wire Line
	6750 26650 6850 26650
Wire Wire Line
	6750 26850 6750 26650
Wire Wire Line
	6750 28400 6850 28400
Connection ~ 6750 28400
Wire Wire Line
	6750 26950 6850 26950
Wire Wire Line
	6750 28400 6750 26950
Wire Wire Line
	6800 28700 6850 28700
Connection ~ 6800 28700
Wire Wire Line
	6800 28500 6850 28500
Wire Wire Line
	6800 28700 6800 28500
Wire Wire Line
	6800 29000 6850 29000
Connection ~ 6800 29000
Wire Wire Line
	6800 28800 6850 28800
Wire Wire Line
	6800 29000 6800 28800
Wire Wire Line
	6800 29300 6850 29300
Connection ~ 6800 29300
Wire Wire Line
	6800 29100 6850 29100
Wire Wire Line
	6800 29300 6800 29100
$Comp
L power:GND #PWR?
U 1 1 66438165
P 6850 29400
AR Path="/61EF647B/66438165" Ref="#PWR?"  Part="1" 
AR Path="/66438165" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 29150 50  0001 C CNN
F 1 "GND" H 6855 29227 50  0000 C CNN
F 2 "" H 6850 29400 50  0001 C CNN
F 3 "" H 6850 29400 50  0001 C CNN
	1    6850 29400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 29300 6800 29300
Wire Wire Line
	5700 29000 5850 29000
Wire Wire Line
	5700 28700 5950 28700
Wire Wire Line
	5700 28400 6050 28400
Wire Wire Line
	5700 26850 6150 26850
Wire Wire Line
	5700 26550 6250 26550
Wire Wire Line
	6850 26250 6750 26250
$Comp
L power:GND #PWR?
U 1 1 66438158
P 6850 29700
AR Path="/61EF647B/66438158" Ref="#PWR?"  Part="1" 
AR Path="/66438158" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 29450 50  0001 C CNN
F 1 "GND" H 6855 29527 50  0000 C CNN
F 2 "" H 6850 29700 50  0001 C CNN
F 3 "" H 6850 29700 50  0001 C CNN
	1    6850 29700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438152
P 6850 27250
AR Path="/61EF647B/66438152" Ref="#PWR?"  Part="1" 
AR Path="/66438152" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 27000 50  0001 C CNN
F 1 "GND" H 6855 27077 50  0000 C CNN
F 2 "" H 6850 27250 50  0001 C CNN
F 3 "" H 6850 27250 50  0001 C CNN
	1    6850 27250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6643814C
P 7350 25650
AR Path="/61EF647B/6643814C" Ref="#PWR?"  Part="1" 
AR Path="/6643814C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 25500 50  0001 C CNN
F 1 "+5V" H 7450 25750 50  0000 C CNN
F 2 "" H 7350 25650 50  0001 C CNN
F 3 "" H 7350 25650 50  0001 C CNN
	1    7350 25650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 66438146
P 7350 28100
AR Path="/61EF647B/66438146" Ref="#PWR?"  Part="1" 
AR Path="/66438146" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 27950 50  0001 C CNN
F 1 "+5V" H 7450 28200 50  0000 C CNN
F 2 "" H 7350 28100 50  0001 C CNN
F 3 "" H 7350 28100 50  0001 C CNN
	1    7350 28100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 66438140
P 7350 27550
AR Path="/61EF647B/66438140" Ref="#PWR?"  Part="1" 
AR Path="/66438140" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 27300 50  0001 C CNN
F 1 "GND" H 7355 27377 50  0000 C CNN
F 2 "" H 7350 27550 50  0001 C CNN
F 3 "" H 7350 27550 50  0001 C CNN
	1    7350 27550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6643813A
P 7350 30000
AR Path="/61EF647B/6643813A" Ref="#PWR?"  Part="1" 
AR Path="/6643813A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 29750 50  0001 C CNN
F 1 "GND" H 7355 29827 50  0000 C CNN
F 2 "" H 7350 30000 50  0001 C CNN
F 3 "" H 7350 30000 50  0001 C CNN
	1    7350 30000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 66438134
P 7350 29000
AR Path="/61EF647B/66438134" Ref="U?"  Part="1" 
AR Path="/66438134" Ref="U?"  Part="1" 
F 0 "U?" H 7350 30050 50  0000 C CNN
F 1 "74LS157" H 7350 30150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7350 29000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 7350 29000 50  0001 C CNN
	1    7350 29000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 6643812E
P 7350 26550
AR Path="/61EF647B/6643812E" Ref="U?"  Part="1" 
AR Path="/6643812E" Ref="U?"  Part="1" 
F 0 "U?" H 7350 27631 50  0000 C CNN
F 1 "74LS157" H 7350 27700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7350 26550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 7350 26550 50  0001 C CNN
	1    7350 26550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 29300 4700 29300
Connection ~ 3950 29300
Wire Wire Line
	3950 26050 4700 26050
Wire Wire Line
	3950 29300 3950 26050
Wire Wire Line
	3900 29000 3450 29000
Connection ~ 3900 29000
Wire Wire Line
	3900 26350 3900 29000
Wire Wire Line
	3900 26350 4700 26350
Wire Wire Line
	3850 28700 4700 28700
Connection ~ 3850 28700
Wire Wire Line
	3850 26650 4700 26650
Wire Wire Line
	3850 28700 3850 26650
Wire Wire Line
	3800 28400 4700 28400
Connection ~ 3800 28400
Wire Wire Line
	3800 26950 4700 26950
Wire Wire Line
	3800 28400 3800 26950
Wire Wire Line
	3750 26850 4700 26850
Connection ~ 3750 26850
Wire Wire Line
	3750 28500 4700 28500
Wire Wire Line
	3750 26850 3750 28500
Wire Wire Line
	3700 26550 3450 26550
Connection ~ 3700 26550
Wire Wire Line
	3700 28800 4700 28800
Wire Wire Line
	3700 26550 3700 28800
Wire Wire Line
	3650 26250 4700 26250
Connection ~ 3650 26250
Wire Wire Line
	3650 29100 4700 29100
Wire Wire Line
	3650 26250 3650 29100
Wire Wire Line
	3600 25950 4700 25950
Connection ~ 3600 25950
Wire Wire Line
	3600 29400 4700 29400
Wire Wire Line
	3600 25950 3600 29400
Wire Wire Line
	3450 29300 3950 29300
Wire Wire Line
	4700 29000 3900 29000
Wire Wire Line
	3450 28700 3850 28700
Wire Wire Line
	3450 28400 3800 28400
Wire Wire Line
	3450 26850 3750 26850
Wire Wire Line
	4700 26550 3700 26550
Wire Wire Line
	3450 26250 3650 26250
Wire Wire Line
	3450 25950 3600 25950
$Comp
L power:+5V #PWR?
U 1 1 664380F3
P 5200 25650
AR Path="/61EF647B/664380F3" Ref="#PWR?"  Part="1" 
AR Path="/664380F3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 25500 50  0001 C CNN
F 1 "+5V" H 5300 25750 50  0000 C CNN
F 2 "" H 5200 25650 50  0001 C CNN
F 3 "" H 5200 25650 50  0001 C CNN
	1    5200 25650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 664380ED
P 5200 28100
AR Path="/61EF647B/664380ED" Ref="#PWR?"  Part="1" 
AR Path="/664380ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 27950 50  0001 C CNN
F 1 "+5V" H 5300 28200 50  0000 C CNN
F 2 "" H 5200 28100 50  0001 C CNN
F 3 "" H 5200 28100 50  0001 C CNN
	1    5200 28100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664380E7
P 4700 27250
AR Path="/61EF647B/664380E7" Ref="#PWR?"  Part="1" 
AR Path="/664380E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 27000 50  0001 C CNN
F 1 "GND" H 4705 27077 50  0000 C CNN
F 2 "" H 4700 27250 50  0001 C CNN
F 3 "" H 4700 27250 50  0001 C CNN
	1    4700 27250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664380E1
P 5200 27550
AR Path="/61EF647B/664380E1" Ref="#PWR?"  Part="1" 
AR Path="/664380E1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 27300 50  0001 C CNN
F 1 "GND" H 5205 27377 50  0000 C CNN
F 2 "" H 5200 27550 50  0001 C CNN
F 3 "" H 5200 27550 50  0001 C CNN
	1    5200 27550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664380DB
P 4700 29700
AR Path="/61EF647B/664380DB" Ref="#PWR?"  Part="1" 
AR Path="/664380DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 29450 50  0001 C CNN
F 1 "GND" H 4705 29527 50  0000 C CNN
F 2 "" H 4700 29700 50  0001 C CNN
F 3 "" H 4700 29700 50  0001 C CNN
	1    4700 29700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 664380D5
P 5200 30000
AR Path="/61EF647B/664380D5" Ref="#PWR?"  Part="1" 
AR Path="/664380D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 29750 50  0001 C CNN
F 1 "GND" H 5205 29827 50  0000 C CNN
F 2 "" H 5200 30000 50  0001 C CNN
F 3 "" H 5200 30000 50  0001 C CNN
	1    5200 30000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 664380CF
P 5200 29000
AR Path="/61EF647B/664380CF" Ref="U?"  Part="1" 
AR Path="/664380CF" Ref="U?"  Part="1" 
F 0 "U?" H 5200 30050 50  0000 C CNN
F 1 "74LS157" H 5200 30150 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5200 29000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5200 29000 50  0001 C CNN
	1    5200 29000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U?
U 1 1 664380C9
P 5200 26550
AR Path="/61EF647B/664380C9" Ref="U?"  Part="1" 
AR Path="/664380C9" Ref="U?"  Part="1" 
F 0 "U?" H 5200 27631 50  0000 C CNN
F 1 "74LS157" H 5200 27700 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5200 26550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 5200 26550 50  0001 C CNN
	1    5200 26550
	1    0    0    -1  
$EndComp
Entry Wire Line
	3150 24100 3250 24200
Wire Bus Line
	2100 10250 3150 10250
Entry Wire Line
	3150 11850 3250 11950
Wire Wire Line
	3250 11950 3900 11950
Wire Bus Line
	3150 31800 6650 31800
Entry Wire Line
	6750 31500 6650 31600
Entry Wire Line
	6750 31600 6650 31700
Entry Wire Line
	6750 31700 6650 31800
Text Label 6800 31500 0    75   ~ 0
bus0
Text Label 6800 31600 0    75   ~ 0
bus1
Text Label 6800 31700 0    75   ~ 0
bus2
Connection ~ 7900 23300
Wire Wire Line
	7900 23300 7900 23600
Wire Wire Line
	8800 23700 8800 24350
Wire Wire Line
	9000 23300 9000 24500
Wire Wire Line
	13750 30550 13750 25400
Wire Wire Line
	8100 30600 13750 30550
Entry Wire Line
	13500 29200 13400 29300
Entry Wire Line
	13500 28900 13400 29000
Entry Wire Line
	13500 28600 13400 28700
Entry Wire Line
	13500 28300 13400 28400
Entry Wire Line
	13500 26750 13400 26850
Entry Wire Line
	13500 26450 13400 26550
Entry Wire Line
	13500 26150 13400 26250
Entry Wire Line
	13500 25850 13400 25950
Wire Wire Line
	13000 25950 13400 25950
Wire Wire Line
	13000 26250 13400 26250
Wire Wire Line
	13000 26550 13400 26550
Wire Wire Line
	13000 26850 13400 26850
Wire Wire Line
	13000 28400 13400 28400
Wire Wire Line
	13000 28700 13400 28700
Wire Wire Line
	13000 29000 13400 29000
Wire Wire Line
	13000 29300 13400 29300
Text Label 13000 25950 0    75   ~ 0
shift0
Text Label 13000 26250 0    75   ~ 0
shift1
Text Label 13000 26550 0    75   ~ 0
shift2
Text Label 13000 26850 0    75   ~ 0
shift3
Text Label 13000 28400 0    75   ~ 0
shift4
Text Label 13000 28700 0    75   ~ 0
shift5
Text Label 13000 29000 0    75   ~ 0
shift6
Text Label 13000 29300 0    75   ~ 0
shift7
$Comp
L Memory_RAM:AS6C4008-55PCN U?
U 1 1 6D172D7E
P 52450 18150
AR Path="/61492876/6D172D7E" Ref="U?"  Part="1" 
AR Path="/6D172D7E" Ref="U?"  Part="1" 
F 0 "U?" H 52450 19431 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 52450 19340 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 52450 18250 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 52450 18250 50  0001 C CNN
	1    52450 18150
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D172D84
P 27400 19050
AR Path="/61492876/6D172D84" Ref="U?"  Part="1" 
AR Path="/6D172D84" Ref="U?"  Part="1" 
F 0 "U?" H 27400 20331 50  0000 C CNN
F 1 "28C256" H 27400 20240 50  0000 C CNN
F 2 "" H 27400 19050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 27400 19050 50  0001 C CNN
	1    27400 19050
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D172D8A
P 27400 24850
AR Path="/61492876/6D172D8A" Ref="U?"  Part="1" 
AR Path="/6D172D8A" Ref="U?"  Part="1" 
F 0 "U?" H 27400 26131 50  0000 C CNN
F 1 "28C256" H 27400 26250 50  0000 C CNN
F 2 "" H 27400 24850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 27400 24850 50  0001 C CNN
	1    27400 24850
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D172D90
P 27400 21900
AR Path="/61492876/6D172D90" Ref="U?"  Part="1" 
AR Path="/6D172D90" Ref="U?"  Part="1" 
F 0 "U?" H 27400 23181 50  0000 C CNN
F 1 "28C256" H 27400 23300 50  0000 C CNN
F 2 "" H 27400 21900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 27400 21900 50  0001 C CNN
	1    27400 21900
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS867-74xx U?
U 1 1 6D172D96
P 24450 20550
AR Path="/61492876/6D172D96" Ref="U?"  Part="1" 
AR Path="/6D172D96" Ref="U?"  Part="1" 
F 0 "U?" H 24450 21431 50  0000 C CNN
F 1 "74AS867" H 24450 21500 50  0000 C CNN
F 2 "" H 24450 20550 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74als867a.pdf" H 24450 20550 50  0001 C CNN
	1    24450 20550
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS867-74xx U?
U 1 1 6D172D9C
P 24450 22800
AR Path="/61492876/6D172D9C" Ref="U?"  Part="1" 
AR Path="/6D172D9C" Ref="U?"  Part="1" 
F 0 "U?" H 24450 23681 50  0000 C CNN
F 1 "74AS867" H 24450 23750 50  0000 C CNN
F 2 "" H 24450 22800 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74als867a.pdf" H 24450 22800 50  0001 C CNN
	1    24450 22800
	1    0    0    -1  
$EndComp
Text Label 30100 21000 0    75   ~ 0
instrImm8
Text Label 30100 21100 0    75   ~ 0
instrImm9
Text Label 30100 21200 0    75   ~ 0
instrImm10
Text Label 30100 21300 0    75   ~ 0
instrImm11
Text Label 30100 21400 0    75   ~ 0
instrImm12
Text Label 30100 21500 0    75   ~ 0
instrImm13
Text Label 30100 21600 0    75   ~ 0
instrImm14
Text Label 30100 21700 0    75   ~ 0
instrImm15
Text Label 25050 20050 0    75   ~ 0
pc0
Text Label 25050 20150 0    75   ~ 0
pc1
Text Label 25050 20250 0    75   ~ 0
pc2
Text Label 25050 20350 0    75   ~ 0
pc3
Text Label 25050 20450 0    75   ~ 0
pc4
Text Label 25050 20550 0    75   ~ 0
pc5
Text Label 25050 20650 0    75   ~ 0
pc6
Text Label 25050 20750 0    75   ~ 0
pc7
Text Label 25050 22300 0    75   ~ 0
pc8
Text Label 25050 22400 0    75   ~ 0
pc9
Text Label 25050 22500 0    75   ~ 0
pc10
Text Label 25050 22600 0    75   ~ 0
pc11
Text Label 25050 22700 0    75   ~ 0
pc12
Text Label 25050 22800 0    75   ~ 0
pc13
Text Label 25050 22900 0    75   ~ 0
pc14
Text Label 25050 23000 0    75   ~ 0
pc15
Text Label 26900 18150 2    75   ~ 0
pc0
Text Label 26900 18250 2    75   ~ 0
pc1
Text Label 26900 18350 2    75   ~ 0
pc2
Text Label 26900 18450 2    75   ~ 0
pc3
Text Label 26900 18550 2    75   ~ 0
pc4
Text Label 26900 18650 2    75   ~ 0
pc5
Text Label 26900 18750 2    75   ~ 0
pc6
Text Label 26900 18850 2    75   ~ 0
pc7
Text Label 26900 18950 2    75   ~ 0
pc8
Text Label 26900 19050 2    75   ~ 0
pc9
Text Label 26900 19150 2    75   ~ 0
pc10
Text Label 26900 19250 2    75   ~ 0
pc11
Text Label 26900 19350 2    75   ~ 0
pc12
Text Label 26900 19450 2    75   ~ 0
pc13
Text Label 26900 19550 2    75   ~ 0
pc14
$Comp
L EDiCPoster-rescue:74AS867-74xx U?
U 1 1 6D172DF8
P 46300 25350
AR Path="/61492876/6D172DF8" Ref="U?"  Part="1" 
AR Path="/6D172DF8" Ref="U?"  Part="1" 
F 0 "U?" H 46300 26231 50  0000 C CNN
F 1 "74AS867" H 46300 26140 50  0000 C CNN
F 2 "" H 46300 25350 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74als867a.pdf" H 46300 25350 50  0001 C CNN
	1    46300 25350
	1    0    0    -1  
$EndComp
Text Notes 24400 20550 0    50   ~ 0
pc0
Text Notes 24400 22800 0    50   ~ 0
pc1
Text Notes 46250 25300 0    50   ~ 0
sp
Wire Wire Line
	46800 25550 47850 25550
Wire Wire Line
	46800 25450 47850 25450
Wire Wire Line
	46800 25350 47850 25350
Wire Wire Line
	46800 25250 47850 25250
Wire Wire Line
	46800 25150 47850 25150
Wire Wire Line
	46800 25050 47850 25050
Wire Wire Line
	46800 24950 47850 24950
Wire Wire Line
	46800 24850 47850 24850
$Comp
L power:+5V #PWR?
U 1 1 6D172E09
P 52450 17050
AR Path="/61492876/6D172E09" Ref="#PWR?"  Part="1" 
AR Path="/6D172E09" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52450 16900 50  0001 C CNN
F 1 "+5V" H 52450 17350 50  0000 C CNN
F 2 "" H 52450 17050 50  0001 C CNN
F 3 "" H 52450 17050 50  0001 C CNN
	1    52450 17050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E0F
P 46300 24650
AR Path="/61492876/6D172E0F" Ref="#PWR?"  Part="1" 
AR Path="/6D172E0F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46300 24500 50  0001 C CNN
F 1 "+5V" H 46450 24850 50  0000 C CNN
F 2 "" H 46300 24650 50  0001 C CNN
F 3 "" H 46300 24650 50  0001 C CNN
	1    46300 24650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E15
P 24450 22100
AR Path="/61492876/6D172E15" Ref="#PWR?"  Part="1" 
AR Path="/6D172E15" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24450 21950 50  0001 C CNN
F 1 "+5V" H 24550 22200 50  0000 C CNN
F 2 "" H 24450 22100 50  0001 C CNN
F 3 "" H 24450 22100 50  0001 C CNN
	1    24450 22100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E1B
P 24450 19850
AR Path="/61492876/6D172E1B" Ref="#PWR?"  Part="1" 
AR Path="/6D172E1B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24450 19700 50  0001 C CNN
F 1 "+5V" H 24550 19950 50  0000 C CNN
F 2 "" H 24450 19850 50  0001 C CNN
F 3 "" H 24450 19850 50  0001 C CNN
	1    24450 19850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E21
P 27400 17950
AR Path="/61492876/6D172E21" Ref="#PWR?"  Part="1" 
AR Path="/6D172E21" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 17800 50  0001 C CNN
F 1 "+5V" H 27400 18200 50  0000 C CNN
F 2 "" H 27400 17950 50  0001 C CNN
F 3 "" H 27400 17950 50  0001 C CNN
	1    27400 17950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E27
P 27400 23750
AR Path="/61492876/6D172E27" Ref="#PWR?"  Part="1" 
AR Path="/6D172E27" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 23600 50  0001 C CNN
F 1 "+5V" H 27500 23850 50  0000 C CNN
F 2 "" H 27400 23750 50  0001 C CNN
F 3 "" H 27400 23750 50  0001 C CNN
	1    27400 23750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172E2D
P 27400 20800
AR Path="/61492876/6D172E2D" Ref="#PWR?"  Part="1" 
AR Path="/6D172E2D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 20650 50  0001 C CNN
F 1 "+5V" H 27500 20900 50  0000 C CNN
F 2 "" H 27400 20800 50  0001 C CNN
F 3 "" H 27400 20800 50  0001 C CNN
	1    27400 20800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E33
P 27400 20150
AR Path="/61492876/6D172E33" Ref="#PWR?"  Part="1" 
AR Path="/6D172E33" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 19900 50  0001 C CNN
F 1 "GND" H 27405 19977 50  0000 C CNN
F 2 "" H 27400 20150 50  0001 C CNN
F 3 "" H 27400 20150 50  0001 C CNN
	1    27400 20150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E39
P 27400 25950
AR Path="/61492876/6D172E39" Ref="#PWR?"  Part="1" 
AR Path="/6D172E39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 25700 50  0001 C CNN
F 1 "GND" H 27405 25777 50  0000 C CNN
F 2 "" H 27400 25950 50  0001 C CNN
F 3 "" H 27400 25950 50  0001 C CNN
	1    27400 25950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E3F
P 24450 21550
AR Path="/61492876/6D172E3F" Ref="#PWR?"  Part="1" 
AR Path="/6D172E3F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24450 21300 50  0001 C CNN
F 1 "GND" H 24455 21377 50  0000 C CNN
F 2 "" H 24450 21550 50  0001 C CNN
F 3 "" H 24450 21550 50  0001 C CNN
	1    24450 21550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E45
P 24450 23800
AR Path="/61492876/6D172E45" Ref="#PWR?"  Part="1" 
AR Path="/6D172E45" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24450 23550 50  0001 C CNN
F 1 "GND" H 24455 23627 50  0000 C CNN
F 2 "" H 24450 23800 50  0001 C CNN
F 3 "" H 24450 23800 50  0001 C CNN
	1    24450 23800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E4B
P 46300 26350
AR Path="/61492876/6D172E4B" Ref="#PWR?"  Part="1" 
AR Path="/6D172E4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46300 26100 50  0001 C CNN
F 1 "GND" H 46305 26177 50  0000 C CNN
F 2 "" H 46300 26350 50  0001 C CNN
F 3 "" H 46300 26350 50  0001 C CNN
	1    46300 26350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E51
P 52450 19250
AR Path="/61492876/6D172E51" Ref="#PWR?"  Part="1" 
AR Path="/6D172E51" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52450 19000 50  0001 C CNN
F 1 "GND" H 52455 19077 50  0000 C CNN
F 2 "" H 52450 19250 50  0001 C CNN
F 3 "" H 52450 19250 50  0001 C CNN
	1    52450 19250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172E57
P 27400 23000
AR Path="/61492876/6D172E57" Ref="#PWR?"  Part="1" 
AR Path="/6D172E57" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 22750 50  0001 C CNN
F 1 "GND" H 27405 22827 50  0000 C CNN
F 2 "" H 27400 23000 50  0001 C CNN
F 3 "" H 27400 23000 50  0001 C CNN
	1    27400 23000
	1    0    0    -1  
$EndComp
Text Label 51650 18850 2    75   ~ 0
selectStackMem
Wire Wire Line
	51650 18850 51950 18850
Text HLabel 53050 17250 2    50   BiDi ~ 0
bus0
Text HLabel 53050 17350 2    50   BiDi ~ 0
bus1
Text HLabel 53050 17450 2    50   BiDi ~ 0
bus2
Text HLabel 53050 17550 2    50   BiDi ~ 0
bus3
Text HLabel 53050 17650 2    50   BiDi ~ 0
bus4
Text HLabel 53050 17750 2    50   BiDi ~ 0
bus5
Text HLabel 53050 17850 2    50   BiDi ~ 0
bus6
Text HLabel 53050 17950 2    50   BiDi ~ 0
bus7
Wire Wire Line
	52950 17950 53050 17950
Wire Wire Line
	52950 17850 53050 17850
Wire Wire Line
	52950 17750 53050 17750
Wire Wire Line
	52950 17650 53050 17650
Wire Wire Line
	52950 17550 53050 17550
Wire Wire Line
	52950 17450 53050 17450
Wire Wire Line
	52950 17350 53050 17350
Wire Wire Line
	52950 17250 53050 17250
Text Label 26900 23950 2    75   ~ 0
pc0
Text Label 26900 24050 2    75   ~ 0
pc1
Text Label 26900 24150 2    75   ~ 0
pc2
Text Label 26900 24250 2    75   ~ 0
pc3
Text Label 26900 24350 2    75   ~ 0
pc4
Text Label 26900 24450 2    75   ~ 0
pc5
Text Label 26900 24550 2    75   ~ 0
pc6
Text Label 26900 24650 2    75   ~ 0
pc7
Text Label 26900 24750 2    75   ~ 0
pc8
Text Label 26900 24850 2    75   ~ 0
pc9
Text Label 26900 24950 2    75   ~ 0
pc10
Text Label 26900 25050 2    75   ~ 0
pc11
Text Label 26900 25150 2    75   ~ 0
pc12
Text Label 26900 25250 2    75   ~ 0
pc13
Text Label 26900 25350 2    75   ~ 0
pc14
Text Label 26900 21000 2    75   ~ 0
pc0
Text Label 26900 21100 2    75   ~ 0
pc1
Text Label 26900 21200 2    75   ~ 0
pc2
Text Label 26900 21300 2    75   ~ 0
pc3
Text Label 26900 21400 2    75   ~ 0
pc4
Text Label 26900 21500 2    75   ~ 0
pc5
Text Label 26900 21600 2    75   ~ 0
pc6
Text Label 26900 21700 2    75   ~ 0
pc7
Text Label 26900 21800 2    75   ~ 0
pc8
Text Label 26900 21900 2    75   ~ 0
pc9
Text Label 26900 22000 2    75   ~ 0
pc10
Text Label 26900 22100 2    75   ~ 0
pc11
Text Label 26900 22200 2    75   ~ 0
pc12
Text Label 26900 22300 2    75   ~ 0
pc13
Text Label 26900 22400 2    75   ~ 0
pc14
$Comp
L power:+5V #PWR?
U 1 1 6D172EAB
P 26900 25550
AR Path="/61492876/6D172EAB" Ref="#PWR?"  Part="1" 
AR Path="/6D172EAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 25400 50  0001 C CNN
F 1 "+5V" H 26915 25723 50  0000 C CNN
F 2 "" H 26900 25550 50  0001 C CNN
F 3 "" H 26900 25550 50  0001 C CNN
	1    26900 25550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172EB1
P 26900 19750
AR Path="/61492876/6D172EB1" Ref="#PWR?"  Part="1" 
AR Path="/6D172EB1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 19600 50  0001 C CNN
F 1 "+5V" H 26915 19923 50  0000 C CNN
F 2 "" H 26900 19750 50  0001 C CNN
F 3 "" H 26900 19750 50  0001 C CNN
	1    26900 19750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172EB7
P 26900 22600
AR Path="/61492876/6D172EB7" Ref="#PWR?"  Part="1" 
AR Path="/6D172EB7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 22450 50  0001 C CNN
F 1 "+5V" H 26915 22773 50  0000 C CNN
F 2 "" H 26900 22600 50  0001 C CNN
F 3 "" H 26900 22600 50  0001 C CNN
	1    26900 22600
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 22600 27000 22600
Wire Wire Line
	26900 25550 27000 25550
Wire Wire Line
	27000 19750 26900 19750
$Comp
L power:GND #PWR?
U 1 1 6D172EC0
P 26900 19950
AR Path="/61492876/6D172EC0" Ref="#PWR?"  Part="1" 
AR Path="/6D172EC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 19700 50  0001 C CNN
F 1 "GND" H 26905 19777 50  0000 C CNN
F 2 "" H 26900 19950 50  0001 C CNN
F 3 "" H 26900 19950 50  0001 C CNN
	1    26900 19950
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 19950 27000 19950
$Comp
L power:GND #PWR?
U 1 1 6D172EC7
P 26900 25750
AR Path="/61492876/6D172EC7" Ref="#PWR?"  Part="1" 
AR Path="/6D172EC7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 25500 50  0001 C CNN
F 1 "GND" H 26905 25577 50  0000 C CNN
F 2 "" H 26900 25750 50  0001 C CNN
F 3 "" H 26900 25750 50  0001 C CNN
	1    26900 25750
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 25750 27000 25750
$Comp
L power:GND #PWR?
U 1 1 6D172ECE
P 26900 22800
AR Path="/61492876/6D172ECE" Ref="#PWR?"  Part="1" 
AR Path="/6D172ECE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 22550 50  0001 C CNN
F 1 "GND" H 26905 22627 50  0000 C CNN
F 2 "" H 26900 22800 50  0001 C CNN
F 3 "" H 26900 22800 50  0001 C CNN
	1    26900 22800
	1    0    0    -1  
$EndComp
Wire Wire Line
	26900 22800 27000 22800
Wire Wire Line
	26900 25750 26900 25650
Wire Wire Line
	26900 25650 27000 25650
Connection ~ 26900 25750
Wire Wire Line
	26900 22800 26900 22700
Wire Wire Line
	26900 22700 27000 22700
Connection ~ 26900 22800
Wire Wire Line
	26900 19950 26900 19850
Wire Wire Line
	26900 19850 27000 19850
Connection ~ 26900 19950
Wire Wire Line
	45450 25550 45450 25450
Wire Wire Line
	45450 24850 45800 24850
Wire Wire Line
	45800 24950 45450 24950
Connection ~ 45450 24950
Wire Wire Line
	45450 24950 45450 24850
Wire Wire Line
	45800 25550 45450 25550
$Comp
L power:GND #PWR?
U 1 1 6D172EE4
P 45450 25550
AR Path="/61492876/6D172EE4" Ref="#PWR?"  Part="1" 
AR Path="/6D172EE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45450 25300 50  0001 C CNN
F 1 "GND" H 45455 25377 50  0000 C CNN
F 2 "" H 45450 25550 50  0001 C CNN
F 3 "" H 45450 25550 50  0001 C CNN
	1    45450 25550
	1    0    0    -1  
$EndComp
Connection ~ 45450 25550
Wire Wire Line
	45450 25450 45800 25450
Connection ~ 45450 25450
Wire Wire Line
	45450 25450 45450 25350
Wire Wire Line
	45800 25350 45450 25350
Connection ~ 45450 25350
Wire Wire Line
	45450 25350 45450 25250
Wire Wire Line
	45450 25250 45800 25250
Connection ~ 45450 25250
Wire Wire Line
	45450 25250 45450 25150
Wire Wire Line
	45800 25150 45450 25150
Connection ~ 45450 25150
Wire Wire Line
	45450 25050 45800 25050
Wire Wire Line
	45450 24950 45450 25050
Connection ~ 45450 25050
Wire Wire Line
	45450 25050 45450 25150
Text GLabel 23950 20950 0    75   Input ~ 0
clk
Text GLabel 23950 23200 0    75   Input ~ 0
clk
Wire Wire Line
	24950 20950 25050 20950
Wire Wire Line
	25050 20950 25050 21800
Wire Wire Line
	23050 23500 23950 23500
Wire Wire Line
	23050 21400 23050 21250
Wire Wire Line
	23050 21250 23950 21250
Text GLabel 21150 21400 0    75   Input ~ 0
~ctrlMemPCEn~
Text GLabel 22650 22200 0    75   Input ~ 0
~reset~
Wire Wire Line
	22650 22200 22750 22200
Text GLabel 22100 22600 0    75   Input ~ 0
~ctrlMemPCLoad~
Wire Wire Line
	22700 22700 22900 22700
NoConn ~ 24950 23200
Text GLabel 45800 25750 0    75   Input ~ 0
clk
Text GLabel 37750 14550 0    75   Input ~ 0
~ctrlMemSPEn~
$Comp
L power:GND #PWR?
U 1 1 6D172F15
P 45150 26300
AR Path="/61492876/6D172F15" Ref="#PWR?"  Part="1" 
AR Path="/6D172F15" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45150 26050 50  0001 C CNN
F 1 "GND" H 45155 26127 50  0000 C CNN
F 2 "" H 45150 26300 50  0001 C CNN
F 3 "" H 45150 26300 50  0001 C CNN
	1    45150 26300
	1    0    0    -1  
$EndComp
Wire Wire Line
	45150 26300 45150 26050
Wire Wire Line
	45150 26050 45800 26050
Text GLabel 38550 15550 0    75   Input ~ 0
ctrlMemSPUp
NoConn ~ 46800 25750
$Comp
L 74xx:74LS08 U?
U 1 1 6D172F1F
P 38850 15650
AR Path="/61492876/6D172F1F" Ref="U?"  Part="1" 
AR Path="/6D172F1F" Ref="U?"  Part="1" 
F 0 "U?" H 38850 15975 50  0000 C CNN
F 1 "74LS08" H 38850 15884 50  0000 C CNN
F 2 "" H 38850 15650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 38850 15650 50  0001 C CNN
	1    38850 15650
	1    0    0    -1  
$EndComp
Text GLabel 38550 15750 0    75   Input ~ 0
~reset~
$Comp
L 74xx:74LS08 U?
U 2 1 6D172F26
P 22400 22700
AR Path="/61492876/6D172F26" Ref="U?"  Part="2" 
AR Path="/6D172F26" Ref="U?"  Part="2" 
F 0 "U?" H 22400 23025 50  0000 C CNN
F 1 "74LS08" H 22400 22934 50  0000 C CNN
F 2 "" H 22400 22700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 22400 22700 50  0001 C CNN
	2    22400 22700
	1    0    0    -1  
$EndComp
Text GLabel 22100 22800 0    75   Input ~ 0
~reset~
Text GLabel 53150 18300 2    75   Input ~ 0
~ctrlMemRamOE~
Wire Wire Line
	53150 18300 53000 18300
Wire Wire Line
	53000 18300 53000 18350
Wire Wire Line
	53000 18350 52950 18350
Text GLabel 53150 18500 2    75   Input ~ 0
~ctrlMemRamWE~
Wire Wire Line
	53150 18500 53000 18500
Wire Wire Line
	53000 18500 53000 18450
Wire Wire Line
	53000 18450 52950 18450
Wire Wire Line
	52950 18250 53000 18250
Wire Wire Line
	53000 18250 53000 18200
Wire Wire Line
	53000 18200 53200 18200
NoConn ~ 51950 18950
NoConn ~ 51950 19050
Text Notes 43400 15900 0    50   ~ 0
24bit instructions:\nrom2 23:16 - instruction to decode\nrom1&0 15:0 - immediate:\n7:0 data for ALU OP or reg\n15:0 address for PC (jump) or RAM (memory OP)
Wire Wire Line
	38900 15150 39000 15150
Text Label 39000 15150 0    75   ~ 0
spS0
Text Label 39250 15650 0    75   ~ 0
spS1
Wire Wire Line
	39150 15650 39250 15650
Text GLabel 38900 15150 0    75   Input ~ 0
~reset~
Text Label 45600 25850 2    75   ~ 0
spS1
Wire Wire Line
	45600 25850 45800 25850
Text Label 45600 25950 2    75   ~ 0
spS0
Wire Wire Line
	45600 25950 45800 25950
$Comp
L 74xx:74LS08 U?
U 5 1 6D172F44
P 51900 15250
AR Path="/61492876/6D172F44" Ref="U?"  Part="5" 
AR Path="/6D172F44" Ref="U?"  Part="5" 
F 0 "U?" H 52130 15296 50  0000 L CNN
F 1 "74LS08" H 52130 15205 50  0000 L CNN
F 2 "" H 51900 15250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 51900 15250 50  0001 C CNN
	5    51900 15250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 6D172F4A
P 52550 15250
AR Path="/61492876/6D172F4A" Ref="U?"  Part="5" 
AR Path="/6D172F4A" Ref="U?"  Part="5" 
F 0 "U?" H 52780 15296 50  0000 L CNN
F 1 "74LS08" H 52780 15205 50  0000 L CNN
F 2 "" H 52550 15250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 52550 15250 50  0001 C CNN
	5    52550 15250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172F50
P 51900 15750
AR Path="/61492876/6D172F50" Ref="#PWR?"  Part="1" 
AR Path="/6D172F50" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51900 15500 50  0001 C CNN
F 1 "GND" H 51905 15577 50  0000 C CNN
F 2 "" H 51900 15750 50  0001 C CNN
F 3 "" H 51900 15750 50  0001 C CNN
	1    51900 15750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172F56
P 52550 15750
AR Path="/61492876/6D172F56" Ref="#PWR?"  Part="1" 
AR Path="/6D172F56" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52550 15500 50  0001 C CNN
F 1 "GND" H 52555 15577 50  0000 C CNN
F 2 "" H 52550 15750 50  0001 C CNN
F 3 "" H 52550 15750 50  0001 C CNN
	1    52550 15750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172F5C
P 51900 14750
AR Path="/61492876/6D172F5C" Ref="#PWR?"  Part="1" 
AR Path="/6D172F5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51900 14600 50  0001 C CNN
F 1 "+5V" H 51915 14923 50  0000 C CNN
F 2 "" H 51900 14750 50  0001 C CNN
F 3 "" H 51900 14750 50  0001 C CNN
	1    51900 14750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172F62
P 52550 14750
AR Path="/61492876/6D172F62" Ref="#PWR?"  Part="1" 
AR Path="/6D172F62" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52550 14600 50  0001 C CNN
F 1 "+5V" H 52565 14923 50  0000 C CNN
F 2 "" H 52550 14750 50  0001 C CNN
F 3 "" H 52550 14750 50  0001 C CNN
	1    52550 14750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 6D172F68
P 42200 15000
AR Path="/61492876/6D172F68" Ref="U?"  Part="5" 
AR Path="/6D172F68" Ref="U?"  Part="5" 
F 0 "U?" H 42430 15046 50  0000 L CNN
F 1 "74LS08" H 42430 14955 50  0000 L CNN
F 2 "" H 42200 15000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 42200 15000 50  0001 C CNN
	5    42200 15000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172F6E
P 42200 14500
AR Path="/61492876/6D172F6E" Ref="#PWR?"  Part="1" 
AR Path="/6D172F6E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 42200 14350 50  0001 C CNN
F 1 "+5V" H 42215 14673 50  0000 C CNN
F 2 "" H 42200 14500 50  0001 C CNN
F 3 "" H 42200 14500 50  0001 C CNN
	1    42200 14500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172F74
P 42200 15500
AR Path="/61492876/6D172F74" Ref="#PWR?"  Part="1" 
AR Path="/6D172F74" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 42200 15250 50  0001 C CNN
F 1 "GND" H 42205 15327 50  0000 C CNN
F 2 "" H 42200 15500 50  0001 C CNN
F 3 "" H 42200 15500 50  0001 C CNN
	1    42200 15500
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D172F7A
P 29450 24450
AR Path="/61492876/6D172F7A" Ref="U?"  Part="1" 
AR Path="/6D172F7A" Ref="U?"  Part="1" 
F 0 "U?" H 29450 25331 50  0000 C CNN
F 1 "74AS825" H 29450 25450 50  0000 C CNN
F 2 "" H 29450 24450 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 29450 24450 50  0001 C CNN
	1    29450 24450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172F80
P 32000 24850
AR Path="/61492876/6D172F80" Ref="#PWR?"  Part="1" 
AR Path="/6D172F80" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32000 24700 50  0001 C CNN
F 1 "+5V" H 32015 25023 50  0000 C CNN
F 2 "" H 32000 24850 50  0001 C CNN
F 3 "" H 32000 24850 50  0001 C CNN
	1    32000 24850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172F96
P 32500 23650
AR Path="/61492876/6D172F96" Ref="#PWR?"  Part="1" 
AR Path="/6D172F96" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32500 23500 50  0001 C CNN
F 1 "+5V" H 32600 23750 50  0000 C CNN
F 2 "" H 32500 23650 50  0001 C CNN
F 3 "" H 32500 23650 50  0001 C CNN
	1    32500 23650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172F9C
P 32500 25250
AR Path="/61492876/6D172F9C" Ref="#PWR?"  Part="1" 
AR Path="/6D172F9C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32500 25000 50  0001 C CNN
F 1 "GND" H 32505 25077 50  0000 C CNN
F 2 "" H 32500 25250 50  0001 C CNN
F 3 "" H 32500 25250 50  0001 C CNN
	1    32500 25250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 6D172FA2
P 32500 24450
AR Path="/61492876/6D172FA2" Ref="U?"  Part="1" 
AR Path="/6D172FA2" Ref="U?"  Part="1" 
F 0 "U?" H 32500 25431 50  0000 C CNN
F 1 "74LS245" H 32500 25550 50  0000 C CNN
F 2 "" H 32500 24450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 32500 24450 50  0001 C CNN
	1    32500 24450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172FA8
P 29450 25300
AR Path="/61492876/6D172FA8" Ref="#PWR?"  Part="1" 
AR Path="/6D172FA8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 25050 50  0001 C CNN
F 1 "GND" H 29455 25127 50  0000 C CNN
F 2 "" H 29450 25300 50  0001 C CNN
F 3 "" H 29450 25300 50  0001 C CNN
	1    29450 25300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172FAE
P 29450 23750
AR Path="/61492876/6D172FAE" Ref="#PWR?"  Part="1" 
AR Path="/6D172FAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 23600 50  0001 C CNN
F 1 "+5V" H 29550 23850 50  0000 C CNN
F 2 "" H 29450 23750 50  0001 C CNN
F 3 "" H 29450 23750 50  0001 C CNN
	1    29450 23750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172FB4
P 30050 25050
AR Path="/61492876/6D172FB4" Ref="#PWR?"  Part="1" 
AR Path="/6D172FB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30050 24800 50  0001 C CNN
F 1 "GND" H 30055 24877 50  0000 C CNN
F 2 "" H 30050 25050 50  0001 C CNN
F 3 "" H 30050 25050 50  0001 C CNN
	1    30050 25050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	30050 25050 29950 25050
Wire Wire Line
	30050 25050 30050 24950
Wire Wire Line
	30050 24950 29950 24950
Connection ~ 30050 25050
Wire Wire Line
	30050 24950 30050 24850
Wire Wire Line
	30050 24850 29950 24850
Connection ~ 30050 24950
Text GLabel 28750 24750 0    75   Input ~ 0
clk
Text GLabel 28800 25200 0    75   Input ~ 0
~reset~
Text GLabel 28750 24950 0    75   Input ~ 0
~ctrlMemInstrWE~
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D172FC5
P 29450 21500
AR Path="/61492876/6D172FC5" Ref="U?"  Part="1" 
AR Path="/6D172FC5" Ref="U?"  Part="1" 
F 0 "U?" H 29450 22381 50  0000 C CNN
F 1 "74AS825" H 29450 22290 50  0000 C CNN
F 2 "" H 29450 21500 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 29450 21500 50  0001 C CNN
	1    29450 21500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172FD3
P 29450 22350
AR Path="/61492876/6D172FD3" Ref="#PWR?"  Part="1" 
AR Path="/6D172FD3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 22100 50  0001 C CNN
F 1 "GND" H 29455 22177 50  0000 C CNN
F 2 "" H 29450 22350 50  0001 C CNN
F 3 "" H 29450 22350 50  0001 C CNN
	1    29450 22350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D172FD9
P 29450 20800
AR Path="/61492876/6D172FD9" Ref="#PWR?"  Part="1" 
AR Path="/6D172FD9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 20650 50  0001 C CNN
F 1 "+5V" H 29450 21050 50  0000 C CNN
F 2 "" H 29450 20800 50  0001 C CNN
F 3 "" H 29450 20800 50  0001 C CNN
	1    29450 20800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D172FDF
P 30050 22100
AR Path="/61492876/6D172FDF" Ref="#PWR?"  Part="1" 
AR Path="/6D172FDF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30050 21850 50  0001 C CNN
F 1 "GND" H 30055 21927 50  0000 C CNN
F 2 "" H 30050 22100 50  0001 C CNN
F 3 "" H 30050 22100 50  0001 C CNN
	1    30050 22100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	30050 22100 29950 22100
Wire Wire Line
	30050 22100 30050 22000
Wire Wire Line
	30050 22000 29950 22000
Connection ~ 30050 22100
Wire Wire Line
	30050 22000 30050 21900
Wire Wire Line
	30050 21900 29950 21900
Connection ~ 30050 22000
Wire Wire Line
	27800 21700 28950 21700
Wire Wire Line
	27800 21600 28950 21600
Wire Wire Line
	27800 21500 28950 21500
Wire Wire Line
	27800 21400 28950 21400
Wire Wire Line
	27800 21300 28950 21300
Wire Wire Line
	27800 21200 28950 21200
Wire Wire Line
	27800 21100 28950 21100
Wire Wire Line
	27800 21000 28950 21000
Wire Wire Line
	27800 23950 28950 23950
Wire Wire Line
	27800 24050 28950 24050
Wire Wire Line
	27800 24150 28950 24150
Wire Wire Line
	27800 24250 28950 24250
Wire Wire Line
	27800 24350 28950 24350
Wire Wire Line
	27800 24450 28950 24450
Wire Wire Line
	27800 24550 28950 24550
Wire Wire Line
	27800 24650 28950 24650
Text Label 30650 23950 2    75   ~ 0
instrImm0
Text Label 30650 24050 2    75   ~ 0
instrImm1
Text Label 30650 24150 2    75   ~ 0
instrImm2
Text Label 30650 24250 2    75   ~ 0
instrImm3
Text Label 30650 24350 2    75   ~ 0
instrImm4
Text Label 30650 24450 2    75   ~ 0
instrImm5
Text Label 30650 24550 2    75   ~ 0
instrImm6
Text Label 30650 24650 2    75   ~ 0
instrImm7
Wire Wire Line
	27800 18150 28950 18150
Wire Wire Line
	27800 18250 28950 18250
Wire Wire Line
	27800 18350 28950 18350
Wire Wire Line
	27800 18450 28950 18450
Wire Wire Line
	27800 18550 28950 18550
Wire Wire Line
	27800 18650 28950 18650
Wire Wire Line
	27800 18750 28950 18750
Wire Wire Line
	27800 18850 28950 18850
Connection ~ 30050 19150
Wire Wire Line
	30050 19050 29950 19050
Wire Wire Line
	30050 19150 30050 19050
Connection ~ 30050 19250
Wire Wire Line
	30050 19150 29950 19150
Wire Wire Line
	30050 19250 30050 19150
Wire Wire Line
	30050 19250 29950 19250
$Comp
L power:GND #PWR?
U 1 1 6D173023
P 30050 19250
AR Path="/61492876/6D173023" Ref="#PWR?"  Part="1" 
AR Path="/6D173023" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30050 19000 50  0001 C CNN
F 1 "GND" H 30055 19077 50  0000 C CNN
F 2 "" H 30050 19250 50  0001 C CNN
F 3 "" H 30050 19250 50  0001 C CNN
	1    30050 19250
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173029
P 29450 17950
AR Path="/61492876/6D173029" Ref="#PWR?"  Part="1" 
AR Path="/6D173029" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 17800 50  0001 C CNN
F 1 "+5V" H 29450 18200 50  0000 C CNN
F 2 "" H 29450 17950 50  0001 C CNN
F 3 "" H 29450 17950 50  0001 C CNN
	1    29450 17950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17302F
P 29450 19500
AR Path="/61492876/6D17302F" Ref="#PWR?"  Part="1" 
AR Path="/6D17302F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29450 19250 50  0001 C CNN
F 1 "GND" H 29455 19327 50  0000 C CNN
F 2 "" H 29450 19500 50  0001 C CNN
F 3 "" H 29450 19500 50  0001 C CNN
	1    29450 19500
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D17303D
P 29450 18650
AR Path="/61492876/6D17303D" Ref="U?"  Part="1" 
AR Path="/6D17303D" Ref="U?"  Part="1" 
F 0 "U?" H 29450 19531 50  0000 C CNN
F 1 "74AS825" H 29450 19440 50  0000 C CNN
F 2 "" H 29450 18650 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 29450 18650 50  0001 C CNN
	1    29450 18650
	1    0    0    -1  
$EndComp
Text Notes 52350 18100 0    50   ~ 0
RAM
Text Notes 27250 19000 0    50   ~ 0
instrROM2
Text Notes 27250 24800 0    50   ~ 0
instrROM0
Text Notes 27250 21850 0    50   ~ 0
instrROM1
Text GLabel 32000 24950 0    75   Input ~ 0
~ctrlMemInstrOE~
Wire Wire Line
	41900 20200 41650 20200
Text GLabel 41900 20300 0    75   Input ~ 0
~reset~
Text GLabel 41900 20100 0    75   Input ~ 0
clk
Connection ~ 43000 20300
Wire Wire Line
	43000 20200 42900 20200
Wire Wire Line
	43000 20300 43000 20200
Wire Wire Line
	43000 20300 42900 20300
$Comp
L power:GND #PWR?
U 1 1 6D173057
P 43000 20300
AR Path="/61492876/6D173057" Ref="#PWR?"  Part="1" 
AR Path="/6D173057" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 43000 20050 50  0001 C CNN
F 1 "GND" H 43005 20127 50  0000 C CNN
F 2 "" H 43000 20300 50  0001 C CNN
F 3 "" H 43000 20300 50  0001 C CNN
	1    43000 20300
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D17305D
P 42400 19000
AR Path="/61492876/6D17305D" Ref="#PWR?"  Part="1" 
AR Path="/6D17305D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 42400 18850 50  0001 C CNN
F 1 "+5V" H 42400 19300 50  0000 C CNN
F 2 "" H 42400 19000 50  0001 C CNN
F 3 "" H 42400 19000 50  0001 C CNN
	1    42400 19000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D173063
P 42400 20550
AR Path="/61492876/6D173063" Ref="#PWR?"  Part="1" 
AR Path="/6D173063" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 42400 20300 50  0001 C CNN
F 1 "GND" H 42405 20377 50  0000 C CNN
F 2 "" H 42400 20550 50  0001 C CNN
F 3 "" H 42400 20550 50  0001 C CNN
	1    42400 20550
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D173069
P 42400 19700
AR Path="/61492876/6D173069" Ref="U?"  Part="1" 
AR Path="/6D173069" Ref="U?"  Part="1" 
F 0 "U?" H 42400 20581 50  0000 C CNN
F 1 "74AS825" H 42400 20490 50  0000 C CNN
F 2 "" H 42400 19700 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 42400 19700 50  0001 C CNN
	1    42400 19700
	1    0    0    -1  
$EndComp
Text HLabel 41900 19900 0    50   BiDi ~ 0
bus7
Text HLabel 41900 19800 0    50   BiDi ~ 0
bus6
Text HLabel 41900 19700 0    50   BiDi ~ 0
bus5
Text HLabel 41900 19600 0    50   BiDi ~ 0
bus4
Text HLabel 41900 19500 0    50   BiDi ~ 0
bus3
Text HLabel 41900 19400 0    50   BiDi ~ 0
bus2
Text HLabel 41900 19300 0    50   BiDi ~ 0
bus1
Text HLabel 41900 19200 0    50   BiDi ~ 0
bus0
Text Notes 42300 19650 0    50   ~ 0
mar0
Text GLabel 44150 18500 0    75   Input ~ 0
~ctrlMemMar1WE~
Wire Wire Line
	44400 18500 44150 18500
Text GLabel 44400 18600 0    75   Input ~ 0
~reset~
Text GLabel 44400 18400 0    75   Input ~ 0
clk
Connection ~ 45500 18600
Wire Wire Line
	45500 18500 45400 18500
Wire Wire Line
	45500 18600 45500 18500
Wire Wire Line
	45500 18600 45400 18600
$Comp
L power:GND #PWR?
U 1 1 6D173080
P 45500 18600
AR Path="/61492876/6D173080" Ref="#PWR?"  Part="1" 
AR Path="/6D173080" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45500 18350 50  0001 C CNN
F 1 "GND" H 45505 18427 50  0000 C CNN
F 2 "" H 45500 18600 50  0001 C CNN
F 3 "" H 45500 18600 50  0001 C CNN
	1    45500 18600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173086
P 44900 17300
AR Path="/61492876/6D173086" Ref="#PWR?"  Part="1" 
AR Path="/6D173086" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 44900 17150 50  0001 C CNN
F 1 "+5V" H 44900 17600 50  0000 C CNN
F 2 "" H 44900 17300 50  0001 C CNN
F 3 "" H 44900 17300 50  0001 C CNN
	1    44900 17300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17308C
P 44900 18850
AR Path="/61492876/6D17308C" Ref="#PWR?"  Part="1" 
AR Path="/6D17308C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 44900 18600 50  0001 C CNN
F 1 "GND" H 44905 18677 50  0000 C CNN
F 2 "" H 44900 18850 50  0001 C CNN
F 3 "" H 44900 18850 50  0001 C CNN
	1    44900 18850
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D173092
P 44900 18000
AR Path="/61492876/6D173092" Ref="U?"  Part="1" 
AR Path="/6D173092" Ref="U?"  Part="1" 
F 0 "U?" H 44900 18881 50  0000 C CNN
F 1 "74AS825" H 44900 18790 50  0000 C CNN
F 2 "" H 44900 18000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 44900 18000 50  0001 C CNN
	1    44900 18000
	1    0    0    -1  
$EndComp
Text Notes 44800 17950 0    50   ~ 0
mar1
$Comp
L 74xx:74LS245 U?
U 1 1 6D173099
P 48350 25350
AR Path="/61492876/6D173099" Ref="U?"  Part="1" 
AR Path="/6D173099" Ref="U?"  Part="1" 
F 0 "U?" H 48350 26331 50  0000 C CNN
F 1 "74LS245" H 48350 26240 50  0000 C CNN
F 2 "" H 48350 25350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 48350 25350 50  0001 C CNN
	1    48350 25350
	1    0    0    -1  
$EndComp
Text Label 45650 17500 0    75   ~ 0
mar8
Text Label 45650 17600 0    75   ~ 0
mar9
Text Label 45650 17700 0    75   ~ 0
mar10
Text Label 45650 17800 0    75   ~ 0
mar11
Text Label 45650 17900 0    75   ~ 0
mar12
Text Label 45650 18000 0    75   ~ 0
mar13
Text Label 45650 18100 0    75   ~ 0
mar14
Text Label 45650 18200 0    75   ~ 0
mar15
Text HLabel 44400 18200 0    50   BiDi ~ 0
bus7
Text HLabel 44400 18100 0    50   BiDi ~ 0
bus6
Text HLabel 44400 18000 0    50   BiDi ~ 0
bus5
Text HLabel 44400 17900 0    50   BiDi ~ 0
bus4
Text HLabel 44400 17800 0    50   BiDi ~ 0
bus3
Text HLabel 44400 17700 0    50   BiDi ~ 0
bus2
Text HLabel 44400 17600 0    50   BiDi ~ 0
bus1
Text HLabel 44400 17500 0    50   BiDi ~ 0
bus0
Text Label 42900 19200 0    75   ~ 0
ramAddress0
Text Label 42900 19300 0    75   ~ 0
ramAddress1
Text Label 42900 19400 0    75   ~ 0
ramAddress2
Text Label 42900 19500 0    75   ~ 0
ramAddress3
Text Label 42900 19600 0    75   ~ 0
ramAddress4
Text Label 42900 19700 0    75   ~ 0
ramAddress5
Text Label 42900 19800 0    75   ~ 0
ramAddress6
Text Label 42900 19900 0    75   ~ 0
ramAddress7
Text GLabel 42900 20100 2    75   Input ~ 0
ctrlMemInstrImmToRamAddr
Text GLabel 41650 20200 0    75   Input ~ 0
~ctrlMemMar0WE~
$Comp
L power:GND #PWR?
U 1 1 6D1730B9
P 48350 26150
AR Path="/61492876/6D1730B9" Ref="#PWR?"  Part="1" 
AR Path="/6D1730B9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 48350 25900 50  0001 C CNN
F 1 "GND" H 48355 25977 50  0000 C CNN
F 2 "" H 48350 26150 50  0001 C CNN
F 3 "" H 48350 26150 50  0001 C CNN
	1    48350 26150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1730BF
P 48350 24550
AR Path="/61492876/6D1730BF" Ref="#PWR?"  Part="1" 
AR Path="/6D1730BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 48350 24400 50  0001 C CNN
F 1 "+5V" H 48350 24800 50  0000 C CNN
F 2 "" H 48350 24550 50  0001 C CNN
F 3 "" H 48350 24550 50  0001 C CNN
	1    48350 24550
	1    0    0    -1  
$EndComp
Text Label 48850 24850 0    75   ~ 0
ramAddress8
Text Label 48850 24950 0    75   ~ 0
ramAddress9
Text Label 48850 25050 0    75   ~ 0
ramAddress10
Text Label 48850 25150 0    75   ~ 0
ramAddress11
Text Label 48850 25250 0    75   ~ 0
ramAddress12
Text Label 48850 25350 0    75   ~ 0
ramAddress13
Text Label 48850 25450 0    75   ~ 0
ramAddress14
Text Label 48850 25550 0    75   ~ 0
ramAddress15
$Comp
L power:+5V #PWR?
U 1 1 6D1730CD
P 47850 25750
AR Path="/61492876/6D1730CD" Ref="#PWR?"  Part="1" 
AR Path="/6D1730CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 47850 25600 50  0001 C CNN
F 1 "+5V" H 47865 25923 50  0000 C CNN
F 2 "" H 47850 25750 50  0001 C CNN
F 3 "" H 47850 25750 50  0001 C CNN
	1    47850 25750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 6D1730D3
P 46150 21150
AR Path="/61492876/6D1730D3" Ref="U?"  Part="1" 
AR Path="/6D1730D3" Ref="U?"  Part="1" 
F 0 "U?" H 46150 22131 50  0000 C CNN
F 1 "74LS245" H 46150 22040 50  0000 C CNN
F 2 "" H 46150 21150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 46150 21150 50  0001 C CNN
	1    46150 21150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1730D9
P 46150 21950
AR Path="/61492876/6D1730D9" Ref="#PWR?"  Part="1" 
AR Path="/6D1730D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46150 21700 50  0001 C CNN
F 1 "GND" H 46155 21777 50  0000 C CNN
F 2 "" H 46150 21950 50  0001 C CNN
F 3 "" H 46150 21950 50  0001 C CNN
	1    46150 21950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1730DF
P 46150 20350
AR Path="/61492876/6D1730DF" Ref="#PWR?"  Part="1" 
AR Path="/6D1730DF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46150 20200 50  0001 C CNN
F 1 "+5V" H 46150 20600 50  0000 C CNN
F 2 "" H 46150 20350 50  0001 C CNN
F 3 "" H 46150 20350 50  0001 C CNN
	1    46150 20350
	1    0    0    -1  
$EndComp
Text Label 45650 20650 2    75   ~ 0
instrImm0
Text Label 45650 20750 2    75   ~ 0
instrImm1
Text Label 45650 20850 2    75   ~ 0
instrImm2
Text Label 45650 20950 2    75   ~ 0
instrImm3
Text Label 45650 21050 2    75   ~ 0
instrImm4
Text Label 45650 21150 2    75   ~ 0
instrImm5
Text Label 45650 21250 2    75   ~ 0
instrImm6
Text Label 45650 21350 2    75   ~ 0
instrImm7
$Comp
L power:+5V #PWR?
U 1 1 6D1730ED
P 45650 21550
AR Path="/61492876/6D1730ED" Ref="#PWR?"  Part="1" 
AR Path="/6D1730ED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45650 21400 50  0001 C CNN
F 1 "+5V" H 45665 21723 50  0000 C CNN
F 2 "" H 45650 21550 50  0001 C CNN
F 3 "" H 45650 21550 50  0001 C CNN
	1    45650 21550
	1    0    0    -1  
$EndComp
Text Label 45650 21650 2    75   ~ 0
~instrImm0ToRam~
$Comp
L 74xx:74LS245 U?
U 1 1 6D1730F4
P 46150 23400
AR Path="/61492876/6D1730F4" Ref="U?"  Part="1" 
AR Path="/6D1730F4" Ref="U?"  Part="1" 
F 0 "U?" H 46150 24381 50  0000 C CNN
F 1 "74LS245" H 46150 24290 50  0000 C CNN
F 2 "" H 46150 23400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 46150 23400 50  0001 C CNN
	1    46150 23400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1730FA
P 46150 24200
AR Path="/61492876/6D1730FA" Ref="#PWR?"  Part="1" 
AR Path="/6D1730FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46150 23950 50  0001 C CNN
F 1 "GND" H 46155 24027 50  0000 C CNN
F 2 "" H 46150 24200 50  0001 C CNN
F 3 "" H 46150 24200 50  0001 C CNN
	1    46150 24200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173100
P 46150 22600
AR Path="/61492876/6D173100" Ref="#PWR?"  Part="1" 
AR Path="/6D173100" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 46150 22450 50  0001 C CNN
F 1 "+5V" H 46150 22900 50  0000 C CNN
F 2 "" H 46150 22600 50  0001 C CNN
F 3 "" H 46150 22600 50  0001 C CNN
	1    46150 22600
	1    0    0    -1  
$EndComp
Text Label 46650 22900 0    75   ~ 0
ramAddress8
Text Label 46650 23000 0    75   ~ 0
ramAddress9
Text Label 46650 23100 0    75   ~ 0
ramAddress10
Text Label 46650 23200 0    75   ~ 0
ramAddress11
Text Label 46650 23300 0    75   ~ 0
ramAddress12
Text Label 46650 23400 0    75   ~ 0
ramAddress13
Text Label 46650 23500 0    75   ~ 0
ramAddress14
Text Label 46650 23600 0    75   ~ 0
ramAddress15
$Comp
L power:+5V #PWR?
U 1 1 6D17310E
P 45650 23800
AR Path="/61492876/6D17310E" Ref="#PWR?"  Part="1" 
AR Path="/6D17310E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45650 23650 50  0001 C CNN
F 1 "+5V" H 45665 23973 50  0000 C CNN
F 2 "" H 45650 23800 50  0001 C CNN
F 3 "" H 45650 23800 50  0001 C CNN
	1    45650 23800
	1    0    0    -1  
$EndComp
Text Label 45650 23900 2    75   ~ 0
~instrImm1ToRam~
Text Label 46650 20650 0    75   ~ 0
ramAddress0
Text Label 46650 20750 0    75   ~ 0
ramAddress1
Text Label 46650 20850 0    75   ~ 0
ramAddress2
Text Label 46650 20950 0    75   ~ 0
ramAddress3
Text Label 46650 21050 0    75   ~ 0
ramAddress4
Text Label 46650 21150 0    75   ~ 0
ramAddress5
Text Label 46650 21250 0    75   ~ 0
ramAddress6
Text Label 46650 21350 0    75   ~ 0
ramAddress7
Text Label 45650 22900 2    75   ~ 0
instrImm8
Text Label 45650 23000 2    75   ~ 0
instrImm9
Text Label 45650 23100 2    75   ~ 0
instrImm10
Text Label 45650 23200 2    75   ~ 0
instrImm11
Text Label 45650 23300 2    75   ~ 0
instrImm12
Text Label 45650 23400 2    75   ~ 0
instrImm13
Text Label 45650 23500 2    75   ~ 0
instrImm14
Text Label 45650 23600 2    75   ~ 0
instrImm15
Text Label 51650 18050 2    75   ~ 0
ramAddress8
Text Label 51650 18150 2    75   ~ 0
ramAddress9
Text Label 51650 18250 2    75   ~ 0
ramAddress10
Text Label 51650 18350 2    75   ~ 0
ramAddress11
Text Label 51650 18450 2    75   ~ 0
ramAddress12
Text Label 51650 18550 2    75   ~ 0
ramAddress13
Text Label 51650 18650 2    75   ~ 0
ramAddress14
Text Label 51650 18750 2    75   ~ 0
ramAddress15
Text Label 51650 17250 2    75   ~ 0
ramAddress0
Text Label 51650 17350 2    75   ~ 0
ramAddress1
Text Label 51650 17450 2    75   ~ 0
ramAddress2
Text Label 51650 17550 2    75   ~ 0
ramAddress3
Text Label 51650 17650 2    75   ~ 0
ramAddress4
Text Label 51650 17750 2    75   ~ 0
ramAddress5
Text Label 51650 17850 2    75   ~ 0
ramAddress6
Text Label 51650 17950 2    75   ~ 0
ramAddress7
Wire Wire Line
	51650 17950 51950 17950
Wire Wire Line
	51650 17850 51950 17850
Wire Wire Line
	51650 17750 51950 17750
Wire Wire Line
	51650 17650 51950 17650
Wire Wire Line
	51650 17550 51950 17550
Wire Wire Line
	51650 17450 51950 17450
Wire Wire Line
	51650 17350 51950 17350
Wire Wire Line
	51650 17250 51950 17250
Wire Wire Line
	51650 18750 51950 18750
Wire Wire Line
	51650 18650 51950 18650
Wire Wire Line
	51650 18550 51950 18550
Wire Wire Line
	51650 18450 51950 18450
Wire Wire Line
	51650 18350 51950 18350
Wire Wire Line
	51650 18250 51950 18250
Wire Wire Line
	51650 18150 51950 18150
Wire Wire Line
	51650 18050 51950 18050
$Comp
L 74xx:74LS04 U?
U 5 1 6D17314B
P 19600 27450
AR Path="/61492876/6D17314B" Ref="U?"  Part="5" 
AR Path="/6D17314B" Ref="U?"  Part="5" 
F 0 "U?" H 19600 27767 50  0000 C CNN
F 1 "74LS04" H 19600 27676 50  0000 C CNN
F 2 "" H 19600 27450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 19600 27450 50  0001 C CNN
	5    19600 27450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 6 1 6D173151
P 53250 21450
AR Path="/61492876/6D173151" Ref="U?"  Part="6" 
AR Path="/6D173151" Ref="U?"  Part="6" 
F 0 "U?" H 53250 21767 50  0000 C CNN
F 1 "74LS04" H 53250 21676 50  0000 C CNN
F 2 "" H 53250 21450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 53250 21450 50  0001 C CNN
	6    53250 21450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 7 1 6D173157
P 54700 21600
AR Path="/61492876/6D173157" Ref="U?"  Part="7" 
AR Path="/6D173157" Ref="U?"  Part="7" 
F 0 "U?" H 54930 21646 50  0000 L CNN
F 1 "74LS04" H 54930 21555 50  0000 L CNN
F 2 "" H 54700 21600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 54700 21600 50  0001 C CNN
	7    54700 21600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17315D
P 54700 22100
AR Path="/61492876/6D17315D" Ref="#PWR?"  Part="1" 
AR Path="/6D17315D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54700 21850 50  0001 C CNN
F 1 "GND" H 54705 21927 50  0000 C CNN
F 2 "" H 54700 22100 50  0001 C CNN
F 3 "" H 54700 22100 50  0001 C CNN
	1    54700 22100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173163
P 54700 21100
AR Path="/61492876/6D173163" Ref="#PWR?"  Part="1" 
AR Path="/6D173163" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54700 20950 50  0001 C CNN
F 1 "+5V" H 54715 21273 50  0000 C CNN
F 2 "" H 54700 21100 50  0001 C CNN
F 3 "" H 54700 21100 50  0001 C CNN
	1    54700 21100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 6D173169
P 49200 18100
AR Path="/61492876/6D173169" Ref="U?"  Part="1" 
AR Path="/6D173169" Ref="U?"  Part="1" 
F 0 "U?" H 49200 19081 50  0000 C CNN
F 1 "74LS245" H 49200 18990 50  0000 C CNN
F 2 "" H 49200 18100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 49200 18100 50  0001 C CNN
	1    49200 18100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17316F
P 49200 18900
AR Path="/61492876/6D17316F" Ref="#PWR?"  Part="1" 
AR Path="/6D17316F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49200 18650 50  0001 C CNN
F 1 "GND" H 49205 18727 50  0000 C CNN
F 2 "" H 49200 18900 50  0001 C CNN
F 3 "" H 49200 18900 50  0001 C CNN
	1    49200 18900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173175
P 49200 17300
AR Path="/61492876/6D173175" Ref="#PWR?"  Part="1" 
AR Path="/6D173175" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49200 17150 50  0001 C CNN
F 1 "+5V" H 49200 17600 50  0000 C CNN
F 2 "" H 49200 17300 50  0001 C CNN
F 3 "" H 49200 17300 50  0001 C CNN
	1    49200 17300
	1    0    0    -1  
$EndComp
Text Label 49700 17600 0    75   ~ 0
ramAddress8
Text Label 49700 17700 0    75   ~ 0
ramAddress9
Text Label 49700 17800 0    75   ~ 0
ramAddress10
Text Label 49700 17900 0    75   ~ 0
ramAddress11
Text Label 49700 18000 0    75   ~ 0
ramAddress12
Text Label 49700 18100 0    75   ~ 0
ramAddress13
Text Label 49700 18200 0    75   ~ 0
ramAddress14
Text Label 49700 18300 0    75   ~ 0
ramAddress15
$Comp
L power:+5V #PWR?
U 1 1 6D173183
P 48700 18500
AR Path="/61492876/6D173183" Ref="#PWR?"  Part="1" 
AR Path="/6D173183" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 48700 18350 50  0001 C CNN
F 1 "+5V" H 48715 18673 50  0000 C CNN
F 2 "" H 48700 18500 50  0001 C CNN
F 3 "" H 48700 18500 50  0001 C CNN
	1    48700 18500
	1    0    0    -1  
$EndComp
Text GLabel 48750 20800 0    75   Input ~ 0
ctrlMemInstrImmToRamAddr
Wire Wire Line
	45500 18500 45500 18400
Wire Wire Line
	45500 18400 45400 18400
Connection ~ 45500 18500
$Comp
L 74xx:74LS245 U?
U 1 1 6D17318D
P 49250 20300
AR Path="/61492876/6D17318D" Ref="U?"  Part="1" 
AR Path="/6D17318D" Ref="U?"  Part="1" 
F 0 "U?" H 49250 21281 50  0000 C CNN
F 1 "74LS245" H 49250 21190 50  0000 C CNN
F 2 "" H 49250 20300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 49250 20300 50  0001 C CNN
	1    49250 20300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D173193
P 49250 21100
AR Path="/61492876/6D173193" Ref="#PWR?"  Part="1" 
AR Path="/6D173193" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49250 20850 50  0001 C CNN
F 1 "GND" H 49255 20927 50  0000 C CNN
F 2 "" H 49250 21100 50  0001 C CNN
F 3 "" H 49250 21100 50  0001 C CNN
	1    49250 21100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173199
P 49250 19500
AR Path="/61492876/6D173199" Ref="#PWR?"  Part="1" 
AR Path="/6D173199" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49250 19350 50  0001 C CNN
F 1 "+5V" H 49250 19750 50  0000 C CNN
F 2 "" H 49250 19500 50  0001 C CNN
F 3 "" H 49250 19500 50  0001 C CNN
	1    49250 19500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D17319F
P 48750 20700
AR Path="/61492876/6D17319F" Ref="#PWR?"  Part="1" 
AR Path="/6D17319F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 48750 20550 50  0001 C CNN
F 1 "+5V" H 48765 20873 50  0000 C CNN
F 2 "" H 48750 20700 50  0001 C CNN
F 3 "" H 48750 20700 50  0001 C CNN
	1    48750 20700
	1    0    0    -1  
$EndComp
Wire Wire Line
	45400 17500 45650 17500
Wire Wire Line
	45400 17600 45650 17600
Wire Wire Line
	45400 17700 45650 17700
Wire Wire Line
	45400 17800 45650 17800
Wire Wire Line
	45400 17900 45650 17900
Wire Wire Line
	45400 18000 45650 18000
Wire Wire Line
	45400 18100 45650 18100
Wire Wire Line
	45400 18200 45650 18200
Text Label 48450 17600 2    75   ~ 0
mar8
Text Label 48450 17700 2    75   ~ 0
mar9
Text Label 48450 17800 2    75   ~ 0
mar10
Text Label 48450 17900 2    75   ~ 0
mar11
Text Label 48450 18000 2    75   ~ 0
mar12
Text Label 48450 18100 2    75   ~ 0
mar13
Text Label 48450 18200 2    75   ~ 0
mar14
Text Label 48450 18300 2    75   ~ 0
mar15
Wire Wire Line
	48700 17600 48450 17600
Wire Wire Line
	48700 17700 48450 17700
Wire Wire Line
	48700 17800 48450 17800
Wire Wire Line
	48700 17900 48450 17900
Wire Wire Line
	48700 18000 48450 18000
Wire Wire Line
	48700 18100 48450 18100
Wire Wire Line
	48700 18200 48450 18200
Wire Wire Line
	48700 18300 48450 18300
Text Label 48500 19800 2    75   ~ 0
mar8
Text Label 48500 19900 2    75   ~ 0
mar9
Text Label 48500 20000 2    75   ~ 0
mar10
Text Label 48500 20100 2    75   ~ 0
mar11
Text Label 48500 20200 2    75   ~ 0
mar12
Text Label 48500 20300 2    75   ~ 0
mar13
Text Label 48500 20400 2    75   ~ 0
mar14
Text Label 48500 20500 2    75   ~ 0
mar15
Wire Wire Line
	48750 19800 48500 19800
Wire Wire Line
	48750 19900 48500 19900
Wire Wire Line
	48750 20000 48500 20000
Wire Wire Line
	48750 20100 48500 20100
Wire Wire Line
	48750 20200 48500 20200
Wire Wire Line
	48750 20300 48500 20300
Wire Wire Line
	48750 20400 48500 20400
Wire Wire Line
	48750 20500 48500 20500
$Comp
L 74xx:74LS245 U?
U 1 1 6D1731CD
P 49250 22350
AR Path="/61492876/6D1731CD" Ref="U?"  Part="1" 
AR Path="/6D1731CD" Ref="U?"  Part="1" 
F 0 "U?" H 49250 23331 50  0000 C CNN
F 1 "74LS245" H 49250 23240 50  0000 C CNN
F 2 "" H 49250 22350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 49250 22350 50  0001 C CNN
	1    49250 22350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1731D3
P 49250 23150
AR Path="/61492876/6D1731D3" Ref="#PWR?"  Part="1" 
AR Path="/6D1731D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49250 22900 50  0001 C CNN
F 1 "GND" H 49255 22977 50  0000 C CNN
F 2 "" H 49250 23150 50  0001 C CNN
F 3 "" H 49250 23150 50  0001 C CNN
	1    49250 23150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1731D9
P 48750 22750
AR Path="/61492876/6D1731D9" Ref="#PWR?"  Part="1" 
AR Path="/6D1731D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 48750 22600 50  0001 C CNN
F 1 "+5V" H 48765 22923 50  0000 C CNN
F 2 "" H 48750 22750 50  0001 C CNN
F 3 "" H 48750 22750 50  0001 C CNN
	1    48750 22750
	1    0    0    -1  
$EndComp
Text Label 48750 22850 2    75   ~ 0
~instrImm1Select~
Text Label 48750 21850 2    75   ~ 0
instrImm8
Text Label 48750 21950 2    75   ~ 0
instrImm9
Text Label 48750 22050 2    75   ~ 0
instrImm10
Text Label 48750 22150 2    75   ~ 0
instrImm11
Text Label 48750 22250 2    75   ~ 0
instrImm12
Text Label 48750 22350 2    75   ~ 0
instrImm13
Text Label 48750 22450 2    75   ~ 0
instrImm14
Text Label 48750 22550 2    75   ~ 0
instrImm15
Text Label 48450 18600 2    75   ~ 0
~mar1ToRam~
Wire Wire Line
	48450 18600 48700 18600
Text Label 49750 19800 0    75   ~ 0
select0
Text Label 49750 19900 0    75   ~ 0
select1
Text Label 49750 20000 0    75   ~ 0
select2
Text Label 49750 20100 0    75   ~ 0
select3
Text Label 49750 20200 0    75   ~ 0
select4
Text Label 49750 20300 0    75   ~ 0
select5
Text Label 49750 20400 0    75   ~ 0
select6
Text Label 49750 20500 0    75   ~ 0
select7
Text Label 49750 21850 0    75   ~ 0
select0
Text Label 49750 21950 0    75   ~ 0
select1
Text Label 49750 22050 0    75   ~ 0
select2
Text Label 49750 22150 0    75   ~ 0
select3
Text Label 49750 22250 0    75   ~ 0
select4
Text Label 49750 22350 0    75   ~ 0
select5
Text Label 49750 22450 0    75   ~ 0
select6
Text Label 49750 22550 0    75   ~ 0
select7
Text Label 53600 21450 0    75   ~ 0
~mar1ToRam~
Connection ~ 51950 20950
Wire Wire Line
	51950 20950 52100 20950
Text Label 52100 20950 0    75   ~ 0
~instrImm1Select~
Wire Wire Line
	53550 22050 53600 22050
Wire Wire Line
	51200 20950 51250 20950
Connection ~ 51200 20950
Wire Wire Line
	51800 21150 51800 21950
Wire Wire Line
	51200 21150 51800 21150
Wire Wire Line
	51200 20950 51200 21150
$Comp
L 74xx:74LS04 U?
U 3 1 6D173204
P 53250 22050
AR Path="/61492876/6D173204" Ref="U?"  Part="3" 
AR Path="/6D173204" Ref="U?"  Part="3" 
F 0 "U?" H 53250 22367 50  0000 C CNN
F 1 "74LS04" H 53250 22276 50  0000 C CNN
F 2 "" H 53250 22050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 53250 22050 50  0001 C CNN
	3    53250 22050
	1    0    0    -1  
$EndComp
Text Label 53600 22050 0    75   ~ 0
~instrImm1ToRam~
Wire Wire Line
	51850 22150 51950 22150
$Comp
L 74xx:74LS04 U?
U 2 1 6D17320C
P 51550 22150
AR Path="/61492876/6D17320C" Ref="U?"  Part="2" 
AR Path="/6D17320C" Ref="U?"  Part="2" 
F 0 "U?" H 51550 22467 50  0000 C CNN
F 1 "74LS04" H 51550 22376 50  0000 C CNN
F 2 "" H 51550 22150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 51550 22150 50  0001 C CNN
	2    51550 22150
	1    0    0    -1  
$EndComp
Text Label 51100 22150 2    75   ~ 0
selectStackMem
Wire Wire Line
	51950 20800 52100 20800
Text Label 52100 20800 0    75   ~ 0
~instrImm0ToRam~
Wire Wire Line
	51950 20950 51950 20800
Wire Wire Line
	51800 21950 52100 21950
Wire Wire Line
	51850 20950 51950 20950
Wire Wire Line
	51100 20950 51200 20950
Text GLabel 51100 20950 0    75   Input ~ 0
ctrlMemInstrImmToRamAddr
$Comp
L 74xx:74LS04 U?
U 1 1 6D17321A
P 51550 20950
AR Path="/61492876/6D17321A" Ref="U?"  Part="1" 
AR Path="/6D17321A" Ref="U?"  Part="1" 
F 0 "U?" H 51550 21267 50  0000 C CNN
F 1 "74LS04" H 51550 21176 50  0000 C CNN
F 2 "" H 51550 20950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 51550 20950 50  0001 C CNN
	1    51550 20950
	1    0    0    -1  
$EndComp
Text Notes 50850 20550 0    50   ~ 0
~instrImm0ToRam~=~ctrlMemInstrImmToRamAddr~\n\n~instrImm1ToRam~=!(~ctrlMemInstrImmToRam~ and ~selectStackMem~)\n\n~mar1ToRam~=!(ctrlMemInstrImmToRam and ~selectStackMem~)
$Comp
L 74xx:74LS08 U?
U 4 1 6D173222
P 52400 22050
AR Path="/61492876/6D173222" Ref="U?"  Part="4" 
AR Path="/6D173222" Ref="U?"  Part="4" 
F 0 "U?" H 52400 22375 50  0000 C CNN
F 1 "74LS08" H 52400 22284 50  0000 C CNN
F 2 "" H 52400 22050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 52400 22050 50  0001 C CNN
	4    52400 22050
	1    0    0    -1  
$EndComp
Text Label 47600 25850 2    75   ~ 0
~spToRam~
Wire Wire Line
	47600 25850 47850 25850
Text Label 52250 22500 0    75   ~ 0
~spToRam~
Wire Wire Line
	51100 22150 51250 22150
Wire Wire Line
	51950 22150 51950 22500
Wire Wire Line
	51950 22500 52250 22500
Connection ~ 51950 22150
Wire Wire Line
	51950 22150 52100 22150
Wire Wire Line
	52700 22050 52950 22050
$Comp
L 74xx:74LS08 U?
U 3 1 6D173231
P 52400 21450
AR Path="/61492876/6D173231" Ref="U?"  Part="3" 
AR Path="/6D173231" Ref="U?"  Part="3" 
F 0 "U?" H 52400 21775 50  0000 C CNN
F 1 "74LS08" H 52400 21684 50  0000 C CNN
F 2 "" H 52400 21450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 52400 21450 50  0001 C CNN
	3    52400 21450
	1    0    0    -1  
$EndComp
Wire Wire Line
	51950 22150 51950 21550
Wire Wire Line
	51950 21550 52100 21550
Wire Wire Line
	51950 20950 51950 21350
Wire Wire Line
	51950 21350 52100 21350
Wire Wire Line
	52950 21450 52700 21450
Wire Wire Line
	53550 21450 53600 21450
$Comp
L power:+5V #PWR?
U 1 1 6D17323D
P 49250 21550
AR Path="/61492876/6D17323D" Ref="#PWR?"  Part="1" 
AR Path="/6D17323D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 49250 21400 50  0001 C CNN
F 1 "+5V" H 49400 21750 50  0000 C CNN
F 2 "" H 49250 21550 50  0001 C CNN
F 3 "" H 49250 21550 50  0001 C CNN
	1    49250 21550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D173243
P 23050 21400
AR Path="/61492876/6D173243" Ref="#PWR?"  Part="1" 
AR Path="/6D173243" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 23050 21150 50  0001 C CNN
F 1 "GND" H 23055 21227 50  0000 C CNN
F 2 "" H 23050 21400 50  0001 C CNN
F 3 "" H 23050 21400 50  0001 C CNN
	1    23050 21400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS245 U?
U 1 1 6D173249
P 21450 26100
AR Path="/61492876/6D173249" Ref="U?"  Part="1" 
AR Path="/6D173249" Ref="U?"  Part="1" 
F 0 "U?" H 21450 27081 50  0000 C CNN
F 1 "74LS245" H 21450 27200 50  0000 C CNN
F 2 "" H 21450 26100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 21450 26100 50  0001 C CNN
	1    21450 26100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17324F
P 21450 26900
AR Path="/61492876/6D17324F" Ref="#PWR?"  Part="1" 
AR Path="/6D17324F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 21450 26650 50  0001 C CNN
F 1 "GND" H 21455 26727 50  0000 C CNN
F 2 "" H 21450 26900 50  0001 C CNN
F 3 "" H 21450 26900 50  0001 C CNN
	1    21450 26900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173255
P 21450 25300
AR Path="/61492876/6D173255" Ref="#PWR?"  Part="1" 
AR Path="/6D173255" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 21450 25150 50  0001 C CNN
F 1 "+5V" H 21550 25400 50  0000 C CNN
F 2 "" H 21450 25300 50  0001 C CNN
F 3 "" H 21450 25300 50  0001 C CNN
	1    21450 25300
	1    0    0    -1  
$EndComp
Text Label 20950 25600 2    75   ~ 0
instrImm0
Text Label 20950 25700 2    75   ~ 0
instrImm1
Text Label 20950 25800 2    75   ~ 0
instrImm2
Text Label 20950 25900 2    75   ~ 0
instrImm3
Text Label 20950 26000 2    75   ~ 0
instrImm4
Text Label 20950 26100 2    75   ~ 0
instrImm5
Text Label 20950 26200 2    75   ~ 0
instrImm6
Text Label 20950 26300 2    75   ~ 0
instrImm7
$Comp
L power:+5V #PWR?
U 1 1 6D173263
P 20950 26500
AR Path="/61492876/6D173263" Ref="#PWR?"  Part="1" 
AR Path="/6D173263" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 20950 26350 50  0001 C CNN
F 1 "+5V" H 20965 26673 50  0000 C CNN
F 2 "" H 20950 26500 50  0001 C CNN
F 3 "" H 20950 26500 50  0001 C CNN
	1    20950 26500
	1    0    0    -1  
$EndComp
Text Label 21950 25600 0    75   ~ 0
pcIn0
Text Label 21950 25700 0    75   ~ 0
pcIn1
Text Label 21950 25800 0    75   ~ 0
pcIn2
Text Label 21950 25900 0    75   ~ 0
pcIn3
Text Label 21950 26000 0    75   ~ 0
pcIn4
Text Label 21950 26100 0    75   ~ 0
pcIn5
Text Label 21950 26200 0    75   ~ 0
pcIn6
Text Label 21950 26300 0    75   ~ 0
pcIn7
Text Label 23850 20050 2    75   ~ 0
pcIn0
Text Label 23850 20150 2    75   ~ 0
pcIn1
Text Label 23850 20250 2    75   ~ 0
pcIn2
Text Label 23850 20350 2    75   ~ 0
pcIn3
Text Label 23850 20450 2    75   ~ 0
pcIn4
Text Label 23850 20550 2    75   ~ 0
pcIn5
Text Label 23850 20650 2    75   ~ 0
pcIn6
Text Label 23850 20750 2    75   ~ 0
pcIn7
$Comp
L power:GND #PWR?
U 1 1 6D17327F
P 24500 26900
AR Path="/61492876/6D17327F" Ref="#PWR?"  Part="1" 
AR Path="/6D17327F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24500 26650 50  0001 C CNN
F 1 "GND" H 24505 26727 50  0000 C CNN
F 2 "" H 24500 26900 50  0001 C CNN
F 3 "" H 24500 26900 50  0001 C CNN
	1    24500 26900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173285
P 24500 25300
AR Path="/61492876/6D173285" Ref="#PWR?"  Part="1" 
AR Path="/6D173285" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24500 25150 50  0001 C CNN
F 1 "+5V" H 24600 25400 50  0000 C CNN
F 2 "" H 24500 25300 50  0001 C CNN
F 3 "" H 24500 25300 50  0001 C CNN
	1    24500 25300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D17328B
P 24000 26500
AR Path="/61492876/6D17328B" Ref="#PWR?"  Part="1" 
AR Path="/6D17328B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24000 26350 50  0001 C CNN
F 1 "+5V" H 24015 26673 50  0000 C CNN
F 2 "" H 24000 26500 50  0001 C CNN
F 3 "" H 24000 26500 50  0001 C CNN
	1    24000 26500
	1    0    0    -1  
$EndComp
Text Label 25000 25600 0    75   ~ 0
pcIn0
Text Label 25000 25700 0    75   ~ 0
pcIn1
Text Label 25000 25800 0    75   ~ 0
pcIn2
Text Label 25000 25900 0    75   ~ 0
pcIn3
Text Label 25000 26000 0    75   ~ 0
pcIn4
Text Label 25000 26100 0    75   ~ 0
pcIn5
Text Label 25000 26200 0    75   ~ 0
pcIn6
Text Label 25000 26300 0    75   ~ 0
pcIn7
$Comp
L 74xx:74LS245 U?
U 1 1 6D1732A1
P 21450 28350
AR Path="/61492876/6D1732A1" Ref="U?"  Part="1" 
AR Path="/6D1732A1" Ref="U?"  Part="1" 
F 0 "U?" H 21450 29331 50  0000 C CNN
F 1 "74LS245" H 21450 29400 50  0000 C CNN
F 2 "" H 21450 28350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 21450 28350 50  0001 C CNN
	1    21450 28350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1732A7
P 21450 29150
AR Path="/61492876/6D1732A7" Ref="#PWR?"  Part="1" 
AR Path="/6D1732A7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 21450 28900 50  0001 C CNN
F 1 "GND" H 21455 28977 50  0000 C CNN
F 2 "" H 21450 29150 50  0001 C CNN
F 3 "" H 21450 29150 50  0001 C CNN
	1    21450 29150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1732AD
P 21450 27550
AR Path="/61492876/6D1732AD" Ref="#PWR?"  Part="1" 
AR Path="/6D1732AD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 21450 27400 50  0001 C CNN
F 1 "+5V" H 21550 27650 50  0000 C CNN
F 2 "" H 21450 27550 50  0001 C CNN
F 3 "" H 21450 27550 50  0001 C CNN
	1    21450 27550
	1    0    0    -1  
$EndComp
Text Label 20950 27850 2    75   ~ 0
instrImm8
Text Label 20950 27950 2    75   ~ 0
instrImm9
Text Label 20950 28050 2    75   ~ 0
instrImm10
Text Label 20950 28150 2    75   ~ 0
instrImm11
Text Label 20950 28250 2    75   ~ 0
instrImm12
Text Label 20950 28350 2    75   ~ 0
instrImm13
Text Label 20950 28450 2    75   ~ 0
instrImm14
Text Label 20950 28550 2    75   ~ 0
instrImm15
$Comp
L power:+5V #PWR?
U 1 1 6D1732BB
P 20950 28750
AR Path="/61492876/6D1732BB" Ref="#PWR?"  Part="1" 
AR Path="/6D1732BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 20950 28600 50  0001 C CNN
F 1 "+5V" H 20965 28923 50  0000 C CNN
F 2 "" H 20950 28750 50  0001 C CNN
F 3 "" H 20950 28750 50  0001 C CNN
	1    20950 28750
	1    0    0    -1  
$EndComp
Text Label 21950 27850 0    75   ~ 0
pcIn8
Text Label 21950 27950 0    75   ~ 0
pcIn9
Text Label 21950 28050 0    75   ~ 0
pcIn10
Text Label 21950 28150 0    75   ~ 0
pcIn11
Text Label 21950 28250 0    75   ~ 0
pcIn12
Text Label 21950 28350 0    75   ~ 0
pcIn13
Text Label 21950 28450 0    75   ~ 0
pcIn14
Text Label 21950 28550 0    75   ~ 0
pcIn15
$Comp
L 74xx:74LS245 U?
U 1 1 6D1732C9
P 24500 28250
AR Path="/61492876/6D1732C9" Ref="U?"  Part="1" 
AR Path="/6D1732C9" Ref="U?"  Part="1" 
F 0 "U?" H 24500 29200 50  0000 C CNN
F 1 "74LS245" H 24500 29300 50  0000 C CNN
F 2 "" H 24500 28250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 24500 28250 50  0001 C CNN
	1    24500 28250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1732CF
P 24500 29050
AR Path="/61492876/6D1732CF" Ref="#PWR?"  Part="1" 
AR Path="/6D1732CF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24500 28800 50  0001 C CNN
F 1 "GND" H 24505 28877 50  0000 C CNN
F 2 "" H 24500 29050 50  0001 C CNN
F 3 "" H 24500 29050 50  0001 C CNN
	1    24500 29050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1732D5
P 24500 27450
AR Path="/61492876/6D1732D5" Ref="#PWR?"  Part="1" 
AR Path="/6D1732D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24500 27300 50  0001 C CNN
F 1 "+5V" H 24650 27550 50  0000 C CNN
F 2 "" H 24500 27450 50  0001 C CNN
F 3 "" H 24500 27450 50  0001 C CNN
	1    24500 27450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1732DB
P 24000 28650
AR Path="/61492876/6D1732DB" Ref="#PWR?"  Part="1" 
AR Path="/6D1732DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 24000 28500 50  0001 C CNN
F 1 "+5V" H 24015 28823 50  0000 C CNN
F 2 "" H 24000 28650 50  0001 C CNN
F 3 "" H 24000 28650 50  0001 C CNN
	1    24000 28650
	1    0    0    -1  
$EndComp
Text Label 25000 27750 0    75   ~ 0
pcIn8
Text Label 25000 27850 0    75   ~ 0
pcIn9
Text Label 25000 27950 0    75   ~ 0
pcIn10
Text Label 25000 28050 0    75   ~ 0
pcIn11
Text Label 25000 28150 0    75   ~ 0
pcIn12
Text Label 25000 28250 0    75   ~ 0
pcIn13
Text Label 25000 28350 0    75   ~ 0
pcIn14
Text Label 25000 28450 0    75   ~ 0
pcIn15
Text Label 23550 22300 0    75   ~ 0
pcIn8
Text Label 23550 22400 0    75   ~ 0
pcIn9
Text Label 23550 22600 0    75   ~ 0
pcIn11
Text Label 23550 22700 0    75   ~ 0
pcIn12
Text Label 23550 22800 0    75   ~ 0
pcIn13
Text Label 23550 22900 0    75   ~ 0
pcIn14
Text Label 23550 23000 0    75   ~ 0
pcIn15
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 6D1732F2
P 32200 12900
AR Path="/61492876/6D1732F2" Ref="U?"  Part="1" 
AR Path="/6D1732F2" Ref="U?"  Part="1" 
F 0 "U?" H 31550 14150 50  0000 L CNN
F 1 "74F521" H 31450 14250 50  0000 L CNN
F 2 "" H 32200 12900 100 0001 C CNN
F 3 "" H 32200 12900 100 0001 C CNN
	1    32200 12900
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 6D1732F8
P 34200 12850
AR Path="/61492876/6D1732F8" Ref="U?"  Part="1" 
AR Path="/6D1732F8" Ref="U?"  Part="1" 
F 0 "U?" H 33550 14100 50  0000 L CNN
F 1 "74F521" H 33450 14200 50  0000 L CNN
F 2 "" H 34200 12850 100 0001 C CNN
F 3 "" H 34200 12850 100 0001 C CNN
	1    34200 12850
	1    0    0    -1  
$EndComp
Wire Wire Line
	32100 12100 32200 12100
Wire Wire Line
	32200 12100 32200 13850
Wire Wire Line
	32200 13850 33100 13850
$Comp
L power:+5V #PWR?
U 1 1 6D173301
P 33600 11750
AR Path="/61492876/6D173301" Ref="#PWR?"  Part="1" 
AR Path="/6D173301" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33600 11600 50  0001 C CNN
F 1 "+5V" H 33700 11850 50  0000 C CNN
F 2 "" H 33600 11750 50  0001 C CNN
F 3 "" H 33600 11750 50  0001 C CNN
	1    33600 11750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173307
P 31600 11800
AR Path="/61492876/6D173307" Ref="#PWR?"  Part="1" 
AR Path="/6D173307" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 31600 11650 50  0001 C CNN
F 1 "+5V" H 31700 11900 50  0000 C CNN
F 2 "" H 31600 11800 50  0001 C CNN
F 3 "" H 31600 11800 50  0001 C CNN
	1    31600 11800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17330D
P 31600 14200
AR Path="/61492876/6D17330D" Ref="#PWR?"  Part="1" 
AR Path="/6D17330D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 31600 13950 50  0001 C CNN
F 1 "GND" H 31605 14027 50  0000 C CNN
F 2 "" H 31600 14200 50  0001 C CNN
F 3 "" H 31600 14200 50  0001 C CNN
	1    31600 14200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D173313
P 33600 14150
AR Path="/61492876/6D173313" Ref="#PWR?"  Part="1" 
AR Path="/6D173313" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33600 13900 50  0001 C CNN
F 1 "GND" H 33605 13977 50  0000 C CNN
F 2 "" H 33600 14150 50  0001 C CNN
F 3 "" H 33600 14150 50  0001 C CNN
	1    33600 14150
	1    0    0    -1  
$EndComp
Text GLabel 34250 12050 2    75   Output ~ 0
~breakpointHit~
Wire Wire Line
	34250 12050 34100 12050
Text Label 31000 12100 2    75   ~ 0
pc0
Text Label 31000 12200 2    75   ~ 0
pc1
Text Label 31000 12300 2    75   ~ 0
pc2
Text Label 31000 12400 2    75   ~ 0
pc3
Text Label 31000 12500 2    75   ~ 0
pc4
Text Label 31000 12600 2    75   ~ 0
pc5
Text Label 31000 12700 2    75   ~ 0
pc6
Text Label 31000 12800 2    75   ~ 0
pc7
Text Label 33000 12050 2    75   ~ 0
pc8
Text Label 33000 12150 2    75   ~ 0
pc9
Text Label 33000 12250 2    75   ~ 0
pc10
Text Label 33000 12350 2    75   ~ 0
pc11
Text Label 33000 12450 2    75   ~ 0
pc12
Text Label 33000 12550 2    75   ~ 0
pc13
Text Label 33000 12650 2    75   ~ 0
pc14
Text Label 33000 12750 2    75   ~ 0
pc15
Text GLabel 30250 13900 0    75   Input ~ 0
~breakpointEnable~
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 6D17338E
P 32250 15800
AR Path="/61492876/6D17338E" Ref="SW?"  Part="1" 
AR Path="/6D17338E" Ref="SW?"  Part="1" 
F 0 "SW?" H 32250 16250 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 32200 16150 50  0000 C CNN
F 2 "" H 31950 15350 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 32250 15800 50  0001 C CNN
	1    32250 15800
	1    0    0    -1  
$EndComp
Text Label 33650 15700 0    75   ~ 0
comp8
Text Label 33650 15800 0    75   ~ 0
comp9
Text Label 33650 16000 0    75   ~ 0
comp11
Wire Wire Line
	34250 16000 33200 16000
Wire Wire Line
	34250 15800 33000 15800
Wire Wire Line
	34250 15900 33100 15900
Text Label 33650 15900 0    75   ~ 0
comp10
Wire Wire Line
	34250 15700 32900 15700
$Comp
L Device:R_Network08 RN?
U 1 1 6D17339C
P 33300 15150
AR Path="/61492876/6D17339C" Ref="RN?"  Part="1" 
AR Path="/6D17339C" Ref="RN?"  Part="1" 
F 0 "RN?" H 33688 15196 50  0000 L CNN
F 1 "10k" H 33688 15105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 33775 15150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 33300 15150 50  0001 C CNN
	1    33300 15150
	1    0    0    -1  
$EndComp
Wire Wire Line
	32900 15350 32900 15700
Connection ~ 32900 15700
Wire Wire Line
	32900 15700 32650 15700
Wire Wire Line
	33000 15350 33000 15800
Connection ~ 33000 15800
Wire Wire Line
	33000 15800 32650 15800
Wire Wire Line
	33100 15900 33100 15350
Connection ~ 33100 15900
Wire Wire Line
	33100 15900 32650 15900
Wire Wire Line
	33200 15350 33200 16000
Connection ~ 33200 16000
Wire Wire Line
	33200 16000 32650 16000
$Comp
L power:GND #PWR?
U 1 1 6D1733AE
P 32750 15450
AR Path="/61492876/6D1733AE" Ref="#PWR?"  Part="1" 
AR Path="/6D1733AE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32750 15200 50  0001 C CNN
F 1 "GND" H 32755 15277 50  0000 C CNN
F 2 "" H 32750 15450 50  0001 C CNN
F 3 "" H 32750 15450 50  0001 C CNN
	1    32750 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	32750 15450 32650 15450
$Comp
L power:+5V #PWR?
U 1 1 6D1733B6
P 32900 14950
AR Path="/61492876/6D1733B6" Ref="#PWR?"  Part="1" 
AR Path="/6D1733B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32900 14800 50  0001 C CNN
F 1 "+5V" H 32915 15123 50  0000 C CNN
F 2 "" H 32900 14950 50  0001 C CNN
F 3 "" H 32900 14950 50  0001 C CNN
	1    32900 14950
	1    0    0    -1  
$EndComp
Text Notes 31900 15200 0    50   ~ 0
Invertierung beachten!
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 6D1733BD
P 32250 16600
AR Path="/61492876/6D1733BD" Ref="SW?"  Part="1" 
AR Path="/6D1733BD" Ref="SW?"  Part="1" 
F 0 "SW?" H 32250 17050 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 32150 16950 50  0000 C CNN
F 2 "" H 31950 16150 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 32250 16600 50  0001 C CNN
	1    32250 16600
	1    0    0    -1  
$EndComp
Text Label 33650 16500 0    75   ~ 0
comp12
Text Label 33650 16600 0    75   ~ 0
comp13
Text Label 33650 16800 0    75   ~ 0
comp15
Wire Wire Line
	34250 16800 33600 16800
Wire Wire Line
	34250 16600 33400 16600
Wire Wire Line
	34250 16700 33500 16700
Text Label 33650 16700 0    75   ~ 0
comp14
Wire Wire Line
	34250 16500 33300 16500
$Comp
L power:GND #PWR?
U 1 1 6D1733CB
P 32750 16250
AR Path="/61492876/6D1733CB" Ref="#PWR?"  Part="1" 
AR Path="/6D1733CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 32750 16000 50  0001 C CNN
F 1 "GND" H 32755 16077 50  0000 C CNN
F 2 "" H 32750 16250 50  0001 C CNN
F 3 "" H 32750 16250 50  0001 C CNN
	1    32750 16250
	1    0    0    -1  
$EndComp
Wire Wire Line
	32750 16250 32650 16250
Connection ~ 33300 16500
Connection ~ 33400 16600
Connection ~ 33500 16700
Connection ~ 33600 16800
Wire Wire Line
	32650 16500 33300 16500
Wire Wire Line
	32650 16600 33400 16600
Wire Wire Line
	32650 16700 33500 16700
Wire Wire Line
	32650 16800 33600 16800
Wire Wire Line
	33600 15350 33600 16800
Wire Wire Line
	33500 15350 33500 16700
Wire Wire Line
	33400 15350 33400 16600
Wire Wire Line
	33300 15350 33300 16500
Text Label 31050 13000 2    75   ~ 0
comp0
Text Label 31050 13100 2    75   ~ 0
comp1
Text Label 31050 13300 2    75   ~ 0
comp3
Text Label 31050 13200 2    75   ~ 0
comp2
Text Label 31050 13400 2    75   ~ 0
comp4
Text Label 31050 13500 2    75   ~ 0
comp5
Text Label 31050 13700 2    75   ~ 0
comp7
Text Label 31050 13600 2    75   ~ 0
comp6
Wire Wire Line
	30650 13700 31100 13700
Wire Wire Line
	31100 13600 30650 13600
Wire Wire Line
	30650 13500 31100 13500
Wire Wire Line
	31100 13400 30650 13400
Wire Wire Line
	30650 13300 31100 13300
Wire Wire Line
	31100 13200 30650 13200
Wire Wire Line
	30650 13100 31100 13100
Wire Wire Line
	30650 13000 31100 13000
Text Label 33100 12950 2    75   ~ 0
comp8
Text Label 33100 13050 2    75   ~ 0
comp9
Text Label 33100 13250 2    75   ~ 0
comp11
Text Label 33100 13150 2    75   ~ 0
comp10
Text Label 33100 13350 2    75   ~ 0
comp12
Text Label 33100 13450 2    75   ~ 0
comp13
Text Label 33100 13650 2    75   ~ 0
comp15
Text Label 33100 13550 2    75   ~ 0
comp14
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 6D1733FF
P 52300 24200
AR Path="/61492876/6D1733FF" Ref="U?"  Part="1" 
AR Path="/6D1733FF" Ref="U?"  Part="1" 
F 0 "U?" H 52244 24183 100 0000 L CNN
F 1 "74F521" H 52244 24017 100 0000 L CNN
F 2 "" H 52300 24200 100 0001 C CNN
F 3 "" H 52300 24200 100 0001 C CNN
	1    52300 24200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173405
P 51700 23100
AR Path="/61492876/6D173405" Ref="#PWR?"  Part="1" 
AR Path="/6D173405" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51700 22950 50  0001 C CNN
F 1 "+5V" H 51715 23273 50  0000 C CNN
F 2 "" H 51700 23100 50  0001 C CNN
F 3 "" H 51700 23100 50  0001 C CNN
	1    51700 23100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17340B
P 51700 25500
AR Path="/61492876/6D17340B" Ref="#PWR?"  Part="1" 
AR Path="/6D17340B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51700 25250 50  0001 C CNN
F 1 "GND" H 51705 25327 50  0000 C CNN
F 2 "" H 51700 25500 50  0001 C CNN
F 3 "" H 51700 25500 50  0001 C CNN
	1    51700 25500
	1    0    0    -1  
$EndComp
Text Label 51200 23400 2    75   ~ 0
select0
Text Label 51200 23500 2    75   ~ 0
select1
Text Label 51200 23600 2    75   ~ 0
select2
Text Label 51200 23700 2    75   ~ 0
select3
Text Label 51200 23800 2    75   ~ 0
select4
Text Label 51200 23900 2    75   ~ 0
select5
Text Label 51200 24000 2    75   ~ 0
select6
Text Label 51200 24100 2    75   ~ 0
select7
$Comp
L power:+5V #PWR?
U 1 1 6D173419
P 51050 24250
AR Path="/61492876/6D173419" Ref="#PWR?"  Part="1" 
AR Path="/6D173419" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51050 24100 50  0001 C CNN
F 1 "+5V" H 51065 24423 50  0000 C CNN
F 2 "" H 51050 24250 50  0001 C CNN
F 3 "" H 51050 24250 50  0001 C CNN
	1    51050 24250
	1    0    0    -1  
$EndComp
Wire Wire Line
	51050 24250 51050 24300
Wire Wire Line
	51050 25000 51200 25000
Wire Wire Line
	51200 24900 51050 24900
Connection ~ 51050 24900
Wire Wire Line
	51050 24900 51050 25000
Wire Wire Line
	51050 24800 51200 24800
Connection ~ 51050 24800
Wire Wire Line
	51050 24800 51050 24900
Wire Wire Line
	51200 24700 51050 24700
Connection ~ 51050 24700
Wire Wire Line
	51050 24700 51050 24800
Wire Wire Line
	51050 24600 51200 24600
Connection ~ 51050 24600
Wire Wire Line
	51050 24600 51050 24700
Wire Wire Line
	51200 24500 51050 24500
Connection ~ 51050 24500
Wire Wire Line
	51050 24500 51050 24600
Wire Wire Line
	51050 24400 51200 24400
Connection ~ 51050 24400
Wire Wire Line
	51050 24400 51050 24500
Wire Wire Line
	51200 24300 51050 24300
Connection ~ 51050 24300
Wire Wire Line
	51050 24300 51050 24400
$Comp
L power:GND #PWR?
U 1 1 6D173436
P 51050 25300
AR Path="/61492876/6D173436" Ref="#PWR?"  Part="1" 
AR Path="/6D173436" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51050 25050 50  0001 C CNN
F 1 "GND" H 51055 25127 50  0000 C CNN
F 2 "" H 51050 25300 50  0001 C CNN
F 3 "" H 51050 25300 50  0001 C CNN
	1    51050 25300
	1    0    0    -1  
$EndComp
Wire Wire Line
	51050 25300 51050 25200
Wire Wire Line
	51050 25200 51200 25200
Text Label 52350 23400 0    75   ~ 0
selectStackMem
Wire Wire Line
	52350 23400 52200 23400
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 6D173440
P 56000 24150
AR Path="/61492876/6D173440" Ref="U?"  Part="1" 
AR Path="/6D173440" Ref="U?"  Part="1" 
F 0 "U?" H 55944 24133 100 0000 L CNN
F 1 "74F521" H 55944 23967 100 0000 L CNN
F 2 "" H 56000 24150 100 0001 C CNN
F 3 "" H 56000 24150 100 0001 C CNN
	1    56000 24150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173446
P 55400 23050
AR Path="/61492876/6D173446" Ref="#PWR?"  Part="1" 
AR Path="/6D173446" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 55400 22900 50  0001 C CNN
F 1 "+5V" H 55415 23223 50  0000 C CNN
F 2 "" H 55400 23050 50  0001 C CNN
F 3 "" H 55400 23050 50  0001 C CNN
	1    55400 23050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17344C
P 55400 25450
AR Path="/61492876/6D17344C" Ref="#PWR?"  Part="1" 
AR Path="/6D17344C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 55400 25200 50  0001 C CNN
F 1 "GND" H 55405 25277 50  0000 C CNN
F 2 "" H 55400 25450 50  0001 C CNN
F 3 "" H 55400 25450 50  0001 C CNN
	1    55400 25450
	1    0    0    -1  
$EndComp
Text Label 54900 23350 2    75   ~ 0
select0
Text Label 54900 23450 2    75   ~ 0
select1
Text Label 54900 23550 2    75   ~ 0
select2
Text Label 54900 23650 2    75   ~ 0
select3
Text Label 54900 23750 2    75   ~ 0
select4
Text Label 54900 23850 2    75   ~ 0
select5
Text Label 54900 23950 2    75   ~ 0
select6
Text Label 54900 24050 2    75   ~ 0
select7
$Comp
L power:+5V #PWR?
U 1 1 6D17345A
P 54600 24850
AR Path="/61492876/6D17345A" Ref="#PWR?"  Part="1" 
AR Path="/6D17345A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54600 24700 50  0001 C CNN
F 1 "+5V" H 54615 25023 50  0000 C CNN
F 2 "" H 54600 24850 50  0001 C CNN
F 3 "" H 54600 24850 50  0001 C CNN
	1    54600 24850
	1    0    0    -1  
$EndComp
Wire Wire Line
	54750 24950 54900 24950
Wire Wire Line
	54900 24850 54750 24850
Connection ~ 54750 24850
Wire Wire Line
	54750 24850 54750 24950
Wire Wire Line
	54750 24750 54900 24750
Connection ~ 54750 24750
Wire Wire Line
	54750 24750 54750 24850
Wire Wire Line
	54900 24650 54750 24650
Connection ~ 54750 24650
Wire Wire Line
	54750 24650 54750 24750
Wire Wire Line
	54750 24550 54900 24550
Connection ~ 54750 24550
Wire Wire Line
	54750 24550 54750 24650
Wire Wire Line
	54900 24450 54750 24450
Connection ~ 54750 24450
Wire Wire Line
	54750 24450 54750 24550
Wire Wire Line
	54750 24350 54900 24350
Wire Wire Line
	54750 24350 54750 24450
$Comp
L power:GND #PWR?
U 1 1 6D173472
P 54750 25250
AR Path="/61492876/6D173472" Ref="#PWR?"  Part="1" 
AR Path="/6D173472" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54750 25000 50  0001 C CNN
F 1 "GND" H 54755 25077 50  0000 C CNN
F 2 "" H 54750 25250 50  0001 C CNN
F 3 "" H 54750 25250 50  0001 C CNN
	1    54750 25250
	1    0    0    -1  
$EndComp
Wire Wire Line
	54750 25250 54750 25150
Wire Wire Line
	54750 25150 54900 25150
$Comp
L power:GND #PWR?
U 1 1 6D17347A
P 54600 24350
AR Path="/61492876/6D17347A" Ref="#PWR?"  Part="1" 
AR Path="/6D17347A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54600 24100 50  0001 C CNN
F 1 "GND" H 54605 24177 50  0000 C CNN
F 2 "" H 54600 24350 50  0001 C CNN
F 3 "" H 54600 24350 50  0001 C CNN
	1    54600 24350
	1    0    0    -1  
$EndComp
Wire Wire Line
	54600 24350 54600 24250
Wire Wire Line
	54600 24250 54900 24250
Wire Wire Line
	54600 24850 54600 24950
Wire Wire Line
	54600 24950 54750 24950
Connection ~ 54750 24950
Text GLabel 57400 23350 2    75   Output ~ 0
ioSelect
Wire Wire Line
	55900 23350 56000 23350
$Comp
L 74xx:74LS04 U?
U 1 1 6D173487
P 56400 23100
AR Path="/61492876/6D173487" Ref="U?"  Part="1" 
AR Path="/6D173487" Ref="U?"  Part="1" 
F 0 "U?" H 56400 23417 50  0000 C CNN
F 1 "74LS04" H 56400 23326 50  0000 C CNN
F 2 "" H 56400 23100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 56400 23100 50  0001 C CNN
	1    56400 23100
	1    0    0    -1  
$EndComp
Wire Wire Line
	56000 23350 56000 23100
Wire Wire Line
	56000 23100 56100 23100
Connection ~ 56000 23350
Wire Wire Line
	56000 23350 57400 23350
Text Label 56900 23100 0    75   ~ 0
~ramCE~
Wire Wire Line
	56900 23100 56700 23100
Text Label 53200 18200 0    75   ~ 0
~ramCE~
Text Label 57050 23650 2    75   ~ 0
ramAddress0
Text Label 57050 23750 2    75   ~ 0
ramAddress1
Text Label 57050 23850 2    75   ~ 0
ramAddress2
Text Label 57050 23950 2    75   ~ 0
ramAddress3
Text Label 57050 24050 2    75   ~ 0
ramAddress4
Text Label 57050 24150 2    75   ~ 0
ramAddress5
Text Label 57050 24250 2    75   ~ 0
ramAddress6
Text Label 57050 24350 2    75   ~ 0
ramAddress7
Text GLabel 57400 23650 2    75   Output ~ 0
ioAddr0
Text GLabel 57400 23750 2    75   Output ~ 0
ioAddr1
Text GLabel 57400 23850 2    75   Output ~ 0
ioAddr2
Text GLabel 57400 23950 2    75   Output ~ 0
ioAddr3
Text GLabel 57400 24050 2    75   Output ~ 0
ioAddr4
Text GLabel 57400 24150 2    75   Output ~ 0
ioAddr5
Text GLabel 57400 24250 2    75   Output ~ 0
ioAddr6
Text GLabel 57400 24350 2    75   Output ~ 0
ioAddr7
Wire Wire Line
	57050 24350 57400 24350
Wire Wire Line
	57400 24250 57050 24250
Wire Wire Line
	57050 24150 57400 24150
Wire Wire Line
	57400 24050 57050 24050
Wire Wire Line
	57050 23950 57400 23950
Wire Wire Line
	57400 23850 57050 23850
Wire Wire Line
	57050 23750 57400 23750
Wire Wire Line
	57400 23650 57050 23650
Text GLabel 57050 24700 0    75   Input ~ 0
~ctrlMemRamOE~
Text GLabel 57050 24900 0    75   Input ~ 0
~ctrlMemRamWE~
Text GLabel 57400 24700 2    75   Output ~ 0
~ioOE~
Text GLabel 57400 24900 2    75   Output ~ 0
~ioWE~
Wire Wire Line
	57050 24900 57400 24900
Wire Wire Line
	57400 24700 57050 24700
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 6D1734B2
P 27550 13000
AR Path="/600C5001/6D1734B2" Ref="U?"  Part="1" 
AR Path="/601B5CAE/6D1734B2" Ref="U?"  Part="1" 
AR Path="/61492876/6D1734B2" Ref="U?"  Part="1" 
AR Path="/6D1734B2" Ref="U?"  Part="1" 
F 0 "U?" H 27250 13981 50  0000 C CNN
F 1 "74ABT540" H 27250 13890 50  0000 C CNN
F 2 "" H 27750 12575 50  0001 C CNN
F 3 "" H 27750 12575 50  0001 C CNN
	1    27550 13000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1734B8
P 26650 13500
AR Path="/600C5001/6D1734B8" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D1734B8" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D1734B8" Ref="#PWR?"  Part="1" 
AR Path="/6D1734B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26650 13250 50  0001 C CNN
F 1 "GND" H 26655 13327 50  0000 C CNN
F 2 "" H 26650 13500 50  0001 C CNN
F 3 "" H 26650 13500 50  0001 C CNN
	1    26650 13500
	1    0    0    -1  
$EndComp
Wire Wire Line
	26650 13500 26750 13500
Wire Wire Line
	26750 13400 26650 13400
Wire Wire Line
	26650 13400 26650 13500
Connection ~ 26650 13500
$Comp
L power:GND #PWR?
U 1 1 6D1734C2
P 27250 13800
AR Path="/600C5001/6D1734C2" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D1734C2" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D1734C2" Ref="#PWR?"  Part="1" 
AR Path="/6D1734C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27250 13550 50  0001 C CNN
F 1 "GND" H 27255 13627 50  0000 C CNN
F 2 "" H 27250 13800 50  0001 C CNN
F 3 "" H 27250 13800 50  0001 C CNN
	1    27250 13800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1734C8
P 27250 12200
AR Path="/600C5001/6D1734C8" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D1734C8" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D1734C8" Ref="#PWR?"  Part="1" 
AR Path="/6D1734C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27250 12050 50  0001 C CNN
F 1 "+5V" H 27250 12450 50  0000 C CNN
F 2 "" H 27250 12200 50  0001 C CNN
F 3 "" H 27250 12200 50  0001 C CNN
	1    27250 12200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6D1734CE
P 28050 12500
AR Path="/600C5001/6D1734CE" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D1734CE" Ref="D?"  Part="1" 
AR Path="/61492876/6D1734CE" Ref="D?"  Part="1" 
AR Path="/6D1734CE" Ref="D?"  Part="1" 
F 0 "D?" H 27850 12550 50  0000 C CNN
F 1 "LED_Small" H 28300 12550 50  0000 C CNN
F 2 "" V 28050 12500 50  0001 C CNN
F 3 "~" V 28050 12500 50  0001 C CNN
	1    28050 12500
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 12500 27750 12500
$Comp
L Device:R_Network08 RN?
U 1 1 6D1734D5
P 28750 12900
AR Path="/61492876/6D1734D5" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/6D1734D5" Ref="RN?"  Part="1" 
AR Path="/6D1734D5" Ref="RN?"  Part="1" 
F 0 "RN?" H 29138 12946 50  0000 L CNN
F 1 "220" H 29138 12855 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 29225 12900 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 28750 12900 50  0001 C CNN
	1    28750 12900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1734DB
P 29050 12400
AR Path="/61492876/6D1734DB" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6D1734DB" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D1734DB" Ref="#PWR?"  Part="1" 
AR Path="/6D1734DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29050 12250 50  0001 C CNN
F 1 "+5V" H 29065 12573 50  0000 C CNN
F 2 "" H 29050 12400 50  0001 C CNN
F 3 "" H 29050 12400 50  0001 C CNN
	1    29050 12400
	1    0    0    -1  
$EndComp
Wire Wire Line
	29050 12400 29050 12500
Wire Wire Line
	29050 12500 28950 12500
Wire Wire Line
	28550 12500 28150 12500
$Comp
L Device:LED_Small D?
U 1 1 6D1734E4
P 28050 12600
AR Path="/600C5001/6D1734E4" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D1734E4" Ref="D?"  Part="1" 
AR Path="/61492876/6D1734E4" Ref="D?"  Part="1" 
AR Path="/6D1734E4" Ref="D?"  Part="1" 
F 0 "D?" H 27850 12650 50  0000 C CNN
F 1 "LED_Small" H 28300 12650 50  0000 C CNN
F 2 "" V 28050 12600 50  0001 C CNN
F 3 "~" V 28050 12600 50  0001 C CNN
	1    28050 12600
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 12600 27750 12600
Wire Wire Line
	28550 12600 28150 12600
$Comp
L Device:LED_Small D?
U 1 1 6D1734EC
P 28050 12700
AR Path="/600C5001/6D1734EC" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D1734EC" Ref="D?"  Part="1" 
AR Path="/61492876/6D1734EC" Ref="D?"  Part="1" 
AR Path="/6D1734EC" Ref="D?"  Part="1" 
F 0 "D?" H 27850 12750 50  0000 C CNN
F 1 "LED_Small" H 28300 12750 50  0000 C CNN
F 2 "" V 28050 12700 50  0001 C CNN
F 3 "~" V 28050 12700 50  0001 C CNN
	1    28050 12700
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 12700 27750 12700
Wire Wire Line
	28550 12700 28150 12700
$Comp
L Device:LED_Small D?
U 1 1 6D1734F4
P 28050 12800
AR Path="/600C5001/6D1734F4" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D1734F4" Ref="D?"  Part="1" 
AR Path="/61492876/6D1734F4" Ref="D?"  Part="1" 
AR Path="/6D1734F4" Ref="D?"  Part="1" 
F 0 "D?" H 27850 12850 50  0000 C CNN
F 1 "LED_Small" H 28300 12850 50  0000 C CNN
F 2 "" V 28050 12800 50  0001 C CNN
F 3 "~" V 28050 12800 50  0001 C CNN
	1    28050 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 12800 27750 12800
Wire Wire Line
	28550 12800 28150 12800
$Comp
L Device:LED_Small D?
U 1 1 6D1734FC
P 28050 12900
AR Path="/600C5001/6D1734FC" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D1734FC" Ref="D?"  Part="1" 
AR Path="/61492876/6D1734FC" Ref="D?"  Part="1" 
AR Path="/6D1734FC" Ref="D?"  Part="1" 
F 0 "D?" H 27850 12950 50  0000 C CNN
F 1 "LED_Small" H 28300 12950 50  0000 C CNN
F 2 "" V 28050 12900 50  0001 C CNN
F 3 "~" V 28050 12900 50  0001 C CNN
	1    28050 12900
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 12900 27750 12900
Wire Wire Line
	28550 12900 28150 12900
$Comp
L Device:LED_Small D?
U 1 1 6D173504
P 28050 13000
AR Path="/600C5001/6D173504" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173504" Ref="D?"  Part="1" 
AR Path="/61492876/6D173504" Ref="D?"  Part="1" 
AR Path="/6D173504" Ref="D?"  Part="1" 
F 0 "D?" H 27850 13050 50  0000 C CNN
F 1 "LED_Small" H 28300 13050 50  0000 C CNN
F 2 "" V 28050 13000 50  0001 C CNN
F 3 "~" V 28050 13000 50  0001 C CNN
	1    28050 13000
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 13000 27750 13000
Wire Wire Line
	28550 13000 28150 13000
$Comp
L Device:LED_Small D?
U 1 1 6D17350C
P 28050 13100
AR Path="/600C5001/6D17350C" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D17350C" Ref="D?"  Part="1" 
AR Path="/61492876/6D17350C" Ref="D?"  Part="1" 
AR Path="/6D17350C" Ref="D?"  Part="1" 
F 0 "D?" H 27850 13150 50  0000 C CNN
F 1 "LED_Small" H 28300 13150 50  0000 C CNN
F 2 "" V 28050 13100 50  0001 C CNN
F 3 "~" V 28050 13100 50  0001 C CNN
	1    28050 13100
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 13100 27750 13100
Wire Wire Line
	28550 13100 28150 13100
$Comp
L Device:LED_Small D?
U 1 1 6D173514
P 28050 13200
AR Path="/600C5001/6D173514" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173514" Ref="D?"  Part="1" 
AR Path="/61492876/6D173514" Ref="D?"  Part="1" 
AR Path="/6D173514" Ref="D?"  Part="1" 
F 0 "D?" H 27850 13250 50  0000 C CNN
F 1 "LED_Small" H 28300 13250 50  0000 C CNN
F 2 "" V 28050 13200 50  0001 C CNN
F 3 "~" V 28050 13200 50  0001 C CNN
	1    28050 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 13200 27750 13200
Wire Wire Line
	28550 13200 28150 13200
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 6D17351C
P 27550 15100
AR Path="/600C5001/6D17351C" Ref="U?"  Part="1" 
AR Path="/601B5CAE/6D17351C" Ref="U?"  Part="1" 
AR Path="/61492876/6D17351C" Ref="U?"  Part="1" 
AR Path="/6D17351C" Ref="U?"  Part="1" 
F 0 "U?" H 27250 16081 50  0000 C CNN
F 1 "74ABT540" H 27250 15990 50  0000 C CNN
F 2 "" H 27750 14675 50  0001 C CNN
F 3 "" H 27750 14675 50  0001 C CNN
	1    27550 15100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D173522
P 26650 15600
AR Path="/600C5001/6D173522" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D173522" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D173522" Ref="#PWR?"  Part="1" 
AR Path="/6D173522" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26650 15350 50  0001 C CNN
F 1 "GND" H 26655 15427 50  0000 C CNN
F 2 "" H 26650 15600 50  0001 C CNN
F 3 "" H 26650 15600 50  0001 C CNN
	1    26650 15600
	1    0    0    -1  
$EndComp
Wire Wire Line
	26650 15600 26750 15600
Wire Wire Line
	26750 15500 26650 15500
Wire Wire Line
	26650 15500 26650 15600
Connection ~ 26650 15600
$Comp
L power:GND #PWR?
U 1 1 6D17352C
P 27250 15900
AR Path="/600C5001/6D17352C" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D17352C" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D17352C" Ref="#PWR?"  Part="1" 
AR Path="/6D17352C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27250 15650 50  0001 C CNN
F 1 "GND" H 27255 15727 50  0000 C CNN
F 2 "" H 27250 15900 50  0001 C CNN
F 3 "" H 27250 15900 50  0001 C CNN
	1    27250 15900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173532
P 27250 14300
AR Path="/600C5001/6D173532" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D173532" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D173532" Ref="#PWR?"  Part="1" 
AR Path="/6D173532" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27250 14150 50  0001 C CNN
F 1 "+5V" H 27250 14550 50  0000 C CNN
F 2 "" H 27250 14300 50  0001 C CNN
F 3 "" H 27250 14300 50  0001 C CNN
	1    27250 14300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6D173538
P 28050 14600
AR Path="/600C5001/6D173538" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173538" Ref="D?"  Part="1" 
AR Path="/61492876/6D173538" Ref="D?"  Part="1" 
AR Path="/6D173538" Ref="D?"  Part="1" 
F 0 "D?" H 27850 14650 50  0000 C CNN
F 1 "LED_Small" H 28300 14650 50  0000 C CNN
F 2 "" V 28050 14600 50  0001 C CNN
F 3 "~" V 28050 14600 50  0001 C CNN
	1    28050 14600
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 14600 27750 14600
$Comp
L Device:R_Network08 RN?
U 1 1 6D17353F
P 28750 15000
AR Path="/61492876/6D17353F" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/6D17353F" Ref="RN?"  Part="1" 
AR Path="/6D17353F" Ref="RN?"  Part="1" 
F 0 "RN?" H 29138 15046 50  0000 L CNN
F 1 "220" H 29138 14955 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 29225 15000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 28750 15000 50  0001 C CNN
	1    28750 15000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173545
P 29100 14500
AR Path="/61492876/6D173545" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6D173545" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D173545" Ref="#PWR?"  Part="1" 
AR Path="/6D173545" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 29100 14350 50  0001 C CNN
F 1 "+5V" H 29115 14673 50  0000 C CNN
F 2 "" H 29100 14500 50  0001 C CNN
F 3 "" H 29100 14500 50  0001 C CNN
	1    29100 14500
	1    0    0    -1  
$EndComp
Wire Wire Line
	29100 14500 29100 14600
Wire Wire Line
	29100 14600 28950 14600
Wire Wire Line
	28550 14600 28150 14600
$Comp
L Device:LED_Small D?
U 1 1 6D17354E
P 28050 14700
AR Path="/600C5001/6D17354E" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D17354E" Ref="D?"  Part="1" 
AR Path="/61492876/6D17354E" Ref="D?"  Part="1" 
AR Path="/6D17354E" Ref="D?"  Part="1" 
F 0 "D?" H 27850 14750 50  0000 C CNN
F 1 "LED_Small" H 28300 14750 50  0000 C CNN
F 2 "" V 28050 14700 50  0001 C CNN
F 3 "~" V 28050 14700 50  0001 C CNN
	1    28050 14700
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 14700 27750 14700
Wire Wire Line
	28550 14700 28150 14700
$Comp
L Device:LED_Small D?
U 1 1 6D173556
P 28050 14800
AR Path="/600C5001/6D173556" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173556" Ref="D?"  Part="1" 
AR Path="/61492876/6D173556" Ref="D?"  Part="1" 
AR Path="/6D173556" Ref="D?"  Part="1" 
F 0 "D?" H 27850 14850 50  0000 C CNN
F 1 "LED_Small" H 28300 14850 50  0000 C CNN
F 2 "" V 28050 14800 50  0001 C CNN
F 3 "~" V 28050 14800 50  0001 C CNN
	1    28050 14800
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 14800 27750 14800
Wire Wire Line
	28550 14800 28150 14800
$Comp
L Device:LED_Small D?
U 1 1 6D17355E
P 28050 14900
AR Path="/600C5001/6D17355E" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D17355E" Ref="D?"  Part="1" 
AR Path="/61492876/6D17355E" Ref="D?"  Part="1" 
AR Path="/6D17355E" Ref="D?"  Part="1" 
F 0 "D?" H 27850 14950 50  0000 C CNN
F 1 "LED_Small" H 28300 14950 50  0000 C CNN
F 2 "" V 28050 14900 50  0001 C CNN
F 3 "~" V 28050 14900 50  0001 C CNN
	1    28050 14900
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 14900 27750 14900
Wire Wire Line
	28550 14900 28150 14900
$Comp
L Device:LED_Small D?
U 1 1 6D173566
P 28050 15000
AR Path="/600C5001/6D173566" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173566" Ref="D?"  Part="1" 
AR Path="/61492876/6D173566" Ref="D?"  Part="1" 
AR Path="/6D173566" Ref="D?"  Part="1" 
F 0 "D?" H 27850 15050 50  0000 C CNN
F 1 "LED_Small" H 28300 15050 50  0000 C CNN
F 2 "" V 28050 15000 50  0001 C CNN
F 3 "~" V 28050 15000 50  0001 C CNN
	1    28050 15000
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 15000 27750 15000
Wire Wire Line
	28550 15000 28150 15000
$Comp
L Device:LED_Small D?
U 1 1 6D17356E
P 28050 15100
AR Path="/600C5001/6D17356E" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D17356E" Ref="D?"  Part="1" 
AR Path="/61492876/6D17356E" Ref="D?"  Part="1" 
AR Path="/6D17356E" Ref="D?"  Part="1" 
F 0 "D?" H 27850 15150 50  0000 C CNN
F 1 "LED_Small" H 28300 15150 50  0000 C CNN
F 2 "" V 28050 15100 50  0001 C CNN
F 3 "~" V 28050 15100 50  0001 C CNN
	1    28050 15100
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 15100 27750 15100
Wire Wire Line
	28550 15100 28150 15100
$Comp
L Device:LED_Small D?
U 1 1 6D173576
P 28050 15200
AR Path="/600C5001/6D173576" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D173576" Ref="D?"  Part="1" 
AR Path="/61492876/6D173576" Ref="D?"  Part="1" 
AR Path="/6D173576" Ref="D?"  Part="1" 
F 0 "D?" H 27850 15250 50  0000 C CNN
F 1 "LED_Small" H 28300 15250 50  0000 C CNN
F 2 "" V 28050 15200 50  0001 C CNN
F 3 "~" V 28050 15200 50  0001 C CNN
	1    28050 15200
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 15200 27750 15200
Wire Wire Line
	28550 15200 28150 15200
$Comp
L Device:LED_Small D?
U 1 1 6D17357E
P 28050 15300
AR Path="/600C5001/6D17357E" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D17357E" Ref="D?"  Part="1" 
AR Path="/61492876/6D17357E" Ref="D?"  Part="1" 
AR Path="/6D17357E" Ref="D?"  Part="1" 
F 0 "D?" H 27850 15350 50  0000 C CNN
F 1 "LED_Small" H 28300 15350 50  0000 C CNN
F 2 "" V 28050 15300 50  0001 C CNN
F 3 "~" V 28050 15300 50  0001 C CNN
	1    28050 15300
	1    0    0    -1  
$EndComp
Wire Wire Line
	27950 15300 27750 15300
Wire Wire Line
	28550 15300 28150 15300
Text Label 26750 14600 2    75   ~ 0
pc8
Text Label 26750 14700 2    75   ~ 0
pc9
Text Label 26750 14800 2    75   ~ 0
pc10
Text Label 26750 14900 2    75   ~ 0
pc11
Text Label 26750 15000 2    75   ~ 0
pc12
Text Label 26750 15100 2    75   ~ 0
pc13
Text Label 26750 15200 2    75   ~ 0
pc14
Text Label 26750 15300 2    75   ~ 0
pc15
Text Label 26750 12500 2    75   ~ 0
pc0
Text Label 26750 12600 2    75   ~ 0
pc1
Text Label 26750 12700 2    75   ~ 0
pc2
Text Label 26750 12800 2    75   ~ 0
pc3
Text Label 26750 12900 2    75   ~ 0
pc4
Text Label 26750 13000 2    75   ~ 0
pc5
Text Label 26750 13100 2    75   ~ 0
pc6
Text Label 26750 13200 2    75   ~ 0
pc7
Text Notes 52750 23050 0    100  ~ 0
select == 0xff: stack\nselect == 0xfe: io\notherwise: ram
$Comp
L 74xx:74LS245 U?
U 1 1 6D173597
P 27400 30400
AR Path="/61492876/6D173597" Ref="U?"  Part="1" 
AR Path="/6D173597" Ref="U?"  Part="1" 
F 0 "U?" H 27400 31381 50  0000 C CNN
F 1 "74LS245" H 27400 31290 50  0000 C CNN
F 2 "" H 27400 30400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 27400 30400 50  0001 C CNN
	1    27400 30400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17359D
P 27400 31200
AR Path="/61492876/6D17359D" Ref="#PWR?"  Part="1" 
AR Path="/6D17359D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 30950 50  0001 C CNN
F 1 "GND" H 27405 31027 50  0000 C CNN
F 2 "" H 27400 31200 50  0001 C CNN
F 3 "" H 27400 31200 50  0001 C CNN
	1    27400 31200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1735A3
P 27400 29600
AR Path="/61492876/6D1735A3" Ref="#PWR?"  Part="1" 
AR Path="/6D1735A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 29450 50  0001 C CNN
F 1 "+5V" H 27400 29850 50  0000 C CNN
F 2 "" H 27400 29600 50  0001 C CNN
F 3 "" H 27400 29600 50  0001 C CNN
	1    27400 29600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1735A9
P 26900 30800
AR Path="/61492876/6D1735A9" Ref="#PWR?"  Part="1" 
AR Path="/6D1735A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 30650 50  0001 C CNN
F 1 "+5V" H 26915 30973 50  0000 C CNN
F 2 "" H 26900 30800 50  0001 C CNN
F 3 "" H 26900 30800 50  0001 C CNN
	1    26900 30800
	1    0    0    -1  
$EndComp
Text Label 26900 29900 2    75   ~ 0
pc0
Text Label 26900 30000 2    75   ~ 0
pc1
Text Label 26900 30100 2    75   ~ 0
pc2
Text Label 26900 30200 2    75   ~ 0
pc3
Text Label 26900 30300 2    75   ~ 0
pc4
Text Label 26900 30400 2    75   ~ 0
pc5
Text Label 26900 30500 2    75   ~ 0
pc6
Text Label 26900 30600 2    75   ~ 0
pc7
$Comp
L Memory_RAM:AS6C4008-55PCN U?
U 1 1 6D1735C0
P 55450 18150
AR Path="/61492876/6D1735C0" Ref="U?"  Part="1" 
AR Path="/6D1735C0" Ref="U?"  Part="1" 
F 0 "U?" H 55450 19431 50  0000 C CNN
F 1 "AS6C4008-55PCN" H 55450 19340 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm" H 55450 18250 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C4008.pdf" H 55450 18250 50  0001 C CNN
	1    55450 18150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D1735C6
P 55450 17050
AR Path="/61492876/6D1735C6" Ref="#PWR?"  Part="1" 
AR Path="/6D1735C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 55450 16900 50  0001 C CNN
F 1 "+5V" H 55450 17350 50  0000 C CNN
F 2 "" H 55450 17050 50  0001 C CNN
F 3 "" H 55450 17050 50  0001 C CNN
	1    55450 17050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D1735CC
P 55450 19250
AR Path="/61492876/6D1735CC" Ref="#PWR?"  Part="1" 
AR Path="/6D1735CC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 55450 19000 50  0001 C CNN
F 1 "GND" H 55455 19077 50  0000 C CNN
F 2 "" H 55450 19250 50  0001 C CNN
F 3 "" H 55450 19250 50  0001 C CNN
	1    55450 19250
	1    0    0    -1  
$EndComp
Text Label 54650 18850 2    75   ~ 0
selectStackMem
Wire Wire Line
	54650 18850 54950 18850
Wire Wire Line
	55950 17950 56050 17950
Wire Wire Line
	55950 17850 56050 17850
Wire Wire Line
	55950 17750 56050 17750
Wire Wire Line
	55950 17650 56050 17650
Wire Wire Line
	55950 17550 56050 17550
Wire Wire Line
	55950 17450 56050 17450
Wire Wire Line
	55950 17350 56050 17350
Wire Wire Line
	55950 17250 56050 17250
Wire Wire Line
	56000 18300 56000 18350
Wire Wire Line
	56000 18350 55950 18350
Text GLabel 56100 18750 2    75   Input ~ 0
~ctrlMemRamWE~
Wire Wire Line
	56100 18750 56000 18750
Wire Wire Line
	56000 18750 56000 18450
Wire Wire Line
	56000 18450 55950 18450
Wire Wire Line
	55950 18250 56000 18250
Wire Wire Line
	56000 18250 56000 18200
Wire Wire Line
	56000 18200 56200 18200
NoConn ~ 54950 18950
NoConn ~ 54950 19050
Text Notes 55350 18100 0    50   ~ 0
RAM2
Text Label 54650 18050 2    75   ~ 0
ramAddress8
Text Label 54650 18150 2    75   ~ 0
ramAddress9
Text Label 54650 18250 2    75   ~ 0
ramAddress10
Text Label 54650 18350 2    75   ~ 0
ramAddress11
Text Label 54650 18450 2    75   ~ 0
ramAddress12
Text Label 54650 18550 2    75   ~ 0
ramAddress13
Text Label 54650 18650 2    75   ~ 0
ramAddress14
Text Label 54650 18750 2    75   ~ 0
ramAddress15
Text Label 54650 17250 2    75   ~ 0
ramAddress0
Text Label 54650 17350 2    75   ~ 0
ramAddress1
Text Label 54650 17450 2    75   ~ 0
ramAddress2
Text Label 54650 17550 2    75   ~ 0
ramAddress3
Text Label 54650 17650 2    75   ~ 0
ramAddress4
Text Label 54650 17750 2    75   ~ 0
ramAddress5
Text Label 54650 17850 2    75   ~ 0
ramAddress6
Text Label 54650 17950 2    75   ~ 0
ramAddress7
Wire Wire Line
	54650 17950 54950 17950
Wire Wire Line
	54650 17850 54950 17850
Wire Wire Line
	54650 17750 54950 17750
Wire Wire Line
	54650 17650 54950 17650
Wire Wire Line
	54650 17550 54950 17550
Wire Wire Line
	54650 17450 54950 17450
Wire Wire Line
	54650 17350 54950 17350
Wire Wire Line
	54650 17250 54950 17250
Wire Wire Line
	54650 18750 54950 18750
Wire Wire Line
	54650 18650 54950 18650
Wire Wire Line
	54650 18550 54950 18550
Wire Wire Line
	54650 18450 54950 18450
Wire Wire Line
	54650 18350 54950 18350
Wire Wire Line
	54650 18250 54950 18250
Wire Wire Line
	54650 18150 54950 18150
Wire Wire Line
	54650 18050 54950 18050
Text Label 56200 18200 0    75   ~ 0
~ramCE~
$Comp
L 74xx:74LS245 U?
U 1 1 6D173609
P 27400 28200
AR Path="/61492876/6D173609" Ref="U?"  Part="1" 
AR Path="/6D173609" Ref="U?"  Part="1" 
F 0 "U?" H 27400 29181 50  0000 C CNN
F 1 "74LS245" H 27400 29250 50  0000 C CNN
F 2 "" H 27400 28200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 27400 28200 50  0001 C CNN
	1    27400 28200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D17360F
P 27400 29000
AR Path="/61492876/6D17360F" Ref="#PWR?"  Part="1" 
AR Path="/6D17360F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 28750 50  0001 C CNN
F 1 "GND" H 27405 28827 50  0000 C CNN
F 2 "" H 27400 29000 50  0001 C CNN
F 3 "" H 27400 29000 50  0001 C CNN
	1    27400 29000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D173615
P 27400 27400
AR Path="/61492876/6D173615" Ref="#PWR?"  Part="1" 
AR Path="/6D173615" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 27400 27250 50  0001 C CNN
F 1 "+5V" H 27500 27500 50  0000 C CNN
F 2 "" H 27400 27400 50  0001 C CNN
F 3 "" H 27400 27400 50  0001 C CNN
	1    27400 27400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D17361B
P 26900 28600
AR Path="/61492876/6D17361B" Ref="#PWR?"  Part="1" 
AR Path="/6D17361B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 26900 28450 50  0001 C CNN
F 1 "+5V" H 26915 28773 50  0000 C CNN
F 2 "" H 26900 28600 50  0001 C CNN
F 3 "" H 26900 28600 50  0001 C CNN
	1    26900 28600
	1    0    0    -1  
$EndComp
Text GLabel 26100 29100 0    75   Input ~ 0
~ctrlMemPCToRam~
Text Label 26900 27700 2    75   ~ 0
pc8
Text Label 26900 27800 2    75   ~ 0
pc9
Text Label 26900 27900 2    75   ~ 0
pc10
Text Label 26900 28000 2    75   ~ 0
pc11
Text Label 26900 28100 2    75   ~ 0
pc12
Text Label 26900 28200 2    75   ~ 0
pc13
Text Label 26900 28300 2    75   ~ 0
pc14
Text Label 26900 28400 2    75   ~ 0
pc15
Text Label 27900 27700 0    75   ~ 0
ram2data0
Text Label 27900 27800 0    75   ~ 0
ram2data1
Text Label 27900 27900 0    75   ~ 0
ram2data2
Text Label 27900 28000 0    75   ~ 0
ram2data3
Text Label 27900 28100 0    75   ~ 0
ram2data4
Text Label 27900 28200 0    75   ~ 0
ram2data5
Text Label 27900 28300 0    75   ~ 0
ram2data6
Text Label 27900 28400 0    75   ~ 0
ram2data7
Text Label 56050 17250 0    75   ~ 0
ram2data0
Text Label 56050 17350 0    75   ~ 0
ram2data1
Text Label 56050 17450 0    75   ~ 0
ram2data2
Text Label 56050 17550 0    75   ~ 0
ram2data3
Text Label 56050 17650 0    75   ~ 0
ram2data4
Text Label 56050 17750 0    75   ~ 0
ram2data5
Text Label 56050 17850 0    75   ~ 0
ram2data6
Text Label 56050 17950 0    75   ~ 0
ram2data7
Text Label 24000 27750 2    75   ~ 0
ram2data0
Text Label 24000 27850 2    75   ~ 0
ram2data1
Text Label 24000 27950 2    75   ~ 0
ram2data2
Text Label 24000 28050 2    75   ~ 0
ram2data3
Text Label 24000 28150 2    75   ~ 0
ram2data4
Text Label 24000 28250 2    75   ~ 0
ram2data5
Text Label 24000 28350 2    75   ~ 0
ram2data6
Text Label 24000 28450 2    75   ~ 0
ram2data7
Text GLabel 57150 18300 2    75   Input ~ 0
~ctrlMemPCToRam~
Wire Wire Line
	20900 28950 20900 28850
Wire Wire Line
	20900 28850 20950 28850
$Comp
L 74xx:74LS04 U?
U 2 1 6D173649
P 56750 18300
AR Path="/61492876/6D173649" Ref="U?"  Part="2" 
AR Path="/6D173649" Ref="U?"  Part="2" 
F 0 "U?" H 56750 18617 50  0000 C CNN
F 1 "74LS04" H 56750 18526 50  0000 C CNN
F 2 "" H 56750 18300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 56750 18300 50  0001 C CNN
	2    56750 18300
	-1   0    0    1   
$EndComp
Wire Wire Line
	56000 18300 56450 18300
Wire Wire Line
	57050 18300 57150 18300
Text GLabel 19300 27450 0    75   Input ~ 0
ctrlMemPCFromImm
Text GLabel 22750 29450 0    75   Input ~ 0
ctrlMemPCFromImm
$Comp
L 74xx:74LS32 U?
U 2 1 6D173654
P 21550 21500
AR Path="/61492876/6D173654" Ref="U?"  Part="2" 
AR Path="/6D173654" Ref="U?"  Part="2" 
F 0 "U?" H 21550 21825 50  0000 C CNN
F 1 "74LS32" H 21550 21734 50  0000 C CNN
F 2 "" H 21550 21500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 21550 21500 50  0001 C CNN
	2    21550 21500
	1    0    0    -1  
$EndComp
Wire Wire Line
	21850 21500 21950 21500
Wire Wire Line
	21950 21500 21950 21600
Wire Wire Line
	21950 21600 22050 21600
Wire Wire Line
	21150 21400 21250 21400
Text GLabel 21150 21600 0    75   Input ~ 0
halt
Wire Wire Line
	21150 21600 21250 21600
$Comp
L 74xx:74LS08 U?
U 1 1 6D173666
P 22350 21700
AR Path="/61492876/6D173666" Ref="U?"  Part="1" 
AR Path="/6D173666" Ref="U?"  Part="1" 
F 0 "U?" H 22350 22025 50  0000 C CNN
F 1 "74LS08" H 22350 21934 50  0000 C CNN
F 2 "" H 22350 21700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 22350 21700 50  0001 C CNN
	1    22350 21700
	1    0    0    -1  
$EndComp
Text GLabel 21850 21800 0    75   Input ~ 0
~ctrlMemPCLoad~
Wire Wire Line
	21850 21800 22050 21800
$Comp
L 74xx:74LS32 U?
U 1 1 6D17366E
P 38150 14650
AR Path="/61492876/6D17366E" Ref="U?"  Part="1" 
AR Path="/6D17366E" Ref="U?"  Part="1" 
F 0 "U?" H 38150 14975 50  0000 C CNN
F 1 "74LS32" H 38150 14884 50  0000 C CNN
F 2 "" H 38150 14650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 38150 14650 50  0001 C CNN
	1    38150 14650
	1    0    0    -1  
$EndComp
Wire Wire Line
	37750 14550 37850 14550
Text GLabel 37750 14750 0    75   Input ~ 0
halt
Wire Wire Line
	37750 14750 37850 14750
Text Label 38600 14650 0    75   ~ 0
~spEn~
Wire Wire Line
	38600 14650 38450 14650
Text Label 45650 26150 2    75   ~ 0
~spEn~
Wire Wire Line
	45650 26150 45800 26150
$Comp
L 74xx:74LS273 U?
U 1 1 6D3BCA82
P 56150 7750
AR Path="/62CA6149/6D3BCA82" Ref="U?"  Part="1" 
AR Path="/6D3BCA82" Ref="U?"  Part="1" 
F 0 "U?" H 56150 8731 50  0000 C CNN
F 1 "74LS273" H 56150 8640 50  0000 C CNN
F 2 "" H 56150 7750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 56150 7750 50  0001 C CNN
	1    56150 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D3BCA88
P 56150 8550
AR Path="/62CA6149/6D3BCA88" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCA88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 56150 8300 50  0001 C CNN
F 1 "GND" H 56155 8377 50  0000 C CNN
F 2 "" H 56150 8550 50  0001 C CNN
F 3 "" H 56150 8550 50  0001 C CNN
	1    56150 8550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D3BCA8E
P 56150 6950
AR Path="/62CA6149/6D3BCA8E" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCA8E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 56150 6800 50  0001 C CNN
F 1 "+5V" H 56150 7250 50  0000 C CNN
F 2 "" H 56150 6950 50  0001 C CNN
F 3 "" H 56150 6950 50  0001 C CNN
	1    56150 6950
	1    0    0    -1  
$EndComp
Text HLabel 55350 7950 0    50   3State ~ 0
bus7
Text HLabel 55350 7850 0    50   3State ~ 0
bus6
Text HLabel 55350 7750 0    50   3State ~ 0
bus5
Text HLabel 55350 7650 0    50   3State ~ 0
bus4
Text HLabel 55350 7550 0    50   3State ~ 0
bus3
Text HLabel 55350 7450 0    50   3State ~ 0
bus2
Text HLabel 55350 7350 0    50   3State ~ 0
bus1
Text HLabel 55350 7250 0    50   3State ~ 0
bus0
Text GLabel 55650 8250 0    75   Input ~ 0
~reset~
Wire Wire Line
	55300 8150 55650 8150
Wire Wire Line
	57750 7250 56650 7250
Wire Wire Line
	57750 7350 56650 7350
Wire Wire Line
	57750 7450 56650 7450
Wire Wire Line
	57750 7550 56650 7550
Wire Wire Line
	55650 7250 55350 7250
Wire Wire Line
	55350 7350 55650 7350
Wire Wire Line
	55650 7450 55350 7450
Wire Wire Line
	55350 7550 55650 7550
Wire Wire Line
	55650 7650 55350 7650
Wire Wire Line
	55350 7750 55650 7750
Wire Wire Line
	55650 7850 55350 7850
Wire Wire Line
	55350 7950 55650 7950
$Comp
L EDiCPoster-rescue:74F521 U?
U 1 1 6D3BCAAA
P 53200 8100
AR Path="/62CA6149/6D3BCAAA" Ref="U?"  Part="1" 
AR Path="/6D3BCAAA" Ref="U?"  Part="1" 
F 0 "U?" H 53144 8083 100 0000 L CNN
F 1 "74F521" H 53144 7917 100 0000 L CNN
F 2 "" H 53200 8100 100 0001 C CNN
F 3 "" H 53200 8100 100 0001 C CNN
	1    53200 8100
	1    0    0    -1  
$EndComp
Text GLabel 51650 9100 0    75   Input ~ 0
ioSelect
Text GLabel 51750 7300 0    75   Input ~ 0
ioAddr0
Text GLabel 51750 7400 0    75   Input ~ 0
ioAddr1
Text GLabel 51750 7500 0    75   Input ~ 0
ioAddr2
Text GLabel 51750 7600 0    75   Input ~ 0
ioAddr3
Text GLabel 51750 7700 0    75   Input ~ 0
ioAddr4
Text GLabel 51750 7800 0    75   Input ~ 0
ioAddr5
Text GLabel 51750 7900 0    75   Input ~ 0
ioAddr6
Text GLabel 51750 8000 0    75   Input ~ 0
ioAddr7
Wire Wire Line
	52100 8000 51750 8000
Wire Wire Line
	51750 7900 52100 7900
Wire Wire Line
	52100 7800 51750 7800
Wire Wire Line
	51750 7700 52100 7700
Wire Wire Line
	52100 7600 51750 7600
Wire Wire Line
	51750 7500 52100 7500
Wire Wire Line
	52100 7400 51750 7400
Wire Wire Line
	51750 7300 52100 7300
Text GLabel 54550 9000 0    75   Input ~ 0
~ioOE~
Text GLabel 54550 8250 0    75   Input ~ 0
~ioWE~
Wire Wire Line
	54700 8250 54550 8250
Wire Wire Line
	54550 9000 54700 9000
$Comp
L power:GND #PWR?
U 1 1 6D3BCAC5
P 51900 8900
AR Path="/62CA6149/6D3BCAC5" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCAC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 51900 8650 50  0001 C CNN
F 1 "GND" H 51905 8727 50  0000 C CNN
F 2 "" H 51900 8900 50  0001 C CNN
F 3 "" H 51900 8900 50  0001 C CNN
	1    51900 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	51900 8900 52100 8900
Wire Wire Line
	51900 8900 51900 8800
Wire Wire Line
	51900 8200 52100 8200
Connection ~ 51900 8900
Wire Wire Line
	52100 8300 51900 8300
Connection ~ 51900 8300
Wire Wire Line
	51900 8300 51900 8200
Wire Wire Line
	51900 8400 52100 8400
Connection ~ 51900 8400
Wire Wire Line
	51900 8400 51900 8300
Wire Wire Line
	52100 8500 51900 8500
Connection ~ 51900 8500
Wire Wire Line
	51900 8500 51900 8400
Wire Wire Line
	51900 8600 52100 8600
Connection ~ 51900 8600
Wire Wire Line
	51900 8600 51900 8500
Wire Wire Line
	52100 8700 51900 8700
Connection ~ 51900 8700
Wire Wire Line
	51900 8700 51900 8600
Wire Wire Line
	51900 8800 52100 8800
Connection ~ 51900 8800
Wire Wire Line
	51900 8800 51900 8700
$Comp
L power:GND #PWR?
U 1 1 6D3BCAE1
P 52600 9400
AR Path="/62CA6149/6D3BCAE1" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCAE1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52600 9150 50  0001 C CNN
F 1 "GND" H 52605 9227 50  0000 C CNN
F 2 "" H 52600 9400 50  0001 C CNN
F 3 "" H 52600 9400 50  0001 C CNN
	1    52600 9400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D3BCAE7
P 52600 7000
AR Path="/62CA6149/6D3BCAE7" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCAE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 52600 6850 50  0001 C CNN
F 1 "+5V" H 52615 7173 50  0000 C CNN
F 2 "" H 52600 7000 50  0001 C CNN
F 3 "" H 52600 7000 50  0001 C CNN
	1    52600 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	51650 9100 52100 9100
$Comp
L 74xx:74LS32 U?
U 1 1 6D3BCAEE
P 55000 8150
AR Path="/62CA6149/6D3BCAEE" Ref="U?"  Part="1" 
AR Path="/6D3BCAEE" Ref="U?"  Part="1" 
F 0 "U?" H 55000 8475 50  0000 C CNN
F 1 "74LS32" H 55000 8384 50  0000 C CNN
F 2 "" H 55000 8150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 55000 8150 50  0001 C CNN
	1    55000 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	53100 7300 54200 7300
Wire Wire Line
	54200 7300 54200 8050
Wire Wire Line
	54200 8050 54700 8050
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 6D3BCAF7
P 53300 10250
AR Path="/61492876/6D3BCAF7" Ref="SW?"  Part="1" 
AR Path="/62CA6149/6D3BCAF7" Ref="SW?"  Part="1" 
AR Path="/6D3BCAF7" Ref="SW?"  Part="1" 
F 0 "SW?" H 53357 10717 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 53357 10626 50  0000 C CNN
F 2 "" H 53000 9800 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 53300 10250 50  0001 C CNN
	1    53300 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	55600 10450 54350 10450
Wire Wire Line
	55600 10250 54150 10250
Wire Wire Line
	55600 10350 54250 10350
Wire Wire Line
	55600 10150 54050 10150
$Comp
L Device:R_Network08 RN?
U 1 1 6D3BCB01
P 54450 9600
AR Path="/61492876/6D3BCB01" Ref="RN?"  Part="1" 
AR Path="/62CA6149/6D3BCB01" Ref="RN?"  Part="1" 
AR Path="/6D3BCB01" Ref="RN?"  Part="1" 
F 0 "RN?" H 54838 9646 50  0000 L CNN
F 1 "10k" H 54838 9555 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 54925 9600 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 54450 9600 50  0001 C CNN
	1    54450 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	54050 9800 54050 10150
Connection ~ 54050 10150
Wire Wire Line
	54050 10150 53700 10150
Wire Wire Line
	54150 9800 54150 10250
Connection ~ 54150 10250
Wire Wire Line
	54150 10250 53700 10250
Wire Wire Line
	54250 10350 54250 9800
Connection ~ 54250 10350
Wire Wire Line
	54250 10350 53700 10350
Wire Wire Line
	54350 9800 54350 10450
Connection ~ 54350 10450
Wire Wire Line
	54350 10450 53700 10450
$Comp
L power:GND #PWR?
U 1 1 6D3BCB13
P 53900 10000
AR Path="/61492876/6D3BCB13" Ref="#PWR?"  Part="1" 
AR Path="/62CA6149/6D3BCB13" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB13" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 53900 9750 50  0001 C CNN
F 1 "GND" H 53905 9827 50  0000 C CNN
F 2 "" H 53900 10000 50  0001 C CNN
F 3 "" H 53900 10000 50  0001 C CNN
	1    53900 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	53900 10000 53700 10000
Wire Wire Line
	53700 10000 53700 10050
$Comp
L power:+5V #PWR?
U 1 1 6D3BCB1B
P 54050 9400
AR Path="/61492876/6D3BCB1B" Ref="#PWR?"  Part="1" 
AR Path="/62CA6149/6D3BCB1B" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB1B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 54050 9250 50  0001 C CNN
F 1 "+5V" H 54065 9573 50  0000 C CNN
F 2 "" H 54050 9400 50  0001 C CNN
F 3 "" H 54050 9400 50  0001 C CNN
	1    54050 9400
	1    0    0    -1  
$EndComp
Text Notes 52950 9650 0    50   ~ 0
Invertierung beachten!
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 6D3BCB22
P 53300 11000
AR Path="/61492876/6D3BCB22" Ref="SW?"  Part="1" 
AR Path="/62CA6149/6D3BCB22" Ref="SW?"  Part="1" 
AR Path="/6D3BCB22" Ref="SW?"  Part="1" 
F 0 "SW?" H 53357 11467 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 53357 11376 50  0000 C CNN
F 2 "" H 53000 10550 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 53300 11000 50  0001 C CNN
	1    53300 11000
	1    0    0    -1  
$EndComp
Wire Wire Line
	54850 10900 54450 10900
$Comp
L power:GND #PWR?
U 1 1 6D3BCB29
P 53900 10750
AR Path="/61492876/6D3BCB29" Ref="#PWR?"  Part="1" 
AR Path="/62CA6149/6D3BCB29" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB29" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 53900 10500 50  0001 C CNN
F 1 "GND" H 53905 10577 50  0000 C CNN
F 2 "" H 53900 10750 50  0001 C CNN
F 3 "" H 53900 10750 50  0001 C CNN
	1    53900 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	53900 10750 53700 10750
Wire Wire Line
	53700 10750 53700 10800
Connection ~ 54450 10900
Connection ~ 54550 11000
Connection ~ 54650 11100
Connection ~ 54750 11200
Wire Wire Line
	53700 10900 54450 10900
Wire Wire Line
	53700 11000 54550 11000
Wire Wire Line
	53700 11100 54650 11100
Wire Wire Line
	53700 11200 54750 11200
Wire Wire Line
	54750 9800 54750 11200
Wire Wire Line
	54650 9800 54650 11100
Wire Wire Line
	54550 9800 54550 11000
Wire Wire Line
	54450 9800 54450 10900
$Comp
L 74xx:74LS245 U?
U 1 1 6D3BCB3D
P 56100 10350
AR Path="/62CA6149/6D3BCB3D" Ref="U?"  Part="1" 
AR Path="/6D3BCB3D" Ref="U?"  Part="1" 
F 0 "U?" H 56100 9369 50  0000 C CNN
F 1 "74LS245" H 56100 9460 50  0000 C CNN
F 2 "" H 56100 10350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 56100 10350 50  0001 C CNN
	1    56100 10350
	1    0    0    1   
$EndComp
Wire Wire Line
	54850 10900 54850 10550
Wire Wire Line
	54850 10550 55600 10550
Wire Wire Line
	55600 10650 54950 10650
Wire Wire Line
	54950 10650 54950 11000
Wire Wire Line
	54550 11000 54950 11000
Wire Wire Line
	55050 11100 55050 10750
Wire Wire Line
	55050 10750 55600 10750
Wire Wire Line
	54650 11100 55050 11100
Wire Wire Line
	55600 10850 55150 10850
Wire Wire Line
	55150 10850 55150 11200
Wire Wire Line
	54750 11200 55150 11200
Text HLabel 56900 10850 2    50   3State ~ 0
bus7
Text HLabel 56900 10750 2    50   3State ~ 0
bus6
Text HLabel 56900 10650 2    50   3State ~ 0
bus5
Text HLabel 56900 10550 2    50   3State ~ 0
bus4
Text HLabel 56900 10450 2    50   3State ~ 0
bus3
Text HLabel 56900 10350 2    50   3State ~ 0
bus2
Text HLabel 56900 10250 2    50   3State ~ 0
bus1
Text HLabel 56900 10150 2    50   3State ~ 0
bus0
Wire Wire Line
	56600 10150 56900 10150
Wire Wire Line
	56900 10250 56600 10250
Wire Wire Line
	56600 10350 56900 10350
Wire Wire Line
	56900 10450 56600 10450
Wire Wire Line
	56600 10550 56900 10550
Wire Wire Line
	56900 10650 56600 10650
Wire Wire Line
	56600 10750 56900 10750
Wire Wire Line
	56900 10850 56600 10850
$Comp
L power:+5V #PWR?
U 1 1 6D3BCB5E
P 56100 9550
AR Path="/62CA6149/6D3BCB5E" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB5E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 56100 9400 50  0001 C CNN
F 1 "+5V" H 56100 9800 50  0000 C CNN
F 2 "" H 56100 9550 50  0001 C CNN
F 3 "" H 56100 9550 50  0001 C CNN
	1    56100 9550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D3BCB64
P 56100 11150
AR Path="/62CA6149/6D3BCB64" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB64" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 56100 10900 50  0001 C CNN
F 1 "GND" H 56105 10977 50  0000 C CNN
F 2 "" H 56100 11150 50  0001 C CNN
F 3 "" H 56100 11150 50  0001 C CNN
	1    56100 11150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D3BCB6A
P 55300 10050
AR Path="/62CA6149/6D3BCB6A" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB6A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 55300 9900 50  0001 C CNN
F 1 "+5V" H 55315 10223 50  0000 C CNN
F 2 "" H 55300 10050 50  0001 C CNN
F 3 "" H 55300 10050 50  0001 C CNN
	1    55300 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	55300 10050 55600 10050
Wire Wire Line
	55600 10050 55600 9950
$Comp
L 74xx:74LS32 U?
U 1 1 6D3BCB72
P 55000 8900
AR Path="/62CA6149/6D3BCB72" Ref="U?"  Part="1" 
AR Path="/6D3BCB72" Ref="U?"  Part="1" 
F 0 "U?" H 55000 9225 50  0000 C CNN
F 1 "74LS32" H 55000 9134 50  0000 C CNN
F 2 "" H 55000 8900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 55000 8900 50  0001 C CNN
	1    55000 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	54700 8800 54200 8800
Wire Wire Line
	54200 8800 54200 8050
Connection ~ 54200 8050
Wire Wire Line
	55300 8900 55450 8900
Wire Wire Line
	55450 8900 55450 9850
Wire Wire Line
	55450 9850 55600 9850
$Comp
L EDiCPoster-rescue:5082_7340 U?
U 1 1 6D3BCB7E
P 58500 7750
AR Path="/62CA6149/6D3BCB7E" Ref="U?"  Part="1" 
AR Path="/6D3BCB7E" Ref="U?"  Part="1" 
F 0 "U?" H 58280 7846 50  0000 L CNN
F 1 "5082_7340" H 58280 7755 50  0000 L CNN
F 2 "" H 58500 7750 50  0001 C CNN
F 3 "" H 58500 7750 50  0001 C CNN
	1    58500 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D3BCB84
P 57650 8200
AR Path="/62CA6149/6D3BCB84" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB84" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 57650 7950 50  0001 C CNN
F 1 "GND" H 57655 8027 50  0000 C CNN
F 2 "" H 57650 8200 50  0001 C CNN
F 3 "" H 57650 8200 50  0001 C CNN
	1    57650 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	57650 8200 57650 8100
Wire Wire Line
	57650 8000 57750 8000
Wire Wire Line
	57750 8100 57650 8100
Connection ~ 57650 8100
Wire Wire Line
	57650 8100 57650 8000
$Comp
L power:GND #PWR?
U 1 1 6D3BCB8F
P 58100 8300
AR Path="/62CA6149/6D3BCB8F" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB8F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 58100 8050 50  0001 C CNN
F 1 "GND" H 58105 8127 50  0000 C CNN
F 2 "" H 58100 8300 50  0001 C CNN
F 3 "" H 58100 8300 50  0001 C CNN
	1    58100 8300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D3BCB95
P 58100 7100
AR Path="/62CA6149/6D3BCB95" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCB95" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 58100 6950 50  0001 C CNN
F 1 "+5V" H 58115 7273 50  0000 C CNN
F 2 "" H 58100 7100 50  0001 C CNN
F 3 "" H 58100 7100 50  0001 C CNN
	1    58100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	57750 8900 57500 8900
Wire Wire Line
	57750 9000 57400 9000
Wire Wire Line
	57750 9100 57300 9100
Wire Wire Line
	57750 9200 57200 9200
$Comp
L EDiCPoster-rescue:5082_7340 U?
U 1 1 6D3BCB9F
P 58500 9400
AR Path="/62CA6149/6D3BCB9F" Ref="U?"  Part="1" 
AR Path="/6D3BCB9F" Ref="U?"  Part="1" 
F 0 "U?" H 58280 9496 50  0000 L CNN
F 1 "5082_7340" H 58280 9405 50  0000 L CNN
F 2 "" H 58500 9400 50  0001 C CNN
F 3 "" H 58500 9400 50  0001 C CNN
	1    58500 9400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D3BCBA5
P 57650 9850
AR Path="/62CA6149/6D3BCBA5" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCBA5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 57650 9600 50  0001 C CNN
F 1 "GND" H 57655 9677 50  0000 C CNN
F 2 "" H 57650 9850 50  0001 C CNN
F 3 "" H 57650 9850 50  0001 C CNN
	1    57650 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	57650 9850 57650 9750
Wire Wire Line
	57650 9650 57750 9650
Wire Wire Line
	57750 9750 57650 9750
Connection ~ 57650 9750
Wire Wire Line
	57650 9750 57650 9650
$Comp
L power:GND #PWR?
U 1 1 6D3BCBB0
P 58100 9950
AR Path="/62CA6149/6D3BCBB0" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCBB0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 58100 9700 50  0001 C CNN
F 1 "GND" H 58105 9777 50  0000 C CNN
F 2 "" H 58100 9950 50  0001 C CNN
F 3 "" H 58100 9950 50  0001 C CNN
	1    58100 9950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D3BCBB6
P 58100 8750
AR Path="/62CA6149/6D3BCBB6" Ref="#PWR?"  Part="1" 
AR Path="/6D3BCBB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 58100 8600 50  0001 C CNN
F 1 "+5V" H 58115 8923 50  0000 C CNN
F 2 "" H 58100 8750 50  0001 C CNN
F 3 "" H 58100 8750 50  0001 C CNN
	1    58100 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	57500 7650 57500 8900
Wire Wire Line
	56650 7650 57500 7650
Wire Wire Line
	57400 9000 57400 7750
Wire Wire Line
	56650 7750 57400 7750
Wire Wire Line
	57300 7850 57300 9100
Wire Wire Line
	56650 7850 57300 7850
Wire Wire Line
	57200 7950 57200 9200
Wire Wire Line
	56650 7950 57200 7950
Text Notes 51500 6750 0    100  ~ 0
ioAddress == 0x00
Text GLabel 19350 7950 2    75   Output ~ 0
~ctrlAluYWE~
Text GLabel 19350 16300 2    75   Output ~ 0
ctrlAluOp1
Text GLabel 19350 16150 2    75   Output ~ 0
ctrlAluOp0
Text GLabel 19350 16000 2    75   Output ~ 0
ctrlAluSub
Text GLabel 19350 8350 2    75   Output ~ 0
~ctrlReg0WE~
Text GLabel 19350 8550 2    75   Output ~ 0
~ctrlReg1WE~
Text GLabel 19350 9150 2    75   Output ~ 0
~ctrlReg1BusOE~
Text GLabel 19350 8750 2    75   Output ~ 0
ctrlRegAluSel
Text GLabel 19350 8950 2    75   Output ~ 0
~ctrlReg0BusOE~
Text GLabel 19350 10600 2    75   Output ~ 0
ctrlMemSPUp
Text GLabel 19350 11200 2    75   Output ~ 0
~ctrlMemInstrOE~
Text GLabel 19350 10800 2    75   Output ~ 0
~ctrlMemSPEn~
Text GLabel 19350 9350 2    75   Output ~ 0
~ctrlMemPCLoad~
Text GLabel 15800 10900 0    75   Input ~ 0
~clk~
Text GLabel 15000 12100 0    75   Input ~ 0
~reset~
$Comp
L power:+5V #PWR?
U 1 1 6D66181B
P 16450 9800
AR Path="/601BB1C4/6D66181B" Ref="#PWR?"  Part="1" 
AR Path="/6D66181B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16450 9650 50  0001 C CNN
F 1 "+5V" H 16450 10050 50  0000 C CNN
F 2 "" H 16450 9800 50  0001 C CNN
F 3 "" H 16450 9800 50  0001 C CNN
	1    16450 9800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661821
P 16450 11350
AR Path="/601BB1C4/6D661821" Ref="#PWR?"  Part="1" 
AR Path="/6D661821" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16450 11100 50  0001 C CNN
F 1 "GND" H 16455 11177 50  0000 C CNN
F 2 "" H 16450 11350 50  0001 C CNN
F 3 "" H 16450 11350 50  0001 C CNN
	1    16450 11350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661827
P 16650 16500
AR Path="/601BB1C4/6D661827" Ref="#PWR?"  Part="1" 
AR Path="/6D661827" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16650 16250 50  0001 C CNN
F 1 "GND" H 16655 16327 50  0000 C CNN
F 2 "" H 16650 16500 50  0001 C CNN
F 3 "" H 16650 16500 50  0001 C CNN
	1    16650 16500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D66182D
P 16650 14900
AR Path="/601BB1C4/6D66182D" Ref="#PWR?"  Part="1" 
AR Path="/6D66182D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16650 14750 50  0001 C CNN
F 1 "+5V" H 16750 15000 50  0000 C CNN
F 2 "" H 16650 14900 50  0001 C CNN
F 3 "" H 16650 14900 50  0001 C CNN
	1    16650 14900
	1    0    0    -1  
$EndComp
Text GLabel 16150 16100 0    75   Input ~ 0
~clk~
Text GLabel 15000 10900 0    75   Input ~ 0
flagZero
Text GLabel 15000 10750 0    75   Input ~ 0
flagNegative
Text Label 17000 10500 0    75   ~ 0
a12
Text Label 17000 10400 0    75   ~ 0
a11
Text Label 17000 10000 0    75   ~ 0
a0
Text Label 17000 10100 0    75   ~ 0
a1
Text Label 17000 10200 0    75   ~ 0
a2
Text Label 17850 16000 0    75   ~ 0
a3
Text Label 17850 16150 0    75   ~ 0
a4
Text Label 17850 16300 0    75   ~ 0
a5
Text Label 17200 15500 0    75   ~ 0
a6
Text Label 17200 15600 0    75   ~ 0
a7
Text Label 17200 15700 0    75   ~ 0
a8
Text Label 17200 15800 0    75   ~ 0
a9
Text Label 17200 15900 0    75   ~ 0
a10
$Comp
L power:+5V #PWR?
U 1 1 6D661857
P 18700 8100
AR Path="/601BB1C4/6D661857" Ref="#PWR?"  Part="1" 
AR Path="/6D661857" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 7950 50  0001 C CNN
F 1 "+5V" H 18700 8350 50  0000 C CNN
F 2 "" H 18700 8100 50  0001 C CNN
F 3 "" H 18700 8100 50  0001 C CNN
	1    18700 8100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D66185D
P 18700 10300
AR Path="/601BB1C4/6D66185D" Ref="#PWR?"  Part="1" 
AR Path="/6D66185D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 10050 50  0001 C CNN
F 1 "GND" H 18705 10127 50  0000 C CNN
F 2 "" H 18700 10300 50  0001 C CNN
F 3 "" H 18700 10300 50  0001 C CNN
	1    18700 10300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661863
P 18150 10050
AR Path="/601BB1C4/6D661863" Ref="#PWR?"  Part="1" 
AR Path="/6D661863" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 9800 50  0001 C CNN
F 1 "GND" H 18155 9877 50  0000 C CNN
F 2 "" H 18150 10050 50  0001 C CNN
F 3 "" H 18150 10050 50  0001 C CNN
	1    18150 10050
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D661869
P 18150 9900
AR Path="/601BB1C4/6D661869" Ref="#PWR?"  Part="1" 
AR Path="/6D661869" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 9750 50  0001 C CNN
F 1 "+5V" H 18165 10073 50  0000 C CNN
F 2 "" H 18150 9900 50  0001 C CNN
F 3 "" H 18150 9900 50  0001 C CNN
	1    18150 9900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18300 9900 18150 9900
Wire Wire Line
	18300 10100 18250 10100
Wire Wire Line
	18250 10100 18250 10050
Wire Wire Line
	18250 10050 18150 10050
Wire Wire Line
	18300 10000 18250 10000
Wire Wire Line
	18250 10000 18250 10050
Connection ~ 18250 10050
Text Label 18050 11250 2    75   ~ 0
a3
Text Label 18050 11350 2    75   ~ 0
a4
Text Label 18050 11450 2    75   ~ 0
a5
Text Label 18050 11550 2    75   ~ 0
a6
Text Label 18050 11650 2    75   ~ 0
a7
Text Label 18050 11750 2    75   ~ 0
a8
Text Label 18050 11850 2    75   ~ 0
a9
Text Label 18050 11950 2    75   ~ 0
a10
Text Label 18050 12050 2    75   ~ 0
a11
Text Label 18050 12150 2    75   ~ 0
a12
Text Label 18050 10950 2    75   ~ 0
a0
Text Label 18050 11050 2    75   ~ 0
a1
Text Label 18050 11150 2    75   ~ 0
a2
$Comp
L power:+5V #PWR?
U 1 1 6D661883
P 18700 10750
AR Path="/601BB1C4/6D661883" Ref="#PWR?"  Part="1" 
AR Path="/6D661883" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 10600 50  0001 C CNN
F 1 "+5V" H 18800 10750 50  0000 C CNN
F 2 "" H 18700 10750 50  0001 C CNN
F 3 "" H 18700 10750 50  0001 C CNN
	1    18700 10750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661889
P 18700 12950
AR Path="/601BB1C4/6D661889" Ref="#PWR?"  Part="1" 
AR Path="/6D661889" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 12700 50  0001 C CNN
F 1 "GND" H 18705 12777 50  0000 C CNN
F 2 "" H 18700 12950 50  0001 C CNN
F 3 "" H 18700 12950 50  0001 C CNN
	1    18700 12950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D66188F
P 18150 12700
AR Path="/601BB1C4/6D66188F" Ref="#PWR?"  Part="1" 
AR Path="/6D66188F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 12450 50  0001 C CNN
F 1 "GND" H 18155 12527 50  0000 C CNN
F 2 "" H 18150 12700 50  0001 C CNN
F 3 "" H 18150 12700 50  0001 C CNN
	1    18150 12700
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D661895
P 18150 12550
AR Path="/601BB1C4/6D661895" Ref="#PWR?"  Part="1" 
AR Path="/6D661895" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 12400 50  0001 C CNN
F 1 "+5V" H 18165 12723 50  0000 C CNN
F 2 "" H 18150 12550 50  0001 C CNN
F 3 "" H 18150 12550 50  0001 C CNN
	1    18150 12550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18300 12550 18150 12550
Wire Wire Line
	18300 12750 18250 12750
Wire Wire Line
	18250 12750 18250 12700
Wire Wire Line
	18250 12700 18150 12700
Wire Wire Line
	18300 12650 18250 12650
Wire Wire Line
	18250 12650 18250 12700
Connection ~ 18250 12700
Text Label 17200 15200 0    75   ~ 0
a3
Text Label 17200 15300 0    75   ~ 0
a4
Text Label 17200 15400 0    75   ~ 0
a5
Text GLabel 19350 11600 2    75   Output ~ 0
~ctrlMemMar1WE~
Text GLabel 19350 11000 2    75   Output ~ 0
~ctrlMemInstrWE~
$Comp
L 74xx:74LS374 U?
U 1 1 6D6618BA
P 16650 15700
AR Path="/601BB1C4/6D6618BA" Ref="U?"  Part="1" 
AR Path="/6D6618BA" Ref="U?"  Part="1" 
F 0 "U?" H 16650 16681 50  0000 C CNN
F 1 "74LS374" H 16650 16750 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 16650 15700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 16650 15700 50  0001 C CNN
	1    16650 15700
	1    0    0    -1  
$EndComp
NoConn ~ 16950 10300
$Comp
L 74xx:74LS86 U?
U 2 1 6D6618C5
P 14850 8950
AR Path="/601BB1C4/6D6618C5" Ref="U?"  Part="2" 
AR Path="/6D6618C5" Ref="U?"  Part="2" 
F 0 "U?" H 14850 9275 50  0000 C CNN
F 1 "74LS86" H 14850 9184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14850 8950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 14850 8950 50  0001 C CNN
	2    14850 8950
	1    0    0    -1  
$EndComp
Text Label 13300 9050 0    75   ~ 0
a0
$Comp
L power:+5V #PWR?
U 1 1 6D6618CC
P 14550 8850
AR Path="/601BB1C4/6D6618CC" Ref="#PWR?"  Part="1" 
AR Path="/6D6618CC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14550 8700 50  0001 C CNN
F 1 "+5V" H 14565 9023 50  0000 C CNN
F 2 "" H 14550 8850 50  0001 C CNN
F 3 "" H 14550 8850 50  0001 C CNN
	1    14550 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 8950 15350 8950
Wire Wire Line
	15350 8950 15350 10000
Wire Wire Line
	15350 10000 15950 10000
$Comp
L 74xx:74LS86 U?
U 1 1 6D6618D5
P 15650 7300
AR Path="/601BB1C4/6D6618D5" Ref="U?"  Part="1" 
AR Path="/6D6618D5" Ref="U?"  Part="1" 
F 0 "U?" H 15650 7625 50  0000 C CNN
F 1 "74LS86" H 15650 7534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 15650 7300 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 15650 7300 50  0001 C CNN
	1    15650 7300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 2 1 6D6618E1
P 15650 6750
AR Path="/601BB1C4/6D6618E1" Ref="U?"  Part="2" 
AR Path="/6D6618E1" Ref="U?"  Part="2" 
F 0 "U?" H 15650 7075 50  0000 C CNN
F 1 "74LS08" H 15650 6984 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 15650 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 15650 6750 50  0001 C CNN
	2    15650 6750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 3 1 6D6618E7
P 15300 12000
AR Path="/601BB1C4/6D6618E7" Ref="U?"  Part="3" 
AR Path="/6D6618E7" Ref="U?"  Part="3" 
F 0 "U?" H 15300 12325 50  0000 C CNN
F 1 "74LS08" H 15300 12234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 15300 12000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 15300 12000 50  0001 C CNN
	3    15300 12000
	1    0    0    -1  
$EndComp
NoConn ~ 15950 7300
NoConn ~ 15950 6750
NoConn ~ 15950 7900
$Comp
L 74xx:74LS08 U?
U 5 1 6D6618F6
P 13250 7250
AR Path="/601BB1C4/6D6618F6" Ref="U?"  Part="5" 
AR Path="/6D6618F6" Ref="U?"  Part="5" 
F 0 "U?" H 13480 7296 50  0000 L CNN
F 1 "74LS08" H 13480 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 13250 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 13250 7250 50  0001 C CNN
	5    13250 7250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 6D6618FC
P 14150 7250
AR Path="/601BB1C4/6D6618FC" Ref="U?"  Part="5" 
AR Path="/6D6618FC" Ref="U?"  Part="5" 
F 0 "U?" H 14380 7296 50  0000 L CNN
F 1 "74LS86" H 14380 7205 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14150 7250 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 14150 7250 50  0001 C CNN
	5    14150 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661902
P 14150 7750
AR Path="/601B5CAE/6D661902" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6D661902" Ref="#PWR?"  Part="1" 
AR Path="/60ECA4CB/6D661902" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D661902" Ref="#PWR?"  Part="1" 
AR Path="/6D661902" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14150 7500 50  0001 C CNN
F 1 "GND" H 14155 7577 50  0000 C CNN
F 2 "" H 14150 7750 50  0001 C CNN
F 3 "" H 14150 7750 50  0001 C CNN
	1    14150 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661908
P 13250 7750
AR Path="/601B5CAE/6D661908" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6D661908" Ref="#PWR?"  Part="1" 
AR Path="/60ECA4CB/6D661908" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D661908" Ref="#PWR?"  Part="1" 
AR Path="/6D661908" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13250 7500 50  0001 C CNN
F 1 "GND" H 13255 7577 50  0000 C CNN
F 2 "" H 13250 7750 50  0001 C CNN
F 3 "" H 13250 7750 50  0001 C CNN
	1    13250 7750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D66190E
P 14150 6750
AR Path="/601BB1C4/6D66190E" Ref="#PWR?"  Part="1" 
AR Path="/6D66190E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14150 6600 50  0001 C CNN
F 1 "+5V" H 14165 6923 50  0000 C CNN
F 2 "" H 14150 6750 50  0001 C CNN
F 3 "" H 14150 6750 50  0001 C CNN
	1    14150 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D661914
P 13250 6750
AR Path="/601BB1C4/6D661914" Ref="#PWR?"  Part="1" 
AR Path="/6D661914" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13250 6600 50  0001 C CNN
F 1 "+5V" H 13265 6923 50  0000 C CNN
F 2 "" H 13250 6750 50  0001 C CNN
F 3 "" H 13250 6750 50  0001 C CNN
	1    13250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D66191A
P 16150 16200
AR Path="/601BB1C4/6D66191A" Ref="#PWR?"  Part="1" 
AR Path="/6D66191A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16150 15950 50  0001 C CNN
F 1 "GND" H 16155 16027 50  0000 C CNN
F 2 "" H 16150 16200 50  0001 C CNN
F 3 "" H 16150 16200 50  0001 C CNN
	1    16150 16200
	1    0    0    -1  
$EndComp
Text GLabel 19350 11800 2    75   Output ~ 0
ctrlMemInstrImmToRamAddr
Text GLabel 19350 11400 2    75   Output ~ 0
~ctrlMemMar0WE~
Text GLabel 19350 8150 2    75   Output ~ 0
~ctrlAluOE~
$Comp
L power:+5V #PWR?
U 1 1 6D661931
P 18700 13500
AR Path="/601BB1C4/6D661931" Ref="#PWR?"  Part="1" 
AR Path="/6D661931" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 13350 50  0001 C CNN
F 1 "+5V" H 18650 13750 50  0000 C CNN
F 2 "" H 18700 13500 50  0001 C CNN
F 3 "" H 18700 13500 50  0001 C CNN
	1    18700 13500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661937
P 18700 15700
AR Path="/601BB1C4/6D661937" Ref="#PWR?"  Part="1" 
AR Path="/6D661937" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18700 15450 50  0001 C CNN
F 1 "GND" H 18705 15527 50  0000 C CNN
F 2 "" H 18700 15700 50  0001 C CNN
F 3 "" H 18700 15700 50  0001 C CNN
	1    18700 15700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D66193D
P 18150 15450
AR Path="/601BB1C4/6D66193D" Ref="#PWR?"  Part="1" 
AR Path="/6D66193D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 15200 50  0001 C CNN
F 1 "GND" H 18155 15277 50  0000 C CNN
F 2 "" H 18150 15450 50  0001 C CNN
F 3 "" H 18150 15450 50  0001 C CNN
	1    18150 15450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D661943
P 18150 15300
AR Path="/601BB1C4/6D661943" Ref="#PWR?"  Part="1" 
AR Path="/6D661943" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18150 15150 50  0001 C CNN
F 1 "+5V" H 18165 15473 50  0000 C CNN
F 2 "" H 18150 15300 50  0001 C CNN
F 3 "" H 18150 15300 50  0001 C CNN
	1    18150 15300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18300 15300 18150 15300
Wire Wire Line
	18300 15500 18250 15500
Wire Wire Line
	18250 15500 18250 15450
Wire Wire Line
	18250 15450 18150 15450
Wire Wire Line
	18300 15400 18250 15400
Wire Wire Line
	18250 15400 18250 15450
Connection ~ 18250 15450
Text Notes 18700 9100 0    50   ~ 0
micro0
Text Notes 18600 11650 0    50   ~ 0
micro1
Text Notes 18550 14250 0    50   ~ 0
micro2
Text GLabel 19350 12000 2    75   Output ~ 0
~ctrlMemRamWE~
Text GLabel 19350 13350 2    75   Output ~ 0
~ctrlMemRamOE~
Text Label 17000 10700 0    75   ~ 0
a14
Text Label 17000 10600 0    75   ~ 0
a13
Text GLabel 15000 11200 0    75   Input ~ 0
flagOverflow
Text GLabel 15000 11050 0    75   Input ~ 0
flagCarry
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D661962
P 18700 9200
AR Path="/601BB1C4/6D661962" Ref="U?"  Part="1" 
AR Path="/6D661962" Ref="U?"  Part="1" 
F 0 "U?" H 18700 10481 50  0000 C CNN
F 1 "28C256" H 18700 10390 50  0000 C CNN
F 2 "" H 18700 9200 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 18700 9200 50  0001 C CNN
	1    18700 9200
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D66196A
P 18700 11850
AR Path="/601BB1C4/6D66196A" Ref="U?"  Part="1" 
AR Path="/6D66196A" Ref="U?"  Part="1" 
F 0 "U?" H 18700 13131 50  0000 C CNN
F 1 "28C256" H 18700 13040 50  0000 C CNN
F 2 "" H 18700 11850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 18700 11850 50  0001 C CNN
	1    18700 11850
	1    0    0    -1  
$EndComp
Text Label 18050 12250 2    75   ~ 0
a13
Text Label 18050 12350 2    75   ~ 0
a14
$Comp
L Memory_EEPROM:28C256 U?
U 1 1 6D661972
P 18700 14600
AR Path="/601BB1C4/6D661972" Ref="U?"  Part="1" 
AR Path="/6D661972" Ref="U?"  Part="1" 
F 0 "U?" H 18700 15881 50  0000 C CNN
F 1 "28C256" H 18700 15790 50  0000 C CNN
F 2 "" H 18700 14600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 18700 14600 50  0001 C CNN
	1    18700 14600
	1    0    0    -1  
$EndComp
Text GLabel 19350 13550 2    75   Output ~ 0
~ctrlMemPCEn~
$Comp
L EDiCPoster-rescue:74AS825-74xx U?
U 1 1 6D66197C
P 16450 10500
AR Path="/601B5CAE/6D66197C" Ref="U?"  Part="1" 
AR Path="/600C5001/6D66197C" Ref="U?"  Part="1" 
AR Path="/6D66197C" Ref="U?"  Part="1" 
AR Path="/601BB1C4/6D66197C" Ref="U?"  Part="1" 
F 0 "U?" H 16450 11381 50  0000 C CNN
F 1 "74AS825" H 16450 11290 50  0000 C CNN
F 2 "" H 16450 10500 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 16450 10500 50  0001 C CNN
	1    16450 10500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D661982
P 17050 11100
AR Path="/601BB1C4/6D661982" Ref="#PWR?"  Part="1" 
AR Path="/6D661982" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 10850 50  0001 C CNN
F 1 "GND" H 17055 10927 50  0000 C CNN
F 2 "" H 17050 11100 50  0001 C CNN
F 3 "" H 17050 11100 50  0001 C CNN
	1    17050 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 11100 16950 11100
Wire Wire Line
	16950 10900 17050 10900
Wire Wire Line
	17050 10900 17050 11000
Connection ~ 17050 11100
Wire Wire Line
	16950 11000 17050 11000
Connection ~ 17050 11000
Wire Wire Line
	17050 11000 17050 11100
Text GLabel 19350 14150 2    75   Output ~ 0
~ctrlInstrFinished~
Wire Wire Line
	15600 12000 15900 12000
Wire Wire Line
	15900 12000 15900 11100
Wire Wire Line
	15900 11100 15950 11100
Text GLabel 14100 11800 0    75   Input ~ 0
~ctrlInstrFinished~
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 6D661995
P 15150 13400
AR Path="/600C5001/6D661995" Ref="U?"  Part="1" 
AR Path="/601B5CAE/6D661995" Ref="U?"  Part="1" 
AR Path="/61492876/6D661995" Ref="U?"  Part="1" 
AR Path="/601BB1C4/6D661995" Ref="U?"  Part="1" 
AR Path="/6D661995" Ref="U?"  Part="1" 
F 0 "U?" H 14850 14381 50  0000 C CNN
F 1 "74ABT540" H 14850 14290 50  0000 C CNN
F 2 "" H 15350 12975 50  0001 C CNN
F 3 "" H 15350 12975 50  0001 C CNN
	1    15150 13400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D66199B
P 14250 13900
AR Path="/600C5001/6D66199B" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D66199B" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D66199B" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D66199B" Ref="#PWR?"  Part="1" 
AR Path="/6D66199B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14250 13650 50  0001 C CNN
F 1 "GND" H 14255 13727 50  0000 C CNN
F 2 "" H 14250 13900 50  0001 C CNN
F 3 "" H 14250 13900 50  0001 C CNN
	1    14250 13900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 13900 14350 13900
Wire Wire Line
	14350 13800 14250 13800
Wire Wire Line
	14250 13800 14250 13900
Connection ~ 14250 13900
$Comp
L power:GND #PWR?
U 1 1 6D6619A5
P 14850 14200
AR Path="/600C5001/6D6619A5" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D6619A5" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D6619A5" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D6619A5" Ref="#PWR?"  Part="1" 
AR Path="/6D6619A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14850 13950 50  0001 C CNN
F 1 "GND" H 14855 14027 50  0000 C CNN
F 2 "" H 14850 14200 50  0001 C CNN
F 3 "" H 14850 14200 50  0001 C CNN
	1    14850 14200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D6619AB
P 14850 12600
AR Path="/600C5001/6D6619AB" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D6619AB" Ref="#PWR?"  Part="1" 
AR Path="/61492876/6D6619AB" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D6619AB" Ref="#PWR?"  Part="1" 
AR Path="/6D6619AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14850 12450 50  0001 C CNN
F 1 "+5V" H 14850 12850 50  0000 C CNN
F 2 "" H 14850 12600 50  0001 C CNN
F 3 "" H 14850 12600 50  0001 C CNN
	1    14850 12600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 6D6619B1
P 15650 12900
AR Path="/600C5001/6D6619B1" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619B1" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619B1" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619B1" Ref="D?"  Part="1" 
AR Path="/6D6619B1" Ref="D?"  Part="1" 
F 0 "D?" H 15450 12950 50  0000 C CNN
F 1 "LED_Small" H 15900 12950 50  0000 C CNN
F 2 "" V 15650 12900 50  0001 C CNN
F 3 "~" V 15650 12900 50  0001 C CNN
	1    15650 12900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 12900 15350 12900
$Comp
L Device:R_Network08 RN?
U 1 1 6D6619B8
P 16350 13300
AR Path="/61492876/6D6619B8" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/6D6619B8" Ref="RN?"  Part="1" 
AR Path="/601BB1C4/6D6619B8" Ref="RN?"  Part="1" 
AR Path="/6D6619B8" Ref="RN?"  Part="1" 
F 0 "RN?" H 16738 13346 50  0000 L CNN
F 1 "220" H 16738 13255 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 16825 13300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 16350 13300 50  0001 C CNN
	1    16350 13300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D6619BE
P 16650 12800
AR Path="/61492876/6D6619BE" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/6D6619BE" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/6D6619BE" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/6D6619BE" Ref="#PWR?"  Part="1" 
AR Path="/6D6619BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16650 12650 50  0001 C CNN
F 1 "+5V" H 16665 12973 50  0000 C CNN
F 2 "" H 16650 12800 50  0001 C CNN
F 3 "" H 16650 12800 50  0001 C CNN
	1    16650 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	16650 12800 16650 12900
Wire Wire Line
	16650 12900 16550 12900
Wire Wire Line
	16150 12900 15750 12900
$Comp
L Device:LED_Small D?
U 1 1 6D6619C7
P 15650 13000
AR Path="/600C5001/6D6619C7" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619C7" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619C7" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619C7" Ref="D?"  Part="1" 
AR Path="/6D6619C7" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13050 50  0000 C CNN
F 1 "LED_Small" H 15900 13050 50  0000 C CNN
F 2 "" V 15650 13000 50  0001 C CNN
F 3 "~" V 15650 13000 50  0001 C CNN
	1    15650 13000
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13000 15350 13000
Wire Wire Line
	16150 13000 15750 13000
$Comp
L Device:LED_Small D?
U 1 1 6D6619CF
P 15650 13100
AR Path="/600C5001/6D6619CF" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619CF" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619CF" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619CF" Ref="D?"  Part="1" 
AR Path="/6D6619CF" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13150 50  0000 C CNN
F 1 "LED_Small" H 15900 13150 50  0000 C CNN
F 2 "" V 15650 13100 50  0001 C CNN
F 3 "~" V 15650 13100 50  0001 C CNN
	1    15650 13100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13100 15350 13100
Wire Wire Line
	16150 13100 15750 13100
$Comp
L Device:LED_Small D?
U 1 1 6D6619D7
P 15650 13200
AR Path="/600C5001/6D6619D7" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619D7" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619D7" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619D7" Ref="D?"  Part="1" 
AR Path="/6D6619D7" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13250 50  0000 C CNN
F 1 "LED_Small" H 15900 13250 50  0000 C CNN
F 2 "" V 15650 13200 50  0001 C CNN
F 3 "~" V 15650 13200 50  0001 C CNN
	1    15650 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13200 15350 13200
Wire Wire Line
	16150 13200 15750 13200
$Comp
L Device:LED_Small D?
U 1 1 6D6619DF
P 15650 13300
AR Path="/600C5001/6D6619DF" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619DF" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619DF" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619DF" Ref="D?"  Part="1" 
AR Path="/6D6619DF" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13350 50  0000 C CNN
F 1 "LED_Small" H 15900 13350 50  0000 C CNN
F 2 "" V 15650 13300 50  0001 C CNN
F 3 "~" V 15650 13300 50  0001 C CNN
	1    15650 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13300 15350 13300
Wire Wire Line
	16150 13300 15750 13300
$Comp
L Device:LED_Small D?
U 1 1 6D6619E7
P 15650 13400
AR Path="/600C5001/6D6619E7" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619E7" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619E7" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619E7" Ref="D?"  Part="1" 
AR Path="/6D6619E7" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13450 50  0000 C CNN
F 1 "LED_Small" H 15900 13450 50  0000 C CNN
F 2 "" V 15650 13400 50  0001 C CNN
F 3 "~" V 15650 13400 50  0001 C CNN
	1    15650 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13400 15350 13400
Wire Wire Line
	16150 13400 15750 13400
$Comp
L Device:LED_Small D?
U 1 1 6D6619EF
P 15650 13500
AR Path="/600C5001/6D6619EF" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619EF" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619EF" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619EF" Ref="D?"  Part="1" 
AR Path="/6D6619EF" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13550 50  0000 C CNN
F 1 "LED_Small" H 15900 13550 50  0000 C CNN
F 2 "" V 15650 13500 50  0001 C CNN
F 3 "~" V 15650 13500 50  0001 C CNN
	1    15650 13500
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13500 15350 13500
Wire Wire Line
	16150 13500 15750 13500
$Comp
L Device:LED_Small D?
U 1 1 6D6619F7
P 15650 13600
AR Path="/600C5001/6D6619F7" Ref="D?"  Part="1" 
AR Path="/601B5CAE/6D6619F7" Ref="D?"  Part="1" 
AR Path="/61492876/6D6619F7" Ref="D?"  Part="1" 
AR Path="/601BB1C4/6D6619F7" Ref="D?"  Part="1" 
AR Path="/6D6619F7" Ref="D?"  Part="1" 
F 0 "D?" H 15450 13650 50  0000 C CNN
F 1 "LED_Small" H 15900 13650 50  0000 C CNN
F 2 "" V 15650 13600 50  0001 C CNN
F 3 "~" V 15650 13600 50  0001 C CNN
	1    15650 13600
	1    0    0    -1  
$EndComp
Wire Wire Line
	15550 13600 15350 13600
Wire Wire Line
	16150 13600 15750 13600
Text GLabel 19350 13950 2    75   Output ~ 0
~ctrlMemPCToRam~
Text GLabel 19350 13750 2    75   Output ~ 0
ctrlMemPCFromImm
NoConn ~ 19350 14350
Text GLabel 15750 11350 0    75   Input ~ 0
halt
Text Label 13300 10200 0    75   ~ 0
a0
Text Label 13300 10400 0    75   ~ 0
a1
Wire Wire Line
	14350 10300 14550 10300
$Comp
L 74xx:74LS08 U?
U 4 1 6D661A1A
P 14050 10300
AR Path="/601BB1C4/6D661A1A" Ref="U?"  Part="4" 
AR Path="/6D661A1A" Ref="U?"  Part="4" 
F 0 "U?" H 14050 10625 50  0000 C CNN
F 1 "74LS08" H 14050 10534 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14050 10300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 14050 10300 50  0001 C CNN
	4    14050 10300
	1    0    0    -1  
$EndComp
Text Label 13300 9900 0    75   ~ 0
a2
$Comp
L 74xx:74LS86 U?
U 3 1 6D661A22
P 14850 10200
AR Path="/601BB1C4/6D661A22" Ref="U?"  Part="3" 
AR Path="/6D661A22" Ref="U?"  Part="3" 
F 0 "U?" H 14850 10525 50  0000 C CNN
F 1 "74LS86" H 14850 10434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14850 10200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 14850 10200 50  0001 C CNN
	3    14850 10200
	1    0    0    -1  
$EndComp
Text Label 13300 9750 0    75   ~ 0
a1
Text Label 13300 9550 0    75   ~ 0
a0
$Comp
L 74xx:74LS86 U?
U 4 1 6D661A2A
P 14850 9650
AR Path="/601BB1C4/6D661A2A" Ref="U?"  Part="4" 
AR Path="/6D661A2A" Ref="U?"  Part="4" 
F 0 "U?" H 14850 9975 50  0000 C CNN
F 1 "74LS86" H 14850 9884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 14850 9650 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 14850 9650 50  0001 C CNN
	4    14850 9650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 6D661A31
P 14500 11900
AR Path="/601BB1C4/6D661A31" Ref="U?"  Part="1" 
AR Path="/6D661A31" Ref="U?"  Part="1" 
F 0 "U?" H 14500 12225 50  0000 C CNN
F 1 "74LS32" H 14500 12134 50  0000 C CNN
F 2 "" H 14500 11900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 14500 11900 50  0001 C CNN
	1    14500 11900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 11900 15000 11900
Wire Wire Line
	14100 11800 14200 11800
Text GLabel 14000 12000 0    75   Input ~ 0
halt
Wire Wire Line
	14000 12000 14200 12000
NoConn ~ 45500 -5750
$Comp
L power:GND #PWR?
U 1 1 6D9D8EC0
P 45000 -4150
AR Path="/608A8AE7/6D9D8EC0" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8EC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45000 -4400 50  0001 C CNN
F 1 "GND" H 45005 -4323 50  0000 C CNN
F 2 "" H 45000 -4150 50  0001 C CNN
F 3 "" H 45000 -4150 50  0001 C CNN
	1    45000 -4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8EC6
P 45000 -6050
AR Path="/608A8AE7/6D9D8EC6" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8EC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 45000 -6200 50  0001 C CNN
F 1 "+5V" H 45000 -5800 50  0000 C CNN
F 2 "" H 45000 -6050 50  0001 C CNN
F 3 "" H 45000 -6050 50  0001 C CNN
	1    45000 -6050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS151 U?
U 1 1 6D9D8ECC
P 45000 -5150
AR Path="/608A8AE7/6D9D8ECC" Ref="U?"  Part="1" 
AR Path="/6D9D8ECC" Ref="U?"  Part="1" 
F 0 "U?" H 45000 -4069 50  0000 C CNN
F 1 "74LS151" H 45000 -4160 50  0000 C CNN
F 2 "" H 45000 -5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 45000 -5150 50  0001 C CNN
	1    45000 -5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8ED2
P 44500 -4450
AR Path="/608A8AE7/6D9D8ED2" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8ED2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 44500 -4700 50  0001 C CNN
F 1 "GND" H 44505 -4623 50  0000 C CNN
F 2 "" H 44500 -4450 50  0001 C CNN
F 3 "" H 44500 -4450 50  0001 C CNN
	1    44500 -4450
	1    0    0    -1  
$EndComp
Text GLabel 45650 -5650 2    75   Output ~ 0
halt
Wire Wire Line
	45650 -5650 45500 -5650
Wire Wire Line
	44500 -4450 44500 -4650
Connection ~ 44500 -4450
Wire Wire Line
	44400 -5350 44400 -5250
Wire Wire Line
	44400 -5050 44500 -5050
Wire Wire Line
	44400 -5350 44500 -5350
Wire Wire Line
	44500 -5150 44400 -5150
Connection ~ 44400 -5150
Wire Wire Line
	44400 -5150 44400 -5050
Wire Wire Line
	44400 -5250 44500 -5250
Connection ~ 44400 -5250
Wire Wire Line
	44400 -5250 44400 -5150
Wire Wire Line
	44150 -5150 44400 -5150
$Comp
L power:+5V #PWR?
U 1 1 6D9D8EE6
P 44150 -5150
AR Path="/608A8AE7/6D9D8EE6" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8EE6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 44150 -5300 50  0001 C CNN
F 1 "+5V" H 44165 -4977 50  0000 C CNN
F 2 "" H 44150 -5150 50  0001 C CNN
F 3 "" H 44150 -5150 50  0001 C CNN
	1    44150 -5150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS273 U?
U 1 1 6D9D8EEC
P 38050 -1650
AR Path="/608A8AE7/6D9D8EEC" Ref="U?"  Part="1" 
AR Path="/6D9D8EEC" Ref="U?"  Part="1" 
F 0 "U?" H 38050 -669 50  0000 C CNN
F 1 "74LS273" H 38050 -760 50  0000 C CNN
F 2 "" H 38050 -1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS273" H 38050 -1650 50  0001 C CNN
	1    38050 -1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8EF2
P 38050 -850
AR Path="/608A8AE7/6D9D8EF2" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8EF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 38050 -1100 50  0001 C CNN
F 1 "GND" H 38055 -1023 50  0000 C CNN
F 2 "" H 38050 -850 50  0001 C CNN
F 3 "" H 38050 -850 50  0001 C CNN
	1    38050 -850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8EF8
P 38050 -2450
AR Path="/608A8AE7/6D9D8EF8" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8EF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 38050 -2600 50  0001 C CNN
F 1 "+5V" H 38050 -2200 50  0000 C CNN
F 2 "" H 38050 -2450 50  0001 C CNN
F 3 "" H 38050 -2450 50  0001 C CNN
	1    38050 -2450
	1    0    0    -1  
$EndComp
Text GLabel 37550 -1250 0    75   Input ~ 0
clk
Text GLabel 37550 -1150 0    75   Input ~ 0
~reset~
Text GLabel 44200 -5750 0    75   Input ~ 0
~breakpointHit~
Wire Wire Line
	44200 -5750 44350 -5750
Wire Wire Line
	44500 -5650 44350 -5650
Wire Wire Line
	44350 -5650 44350 -5750
Connection ~ 44350 -5750
Wire Wire Line
	44350 -5750 44500 -5750
$Comp
L Device:R R?
U 1 1 6D9D8F06
P 33350 -6300
AR Path="/608A8AE7/6D9D8F06" Ref="R?"  Part="1" 
AR Path="/6D9D8F06" Ref="R?"  Part="1" 
F 0 "R?" H 33420 -6254 50  0000 L CNN
F 1 "10k" H 33420 -6345 50  0000 L CNN
F 2 "" V 33280 -6300 50  0001 C CNN
F 3 "~" H 33350 -6300 50  0001 C CNN
	1    33350 -6300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8F0C
P 33350 -6450
AR Path="/608A8AE7/6D9D8F0C" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F0C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -6600 50  0001 C CNN
F 1 "+5V" H 33365 -6277 50  0000 C CNN
F 2 "" H 33350 -6450 50  0001 C CNN
F 3 "" H 33350 -6450 50  0001 C CNN
	1    33350 -6450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 6D9D8F12
P 33350 -5800
AR Path="/608A8AE7/6D9D8F12" Ref="SW?"  Part="1" 
AR Path="/6D9D8F12" Ref="SW?"  Part="1" 
F 0 "SW?" V 33396 -5848 50  0000 R CNN
F 1 "SW_MEC_5G" V 33305 -5848 50  0000 R CNN
F 2 "" H 33350 -5600 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 33350 -5600 50  0001 C CNN
	1    33350 -5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	33350 -6000 33350 -6100
$Comp
L power:GND #PWR?
U 1 1 6D9D8F19
P 33350 -5600
AR Path="/608A8AE7/6D9D8F19" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F19" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -5850 50  0001 C CNN
F 1 "GND" H 33355 -5773 50  0000 C CNN
F 2 "" H 33350 -5600 50  0001 C CNN
F 3 "" H 33350 -5600 50  0001 C CNN
	1    33350 -5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8F1F
P 33700 -6100
AR Path="/608A8AE7/6D9D8F1F" Ref="R?"  Part="1" 
AR Path="/6D9D8F1F" Ref="R?"  Part="1" 
F 0 "R?" V 33493 -6100 50  0000 C CNN
F 1 "220k" V 33584 -6100 50  0000 C CNN
F 2 "" V 33630 -6100 50  0001 C CNN
F 3 "~" H 33700 -6100 50  0001 C CNN
	1    33700 -6100
	0    1    1    0   
$EndComp
Wire Wire Line
	33550 -6100 33350 -6100
Connection ~ 33350 -6100
Wire Wire Line
	33350 -6100 33350 -6150
$Comp
L Device:C C?
U 1 1 6D9D8F28
P 34100 -5800
AR Path="/608A8AE7/6D9D8F28" Ref="C?"  Part="1" 
AR Path="/6D9D8F28" Ref="C?"  Part="1" 
F 0 "C?" H 34215 -5754 50  0000 L CNN
F 1 "100n" H 34215 -5845 50  0000 L CNN
F 2 "" H 34138 -5950 50  0001 C CNN
F 3 "~" H 34100 -5800 50  0001 C CNN
	1    34100 -5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8F2E
P 34100 -5650
AR Path="/608A8AE7/6D9D8F2E" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F2E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 34100 -5900 50  0001 C CNN
F 1 "GND" H 34105 -5823 50  0000 C CNN
F 2 "" H 34100 -5650 50  0001 C CNN
F 3 "" H 34100 -5650 50  0001 C CNN
	1    34100 -5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	33850 -6100 34100 -6100
Wire Wire Line
	34100 -6100 34100 -5950
$Comp
L 74xx:74LS14 U?
U 1 1 6D9D8F36
P 34650 -6100
AR Path="/608A8AE7/6D9D8F36" Ref="U?"  Part="1" 
AR Path="/6D9D8F36" Ref="U?"  Part="1" 
F 0 "U?" H 34650 -5783 50  0000 C CNN
F 1 "74LS14" H 34650 -5874 50  0000 C CNN
F 2 "" H 34650 -6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 34650 -6100 50  0001 C CNN
	1    34650 -6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	34350 -6100 34100 -6100
Connection ~ 34100 -6100
$Comp
L Device:R R?
U 1 1 6D9D8F3E
P 33350 -4850
AR Path="/608A8AE7/6D9D8F3E" Ref="R?"  Part="1" 
AR Path="/6D9D8F3E" Ref="R?"  Part="1" 
F 0 "R?" H 33420 -4804 50  0000 L CNN
F 1 "10k" H 33420 -4895 50  0000 L CNN
F 2 "" V 33280 -4850 50  0001 C CNN
F 3 "~" H 33350 -4850 50  0001 C CNN
	1    33350 -4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8F44
P 33350 -5000
AR Path="/608A8AE7/6D9D8F44" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F44" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -5150 50  0001 C CNN
F 1 "+5V" H 33365 -4827 50  0000 C CNN
F 2 "" H 33350 -5000 50  0001 C CNN
F 3 "" H 33350 -5000 50  0001 C CNN
	1    33350 -5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	33350 -4550 33350 -4650
$Comp
L power:GND #PWR?
U 1 1 6D9D8F4B
P 33350 -4150
AR Path="/608A8AE7/6D9D8F4B" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F4B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -4400 50  0001 C CNN
F 1 "GND" H 33355 -4323 50  0000 C CNN
F 2 "" H 33350 -4150 50  0001 C CNN
F 3 "" H 33350 -4150 50  0001 C CNN
	1    33350 -4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8F51
P 33700 -4650
AR Path="/608A8AE7/6D9D8F51" Ref="R?"  Part="1" 
AR Path="/6D9D8F51" Ref="R?"  Part="1" 
F 0 "R?" V 33493 -4650 50  0000 C CNN
F 1 "220k" V 33584 -4650 50  0000 C CNN
F 2 "" V 33630 -4650 50  0001 C CNN
F 3 "~" H 33700 -4650 50  0001 C CNN
	1    33700 -4650
	0    1    1    0   
$EndComp
Wire Wire Line
	33550 -4650 33350 -4650
Connection ~ 33350 -4650
Wire Wire Line
	33350 -4650 33350 -4700
$Comp
L Device:C C?
U 1 1 6D9D8F5A
P 34100 -4350
AR Path="/608A8AE7/6D9D8F5A" Ref="C?"  Part="1" 
AR Path="/6D9D8F5A" Ref="C?"  Part="1" 
F 0 "C?" H 34215 -4304 50  0000 L CNN
F 1 "100n" H 34215 -4395 50  0000 L CNN
F 2 "" H 34138 -4500 50  0001 C CNN
F 3 "~" H 34100 -4350 50  0001 C CNN
	1    34100 -4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8F60
P 34100 -4200
AR Path="/608A8AE7/6D9D8F60" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F60" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 34100 -4450 50  0001 C CNN
F 1 "GND" H 34105 -4373 50  0000 C CNN
F 2 "" H 34100 -4200 50  0001 C CNN
F 3 "" H 34100 -4200 50  0001 C CNN
	1    34100 -4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	33850 -4650 34100 -4650
Wire Wire Line
	34100 -4650 34100 -4500
$Comp
L 74xx:74LS14 U?
U 2 1 6D9D8F68
P 34650 -4650
AR Path="/608A8AE7/6D9D8F68" Ref="U?"  Part="2" 
AR Path="/6D9D8F68" Ref="U?"  Part="2" 
F 0 "U?" H 34650 -4333 50  0000 C CNN
F 1 "74LS14" H 34650 -4424 50  0000 C CNN
F 2 "" H 34650 -4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 34650 -4650 50  0001 C CNN
	2    34650 -4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	34350 -4650 34100 -4650
Connection ~ 34100 -4650
$Comp
L Switch:SW_SPST SW?
U 1 1 6D9D8F70
P 33350 -4350
AR Path="/608A8AE7/6D9D8F70" Ref="SW?"  Part="1" 
AR Path="/6D9D8F70" Ref="SW?"  Part="1" 
F 0 "SW?" V 33396 -4438 50  0000 R CNN
F 1 "SW_SPST" V 33305 -4438 50  0000 R CNN
F 2 "" H 33350 -4350 50  0001 C CNN
F 3 "~" H 33350 -4350 50  0001 C CNN
	1    33350 -4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8F76
P 33350 -3300
AR Path="/608A8AE7/6D9D8F76" Ref="R?"  Part="1" 
AR Path="/6D9D8F76" Ref="R?"  Part="1" 
F 0 "R?" H 33420 -3254 50  0000 L CNN
F 1 "10k" H 33420 -3345 50  0000 L CNN
F 2 "" V 33280 -3300 50  0001 C CNN
F 3 "~" H 33350 -3300 50  0001 C CNN
	1    33350 -3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8F7C
P 33350 -3450
AR Path="/608A8AE7/6D9D8F7C" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F7C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -3600 50  0001 C CNN
F 1 "+5V" H 33365 -3277 50  0000 C CNN
F 2 "" H 33350 -3450 50  0001 C CNN
F 3 "" H 33350 -3450 50  0001 C CNN
	1    33350 -3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	33350 -3000 33350 -3100
$Comp
L power:GND #PWR?
U 1 1 6D9D8F83
P 33350 -2600
AR Path="/608A8AE7/6D9D8F83" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F83" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33350 -2850 50  0001 C CNN
F 1 "GND" H 33355 -2773 50  0000 C CNN
F 2 "" H 33350 -2600 50  0001 C CNN
F 3 "" H 33350 -2600 50  0001 C CNN
	1    33350 -2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8F89
P 33700 -3100
AR Path="/608A8AE7/6D9D8F89" Ref="R?"  Part="1" 
AR Path="/6D9D8F89" Ref="R?"  Part="1" 
F 0 "R?" V 33493 -3100 50  0000 C CNN
F 1 "220k" V 33584 -3100 50  0000 C CNN
F 2 "" V 33630 -3100 50  0001 C CNN
F 3 "~" H 33700 -3100 50  0001 C CNN
	1    33700 -3100
	0    1    1    0   
$EndComp
Wire Wire Line
	33550 -3100 33350 -3100
Connection ~ 33350 -3100
Wire Wire Line
	33350 -3100 33350 -3150
$Comp
L Device:C C?
U 1 1 6D9D8F92
P 34100 -2800
AR Path="/608A8AE7/6D9D8F92" Ref="C?"  Part="1" 
AR Path="/6D9D8F92" Ref="C?"  Part="1" 
F 0 "C?" H 34215 -2754 50  0000 L CNN
F 1 "100n" H 34215 -2845 50  0000 L CNN
F 2 "" H 34138 -2950 50  0001 C CNN
F 3 "~" H 34100 -2800 50  0001 C CNN
	1    34100 -2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8F98
P 34100 -2650
AR Path="/608A8AE7/6D9D8F98" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8F98" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 34100 -2900 50  0001 C CNN
F 1 "GND" H 34105 -2823 50  0000 C CNN
F 2 "" H 34100 -2650 50  0001 C CNN
F 3 "" H 34100 -2650 50  0001 C CNN
	1    34100 -2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	33850 -3100 34100 -3100
Wire Wire Line
	34100 -3100 34100 -2950
$Comp
L 74xx:74LS14 U?
U 3 1 6D9D8FA0
P 34650 -3100
AR Path="/608A8AE7/6D9D8FA0" Ref="U?"  Part="3" 
AR Path="/6D9D8FA0" Ref="U?"  Part="3" 
F 0 "U?" H 34650 -2783 50  0000 C CNN
F 1 "74LS14" H 34650 -2874 50  0000 C CNN
F 2 "" H 34650 -3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 34650 -3100 50  0001 C CNN
	3    34650 -3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	34350 -3100 34100 -3100
Connection ~ 34100 -3100
$Comp
L Switch:SW_SPST SW?
U 1 1 6D9D8FA8
P 33350 -2800
AR Path="/608A8AE7/6D9D8FA8" Ref="SW?"  Part="1" 
AR Path="/6D9D8FA8" Ref="SW?"  Part="1" 
F 0 "SW?" V 33396 -2888 50  0000 R CNN
F 1 "SW_SPST" V 33305 -2888 50  0000 R CNN
F 2 "" H 33350 -2800 50  0001 C CNN
F 3 "~" H 33350 -2800 50  0001 C CNN
	1    33350 -2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8FAE
P 33300 -1850
AR Path="/608A8AE7/6D9D8FAE" Ref="R?"  Part="1" 
AR Path="/6D9D8FAE" Ref="R?"  Part="1" 
F 0 "R?" H 33370 -1804 50  0000 L CNN
F 1 "10k" H 33370 -1895 50  0000 L CNN
F 2 "" V 33230 -1850 50  0001 C CNN
F 3 "~" H 33300 -1850 50  0001 C CNN
	1    33300 -1850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D8FB4
P 33300 -2000
AR Path="/608A8AE7/6D9D8FB4" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8FB4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33300 -2150 50  0001 C CNN
F 1 "+5V" H 33315 -1827 50  0000 C CNN
F 2 "" H 33300 -2000 50  0001 C CNN
F 3 "" H 33300 -2000 50  0001 C CNN
	1    33300 -2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	33300 -1550 33300 -1650
$Comp
L power:GND #PWR?
U 1 1 6D9D8FBB
P 33300 -1150
AR Path="/608A8AE7/6D9D8FBB" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8FBB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 33300 -1400 50  0001 C CNN
F 1 "GND" H 33305 -1323 50  0000 C CNN
F 2 "" H 33300 -1150 50  0001 C CNN
F 3 "" H 33300 -1150 50  0001 C CNN
	1    33300 -1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6D9D8FC1
P 33650 -1650
AR Path="/608A8AE7/6D9D8FC1" Ref="R?"  Part="1" 
AR Path="/6D9D8FC1" Ref="R?"  Part="1" 
F 0 "R?" V 33443 -1650 50  0000 C CNN
F 1 "220k" V 33534 -1650 50  0000 C CNN
F 2 "" V 33580 -1650 50  0001 C CNN
F 3 "~" H 33650 -1650 50  0001 C CNN
	1    33650 -1650
	0    1    1    0   
$EndComp
Wire Wire Line
	33500 -1650 33300 -1650
Connection ~ 33300 -1650
Wire Wire Line
	33300 -1650 33300 -1700
$Comp
L Device:C C?
U 1 1 6D9D8FCA
P 34050 -1350
AR Path="/608A8AE7/6D9D8FCA" Ref="C?"  Part="1" 
AR Path="/6D9D8FCA" Ref="C?"  Part="1" 
F 0 "C?" H 34165 -1304 50  0000 L CNN
F 1 "100n" H 34165 -1395 50  0000 L CNN
F 2 "" H 34088 -1500 50  0001 C CNN
F 3 "~" H 34050 -1350 50  0001 C CNN
	1    34050 -1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D8FD0
P 34050 -1200
AR Path="/608A8AE7/6D9D8FD0" Ref="#PWR?"  Part="1" 
AR Path="/6D9D8FD0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 34050 -1450 50  0001 C CNN
F 1 "GND" H 34055 -1373 50  0000 C CNN
F 2 "" H 34050 -1200 50  0001 C CNN
F 3 "" H 34050 -1200 50  0001 C CNN
	1    34050 -1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	33800 -1650 34050 -1650
Wire Wire Line
	34050 -1650 34050 -1500
$Comp
L 74xx:74LS14 U?
U 4 1 6D9D8FD8
P 34600 -1650
AR Path="/608A8AE7/6D9D8FD8" Ref="U?"  Part="4" 
AR Path="/6D9D8FD8" Ref="U?"  Part="4" 
F 0 "U?" H 34600 -1333 50  0000 C CNN
F 1 "74LS14" H 34600 -1424 50  0000 C CNN
F 2 "" H 34600 -1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 34600 -1650 50  0001 C CNN
	4    34600 -1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	34300 -1650 34050 -1650
Connection ~ 34050 -1650
$Comp
L Switch:SW_SPST SW?
U 1 1 6D9D8FE0
P 33300 -1350
AR Path="/608A8AE7/6D9D8FE0" Ref="SW?"  Part="1" 
AR Path="/6D9D8FE0" Ref="SW?"  Part="1" 
F 0 "SW?" V 33346 -1438 50  0000 R CNN
F 1 "SW_SPST" V 33255 -1438 50  0000 R CNN
F 2 "" H 33300 -1350 50  0001 C CNN
F 3 "~" H 33300 -1350 50  0001 C CNN
	1    33300 -1350
	0    -1   -1   0   
$EndComp
Text Notes 33700 -6600 0    50   ~ 0
step switch\n(do one step when pressed)
Text Notes 33700 -5000 0    50   ~ 0
Switch Instruction or Cycle\n(Closed: Instruction, Open: Cycle)
Text Notes 33700 -3500 0    50   ~ 0
Switch Step or Run\n(Closed: Step, Open: Run)
Text Notes 33600 -2000 0    50   ~ 0
Switch enable breakpoint\n(Closed: Disable breakpoint, Open: Enable breakpoint)
Text GLabel 35100 -1650 2    75   Output ~ 0
~breakpointEnable~
Wire Wire Line
	35100 -1650 34900 -1650
Text Label 35700 -4650 2    75   ~ 0
i0
Text Label 37450 -2150 2    75   ~ 0
i0
Wire Wire Line
	37450 -2150 37550 -2150
Text Label 37450 -2050 2    75   ~ 0
i1
Wire Wire Line
	37450 -2050 37550 -2050
Text Label 38700 -2150 0    75   ~ 0
i1
Wire Wire Line
	38700 -2150 38550 -2150
Text Label 38700 -2050 0    75   ~ 0
i2
Wire Wire Line
	38700 -2050 38550 -2050
Wire Notes Line
	35700 -4750 35700 -4400
Wire Notes Line
	35700 -4400 36000 -4400
Wire Notes Line
	36000 -4400 36000 -4750
Wire Notes Line
	36000 -4750 35700 -4750
Text Notes 35750 -4600 0    50   ~ 0
D
Text Notes 35900 -4600 0    50   ~ 0
Q
Wire Wire Line
	34950 -4650 35700 -4650
Wire Wire Line
	36000 -4650 36250 -4650
Text Label 36000 -4650 0    75   ~ 0
i1
Text Label 36250 -4650 2    75   ~ 0
i1
Wire Notes Line
	36250 -4750 36250 -4400
Wire Notes Line
	36250 -4400 36550 -4400
Wire Notes Line
	36550 -4400 36550 -4750
Wire Notes Line
	36550 -4750 36250 -4750
Text Notes 36300 -4600 0    50   ~ 0
D
Text Notes 36450 -4600 0    50   ~ 0
Q
Text Label 36550 -4650 0    75   ~ 0
i2
Wire Wire Line
	43550 -4850 44500 -4850
Text Label 35700 -3100 2    75   ~ 0
r0
Wire Notes Line
	35700 -3200 35700 -2850
Wire Notes Line
	35700 -2850 36000 -2850
Wire Notes Line
	36000 -2850 36000 -3200
Wire Notes Line
	36000 -3200 35700 -3200
Text Notes 35750 -3050 0    50   ~ 0
D
Text Notes 35900 -3050 0    50   ~ 0
Q
Wire Wire Line
	34950 -3100 35700 -3100
Wire Wire Line
	36000 -3100 36250 -3100
Text Label 36000 -3100 0    75   ~ 0
r1
Text Label 36250 -3100 2    75   ~ 0
r1
Wire Notes Line
	36250 -3200 36250 -2850
Wire Notes Line
	36250 -2850 36550 -2850
Wire Notes Line
	36550 -2850 36550 -3200
Wire Notes Line
	36550 -3200 36250 -3200
Text Notes 36300 -3050 0    50   ~ 0
D
Text Notes 36450 -3050 0    50   ~ 0
Q
Text Label 36550 -3100 0    75   ~ 0
r2
Text Label 37450 -1950 2    75   ~ 0
r0
Wire Wire Line
	37450 -1950 37550 -1950
Text Label 37450 -1850 2    75   ~ 0
r1
Wire Wire Line
	37450 -1850 37550 -1850
Text Label 38700 -1950 0    75   ~ 0
r1
Wire Wire Line
	38700 -1950 38550 -1950
Text Label 38700 -1850 0    75   ~ 0
r2
Wire Wire Line
	38700 -1850 38550 -1850
Wire Wire Line
	43800 -3100 43800 -4750
Wire Wire Line
	43800 -4750 44500 -4750
Wire Wire Line
	36550 -3100 43800 -3100
Text Label 35200 -6100 2    75   ~ 0
s0
Wire Notes Line
	35200 -6200 35200 -5850
Wire Notes Line
	35200 -5850 35500 -5850
Wire Notes Line
	35500 -5850 35500 -6200
Wire Notes Line
	35500 -6200 35200 -6200
Text Notes 35250 -6050 0    50   ~ 0
D
Text Notes 35400 -6050 0    50   ~ 0
Q
Wire Wire Line
	34950 -6100 35200 -6100
Wire Wire Line
	35500 -6100 35750 -6100
Text Label 35500 -6100 0    75   ~ 0
s1
Text Label 35750 -6100 2    75   ~ 0
s1
Wire Notes Line
	35750 -6200 35750 -5850
Wire Notes Line
	35750 -5850 36050 -5850
Wire Notes Line
	36050 -5850 36050 -6200
Wire Notes Line
	36050 -6200 35750 -6200
Text Notes 35800 -6050 0    50   ~ 0
D
Text Notes 35950 -6050 0    50   ~ 0
Q
Text Label 36050 -6100 0    75   ~ 0
s2
Text Label 36700 -6100 2    75   ~ 0
s2
Wire Notes Line
	36700 -6200 36700 -5850
Wire Notes Line
	36700 -5850 37000 -5850
Wire Notes Line
	37000 -5850 37000 -6200
Wire Notes Line
	37000 -6200 36700 -6200
Text Notes 36750 -6050 0    50   ~ 0
D
Text Notes 36900 -6050 0    50   ~ 0
Q
Text Label 37000 -6100 0    75   ~ 0
s3
Wire Wire Line
	37000 -6100 37200 -6100
Wire Wire Line
	36050 -6100 36400 -6100
$Comp
L 74xx:74LS14 U?
U 5 1 6D9D9040
P 37500 -6100
AR Path="/608A8AE7/6D9D9040" Ref="U?"  Part="5" 
AR Path="/6D9D9040" Ref="U?"  Part="5" 
F 0 "U?" H 37500 -5783 50  0000 C CNN
F 1 "74LS14" H 37500 -5874 50  0000 C CNN
F 2 "" H 37500 -6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 37500 -6100 50  0001 C CNN
	5    37500 -6100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6D9D9046
P 38400 -6200
AR Path="/608A8AE7/6D9D9046" Ref="U?"  Part="1" 
AR Path="/6D9D9046" Ref="U?"  Part="1" 
F 0 "U?" H 38400 -5875 50  0000 C CNN
F 1 "74LS08" H 38400 -5966 50  0000 C CNN
F 2 "" H 38400 -6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 38400 -6200 50  0001 C CNN
	1    38400 -6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	38100 -6100 37800 -6100
Wire Wire Line
	38100 -6300 36400 -6300
Wire Wire Line
	36400 -6300 36400 -6100
Connection ~ 36400 -6100
Wire Wire Line
	36400 -6100 36700 -6100
Wire Wire Line
	38700 -6200 38950 -6200
Wire Wire Line
	43600 -6200 43600 -5550
Wire Wire Line
	43600 -5550 44500 -5550
Wire Wire Line
	36550 -4650 36800 -4650
Wire Wire Line
	36800 -4650 36800 -3350
Wire Wire Line
	36800 -3350 39300 -3350
Wire Wire Line
	43550 -4850 43550 -3350
$Comp
L 74xx:74LS32 U?
U 1 1 6D9D9058
P 39800 -5400
AR Path="/608A8AE7/6D9D9058" Ref="U?"  Part="1" 
AR Path="/6D9D9058" Ref="U?"  Part="1" 
F 0 "U?" H 39800 -5075 50  0000 C CNN
F 1 "74LS32" H 39800 -5166 50  0000 C CNN
F 2 "" H 39800 -5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 39800 -5400 50  0001 C CNN
	1    39800 -5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 2 1 6D9D905E
P 41350 -5200
AR Path="/608A8AE7/6D9D905E" Ref="U?"  Part="2" 
AR Path="/6D9D905E" Ref="U?"  Part="2" 
F 0 "U?" H 41350 -4875 50  0000 C CNN
F 1 "74LS32" H 41350 -4966 50  0000 C CNN
F 2 "" H 41350 -5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 41350 -5200 50  0001 C CNN
	2    41350 -5200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 6D9D9064
P 40600 -5300
AR Path="/608A8AE7/6D9D9064" Ref="U?"  Part="1" 
AR Path="/6D9D9064" Ref="U?"  Part="1" 
F 0 "U?" H 40600 -4975 50  0000 C CNN
F 1 "74LS08" H 40600 -5066 50  0000 C CNN
F 2 "" H 40600 -5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 40600 -5300 50  0001 C CNN
	1    40600 -5300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS14 U?
U 6 1 6D9D906A
P 40400 -4550
AR Path="/608A8AE7/6D9D906A" Ref="U?"  Part="6" 
AR Path="/6D9D906A" Ref="U?"  Part="6" 
F 0 "U?" H 40400 -4233 50  0000 C CNN
F 1 "74LS14" H 40400 -4324 50  0000 C CNN
F 2 "" H 40400 -4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 40400 -4550 50  0001 C CNN
	6    40400 -4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	40100 -5400 40300 -5400
Wire Wire Line
	40900 -5300 41050 -5300
Wire Wire Line
	40700 -4550 40900 -4550
Wire Wire Line
	40900 -4550 40900 -5100
Wire Wire Line
	40900 -5100 41050 -5100
Text GLabel 39700 -4950 0    75   Input ~ 0
~ctrlInstrFinished~
Wire Wire Line
	39700 -4950 40150 -4950
Wire Wire Line
	40150 -4950 40150 -5200
Wire Wire Line
	40150 -5200 40300 -5200
Wire Wire Line
	38950 -6200 38950 -5300
Wire Wire Line
	38950 -5300 39500 -5300
Connection ~ 38950 -6200
Wire Wire Line
	38950 -6200 43600 -6200
Text Label 38700 -1750 0    75   ~ 0
s1
Wire Wire Line
	38700 -1750 38550 -1750
Text Label 38700 -1650 0    75   ~ 0
s2
Wire Wire Line
	38700 -1650 38550 -1650
Text Label 38700 -1550 0    75   ~ 0
s3
Wire Wire Line
	38550 -1550 38700 -1550
Text Label 37450 -1650 2    75   ~ 0
s1
Wire Wire Line
	37450 -1650 37550 -1650
Text Label 37450 -1550 2    75   ~ 0
s2
Wire Wire Line
	37450 -1550 37550 -1550
Text Label 37450 -1450 2    75   ~ 0
s4
Wire Wire Line
	37550 -1450 37450 -1450
Text Label 37450 -1750 2    75   ~ 0
s0
Wire Wire Line
	37450 -1750 37550 -1750
Text Label 38700 -1450 0    75   ~ 0
s5
Wire Wire Line
	38550 -1450 38700 -1450
Text Label 41950 -5200 2    75   ~ 0
s4
Wire Notes Line
	41950 -5300 41950 -4950
Wire Notes Line
	41950 -4950 42250 -4950
Wire Notes Line
	42250 -4950 42250 -5300
Wire Notes Line
	42250 -5300 41950 -5300
Text Notes 42000 -5150 0    50   ~ 0
D
Text Notes 42150 -5150 0    50   ~ 0
Q
Text Label 42250 -5200 0    75   ~ 0
s5
Wire Wire Line
	41650 -5200 41950 -5200
Wire Wire Line
	43600 -5200 43600 -5450
Wire Wire Line
	43600 -5450 44500 -5450
Wire Wire Line
	42250 -5200 42650 -5200
Wire Wire Line
	39300 -3350 39300 -4550
Wire Wire Line
	39300 -4550 40100 -4550
Connection ~ 39300 -3350
Wire Wire Line
	39300 -3350 43550 -3350
$Comp
L 74xx:74LS14 U?
U 7 1 6D9D909D
P 41000 -2050
AR Path="/608A8AE7/6D9D909D" Ref="U?"  Part="7" 
AR Path="/6D9D909D" Ref="U?"  Part="7" 
F 0 "U?" H 41230 -2004 50  0000 L CNN
F 1 "74LS14" H 41230 -2095 50  0000 L CNN
F 2 "" H 41000 -2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS14" H 41000 -2050 50  0001 C CNN
	7    41000 -2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D90A3
P 41000 -1550
AR Path="/608A8AE7/6D9D90A3" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 41000 -1800 50  0001 C CNN
F 1 "GND" H 41005 -1723 50  0000 C CNN
F 2 "" H 41000 -1550 50  0001 C CNN
F 3 "" H 41000 -1550 50  0001 C CNN
	1    41000 -1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D90A9
P 41000 -2550
AR Path="/608A8AE7/6D9D90A9" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 41000 -2700 50  0001 C CNN
F 1 "+5V" H 41000 -2300 50  0000 C CNN
F 2 "" H 41000 -2550 50  0001 C CNN
F 3 "" H 41000 -2550 50  0001 C CNN
	1    41000 -2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	42650 -5200 42650 -5850
Wire Wire Line
	42650 -5850 39250 -5850
Wire Wire Line
	39250 -5850 39250 -5500
Wire Wire Line
	39250 -5500 39500 -5500
Connection ~ 42650 -5200
Wire Wire Line
	42650 -5200 43600 -5200
$Comp
L 74xx:74LS32 U?
U 3 1 6D9D90B5
P 42250 -2550
AR Path="/608A8AE7/6D9D90B5" Ref="U?"  Part="3" 
AR Path="/6D9D90B5" Ref="U?"  Part="3" 
F 0 "U?" H 42250 -2225 50  0000 C CNN
F 1 "74LS32" H 42250 -2316 50  0000 C CNN
F 2 "" H 42250 -2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 42250 -2550 50  0001 C CNN
	3    42250 -2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 4 1 6D9D90BB
P 42250 -2000
AR Path="/608A8AE7/6D9D90BB" Ref="U?"  Part="4" 
AR Path="/6D9D90BB" Ref="U?"  Part="4" 
F 0 "U?" H 42250 -1675 50  0000 C CNN
F 1 "74LS32" H 42250 -1766 50  0000 C CNN
F 2 "" H 42250 -2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 42250 -2000 50  0001 C CNN
	4    42250 -2000
	1    0    0    -1  
$EndComp
NoConn ~ 42550 -2000
NoConn ~ 42550 -2550
$Comp
L 74xx:74LS08 U?
U 3 1 6D9D90C3
P 42250 -1500
AR Path="/608A8AE7/6D9D90C3" Ref="U?"  Part="3" 
AR Path="/6D9D90C3" Ref="U?"  Part="3" 
F 0 "U?" H 42250 -1175 50  0000 C CNN
F 1 "74LS08" H 42250 -1266 50  0000 C CNN
F 2 "" H 42250 -1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 42250 -1500 50  0001 C CNN
	3    42250 -1500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 4 1 6D9D90C9
P 42250 -900
AR Path="/608A8AE7/6D9D90C9" Ref="U?"  Part="4" 
AR Path="/6D9D90C9" Ref="U?"  Part="4" 
F 0 "U?" H 42250 -575 50  0000 C CNN
F 1 "74LS08" H 42250 -666 50  0000 C CNN
F 2 "" H 42250 -900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 42250 -900 50  0001 C CNN
	4    42250 -900
	1    0    0    -1  
$EndComp
Wire Wire Line
	41950 -800 41950 -1000
Connection ~ 41950 -2450
Wire Wire Line
	41950 -2450 41950 -2650
Connection ~ 41950 -2100
Wire Wire Line
	41950 -2100 41950 -2450
Connection ~ 41950 -1900
Wire Wire Line
	41950 -1900 41950 -2100
Connection ~ 41950 -1600
Wire Wire Line
	41950 -1600 41950 -1900
Connection ~ 41950 -1400
Wire Wire Line
	41950 -1400 41950 -1600
Connection ~ 41950 -1000
Wire Wire Line
	41950 -1000 41950 -1400
$Comp
L power:+5V #PWR?
U 1 1 6D9D90DC
P 41750 -2500
AR Path="/608A8AE7/6D9D90DC" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 41750 -2650 50  0001 C CNN
F 1 "+5V" H 41750 -2250 50  0000 C CNN
F 2 "" H 41750 -2500 50  0001 C CNN
F 3 "" H 41750 -2500 50  0001 C CNN
	1    41750 -2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	41750 -2500 41750 -2450
Wire Wire Line
	41750 -2450 41950 -2450
NoConn ~ 42550 -1500
NoConn ~ 42550 -900
$Comp
L 74xx:74LS08 U?
U 5 1 6D9D90E6
P 40200 -2050
AR Path="/608A8AE7/6D9D90E6" Ref="U?"  Part="5" 
AR Path="/6D9D90E6" Ref="U?"  Part="5" 
F 0 "U?" H 40430 -2004 50  0000 L CNN
F 1 "74LS08" H 40430 -2095 50  0000 L CNN
F 2 "" H 40200 -2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 40200 -2050 50  0001 C CNN
	5    40200 -2050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 6D9D90EC
P 39550 -2050
AR Path="/608A8AE7/6D9D90EC" Ref="U?"  Part="5" 
AR Path="/6D9D90EC" Ref="U?"  Part="5" 
F 0 "U?" H 39780 -2004 50  0000 L CNN
F 1 "74LS32" H 39780 -2095 50  0000 L CNN
F 2 "" H 39550 -2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 39550 -2050 50  0001 C CNN
	5    39550 -2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D90F2
P 40200 -2550
AR Path="/608A8AE7/6D9D90F2" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 40200 -2700 50  0001 C CNN
F 1 "+5V" H 40200 -2300 50  0000 C CNN
F 2 "" H 40200 -2550 50  0001 C CNN
F 3 "" H 40200 -2550 50  0001 C CNN
	1    40200 -2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D90F8
P 39500 -2550
AR Path="/608A8AE7/6D9D90F8" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90F8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 39500 -2700 50  0001 C CNN
F 1 "+5V" H 39500 -2300 50  0000 C CNN
F 2 "" H 39500 -2550 50  0001 C CNN
F 3 "" H 39500 -2550 50  0001 C CNN
	1    39500 -2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D90FE
P 39550 -2550
AR Path="/608A8AE7/6D9D90FE" Ref="#PWR?"  Part="1" 
AR Path="/6D9D90FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 39550 -2700 50  0001 C CNN
F 1 "+5V" H 39550 -2300 50  0000 C CNN
F 2 "" H 39550 -2550 50  0001 C CNN
F 3 "" H 39550 -2550 50  0001 C CNN
	1    39550 -2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D9104
P 39550 -1550
AR Path="/608A8AE7/6D9D9104" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9104" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 39550 -1800 50  0001 C CNN
F 1 "GND" H 39555 -1723 50  0000 C CNN
F 2 "" H 39550 -1550 50  0001 C CNN
F 3 "" H 39550 -1550 50  0001 C CNN
	1    39550 -1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D910A
P 40200 -1550
AR Path="/608A8AE7/6D9D910A" Ref="#PWR?"  Part="1" 
AR Path="/6D9D910A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 40200 -1800 50  0001 C CNN
F 1 "GND" H 40205 -1723 50  0000 C CNN
F 2 "" H 40200 -1550 50  0001 C CNN
F 3 "" H 40200 -1550 50  0001 C CNN
	1    40200 -1550
	1    0    0    -1  
$EndComp
$Comp
L EDiCPoster-rescue:ds1813 U?
U 1 1 6D9D9110
P 43400 -300
AR Path="/608A8AE7/6D9D9110" Ref="U?"  Part="1" 
AR Path="/6D9D9110" Ref="U?"  Part="1" 
F 0 "U?" H 43220 -504 50  0000 R CNN
F 1 "ds1813" H 43220 -595 50  0000 R CNN
F 2 "" H 43400 -300 50  0001 C CNN
F 3 "" H 43400 -300 50  0001 C CNN
	1    43400 -300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D9116
P 43450 250
AR Path="/608A8AE7/6D9D9116" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9116" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 43450 0   50  0001 C CNN
F 1 "GND" H 43455 77  50  0000 C CNN
F 2 "" H 43450 250 50  0001 C CNN
F 3 "" H 43450 250 50  0001 C CNN
	1    43450 250 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D911C
P 43450 -350
AR Path="/608A8AE7/6D9D911C" Ref="#PWR?"  Part="1" 
AR Path="/6D9D911C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 43450 -500 50  0001 C CNN
F 1 "+5V" H 43465 -177 50  0000 C CNN
F 2 "" H 43450 -350 50  0001 C CNN
F 3 "" H 43450 -350 50  0001 C CNN
	1    43450 -350
	1    0    0    -1  
$EndComp
Text GLabel 44600 -50  2    100  Output ~ 0
~reset~
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 6D9D9123
P 44100 150
AR Path="/608A8AE7/6D9D9123" Ref="SW?"  Part="1" 
AR Path="/6D9D9123" Ref="SW?"  Part="1" 
F 0 "SW?" V 44146 102 50  0000 R CNN
F 1 "SW_MEC_5G" V 44055 102 50  0000 R CNN
F 2 "" H 44100 350 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 44100 350 50  0001 C CNN
	1    44100 150 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	43750 -50  44100 -50 
Connection ~ 44100 -50 
Wire Wire Line
	44100 -50  44600 -50 
$Comp
L power:GND #PWR?
U 1 1 6D9D912C
P 44100 350
AR Path="/608A8AE7/6D9D912C" Ref="#PWR?"  Part="1" 
AR Path="/6D9D912C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 44100 100 50  0001 C CNN
F 1 "GND" H 44105 177 50  0000 C CNN
F 2 "" H 44100 350 50  0001 C CNN
F 3 "" H 44100 350 50  0001 C CNN
	1    44100 350 
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP14 X?
U 1 1 6D9D9132
P 38150 500
AR Path="/608A8AE7/6D9D9132" Ref="X?"  Part="1" 
AR Path="/6D9D9132" Ref="X?"  Part="1" 
F 0 "X?" H 38494 546 50  0000 L CNN
F 1 "CXO_DIP14" H 38494 455 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-14" H 38600 150 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 38050 500 50  0001 C CNN
	1    38150 500 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D9138
P 38150 200
AR Path="/608A8AE7/6D9D9138" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9138" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 38150 50  50  0001 C CNN
F 1 "+5V" H 38165 373 50  0000 C CNN
F 2 "" H 38150 200 50  0001 C CNN
F 3 "" H 38150 200 50  0001 C CNN
	1    38150 200 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D913E
P 38150 800
AR Path="/608A8AE7/6D9D913E" Ref="#PWR?"  Part="1" 
AR Path="/6D9D913E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 38150 550 50  0001 C CNN
F 1 "GND" H 38155 627 50  0000 C CNN
F 2 "" H 38150 800 50  0001 C CNN
F 3 "" H 38150 800 50  0001 C CNN
	1    38150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D9144
P 37700 500
AR Path="/608A8AE7/6D9D9144" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9144" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 37700 350 50  0001 C CNN
F 1 "+5V" H 37715 673 50  0000 C CNN
F 2 "" H 37700 500 50  0001 C CNN
F 3 "" H 37700 500 50  0001 C CNN
	1    37700 500 
	1    0    0    -1  
$EndComp
Wire Wire Line
	37850 500  37700 500 
Text Notes 43750 -350 0    100  ~ 0
reset switch
$Comp
L EDiCPoster-rescue:74ABT540 U?
U 1 1 6D9D914C
P 40500 750
AR Path="/608A8AE7/6D9D914C" Ref="U?"  Part="1" 
AR Path="/6D9D914C" Ref="U?"  Part="1" 
F 0 "U?" H 40200 1731 50  0000 C CNN
F 1 "74ABT540" H 40200 1640 50  0000 C CNN
F 2 "" H 40700 325 50  0001 C CNN
F 3 "" H 40700 325 50  0001 C CNN
	1    40500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6D9D9152
P 40200 -50
AR Path="/608A8AE7/6D9D9152" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9152" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 40200 -200 50  0001 C CNN
F 1 "+5V" H 40200 250 50  0000 C CNN
F 2 "" H 40200 -50 50  0001 C CNN
F 3 "" H 40200 -50 50  0001 C CNN
	1    40200 -50 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D9158
P 40200 1550
AR Path="/608A8AE7/6D9D9158" Ref="#PWR?"  Part="1" 
AR Path="/6D9D9158" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 40200 1300 50  0001 C CNN
F 1 "GND" H 40205 1377 50  0000 C CNN
F 2 "" H 40200 1550 50  0001 C CNN
F 3 "" H 40200 1550 50  0001 C CNN
	1    40200 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6D9D915E
P 39600 1300
AR Path="/608A8AE7/6D9D915E" Ref="#PWR?"  Part="1" 
AR Path="/6D9D915E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 39600 1050 50  0001 C CNN
F 1 "GND" H 39605 1127 50  0000 C CNN
F 2 "" H 39600 1300 50  0001 C CNN
F 3 "" H 39600 1300 50  0001 C CNN
	1    39600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	39700 1250 39600 1250
Wire Wire Line
	39600 1250 39600 1300
Wire Wire Line
	39600 1250 39600 1150
Wire Wire Line
	39600 1150 39700 1150
Connection ~ 39600 1250
Wire Wire Line
	38450 500  39550 500 
Wire Wire Line
	39550 500  39550 450 
Wire Wire Line
	39550 250  39700 250 
Wire Wire Line
	39550 500  39550 550 
Wire Wire Line
	39550 550  39700 550 
Connection ~ 39550 500 
Wire Wire Line
	39700 450  39550 450 
Connection ~ 39550 450 
Wire Wire Line
	39550 450  39550 350 
Wire Wire Line
	39550 350  39700 350 
Connection ~ 39550 350 
Wire Wire Line
	39550 350  39550 250 
Text GLabel 41100 250  2    100  Output ~ 0
clk
NoConn ~ 40700 350 
NoConn ~ 40700 450 
Text Label 40800 550  0    75   ~ 0
clk'
Wire Wire Line
	40800 550  40700 550 
Text Label 39700 650  2    75   ~ 0
clk'
Text Label 39700 750  2    75   ~ 0
clk'
Text Label 39700 850  2    75   ~ 0
clk'
Text Label 39700 950  2    75   ~ 0
clk'
NoConn ~ 40700 750 
NoConn ~ 40700 850 
NoConn ~ 40700 950 
Text GLabel 41100 650  2    100  Output ~ 0
~clk~
Wire Wire Line
	41100 650  40700 650 
Wire Wire Line
	40700 250  41100 250 
Connection ~ 3150 24800
Text GLabel 8750 21950 0    75   Input ~ 0
ctrlAluOp1
Wire Wire Line
	8750 21950 8750 21850
Wire Bus Line
	4550 10250 6400 10250
Wire Bus Line
	13500 24650 8000 24650
Entry Wire Line
	7500 12400 7400 12500
Entry Wire Line
	7700 12500 7600 12600
Entry Wire Line
	7900 12600 7800 12700
Entry Wire Line
	8100 12700 8000 12800
Entry Wire Line
	7500 13100 7400 13200
Entry Wire Line
	7700 13200 7600 13300
Entry Wire Line
	7900 13300 7800 13400
Entry Wire Line
	8100 13400 8000 13500
Entry Wire Line
	7500 15050 7400 15150
Entry Wire Line
	7700 15150 7600 15250
Wire Wire Line
	7500 15050 8750 15050
Wire Wire Line
	7700 15150 8750 15150
Entry Wire Line
	7900 15250 7800 15350
Wire Wire Line
	7900 15250 8750 15250
Entry Wire Line
	8100 15350 8000 15450
Wire Wire Line
	8100 15350 8750 15350
Entry Wire Line
	7500 15750 7400 15850
Entry Wire Line
	7700 15850 7600 15950
Wire Wire Line
	7500 15750 8750 15750
Wire Wire Line
	7700 15850 8750 15850
Entry Wire Line
	7900 15950 7800 16050
Wire Wire Line
	7900 15950 8750 15950
Entry Wire Line
	8100 16050 8000 16150
Wire Wire Line
	8100 16050 8750 16050
Entry Wire Line
	7500 17700 7400 17800
Entry Wire Line
	7700 17800 7600 17900
Wire Wire Line
	7500 17700 8750 17700
Wire Wire Line
	7700 17800 8750 17800
Entry Wire Line
	7900 17900 7800 18000
Wire Wire Line
	7900 17900 8750 17900
Entry Wire Line
	8100 18000 8000 18100
Wire Wire Line
	8100 18000 8750 18000
Entry Wire Line
	7500 18400 7400 18500
Entry Wire Line
	7700 18500 7600 18600
Wire Wire Line
	7500 18400 8750 18400
Wire Wire Line
	7700 18500 8750 18500
Entry Wire Line
	7900 18600 7800 18700
Wire Wire Line
	7900 18600 8750 18600
Entry Wire Line
	8100 18700 8000 18800
Wire Wire Line
	8100 18700 8750 18700
Entry Wire Line
	7500 20350 7400 20450
Entry Wire Line
	7700 20450 7600 20550
Wire Wire Line
	7500 20350 8750 20350
Wire Wire Line
	7700 20450 8750 20450
Entry Wire Line
	7900 20550 7800 20650
Wire Wire Line
	7900 20550 8750 20550
Entry Wire Line
	8100 20650 8000 20750
Wire Wire Line
	8100 20650 8750 20650
Entry Wire Line
	7500 21050 7400 21150
Entry Wire Line
	7700 21150 7600 21250
Wire Wire Line
	7500 21050 8750 21050
Wire Wire Line
	7700 21150 8750 21150
Entry Wire Line
	7900 21250 7800 21350
Wire Wire Line
	7900 21250 8750 21250
Entry Wire Line
	8100 21350 8000 21450
Wire Wire Line
	8100 21350 8750 21350
Wire Wire Line
	8750 14050 8750 13900
Wire Wire Line
	8750 16700 8750 16550
Wire Wire Line
	8750 19350 8750 19200
Text Notes 7450 11000 1    75   ~ 0
adder
Text Notes 7650 11000 1    75   ~ 0
and
Text Notes 7850 11000 1    75   ~ 0
xor
Text Notes 8050 11000 1    75   ~ 0
shifter
Wire Wire Line
	7900 23300 9000 23300
Connection ~ 12050 23450
Wire Wire Line
	9000 24500 15250 24500
Wire Wire Line
	15450 26250 15450 26100
Wire Wire Line
	15450 26100 15500 26100
Wire Wire Line
	15350 26000 15500 26000
Wire Wire Line
	15350 26250 15450 26250
Wire Wire Line
	15250 25100 15500 25100
Connection ~ 15250 25100
Wire Wire Line
	15250 25100 15250 25200
Connection ~ 15500 26400
$Comp
L 74xx:74LS151 U?
U 1 1 61EF6811
P 16000 25700
AR Path="/608A8AE7/61EF6811" Ref="U?"  Part="1" 
AR Path="/600C5001/61EF6811" Ref="U?"  Part="1" 
AR Path="/61EF6811" Ref="U?"  Part="1" 
F 0 "U?" H 16000 26781 50  0000 C CNN
F 1 "74LS151" H 16000 26690 50  0000 C CNN
F 2 "" H 16000 25700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS151" H 16000 25700 50  0001 C CNN
	1    16000 25700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13750 25400 15500 25400
Wire Wire Line
	17050 24350 17050 24600
Wire Wire Line
	17050 24600 17750 24600
Wire Wire Line
	8800 24350 17050 24350
Wire Wire Line
	14500 21850 14500 24050
Wire Wire Line
	17250 24050 17250 24400
Wire Wire Line
	17250 24400 17750 24400
Wire Wire Line
	14500 24050 17250 24050
Wire Wire Line
	17150 24200 17150 24500
Wire Wire Line
	17150 24500 17750 24500
Wire Wire Line
	12050 24200 17150 24200
Wire Wire Line
	16500 25100 17050 25100
Wire Wire Line
	17050 25100 17050 24700
Wire Wire Line
	17050 24700 17750 24700
Wire Wire Line
	18750 24700 18850 24700
Wire Wire Line
	18850 24700 18850 24800
Wire Wire Line
	18850 24800 19000 24800
Wire Wire Line
	19000 24650 18900 24650
Wire Wire Line
	18900 24650 18900 24600
Wire Wire Line
	18900 24600 18750 24600
Wire Wire Line
	18750 24500 19000 24500
Wire Wire Line
	18750 24400 18900 24400
Wire Wire Line
	18900 24400 18900 24350
Wire Wire Line
	18900 24350 19000 24350
Wire Wire Line
	17450 25400 17750 25400
Wire Wire Line
	15150 9650 15250 9650
Wire Wire Line
	15250 9650 15250 10100
Wire Wire Line
	15250 10100 15950 10100
Wire Wire Line
	15950 10400 15300 10400
Wire Wire Line
	15300 10400 15300 10750
Wire Wire Line
	15300 10750 15000 10750
Wire Wire Line
	15000 10900 15350 10900
Wire Wire Line
	15350 10900 15350 10500
Wire Wire Line
	15350 10500 15950 10500
Wire Wire Line
	15750 11350 15800 11350
Wire Wire Line
	15800 11350 15800 11000
Wire Wire Line
	15800 11000 15950 11000
Wire Wire Line
	15000 11050 15400 11050
Wire Wire Line
	15400 11050 15400 10600
Wire Wire Line
	15400 10600 15950 10600
Wire Wire Line
	15950 10700 15450 10700
Wire Wire Line
	15450 10700 15450 11200
Wire Wire Line
	15450 11200 15000 11200
Wire Wire Line
	16950 10000 17450 10000
Wire Wire Line
	16950 10100 17450 10100
Wire Wire Line
	16950 10200 17450 10200
Wire Wire Line
	16950 10400 17450 10400
Wire Wire Line
	16950 10500 17450 10500
Wire Wire Line
	16950 10600 17450 10600
Wire Wire Line
	16950 10700 17450 10700
Wire Wire Line
	17150 15200 17450 15200
Wire Wire Line
	17150 15300 17450 15300
Wire Wire Line
	17150 15400 17450 15400
Wire Wire Line
	17150 15500 17450 15500
Wire Wire Line
	17150 15600 17450 15600
Wire Wire Line
	17150 15700 17450 15700
Wire Wire Line
	17150 15800 17450 15800
Wire Wire Line
	17150 15900 17450 15900
Entry Wire Line
	17550 15100 17450 15200
Entry Wire Line
	17550 15200 17450 15300
Entry Wire Line
	17550 15300 17450 15400
Entry Wire Line
	17550 15400 17450 15500
Entry Wire Line
	17550 15500 17450 15600
Entry Wire Line
	17550 15600 17450 15700
Entry Wire Line
	17550 15700 17450 15800
Entry Wire Line
	17550 15800 17450 15900
Entry Wire Line
	17450 10000 17550 10100
Entry Wire Line
	17450 10100 17550 10200
Entry Wire Line
	17450 10200 17550 10300
Entry Wire Line
	17450 10400 17550 10500
Entry Wire Line
	17450 10500 17550 10600
Entry Wire Line
	17450 10600 17550 10700
Entry Wire Line
	17450 10700 17550 10800
Entry Wire Line
	17550 10850 17650 10950
Wire Wire Line
	17650 10950 18300 10950
Wire Wire Line
	17650 11050 18300 11050
Wire Wire Line
	17650 11150 18300 11150
Wire Wire Line
	17650 11250 18300 11250
Wire Wire Line
	17650 11350 18300 11350
Wire Wire Line
	17650 11450 18300 11450
Wire Wire Line
	17650 11550 18300 11550
Wire Wire Line
	17650 11650 18300 11650
Wire Wire Line
	17650 11750 18300 11750
Wire Wire Line
	17650 11850 18300 11850
Wire Wire Line
	17650 11950 18300 11950
Wire Wire Line
	17650 12050 18300 12050
Wire Wire Line
	17650 12150 18300 12150
Wire Wire Line
	17650 12250 18300 12250
Wire Wire Line
	17650 12350 18300 12350
Entry Wire Line
	17550 10950 17650 11050
Entry Wire Line
	17550 11050 17650 11150
Entry Wire Line
	17550 11150 17650 11250
Entry Wire Line
	17550 11250 17650 11350
Entry Wire Line
	17550 11350 17650 11450
Entry Wire Line
	17550 11450 17650 11550
Entry Wire Line
	17550 11550 17650 11650
Entry Wire Line
	17550 11650 17650 11750
Entry Wire Line
	17550 11750 17650 11850
Entry Wire Line
	17550 11850 17650 11950
Entry Wire Line
	17550 11950 17650 12050
Entry Wire Line
	17550 12050 17650 12150
Entry Wire Line
	17550 12150 17650 12250
Entry Wire Line
	17550 12250 17650 12350
Text Label 18050 8600 2    75   ~ 0
a3
Text Label 18050 8700 2    75   ~ 0
a4
Text Label 18050 8800 2    75   ~ 0
a5
Text Label 18050 8900 2    75   ~ 0
a6
Text Label 18050 9000 2    75   ~ 0
a7
Text Label 18050 9100 2    75   ~ 0
a8
Text Label 18050 9200 2    75   ~ 0
a9
Text Label 18050 9300 2    75   ~ 0
a10
Text Label 18050 9400 2    75   ~ 0
a11
Text Label 18050 9500 2    75   ~ 0
a12
Text Label 18050 8300 2    75   ~ 0
a0
Text Label 18050 8400 2    75   ~ 0
a1
Text Label 18050 8500 2    75   ~ 0
a2
Text Label 18050 9600 2    75   ~ 0
a13
Text Label 18050 9700 2    75   ~ 0
a14
Entry Wire Line
	17550 8200 17650 8300
Wire Wire Line
	17650 8300 18300 8300
Wire Wire Line
	17650 8400 18300 8400
Wire Wire Line
	17650 8500 18300 8500
Wire Wire Line
	17650 8600 18300 8600
Wire Wire Line
	17650 8700 18300 8700
Wire Wire Line
	17650 8800 18300 8800
Wire Wire Line
	17650 8900 18300 8900
Wire Wire Line
	17650 9000 18300 9000
Wire Wire Line
	17650 9100 18300 9100
Wire Wire Line
	17650 9200 18300 9200
Wire Wire Line
	17650 9300 18300 9300
Wire Wire Line
	17650 9400 18300 9400
Wire Wire Line
	17650 9500 18300 9500
Wire Wire Line
	17650 9600 18300 9600
Wire Wire Line
	17650 9700 18300 9700
Entry Wire Line
	17550 8300 17650 8400
Entry Wire Line
	17550 8400 17650 8500
Entry Wire Line
	17550 8500 17650 8600
Entry Wire Line
	17550 8600 17650 8700
Entry Wire Line
	17550 8700 17650 8800
Entry Wire Line
	17550 8800 17650 8900
Entry Wire Line
	17550 8900 17650 9000
Entry Wire Line
	17550 9000 17650 9100
Entry Wire Line
	17550 9100 17650 9200
Entry Wire Line
	17550 9200 17650 9300
Entry Wire Line
	17550 9300 17650 9400
Entry Wire Line
	17550 9400 17650 9500
Entry Wire Line
	17550 9500 17650 9600
Entry Wire Line
	17550 9600 17650 9700
Text Label 18050 14000 2    75   ~ 0
a3
Text Label 18050 14100 2    75   ~ 0
a4
Text Label 18050 14200 2    75   ~ 0
a5
Text Label 18050 14300 2    75   ~ 0
a6
Text Label 18050 14400 2    75   ~ 0
a7
Text Label 18050 14500 2    75   ~ 0
a8
Text Label 18050 14600 2    75   ~ 0
a9
Text Label 18050 14700 2    75   ~ 0
a10
Text Label 18050 14800 2    75   ~ 0
a11
Text Label 18050 14900 2    75   ~ 0
a12
Text Label 18050 13700 2    75   ~ 0
a0
Text Label 18050 13800 2    75   ~ 0
a1
Text Label 18050 13900 2    75   ~ 0
a2
Text Label 18050 15000 2    75   ~ 0
a13
Text Label 18050 15100 2    75   ~ 0
a14
Entry Wire Line
	17550 13600 17650 13700
Wire Wire Line
	17650 13700 18300 13700
Wire Wire Line
	17650 13800 18300 13800
Wire Wire Line
	17650 13900 18300 13900
Wire Wire Line
	17650 14000 18300 14000
Wire Wire Line
	17650 14100 18300 14100
Wire Wire Line
	17650 14200 18300 14200
Wire Wire Line
	17650 14300 18300 14300
Wire Wire Line
	17650 14400 18300 14400
Wire Wire Line
	17650 14500 18300 14500
Wire Wire Line
	17650 14600 18300 14600
Wire Wire Line
	17650 14700 18300 14700
Wire Wire Line
	17650 14800 18300 14800
Wire Wire Line
	17650 14900 18300 14900
Wire Wire Line
	17650 15000 18300 15000
Wire Wire Line
	17650 15100 18300 15100
Entry Wire Line
	17550 13700 17650 13800
Entry Wire Line
	17550 13800 17650 13900
Entry Wire Line
	17550 13900 17650 14000
Entry Wire Line
	17550 14000 17650 14100
Entry Wire Line
	17550 14100 17650 14200
Entry Wire Line
	17550 14200 17650 14300
Entry Wire Line
	17550 14300 17650 14400
Entry Wire Line
	17550 14400 17650 14500
Entry Wire Line
	17550 14500 17650 14600
Entry Wire Line
	17550 14600 17650 14700
Entry Wire Line
	17550 14700 17650 14800
Entry Wire Line
	17550 14800 17650 14900
Entry Wire Line
	17550 14900 17650 15000
Entry Wire Line
	17550 15000 17650 15100
Entry Wire Line
	17550 15900 17650 16000
Wire Wire Line
	17650 16000 19350 16000
Wire Wire Line
	17650 16150 19350 16150
Wire Wire Line
	17650 16300 19350 16300
Entry Wire Line
	17550 16050 17650 16150
Entry Wire Line
	17550 16200 17650 16300
Wire Wire Line
	19100 8300 19150 8300
Wire Wire Line
	19150 8300 19150 7950
Wire Wire Line
	19150 7950 19350 7950
Wire Wire Line
	19350 8150 19200 8150
Wire Wire Line
	19200 8150 19200 8400
Wire Wire Line
	19200 8400 19100 8400
Wire Wire Line
	19100 8500 19250 8500
Wire Wire Line
	19250 8500 19250 8350
Wire Wire Line
	19250 8350 19350 8350
Wire Wire Line
	19100 8600 19300 8600
Wire Wire Line
	19300 8600 19300 8550
Wire Wire Line
	19300 8550 19350 8550
Wire Wire Line
	19100 8700 19300 8700
Wire Wire Line
	19300 8700 19300 8750
Wire Wire Line
	19300 8750 19350 8750
Wire Wire Line
	19100 8800 19250 8800
Wire Wire Line
	19250 8800 19250 8950
Wire Wire Line
	19250 8950 19350 8950
Wire Wire Line
	19100 8900 19200 8900
Wire Wire Line
	19200 8900 19200 9150
Wire Wire Line
	19200 9150 19350 9150
Wire Wire Line
	19100 9000 19150 9000
Wire Wire Line
	19150 9000 19150 9350
Wire Wire Line
	19150 9350 19350 9350
Wire Wire Line
	19100 10950 19150 10950
Wire Wire Line
	19150 10950 19150 10600
Wire Wire Line
	19150 10600 19350 10600
Wire Wire Line
	19350 10800 19200 10800
Wire Wire Line
	19200 10800 19200 11050
Wire Wire Line
	19200 11050 19100 11050
Wire Wire Line
	19100 11150 19250 11150
Wire Wire Line
	19250 11150 19250 11000
Wire Wire Line
	19250 11000 19350 11000
Wire Wire Line
	19100 11250 19300 11250
Wire Wire Line
	19300 11250 19300 11200
Wire Wire Line
	19300 11200 19350 11200
Wire Wire Line
	19100 11350 19300 11350
Wire Wire Line
	19300 11350 19300 11400
Wire Wire Line
	19300 11400 19350 11400
Wire Wire Line
	19100 11450 19250 11450
Wire Wire Line
	19250 11450 19250 11600
Wire Wire Line
	19250 11600 19350 11600
Wire Wire Line
	19100 11550 19200 11550
Wire Wire Line
	19200 11550 19200 11800
Wire Wire Line
	19200 11800 19350 11800
Wire Wire Line
	19100 11650 19150 11650
Wire Wire Line
	19150 11650 19150 12000
Wire Wire Line
	19150 12000 19350 12000
Wire Wire Line
	19100 13700 19150 13700
Wire Wire Line
	19150 13700 19150 13350
Wire Wire Line
	19150 13350 19350 13350
Wire Wire Line
	19350 13550 19200 13550
Wire Wire Line
	19200 13550 19200 13800
Wire Wire Line
	19200 13800 19100 13800
Wire Wire Line
	19100 13900 19250 13900
Wire Wire Line
	19250 13900 19250 13750
Wire Wire Line
	19250 13750 19350 13750
Wire Wire Line
	19100 14000 19300 14000
Wire Wire Line
	19300 14000 19300 13950
Wire Wire Line
	19300 13950 19350 13950
Wire Wire Line
	19100 14100 19300 14100
Wire Wire Line
	19300 14100 19300 14150
Wire Wire Line
	19300 14150 19350 14150
Wire Wire Line
	19100 14200 19250 14200
Wire Wire Line
	19250 14200 19250 14350
Wire Wire Line
	19250 14350 19350 14350
Wire Wire Line
	19100 14300 19200 14300
Wire Wire Line
	19200 14300 19200 14550
Wire Wire Line
	19200 14550 19350 14550
Wire Wire Line
	19100 14400 19150 14400
Wire Wire Line
	19150 14400 19150 14750
Wire Wire Line
	19150 14750 19350 14750
NoConn ~ 19350 14550
NoConn ~ 19350 14750
Wire Wire Line
	14350 10100 14550 10100
Wire Wire Line
	14350 9900 14350 10100
Text Label 13300 13100 0    75   ~ 0
a12
Text Label 13300 13200 0    75   ~ 0
a11
Text Label 13300 13600 0    75   ~ 0
a0
Text Label 13300 13500 0    75   ~ 0
a1
Text Label 13300 13400 0    75   ~ 0
a2
Text Label 13300 12900 0    75   ~ 0
a14
Text Label 13300 13000 0    75   ~ 0
a13
Wire Wire Line
	14250 13800 14250 13300
Wire Wire Line
	14250 13300 14350 13300
Connection ~ 14250 13800
Wire Wire Line
	15800 10900 15950 10900
Wire Wire Line
	15150 10200 15950 10200
Wire Wire Line
	13150 10400 13750 10400
Wire Wire Line
	13750 10200 13150 10200
Wire Wire Line
	13150 9900 14350 9900
Wire Wire Line
	13150 9750 14550 9750
Wire Wire Line
	13150 9550 14550 9550
Wire Wire Line
	13150 9050 14550 9050
Entry Wire Line
	13050 10300 13150 10400
Entry Wire Line
	13050 10100 13150 10200
Entry Wire Line
	13050 9800 13150 9900
Entry Wire Line
	13050 9650 13150 9750
Entry Wire Line
	13050 9450 13150 9550
Entry Wire Line
	13050 8950 13150 9050
Wire Bus Line
	17550 8150 13050 8150
Entry Wire Line
	13150 12900 13050 12800
Entry Wire Line
	13150 13000 13050 12900
Entry Wire Line
	13150 13100 13050 13000
Entry Wire Line
	13150 13200 13050 13100
Entry Wire Line
	13150 13400 13050 13300
Entry Wire Line
	13150 13500 13050 13400
Entry Wire Line
	13150 13600 13050 13500
Wire Wire Line
	14350 13600 13150 13600
Wire Wire Line
	14350 13500 13150 13500
Wire Wire Line
	14350 13400 13150 13400
Wire Wire Line
	14350 13200 13150 13200
Wire Wire Line
	14350 13100 13150 13100
Wire Wire Line
	14350 13000 13150 13000
Wire Wire Line
	14350 12900 13150 12900
$Comp
L Device:R R?
U 1 1 C1C36BFB
P 14950 10600
F 0 "R?" V 15150 10600 50  0000 C CNN
F 1 "1k" V 15066 10600 50  0000 C CNN
F 2 "" V 14880 10600 50  0001 C CNN
F 3 "~" H 14950 10600 50  0001 C CNN
	1    14950 10600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15100 10600 15150 10600
Wire Wire Line
	15150 10600 15150 10300
Wire Wire Line
	15150 10300 15950 10300
$Comp
L power:+5V #PWR?
U 1 1 C205FF51
P 14650 10600
F 0 "#PWR?" H 14650 10450 50  0001 C CNN
F 1 "+5V" H 14665 10773 50  0000 C CNN
F 2 "" H 14650 10600 50  0001 C CNN
F 3 "" H 14650 10600 50  0001 C CNN
	1    14650 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 10600 14800 10600
$Comp
L 74xx:74LS08 U?
U 1 1 6D6618DB
P 15650 7900
AR Path="/601BB1C4/6D6618DB" Ref="U?"  Part="1" 
AR Path="/6D6618DB" Ref="U?"  Part="1" 
F 0 "U?" H 15650 8225 50  0000 C CNN
F 1 "74LS08" H 15650 8134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 15650 7900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 15650 7900 50  0001 C CNN
	1    15650 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 C3D4CADB
P 15100 6650
F 0 "R?" V 15300 6650 50  0000 C CNN
F 1 "1k" V 15216 6650 50  0000 C CNN
F 2 "" V 15030 6650 50  0001 C CNN
F 3 "~" H 15100 6650 50  0001 C CNN
	1    15100 6650
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 C3D4CAE1
P 14800 6650
F 0 "#PWR?" H 14800 6500 50  0001 C CNN
F 1 "+5V" H 14815 6823 50  0000 C CNN
F 2 "" H 14800 6650 50  0001 C CNN
F 3 "" H 14800 6650 50  0001 C CNN
	1    14800 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	14800 6650 14950 6650
Wire Wire Line
	15250 6650 15350 6650
$Comp
L Device:R R?
U 1 1 C49B3870
P 15100 6850
F 0 "R?" V 15200 7000 50  0000 C CNN
F 1 "1k" V 15216 6850 50  0000 C CNN
F 2 "" V 15030 6850 50  0001 C CNN
F 3 "~" H 15100 6850 50  0001 C CNN
	1    15100 6850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 6850 14950 6850
Wire Wire Line
	15250 6850 15350 6850
$Comp
L Device:R R?
U 1 1 C4DD7A7F
P 15100 7200
F 0 "R?" V 15300 7200 50  0000 C CNN
F 1 "1k" V 15216 7200 50  0000 C CNN
F 2 "" V 15030 7200 50  0001 C CNN
F 3 "~" H 15100 7200 50  0001 C CNN
	1    15100 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 7200 14950 7200
Wire Wire Line
	15250 7200 15350 7200
$Comp
L Device:R R?
U 1 1 C51FEECD
P 15100 7400
F 0 "R?" V 15200 7550 50  0000 C CNN
F 1 "1k" V 15216 7400 50  0000 C CNN
F 2 "" V 15030 7400 50  0001 C CNN
F 3 "~" H 15100 7400 50  0001 C CNN
	1    15100 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 7400 14950 7400
Wire Wire Line
	15250 7400 15350 7400
$Comp
L Device:R R?
U 1 1 C56299A6
P 15100 7800
F 0 "R?" V 15300 7800 50  0000 C CNN
F 1 "1k" V 15216 7800 50  0000 C CNN
F 2 "" V 15030 7800 50  0001 C CNN
F 3 "~" H 15100 7800 50  0001 C CNN
	1    15100 7800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 7800 14950 7800
Wire Wire Line
	15250 7800 15350 7800
$Comp
L Device:R R?
U 1 1 C5A577B6
P 15100 8000
F 0 "R?" V 15200 8150 50  0000 C CNN
F 1 "1k" V 15216 8000 50  0000 C CNN
F 2 "" V 15030 8000 50  0001 C CNN
F 3 "~" H 15100 8000 50  0001 C CNN
	1    15100 8000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14800 8000 14950 8000
Wire Wire Line
	15250 8000 15350 8000
Wire Wire Line
	14800 8000 14800 7800
Connection ~ 14800 6650
Connection ~ 14800 6850
Wire Wire Line
	14800 6850 14800 6650
Connection ~ 14800 7200
Wire Wire Line
	14800 7200 14800 6850
Connection ~ 14800 7400
Wire Wire Line
	14800 7400 14800 7200
Connection ~ 14800 7800
Wire Wire Line
	14800 7800 14800 7400
Wire Wire Line
	7500 13100 8750 13100
Wire Wire Line
	7700 13200 8750 13200
Wire Wire Line
	7900 13300 8750 13300
Wire Wire Line
	8100 13400 8750 13400
Wire Wire Line
	7500 12400 8750 12400
Wire Wire Line
	7700 12500 8750 12500
Wire Wire Line
	7900 12600 8750 12600
Wire Wire Line
	8100 12700 8750 12700
Wire Wire Line
	6050 31100 7100 31100
Wire Wire Line
	5950 31200 7100 31200
Wire Wire Line
	7100 30900 6250 30900
Wire Wire Line
	6250 30900 6250 26550
Connection ~ 6250 26550
Wire Wire Line
	6150 26850 6150 31000
Wire Wire Line
	6150 31000 7100 31000
Connection ~ 6150 26850
Wire Wire Line
	6750 31500 7100 31500
Wire Wire Line
	6750 31600 7100 31600
Wire Wire Line
	6750 31700 7100 31700
Wire Bus Line
	3150 24800 3150 31800
$Comp
L 74xx:74LS245 U?
U 1 1 6D173279
P 24500 26100
AR Path="/61492876/6D173279" Ref="U?"  Part="1" 
AR Path="/6D173279" Ref="U?"  Part="1" 
F 0 "U?" H 24500 27081 50  0000 C CNN
F 1 "74LS245" H 24500 27150 50  0000 C CNN
F 2 "" H 24500 26100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 24500 26100 50  0001 C CNN
	1    24500 26100
	1    0    0    -1  
$EndComp
Text Notes 50800 20050 0    100  ~ 0
ramAddress:\n7:0 -> instrImm or mar0 (depending on ctrlMemInstrImmToRamAddr)\n15:0 -> instrImm or mar1 or sp (depending on ctrlMemInstrImmToRam and selectStackMem)
Entry Wire Line
	26200 20050 26300 20150
Entry Wire Line
	26200 20150 26300 20250
Entry Wire Line
	26200 20250 26300 20350
Entry Wire Line
	26200 20350 26300 20450
Entry Wire Line
	26200 20450 26300 20550
Entry Wire Line
	26200 20550 26300 20650
Entry Wire Line
	26200 20650 26300 20750
Entry Wire Line
	26200 20750 26300 20850
Wire Wire Line
	24950 20050 26200 20050
Wire Wire Line
	24950 20150 26200 20150
Wire Wire Line
	24950 20250 26200 20250
Wire Wire Line
	24950 20350 26200 20350
Wire Wire Line
	24950 20450 26200 20450
Wire Wire Line
	24950 20550 26200 20550
Wire Wire Line
	24950 20650 26200 20650
Wire Wire Line
	24950 20750 26200 20750
Entry Wire Line
	26200 22300 26300 22400
Entry Wire Line
	26200 22400 26300 22500
Entry Wire Line
	26200 22500 26300 22600
Entry Wire Line
	26200 22600 26300 22700
Entry Wire Line
	26200 22700 26300 22800
Entry Wire Line
	26200 22800 26300 22900
Entry Wire Line
	26200 22900 26300 23000
Entry Wire Line
	26200 23000 26300 23100
Wire Wire Line
	24950 23000 26200 23000
Wire Wire Line
	24950 22900 26200 22900
Wire Wire Line
	24950 22800 26200 22800
Wire Wire Line
	24950 22700 26200 22700
Wire Wire Line
	24950 22600 26200 22600
Wire Wire Line
	24950 22500 26200 22500
Wire Wire Line
	24950 22400 26200 22400
Wire Wire Line
	24950 22300 26200 22300
Wire Wire Line
	22900 22700 22900 23400
Wire Wire Line
	22900 23400 23950 23400
Wire Wire Line
	22900 22700 22900 21150
Wire Wire Line
	22900 21150 23950 21150
Connection ~ 22900 22700
Wire Wire Line
	22750 22200 22750 21050
Wire Wire Line
	22750 21050 23950 21050
Wire Wire Line
	22750 22200 22750 23300
Wire Wire Line
	22750 23300 23950 23300
Connection ~ 22750 22200
Wire Wire Line
	22650 21700 23200 21700
Wire Wire Line
	23200 21350 23950 21350
Wire Wire Line
	23050 21800 23050 23500
Wire Wire Line
	23200 21350 23200 21700
Connection ~ 23200 21700
Wire Wire Line
	23200 21700 23200 23600
Wire Wire Line
	23200 23600 23950 23600
Entry Wire Line
	23450 20750 23350 20850
Entry Wire Line
	23450 20650 23350 20750
Entry Wire Line
	23450 20550 23350 20650
Entry Wire Line
	23450 20450 23350 20550
Entry Wire Line
	23450 20350 23350 20450
Entry Wire Line
	23450 20250 23350 20350
Entry Wire Line
	23450 20150 23350 20250
Entry Wire Line
	23450 20050 23350 20150
Entry Wire Line
	23350 22400 23450 22300
Entry Wire Line
	23350 22500 23450 22400
Entry Wire Line
	23350 22600 23450 22500
Entry Wire Line
	23350 22700 23450 22600
Entry Wire Line
	23350 22800 23450 22700
Entry Wire Line
	23350 22900 23450 22800
Entry Wire Line
	23350 23000 23450 22900
Entry Wire Line
	23350 23100 23450 23000
Wire Wire Line
	23450 20050 23950 20050
Wire Wire Line
	23450 20150 23950 20150
Wire Wire Line
	23450 20250 23950 20250
Wire Wire Line
	23450 20350 23950 20350
Wire Wire Line
	23450 20450 23950 20450
Wire Wire Line
	23450 20550 23950 20550
Wire Wire Line
	23450 20650 23950 20650
Wire Wire Line
	23450 20750 23950 20750
Wire Wire Line
	23450 22300 23950 22300
Wire Wire Line
	23450 22400 23950 22400
Wire Wire Line
	23450 22500 23950 22500
Wire Wire Line
	23450 22600 23950 22600
Wire Wire Line
	23450 22700 23950 22700
Wire Wire Line
	23450 22800 23950 22800
Wire Wire Line
	23450 22900 23950 22900
Wire Wire Line
	23450 23000 23950 23000
Text Label 23550 22500 0    75   ~ 0
pcIn10
Wire Wire Line
	23050 21800 25050 21800
Entry Wire Line
	22550 26300 22650 26200
Entry Wire Line
	22550 26200 22650 26100
Entry Wire Line
	22550 26100 22650 26000
Entry Wire Line
	22550 26000 22650 25900
Entry Wire Line
	22550 25900 22650 25800
Entry Wire Line
	22550 25800 22650 25700
Entry Wire Line
	22550 25700 22650 25600
Entry Wire Line
	22550 25600 22650 25500
Wire Wire Line
	21950 25600 22550 25600
Wire Wire Line
	21950 25700 22550 25700
Wire Wire Line
	21950 25800 22550 25800
Wire Wire Line
	21950 25900 22550 25900
Wire Wire Line
	21950 26000 22550 26000
Wire Wire Line
	21950 26100 22550 26100
Wire Wire Line
	21950 26200 22550 26200
Wire Wire Line
	21950 26300 22550 26300
Entry Wire Line
	25600 26300 25700 26200
Entry Wire Line
	25600 26200 25700 26100
Entry Wire Line
	25600 26100 25700 26000
Entry Wire Line
	25600 26000 25700 25900
Entry Wire Line
	25600 25900 25700 25800
Entry Wire Line
	25600 25800 25700 25700
Entry Wire Line
	25600 25700 25700 25600
Entry Wire Line
	25600 25600 25700 25500
Wire Wire Line
	25000 26300 25600 26300
Wire Wire Line
	25000 26200 25600 26200
Wire Wire Line
	25000 26100 25600 26100
Wire Wire Line
	25000 26000 25600 26000
Wire Wire Line
	25000 25900 25600 25900
Wire Wire Line
	25000 25800 25600 25800
Wire Wire Line
	25000 25700 25600 25700
Wire Wire Line
	25000 25600 25600 25600
Entry Wire Line
	22650 27750 22550 27850
Entry Wire Line
	22650 27850 22550 27950
Entry Wire Line
	22650 27950 22550 28050
Entry Wire Line
	22650 28050 22550 28150
Entry Wire Line
	22650 28150 22550 28250
Entry Wire Line
	22650 28250 22550 28350
Entry Wire Line
	22650 28350 22550 28450
Entry Wire Line
	22650 28450 22550 28550
Wire Wire Line
	21950 27850 22550 27850
Wire Wire Line
	21950 27950 22550 27950
Wire Wire Line
	21950 28050 22550 28050
Wire Wire Line
	21950 28150 22550 28150
Wire Wire Line
	21950 28250 22550 28250
Wire Wire Line
	21950 28350 22550 28350
Wire Wire Line
	21950 28450 22550 28450
Wire Wire Line
	21950 28550 22550 28550
Entry Wire Line
	25600 28450 25700 28350
Entry Wire Line
	25600 28350 25700 28250
Entry Wire Line
	25600 28250 25700 28150
Entry Wire Line
	25600 28150 25700 28050
Entry Wire Line
	25600 28050 25700 27950
Entry Wire Line
	25600 27950 25700 27850
Entry Wire Line
	25600 27850 25700 27750
Entry Wire Line
	25600 27750 25700 27650
Wire Wire Line
	25000 27750 25600 27750
Wire Wire Line
	25000 27850 25600 27850
Wire Wire Line
	25000 27950 25600 27950
Wire Wire Line
	25000 28050 25600 28050
Wire Wire Line
	25000 28150 25600 28150
Wire Wire Line
	25000 28250 25600 28250
Wire Wire Line
	25000 28350 25600 28350
Wire Wire Line
	25000 28450 25600 28450
Wire Bus Line
	22650 24850 23350 24850
Connection ~ 23350 24850
Wire Bus Line
	23350 24850 25700 24850
Entry Wire Line
	30850 23950 30950 24050
Entry Wire Line
	30850 24050 30950 24150
Entry Wire Line
	30850 24150 30950 24250
Entry Wire Line
	30850 24250 30950 24350
Entry Wire Line
	30850 24350 30950 24450
Entry Wire Line
	30850 24450 30950 24550
Entry Wire Line
	30850 24550 30950 24650
Entry Wire Line
	30850 24650 30950 24750
Wire Wire Line
	29950 23950 30850 23950
Wire Wire Line
	29950 24050 30850 24050
Wire Wire Line
	29950 24150 30850 24150
Wire Wire Line
	29950 24250 30850 24250
Wire Wire Line
	29950 24350 30850 24350
Wire Wire Line
	29950 24450 30850 24450
Wire Wire Line
	29950 24550 30850 24550
Wire Wire Line
	29950 24650 30850 24650
Entry Wire Line
	31050 23950 30950 24050
Entry Wire Line
	31050 24050 30950 24150
Entry Wire Line
	31050 24150 30950 24250
Entry Wire Line
	31050 24250 30950 24350
Entry Wire Line
	31050 24350 30950 24450
Entry Wire Line
	31050 24450 30950 24550
Entry Wire Line
	31050 24550 30950 24650
Entry Wire Line
	31050 24650 30950 24750
Wire Wire Line
	32000 23950 31050 23950
Wire Wire Line
	32000 24050 31050 24050
Wire Wire Line
	32000 24150 31050 24150
Wire Wire Line
	32000 24250 31050 24250
Wire Wire Line
	32000 24350 31050 24350
Wire Wire Line
	32000 24450 31050 24450
Wire Wire Line
	32000 24550 31050 24550
Wire Wire Line
	32000 24650 31050 24650
Text Label 31150 23950 0    75   ~ 0
instrImm0
Text Label 31150 24050 0    75   ~ 0
instrImm1
Text Label 31150 24150 0    75   ~ 0
instrImm2
Text Label 31150 24250 0    75   ~ 0
instrImm3
Text Label 31150 24350 0    75   ~ 0
instrImm4
Text Label 31150 24450 0    75   ~ 0
instrImm5
Text Label 31150 24550 0    75   ~ 0
instrImm6
Text Label 31150 24650 0    75   ~ 0
instrImm7
Wire Wire Line
	28800 25200 28900 25200
Wire Wire Line
	28900 25200 28900 25050
Wire Wire Line
	28900 25050 28950 25050
Wire Wire Line
	28750 24750 28900 24750
Wire Wire Line
	28750 24950 28950 24950
Wire Wire Line
	28900 24750 28900 24850
Wire Wire Line
	28900 24850 28950 24850
Entry Wire Line
	26400 27700 26300 27600
Entry Wire Line
	26400 27800 26300 27700
Entry Wire Line
	26400 27900 26300 27800
Entry Wire Line
	26400 28000 26300 27900
Entry Wire Line
	26400 28100 26300 28000
Entry Wire Line
	26400 28200 26300 28100
Entry Wire Line
	26400 28300 26300 28200
Entry Wire Line
	26400 28400 26300 28300
Wire Wire Line
	26400 27700 26900 27700
Wire Wire Line
	26400 27800 26900 27800
Wire Wire Line
	26400 27900 26900 27900
Wire Wire Line
	26400 28000 26900 28000
Wire Wire Line
	26400 28100 26900 28100
Wire Wire Line
	26400 28200 26900 28200
Wire Wire Line
	26400 28300 26900 28300
Wire Wire Line
	26400 28400 26900 28400
Entry Wire Line
	28500 27700 28600 27800
Entry Wire Line
	28500 27800 28600 27900
Entry Wire Line
	28500 27900 28600 28000
Entry Wire Line
	28500 28000 28600 28100
Entry Wire Line
	28500 28100 28600 28200
Entry Wire Line
	28500 28200 28600 28300
Entry Wire Line
	28500 28300 28600 28400
Entry Wire Line
	28500 28400 28600 28500
Wire Wire Line
	27900 27700 28500 27700
Wire Wire Line
	27900 27800 28500 27800
Wire Wire Line
	27900 27900 28500 27900
Wire Wire Line
	27900 28000 28500 28000
Wire Wire Line
	27900 28100 28500 28100
Wire Wire Line
	27900 28200 28500 28200
Wire Wire Line
	27900 28300 28500 28300
Wire Wire Line
	27900 28400 28500 28400
Wire Bus Line
	28600 29300 23250 29300
Entry Wire Line
	23350 28450 23250 28550
Entry Wire Line
	23350 28350 23250 28450
Entry Wire Line
	23350 28250 23250 28350
Entry Wire Line
	23350 28150 23250 28250
Entry Wire Line
	23350 28050 23250 28150
Entry Wire Line
	23350 27950 23250 28050
Entry Wire Line
	23350 27850 23250 27950
Entry Wire Line
	23350 27750 23250 27850
Wire Wire Line
	23350 27750 24000 27750
Wire Wire Line
	23350 27850 24000 27850
Wire Wire Line
	23350 27950 24000 27950
Wire Wire Line
	23350 28050 24000 28050
Wire Wire Line
	23350 28150 24000 28150
Wire Wire Line
	23350 28250 24000 28250
Wire Wire Line
	23350 28350 24000 28350
Wire Wire Line
	23350 28450 24000 28450
Wire Wire Line
	22800 28750 24000 28750
Wire Wire Line
	22800 26600 24000 26600
Entry Wire Line
	26300 23850 26400 23950
Entry Wire Line
	26300 23950 26400 24050
Entry Wire Line
	26300 24050 26400 24150
Entry Wire Line
	26300 24150 26400 24250
Entry Wire Line
	26300 24250 26400 24350
Entry Wire Line
	26300 24350 26400 24450
Entry Wire Line
	26300 24450 26400 24550
Entry Wire Line
	26300 24550 26400 24650
Entry Wire Line
	26300 24650 26400 24750
Entry Wire Line
	26300 24750 26400 24850
Entry Wire Line
	26300 24850 26400 24950
Entry Wire Line
	26300 24950 26400 25050
Entry Wire Line
	26300 25050 26400 25150
Entry Wire Line
	26300 25150 26400 25250
Entry Wire Line
	26300 25250 26400 25350
Wire Wire Line
	26400 23950 27000 23950
Wire Wire Line
	26400 24050 27000 24050
Wire Wire Line
	26400 24150 27000 24150
Wire Wire Line
	26400 24250 27000 24250
Wire Wire Line
	26400 24350 27000 24350
Wire Wire Line
	26400 24450 27000 24450
Wire Wire Line
	26400 24550 27000 24550
Wire Wire Line
	26400 24650 27000 24650
Wire Wire Line
	26400 24750 27000 24750
Wire Wire Line
	26400 24850 27000 24850
Wire Wire Line
	26400 24950 27000 24950
Wire Wire Line
	26400 25050 27000 25050
Wire Wire Line
	26400 25150 27000 25150
Wire Wire Line
	26400 25250 27000 25250
Wire Wire Line
	26400 25350 27000 25350
Wire Wire Line
	19900 27450 20000 27450
Wire Wire Line
	20000 27450 20000 26600
Wire Wire Line
	20000 26600 20950 26600
Wire Wire Line
	20000 27450 20000 28950
Wire Wire Line
	20000 28950 20900 28950
Connection ~ 20000 27450
Entry Wire Line
	20300 25600 20200 25500
Entry Wire Line
	20300 25700 20200 25600
Entry Wire Line
	20300 25800 20200 25700
Entry Wire Line
	20300 25900 20200 25800
Entry Wire Line
	20300 26000 20200 25900
Entry Wire Line
	20300 26100 20200 26000
Entry Wire Line
	20300 26200 20200 26100
Entry Wire Line
	20300 26300 20200 26200
Wire Wire Line
	20300 25600 20950 25600
Wire Wire Line
	20300 25700 20950 25700
Wire Wire Line
	20300 25800 20950 25800
Wire Wire Line
	20300 25900 20950 25900
Wire Wire Line
	20300 26000 20950 26000
Wire Wire Line
	20300 26100 20950 26100
Wire Wire Line
	20300 26200 20950 26200
Wire Wire Line
	20300 26300 20950 26300
Entry Wire Line
	20300 27850 20200 27750
Entry Wire Line
	20300 27950 20200 27850
Entry Wire Line
	20300 28050 20200 27950
Entry Wire Line
	20300 28150 20200 28050
Entry Wire Line
	20300 28250 20200 28150
Entry Wire Line
	20300 28350 20200 28250
Entry Wire Line
	20300 28450 20200 28350
Entry Wire Line
	20300 28550 20200 28450
Wire Wire Line
	20300 27850 20950 27850
Wire Wire Line
	20300 27950 20950 27950
Wire Wire Line
	20300 28050 20950 28050
Wire Wire Line
	20300 28150 20950 28150
Wire Wire Line
	20300 28250 20950 28250
Wire Wire Line
	20300 28350 20950 28350
Wire Wire Line
	20300 28450 20950 28450
Wire Wire Line
	20300 28550 20950 28550
Wire Wire Line
	22750 29450 22800 29450
Text Label 23550 26300 2    75   ~ 0
bus7
Text Label 23550 26200 2    75   ~ 0
bus6
Text Label 23550 26100 2    75   ~ 0
bus5
Text Label 23550 26000 2    75   ~ 0
bus4
Text Label 23550 25900 2    75   ~ 0
bus3
Text Label 23550 25800 2    75   ~ 0
bus2
Text Label 23550 25700 2    75   ~ 0
bus1
Text Label 23550 25600 2    75   ~ 0
bus0
Entry Wire Line
	23050 26400 23150 26300
Entry Wire Line
	23050 26300 23150 26200
Entry Wire Line
	23050 26200 23150 26100
Entry Wire Line
	23050 26100 23150 26000
Entry Wire Line
	23050 26000 23150 25900
Entry Wire Line
	23050 25900 23150 25800
Entry Wire Line
	23050 25800 23150 25700
Entry Wire Line
	23050 25700 23150 25600
Text GLabel 28750 21800 0    75   Input ~ 0
clk
Text GLabel 28800 22250 0    75   Input ~ 0
~reset~
Text GLabel 28750 22000 0    75   Input ~ 0
~ctrlMemInstrWE~
Wire Wire Line
	28800 22250 28900 22250
Wire Wire Line
	28900 22250 28900 22100
Wire Wire Line
	28900 22100 28950 22100
Wire Wire Line
	28750 21800 28900 21800
Wire Wire Line
	28750 22000 28950 22000
Wire Wire Line
	28900 21800 28900 21900
Wire Wire Line
	28900 21900 28950 21900
Entry Wire Line
	26300 20900 26400 21000
Entry Wire Line
	26300 21000 26400 21100
Entry Wire Line
	26300 21100 26400 21200
Entry Wire Line
	26300 21200 26400 21300
Entry Wire Line
	26300 21300 26400 21400
Entry Wire Line
	26300 21400 26400 21500
Entry Wire Line
	26300 21500 26400 21600
Entry Wire Line
	26300 21600 26400 21700
Entry Wire Line
	26300 21700 26400 21800
Entry Wire Line
	26300 21800 26400 21900
Entry Wire Line
	26300 21900 26400 22000
Entry Wire Line
	26300 22000 26400 22100
Entry Wire Line
	26300 22100 26400 22200
Entry Wire Line
	26300 22200 26400 22300
Entry Wire Line
	26300 22300 26400 22400
Wire Wire Line
	26400 21700 27000 21700
Wire Wire Line
	26400 21600 27000 21600
Wire Wire Line
	26400 21500 27000 21500
Wire Wire Line
	26400 21400 27000 21400
Wire Wire Line
	26400 21300 27000 21300
Wire Wire Line
	26400 21200 27000 21200
Wire Wire Line
	26400 21100 27000 21100
Wire Wire Line
	26400 21000 27000 21000
Wire Wire Line
	26400 22400 27000 22400
Wire Wire Line
	26400 22300 27000 22300
Wire Wire Line
	26400 22200 27000 22200
Wire Wire Line
	26400 22100 27000 22100
Wire Wire Line
	26400 22000 27000 22000
Wire Wire Line
	26400 21900 27000 21900
Wire Wire Line
	26400 21800 27000 21800
Entry Wire Line
	30850 21000 30950 21100
Entry Wire Line
	30850 21100 30950 21200
Entry Wire Line
	30850 21200 30950 21300
Entry Wire Line
	30850 21300 30950 21400
Entry Wire Line
	30850 21400 30950 21500
Entry Wire Line
	30850 21500 30950 21600
Entry Wire Line
	30850 21600 30950 21700
Entry Wire Line
	30850 21700 30950 21800
Wire Wire Line
	29950 21000 30850 21000
Wire Wire Line
	29950 21100 30850 21100
Wire Wire Line
	29950 21200 30850 21200
Wire Wire Line
	29950 21300 30850 21300
Wire Wire Line
	29950 21400 30850 21400
Wire Wire Line
	29950 21500 30850 21500
Wire Wire Line
	29950 21600 30850 21600
Wire Wire Line
	29950 21700 30850 21700
Wire Bus Line
	20200 24150 25350 24150
Wire Bus Line
	25350 24150 25350 23350
Wire Bus Line
	25350 23350 30950 23350
Connection ~ 30950 23350
Wire Bus Line
	30950 22550 30950 23350
Entry Wire Line
	26300 18050 26400 18150
Entry Wire Line
	26300 18150 26400 18250
Entry Wire Line
	26300 18250 26400 18350
Entry Wire Line
	26300 18350 26400 18450
Entry Wire Line
	26300 18450 26400 18550
Entry Wire Line
	26300 18550 26400 18650
Entry Wire Line
	26300 18650 26400 18750
Entry Wire Line
	26300 18750 26400 18850
Entry Wire Line
	26300 18850 26400 18950
Entry Wire Line
	26300 18950 26400 19050
Entry Wire Line
	26300 19050 26400 19150
Entry Wire Line
	26300 19150 26400 19250
Entry Wire Line
	26300 19250 26400 19350
Entry Wire Line
	26300 19350 26400 19450
Entry Wire Line
	26300 19450 26400 19550
Wire Wire Line
	26400 18850 27000 18850
Wire Wire Line
	26400 18750 27000 18750
Wire Wire Line
	26400 18650 27000 18650
Wire Wire Line
	26400 18550 27000 18550
Wire Wire Line
	26400 18450 27000 18450
Wire Wire Line
	26400 18350 27000 18350
Wire Wire Line
	26400 18250 27000 18250
Wire Wire Line
	26400 18150 27000 18150
Wire Wire Line
	26400 19550 27000 19550
Wire Wire Line
	26400 19450 27000 19450
Wire Wire Line
	26400 19350 27000 19350
Wire Wire Line
	26400 19250 27000 19250
Wire Wire Line
	26400 19150 27000 19150
Wire Wire Line
	26400 19050 27000 19050
Wire Wire Line
	26400 18950 27000 18950
Text GLabel 28750 18950 0    75   Input ~ 0
clk
Text GLabel 28800 19400 0    75   Input ~ 0
~reset~
Text GLabel 28750 19150 0    75   Input ~ 0
~ctrlMemInstrWE~
Wire Wire Line
	28800 19400 28900 19400
Wire Wire Line
	28900 19400 28900 19250
Wire Wire Line
	28900 19250 28950 19250
Wire Wire Line
	28750 18950 28900 18950
Wire Wire Line
	28750 19150 28950 19150
Wire Wire Line
	28900 18950 28900 19050
Wire Wire Line
	28900 19050 28950 19050
Connection ~ 22800 28750
Wire Wire Line
	22800 28750 22800 26600
Wire Wire Line
	22800 28750 22800 29450
Wire Wire Line
	26200 28700 26900 28700
Entry Wire Line
	26400 29900 26300 29800
Entry Wire Line
	26400 30000 26300 29900
Entry Wire Line
	26400 30100 26300 30000
Entry Wire Line
	26400 30200 26300 30100
Entry Wire Line
	26400 30300 26300 30200
Entry Wire Line
	26400 30400 26300 30300
Entry Wire Line
	26400 30500 26300 30400
Entry Wire Line
	26400 30600 26300 30500
Wire Wire Line
	26400 29900 26900 29900
Wire Wire Line
	26400 30000 26900 30000
Wire Wire Line
	26400 30100 26900 30100
Wire Wire Line
	26400 30200 26900 30200
Wire Wire Line
	26400 30300 26900 30300
Wire Wire Line
	26400 30400 26900 30400
Wire Wire Line
	26400 30500 26900 30500
Wire Wire Line
	26400 30600 26900 30600
Wire Wire Line
	26100 29100 26200 29100
Wire Wire Line
	26200 29100 26200 28700
Wire Wire Line
	26200 29100 26200 30900
Wire Wire Line
	26200 30900 26900 30900
Connection ~ 26200 29100
Wire Wire Line
	27900 29900 28750 29900
Wire Wire Line
	27900 30000 28750 30000
Wire Wire Line
	27900 30100 28750 30100
Wire Wire Line
	27900 30200 28750 30200
Wire Wire Line
	27900 30300 28750 30300
Wire Wire Line
	27900 30400 28750 30400
Wire Wire Line
	27900 30500 28750 30500
Wire Wire Line
	27900 30600 28750 30600
Text Label 27900 30600 0    75   ~ 0
bus7
Text Label 27900 30500 0    75   ~ 0
bus6
Text Label 27900 30400 0    75   ~ 0
bus5
Text Label 27900 30300 0    75   ~ 0
bus4
Text Label 27900 30200 0    75   ~ 0
bus3
Text Label 27900 30100 0    75   ~ 0
bus2
Text Label 27900 30000 0    75   ~ 0
bus1
Text Label 27900 29900 0    75   ~ 0
bus0
Entry Wire Line
	28750 29900 28850 30000
Entry Wire Line
	28750 30000 28850 30100
Entry Wire Line
	28750 30100 28850 30200
Entry Wire Line
	28750 30200 28850 30300
Entry Wire Line
	28750 30300 28850 30400
Entry Wire Line
	28750 30400 28850 30500
Entry Wire Line
	28750 30500 28850 30600
Entry Wire Line
	28750 30600 28850 30700
Wire Bus Line
	28850 31450 25900 31450
Wire Bus Line
	25900 31450 25900 29700
Wire Bus Line
	25900 29700 23050 29700
Entry Wire Line
	33350 24650 33450 24750
Entry Wire Line
	33350 24550 33450 24650
Entry Wire Line
	33350 24450 33450 24550
Entry Wire Line
	33350 24350 33450 24450
Entry Wire Line
	33350 24250 33450 24350
Entry Wire Line
	33350 24150 33450 24250
Entry Wire Line
	33350 24050 33450 24150
Entry Wire Line
	33350 23950 33450 24050
Text Label 33000 23950 0    75   ~ 0
bus0
Text Label 33000 24050 0    75   ~ 0
bus1
Text Label 33000 24150 0    75   ~ 0
bus2
Text Label 33000 24250 0    75   ~ 0
bus3
Text Label 33000 24350 0    75   ~ 0
bus4
Text Label 33000 24450 0    75   ~ 0
bus5
Text Label 33000 24550 0    75   ~ 0
bus6
Text Label 33000 24650 0    75   ~ 0
bus7
Wire Wire Line
	33000 24650 33350 24650
Wire Wire Line
	33000 24550 33350 24550
Wire Wire Line
	33000 24450 33350 24450
Wire Wire Line
	33000 24350 33350 24350
Wire Wire Line
	33000 24250 33350 24250
Wire Wire Line
	33000 24150 33350 24150
Wire Wire Line
	33000 24050 33350 24050
Wire Wire Line
	33000 23950 33350 23950
Wire Bus Line
	28850 26050 33450 26050
Entry Wire Line
	32650 13650 32550 13750
Entry Wire Line
	32650 13550 32550 13650
Entry Wire Line
	32650 13450 32550 13550
Entry Wire Line
	32650 13350 32550 13450
Entry Wire Line
	32650 13250 32550 13350
Entry Wire Line
	32650 13150 32550 13250
Entry Wire Line
	32650 13050 32550 13150
Entry Wire Line
	32650 12950 32550 13050
Wire Wire Line
	32650 13650 33100 13650
Wire Wire Line
	32650 13550 33100 13550
Wire Wire Line
	32650 13450 33100 13450
Wire Wire Line
	32650 13350 33100 13350
Wire Wire Line
	32650 13250 33100 13250
Wire Wire Line
	32650 13150 33100 13150
Wire Wire Line
	32650 13050 33100 13050
Wire Wire Line
	32650 12950 33100 12950
Wire Wire Line
	32650 15450 32650 15600
Wire Wire Line
	32650 16250 32650 16400
Entry Wire Line
	34350 16700 34250 16800
Entry Wire Line
	34350 16600 34250 16700
Entry Wire Line
	34350 16500 34250 16600
Entry Wire Line
	34350 16400 34250 16500
Entry Wire Line
	34350 15900 34250 16000
Entry Wire Line
	34350 15800 34250 15900
Entry Wire Line
	34350 15700 34250 15800
Entry Wire Line
	34350 15600 34250 15700
Entry Wire Line
	30650 13700 30550 13800
Entry Wire Line
	30650 13600 30550 13700
Entry Wire Line
	30650 13500 30550 13600
Entry Wire Line
	30650 13400 30550 13500
Entry Wire Line
	30650 13300 30550 13400
Entry Wire Line
	30650 13200 30550 13300
Entry Wire Line
	30650 13100 30550 13200
Entry Wire Line
	30650 13000 30550 13100
Wire Wire Line
	30250 13900 31100 13900
Text Label 31200 16500 0    75   ~ 0
comp4
Text Label 31200 16600 0    75   ~ 0
comp5
Text Label 31200 16800 0    75   ~ 0
comp7
Text Label 31200 16700 0    75   ~ 0
comp6
Wire Wire Line
	30400 15700 31600 15700
Connection ~ 30400 15700
Wire Wire Line
	30150 15700 30400 15700
Wire Wire Line
	30500 15800 31600 15800
Connection ~ 30500 15800
Wire Wire Line
	30150 15800 30500 15800
Wire Wire Line
	30600 15900 31600 15900
Connection ~ 30600 15900
Wire Wire Line
	30150 15900 30600 15900
Wire Wire Line
	30700 16000 31600 16000
Connection ~ 30700 16000
Wire Wire Line
	30150 16000 30700 16000
Wire Wire Line
	31000 16700 31600 16700
Connection ~ 31000 16700
Wire Wire Line
	30150 16700 31000 16700
Wire Wire Line
	30800 16500 31600 16500
Connection ~ 30800 16500
Wire Wire Line
	30150 16500 30800 16500
Wire Wire Line
	30900 16600 31600 16600
Connection ~ 30900 16600
Wire Wire Line
	30150 16600 30900 16600
Wire Wire Line
	30900 15350 30900 16600
Wire Wire Line
	31100 16800 31600 16800
Connection ~ 31100 16800
Wire Wire Line
	30150 16800 31100 16800
Entry Wire Line
	31700 15600 31600 15700
Entry Wire Line
	31700 15700 31600 15800
Entry Wire Line
	31700 15800 31600 15900
Entry Wire Line
	31700 15900 31600 16000
Entry Wire Line
	31700 16400 31600 16500
Entry Wire Line
	31700 16500 31600 16600
Entry Wire Line
	31700 16600 31600 16700
Wire Wire Line
	30150 16250 30150 16400
Wire Wire Line
	30150 15450 30150 15600
Wire Wire Line
	30800 15350 30800 16500
Wire Wire Line
	31000 15350 31000 16700
Wire Wire Line
	31100 15350 31100 16800
Wire Wire Line
	30250 16250 30150 16250
$Comp
L power:GND #PWR?
U 1 1 93C7F3F2
P 30250 16250
AR Path="/61492876/93C7F3F2" Ref="#PWR?"  Part="1" 
AR Path="/93C7F3F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30250 16000 50  0001 C CNN
F 1 "GND" H 30255 16077 50  0000 C CNN
F 2 "" H 30250 16250 50  0001 C CNN
F 3 "" H 30250 16250 50  0001 C CNN
	1    30250 16250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 93C7F3E4
P 29750 16600
AR Path="/61492876/93C7F3E4" Ref="SW?"  Part="1" 
AR Path="/93C7F3E4" Ref="SW?"  Part="1" 
F 0 "SW?" H 29750 17050 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 29650 16950 50  0000 C CNN
F 2 "" H 29450 16150 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 29750 16600 50  0001 C CNN
	1    29750 16600
	1    0    0    -1  
$EndComp
Text Notes 29400 15200 0    50   ~ 0
Invertierung beachten!
$Comp
L power:+5V #PWR?
U 1 1 93C7F3DD
P 30400 14950
AR Path="/61492876/93C7F3DD" Ref="#PWR?"  Part="1" 
AR Path="/93C7F3DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30400 14800 50  0001 C CNN
F 1 "+5V" H 30415 15123 50  0000 C CNN
F 2 "" H 30400 14950 50  0001 C CNN
F 3 "" H 30400 14950 50  0001 C CNN
	1    30400 14950
	1    0    0    -1  
$EndComp
Wire Wire Line
	30250 15450 30150 15450
$Comp
L power:GND #PWR?
U 1 1 93C7F3D6
P 30250 15450
AR Path="/61492876/93C7F3D6" Ref="#PWR?"  Part="1" 
AR Path="/93C7F3D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 30250 15200 50  0001 C CNN
F 1 "GND" H 30255 15277 50  0000 C CNN
F 2 "" H 30250 15450 50  0001 C CNN
F 3 "" H 30250 15450 50  0001 C CNN
	1    30250 15450
	1    0    0    -1  
$EndComp
Wire Wire Line
	30700 15350 30700 16000
Wire Wire Line
	30600 15900 30600 15350
Wire Wire Line
	30500 15350 30500 15800
Wire Wire Line
	30400 15350 30400 15700
$Comp
L Device:R_Network08 RN?
U 1 1 93C7F3C4
P 30800 15150
AR Path="/61492876/93C7F3C4" Ref="RN?"  Part="1" 
AR Path="/93C7F3C4" Ref="RN?"  Part="1" 
F 0 "RN?" H 31188 15196 50  0000 L CNN
F 1 "10k" H 31188 15105 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 31275 15150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 30800 15150 50  0001 C CNN
	1    30800 15150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 93C7F3B6
P 29750 15800
AR Path="/61492876/93C7F3B6" Ref="SW?"  Part="1" 
AR Path="/93C7F3B6" Ref="SW?"  Part="1" 
F 0 "SW?" H 29750 16250 50  0000 C CNN
F 1 "SW_Coded_SH-7050" H 29700 16150 50  0000 C CNN
F 2 "" H 29450 15350 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 29750 15800 50  0001 C CNN
	1    29750 15800
	1    0    0    -1  
$EndComp
Text Label 31150 15900 0    75   ~ 0
comp2
Text Label 31150 16000 0    75   ~ 0
comp3
Text Label 31150 15800 0    75   ~ 0
comp1
Text Label 31150 15700 0    75   ~ 0
comp0
Wire Bus Line
	34350 14700 32550 14700
Entry Wire Line
	31700 16700 31600 16800
Wire Bus Line
	31700 14700 30550 14700
Wire Bus Line
	26300 11450 30550 11450
Entry Wire Line
	32550 11950 32650 12050
Entry Wire Line
	32550 12050 32650 12150
Entry Wire Line
	32550 12150 32650 12250
Entry Wire Line
	32550 12250 32650 12350
Entry Wire Line
	32550 12350 32650 12450
Entry Wire Line
	32550 12450 32650 12550
Entry Wire Line
	32550 12550 32650 12650
Entry Wire Line
	32550 12650 32650 12750
Wire Wire Line
	32650 12750 33100 12750
Wire Wire Line
	32650 12650 33100 12650
Wire Wire Line
	32650 12550 33100 12550
Wire Wire Line
	32650 12450 33100 12450
Wire Wire Line
	32650 12350 33100 12350
Wire Wire Line
	32650 12250 33100 12250
Wire Wire Line
	32650 12150 33100 12150
Wire Wire Line
	32650 12050 33100 12050
Entry Wire Line
	30550 12000 30650 12100
Entry Wire Line
	30550 12100 30650 12200
Entry Wire Line
	30550 12200 30650 12300
Entry Wire Line
	30550 12300 30650 12400
Entry Wire Line
	30550 12400 30650 12500
Entry Wire Line
	30550 12500 30650 12600
Entry Wire Line
	30550 12600 30650 12700
Entry Wire Line
	30550 12700 30650 12800
Wire Wire Line
	30650 12800 31100 12800
Wire Wire Line
	30650 12700 31100 12700
Wire Wire Line
	30650 12600 31100 12600
Wire Wire Line
	30650 12500 31100 12500
Wire Wire Line
	30650 12400 31100 12400
Wire Wire Line
	30650 12300 31100 12300
Wire Wire Line
	30650 12200 31100 12200
Wire Wire Line
	30650 12100 31100 12100
Connection ~ 30550 11450
Wire Bus Line
	30550 11450 32550 11450
Entry Wire Line
	26300 15400 26400 15300
Entry Wire Line
	26300 15300 26400 15200
Entry Wire Line
	26300 15200 26400 15100
Entry Wire Line
	26300 15100 26400 15000
Entry Wire Line
	26300 15000 26400 14900
Entry Wire Line
	26300 14900 26400 14800
Entry Wire Line
	26300 14800 26400 14700
Entry Wire Line
	26300 14700 26400 14600
Wire Wire Line
	26400 14600 26750 14600
Wire Wire Line
	26400 14700 26750 14700
Wire Wire Line
	26400 14800 26750 14800
Wire Wire Line
	26400 14900 26750 14900
Wire Wire Line
	26400 15000 26750 15000
Wire Wire Line
	26400 15100 26750 15100
Wire Wire Line
	26400 15200 26750 15200
Wire Wire Line
	26400 15300 26750 15300
Entry Wire Line
	26300 13300 26400 13200
Entry Wire Line
	26300 13200 26400 13100
Entry Wire Line
	26300 13100 26400 13000
Entry Wire Line
	26300 13000 26400 12900
Entry Wire Line
	26300 12900 26400 12800
Entry Wire Line
	26300 12800 26400 12700
Entry Wire Line
	26300 12700 26400 12600
Entry Wire Line
	26300 12600 26400 12500
Wire Wire Line
	26400 12500 26750 12500
Wire Wire Line
	26400 12600 26750 12600
Wire Wire Line
	26400 12700 26750 12700
Wire Wire Line
	26400 12800 26750 12800
Wire Wire Line
	26400 12900 26750 12900
Wire Wire Line
	26400 13000 26750 13000
Wire Wire Line
	26400 13100 26750 13100
Wire Wire Line
	26400 13200 26750 13200
Entry Wire Line
	30700 18850 30800 18750
Entry Wire Line
	30700 18750 30800 18650
Entry Wire Line
	30700 18650 30800 18550
Entry Wire Line
	30700 18550 30800 18450
Entry Wire Line
	30700 18450 30800 18350
Entry Wire Line
	30700 18350 30800 18250
Entry Wire Line
	30700 18250 30800 18150
Entry Wire Line
	30700 18150 30800 18050
Wire Wire Line
	29950 18850 30700 18850
Wire Wire Line
	29950 18750 30700 18750
Wire Wire Line
	29950 18650 30700 18650
Wire Wire Line
	29950 18550 30700 18550
Wire Wire Line
	29950 18450 30700 18450
Wire Wire Line
	29950 18350 30700 18350
Wire Wire Line
	29950 18250 30700 18250
Wire Wire Line
	29950 18150 30700 18150
Text Label 30000 18150 0    75   ~ 0
instruction0
Text Label 30000 18250 0    75   ~ 0
instruction1
Text Label 30000 18350 0    75   ~ 0
instruction2
Text Label 30000 18450 0    75   ~ 0
instruction3
Text Label 30000 18550 0    75   ~ 0
instruction4
Text Label 30000 18650 0    75   ~ 0
instruction5
Text Label 30000 18750 0    75   ~ 0
instruction6
Text Label 30000 18850 0    75   ~ 0
instruction7
Entry Wire Line
	15300 16000 15400 15900
Entry Wire Line
	15300 15900 15400 15800
Entry Wire Line
	15300 15800 15400 15700
Entry Wire Line
	15300 15700 15400 15600
Entry Wire Line
	15300 15600 15400 15500
Entry Wire Line
	15300 15500 15400 15400
Entry Wire Line
	15300 15400 15400 15300
Entry Wire Line
	15300 15300 15400 15200
Wire Wire Line
	16150 15900 15400 15900
Wire Wire Line
	16150 15800 15400 15800
Wire Wire Line
	16150 15700 15400 15700
Wire Wire Line
	16150 15600 15400 15600
Wire Wire Line
	16150 15500 15400 15500
Wire Wire Line
	16150 15400 15400 15400
Wire Wire Line
	16150 15300 15400 15300
Wire Wire Line
	16150 15200 15400 15200
Text Label 16100 15200 2    75   ~ 0
instruction0
Text Label 16100 15300 2    75   ~ 0
instruction1
Text Label 16100 15400 2    75   ~ 0
instruction2
Text Label 16100 15500 2    75   ~ 0
instruction3
Text Label 16100 15600 2    75   ~ 0
instruction4
Text Label 16100 15700 2    75   ~ 0
instruction5
Text Label 16100 15800 2    75   ~ 0
instruction6
Text Label 16100 15900 2    75   ~ 0
instruction7
Wire Bus Line
	15300 17150 30800 17150
Wire Wire Line
	23150 25600 24000 25600
Wire Wire Line
	23150 25700 24000 25700
Wire Wire Line
	23150 25800 24000 25800
Wire Wire Line
	23150 25900 24000 25900
Wire Wire Line
	23150 26000 24000 26000
Wire Wire Line
	23150 26100 24000 26100
Wire Wire Line
	23150 26200 24000 26200
Wire Wire Line
	23150 26300 24000 26300
Wire Bus Line
	6650 31600 6650 31800
Wire Bus Line
	3150 24800 9350 24800
Wire Bus Line
	6400 5950 6400 10250
Wire Bus Line
	32550 11450 32550 12650
Wire Bus Line
	34350 14700 34350 16700
Wire Bus Line
	33450 24050 33450 26050
Wire Bus Line
	28850 26050 28850 31450
Wire Bus Line
	30950 21100 30950 23350
Wire Bus Line
	28600 27800 28600 29300
Wire Bus Line
	30950 23350 30950 24750
Wire Bus Line
	8000 11050 8000 24650
Wire Bus Line
	13500 24650 13500 29200
Wire Bus Line
	3350 24950 3350 29200
Wire Bus Line
	3150 10250 3150 24800
Wire Bus Line
	4550 10250 4550 24950
Wire Bus Line
	2750 8000 2750 8950
Wire Bus Line
	2750 5100 2750 6450
Wire Bus Line
	3150 2850 3150 3950
Wire Bus Line
	3150 1650 3150 2850
Wire Bus Line
	32550 13050 32550 14700
Wire Bus Line
	31700 14700 31700 16700
Wire Bus Line
	30550 13100 30550 14700
Wire Bus Line
	30550 11450 30550 12700
Wire Bus Line
	30800 17150 30800 18750
Wire Bus Line
	15300 15300 15300 17150
Wire Bus Line
	23250 27850 23250 29300
Wire Bus Line
	23050 25700 23050 29700
Wire Bus Line
	7800 11050 7800 24400
Wire Bus Line
	7400 11050 7400 23400
Wire Bus Line
	7600 11050 7600 23550
Wire Bus Line
	13050 8150 13050 13500
Wire Bus Line
	22650 24850 22650 28450
Wire Bus Line
	25700 24850 25700 28350
Wire Bus Line
	20200 24150 20200 28450
Wire Bus Line
	9000 5100 9000 8750
Wire Bus Line
	23350 20150 23350 24850
Wire Bus Line
	17550 8150 17550 16200
Wire Bus Line
	26300 11450 26300 30500
$EndSCHEMATC
