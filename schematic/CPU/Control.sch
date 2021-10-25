EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 17 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 9750 3500 2    50   Output ~ 0
~ctrlAluYWE~
Text GLabel 6450 7050 2    50   Output ~ 0
ctrlAluOp1
Text GLabel 6450 6900 2    50   Output ~ 0
ctrlAluOp0
Text GLabel 6450 6750 2    50   Output ~ 0
ctrlAluSub
Text GLabel 9750 3700 2    50   Output ~ 0
~ctrlReg0WE~
Text GLabel 9750 3800 2    50   Output ~ 0
~ctrlReg1WE~
Text GLabel 9750 4100 2    50   Output ~ 0
~ctrlReg1BusOE~
Text GLabel 9750 3900 2    50   Output ~ 0
ctrlRegAluSel
Text GLabel 9750 4000 2    50   Output ~ 0
~ctrlReg0BusOE~
Text GLabel 9750 6150 2    50   Output ~ 0
ctrlMemSPUp
Text GLabel 9750 6450 2    50   Output ~ 0
~ctrlMemInstrOE~
Text GLabel 9750 6250 2    50   Output ~ 0
~ctrlMemSPEn~
Text GLabel 9750 4200 2    50   Output ~ 0
~ctrlMemPCLoad~
Text GLabel 5250 6200 0    50   Input ~ 0
~clk~
Text GLabel 4300 7050 0    50   Input ~ 0
~reset~
Text Notes 5550 4750 0    50   ~ 0
0-3: flags\n5-7: stepReg
$Comp
L power:+5V #PWR0274
U 1 1 60652347
P 5750 5100
F 0 "#PWR0274" H 5750 4950 50  0001 C CNN
F 1 "+5V" H 5750 5350 50  0000 C CNN
F 2 "" H 5750 5100 50  0001 C CNN
F 3 "" H 5750 5100 50  0001 C CNN
	1    5750 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0275
U 1 1 6065282B
P 5750 6650
F 0 "#PWR0275" H 5750 6400 50  0001 C CNN
F 1 "GND" H 5755 6477 50  0000 C CNN
F 2 "" H 5750 6650 50  0001 C CNN
F 3 "" H 5750 6650 50  0001 C CNN
	1    5750 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0277
U 1 1 6065B5DF
P 5750 8800
F 0 "#PWR0277" H 5750 8550 50  0001 C CNN
F 1 "GND" H 5755 8627 50  0000 C CNN
F 2 "" H 5750 8800 50  0001 C CNN
F 3 "" H 5750 8800 50  0001 C CNN
	1    5750 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0276
U 1 1 6065BAF9
P 5750 7200
F 0 "#PWR0276" H 5750 7050 50  0001 C CNN
F 1 "+5V" H 5750 7450 50  0000 C CNN
F 2 "" H 5750 7200 50  0001 C CNN
F 3 "" H 5750 7200 50  0001 C CNN
	1    5750 7200
	1    0    0    -1  
$EndComp
Text GLabel 5250 8400 0    50   Input ~ 0
~clk~
Text HLabel 5250 7500 0    50   Input ~ 0
instrCode0
Text HLabel 5250 7600 0    50   Input ~ 0
instrCode1
Text HLabel 5250 7700 0    50   Input ~ 0
instrCode2
Text HLabel 5250 7800 0    50   Input ~ 0
instrCode3
Text HLabel 5250 7900 0    50   Input ~ 0
instrCode4
Text HLabel 5250 8000 0    50   Input ~ 0
instrCode5
Text HLabel 5250 8100 0    50   Input ~ 0
instrCode6
Text GLabel 5250 5400 0    50   Input ~ 0
flagZero
Text GLabel 5250 5300 0    50   Input ~ 0
flagNegative
Text Label 6250 5400 0    50   ~ 0
a12
Text Label 6250 5300 0    50   ~ 0
a11
Text Label 6250 5800 0    50   ~ 0
a0
Text Label 6250 5900 0    50   ~ 0
a1
Text Label 6250 6000 0    50   ~ 0
a2
Text Label 6300 6750 2    50   ~ 0
a3
Text Label 6300 6900 2    50   ~ 0
a4
Text Label 6300 7050 2    50   ~ 0
a5
Text Label 6250 7800 0    50   ~ 0
a6
Text Label 6250 7900 0    50   ~ 0
a7
Text Label 6250 8000 0    50   ~ 0
a8
Text Label 6250 8100 0    50   ~ 0
a9
Text Label 6250 8200 0    50   ~ 0
a10
Text Label 8750 3800 2    50   ~ 0
a3
Text Label 8750 3900 2    50   ~ 0
a4
Text Label 8750 4000 2    50   ~ 0
a5
Text Label 8750 4100 2    50   ~ 0
a6
Text Label 8750 4200 2    50   ~ 0
a7
Text Label 8750 4300 2    50   ~ 0
a8
Text Label 8750 4400 2    50   ~ 0
a9
Text Label 8750 4500 2    50   ~ 0
a10
Text Label 8750 4600 2    50   ~ 0
a11
Text Label 8750 4700 2    50   ~ 0
a12
Text Label 8750 3500 2    50   ~ 0
a0
Text Label 8750 3600 2    50   ~ 0
a1
Text Label 8750 3700 2    50   ~ 0
a2
$Comp
L power:+5V #PWR0285
U 1 1 606D0949
P 9150 3300
F 0 "#PWR0285" H 9150 3150 50  0001 C CNN
F 1 "+5V" H 9150 3550 50  0000 C CNN
F 2 "" H 9150 3300 50  0001 C CNN
F 3 "" H 9150 3300 50  0001 C CNN
	1    9150 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0286
U 1 1 606D104C
P 9150 5500
F 0 "#PWR0286" H 9150 5250 50  0001 C CNN
F 1 "GND" H 9155 5327 50  0000 C CNN
F 2 "" H 9150 5500 50  0001 C CNN
F 3 "" H 9150 5500 50  0001 C CNN
	1    9150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0280
U 1 1 606D172C
P 8600 5250
F 0 "#PWR0280" H 8600 5000 50  0001 C CNN
F 1 "GND" H 8605 5077 50  0000 C CNN
F 2 "" H 8600 5250 50  0001 C CNN
F 3 "" H 8600 5250 50  0001 C CNN
	1    8600 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0279
U 1 1 606D52F5
P 8600 5100
F 0 "#PWR0279" H 8600 4950 50  0001 C CNN
F 1 "+5V" H 8615 5273 50  0000 C CNN
F 2 "" H 8600 5100 50  0001 C CNN
F 3 "" H 8600 5100 50  0001 C CNN
	1    8600 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 5100 8600 5100
Wire Wire Line
	8750 5300 8700 5300
Wire Wire Line
	8700 5300 8700 5250
Wire Wire Line
	8700 5250 8600 5250
Wire Wire Line
	8750 5200 8700 5200
Wire Wire Line
	8700 5200 8700 5250
Connection ~ 8700 5250
Text Label 8750 6450 2    50   ~ 0
a3
Text Label 8750 6550 2    50   ~ 0
a4
Text Label 8750 6650 2    50   ~ 0
a5
Text Label 8750 6750 2    50   ~ 0
a6
Text Label 8750 6850 2    50   ~ 0
a7
Text Label 8750 6950 2    50   ~ 0
a8
Text Label 8750 7050 2    50   ~ 0
a9
Text Label 8750 7150 2    50   ~ 0
a10
Text Label 8750 7250 2    50   ~ 0
a11
Text Label 8750 7350 2    50   ~ 0
a12
Text Label 8750 6150 2    50   ~ 0
a0
Text Label 8750 6250 2    50   ~ 0
a1
Text Label 8750 6350 2    50   ~ 0
a2
$Comp
L power:+5V #PWR0287
U 1 1 606E03FE
P 9150 5950
F 0 "#PWR0287" H 9150 5800 50  0001 C CNN
F 1 "+5V" H 9250 5950 50  0000 C CNN
F 2 "" H 9150 5950 50  0001 C CNN
F 3 "" H 9150 5950 50  0001 C CNN
	1    9150 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0288
U 1 1 606E0404
P 9150 8150
F 0 "#PWR0288" H 9150 7900 50  0001 C CNN
F 1 "GND" H 9155 7977 50  0000 C CNN
F 2 "" H 9150 8150 50  0001 C CNN
F 3 "" H 9150 8150 50  0001 C CNN
	1    9150 8150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0282
U 1 1 606E040A
P 8600 7900
F 0 "#PWR0282" H 8600 7650 50  0001 C CNN
F 1 "GND" H 8605 7727 50  0000 C CNN
F 2 "" H 8600 7900 50  0001 C CNN
F 3 "" H 8600 7900 50  0001 C CNN
	1    8600 7900
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0281
U 1 1 606E0410
P 8600 7750
F 0 "#PWR0281" H 8600 7600 50  0001 C CNN
F 1 "+5V" H 8615 7923 50  0000 C CNN
F 2 "" H 8600 7750 50  0001 C CNN
F 3 "" H 8600 7750 50  0001 C CNN
	1    8600 7750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 7750 8600 7750
Wire Wire Line
	8750 7950 8700 7950
Wire Wire Line
	8700 7950 8700 7900
Wire Wire Line
	8700 7900 8600 7900
Wire Wire Line
	8750 7850 8700 7850
Wire Wire Line
	8700 7850 8700 7900
Connection ~ 8700 7900
Wire Wire Line
	9750 3500 9550 3500
Wire Wire Line
	9750 3600 9550 3600
Wire Wire Line
	9750 3700 9550 3700
Wire Wire Line
	9750 3800 9550 3800
Wire Wire Line
	9750 3900 9550 3900
Wire Wire Line
	9750 4000 9550 4000
Wire Wire Line
	9750 4100 9550 4100
Wire Wire Line
	9750 4200 9550 4200
Wire Wire Line
	9750 6150 9550 6150
Wire Wire Line
	9750 6250 9550 6250
Wire Wire Line
	9750 6350 9550 6350
Wire Wire Line
	9750 6450 9550 6450
Wire Wire Line
	9750 6550 9550 6550
Wire Wire Line
	9750 6650 9550 6650
Wire Wire Line
	9750 6750 9550 6750
Wire Wire Line
	9750 6850 9550 6850
Wire Wire Line
	6300 7050 6450 7050
Wire Wire Line
	6450 6900 6300 6900
Wire Wire Line
	6300 6750 6450 6750
Text Label 6250 7500 0    50   ~ 0
a3
Text Label 6250 7600 0    50   ~ 0
a4
Text Label 6250 7700 0    50   ~ 0
a5
Text GLabel 9750 6650 2    50   Output ~ 0
~ctrlMemMar1WE~
Text GLabel 9750 6350 2    50   Output ~ 0
~ctrlMemInstrWE~
$Comp
L 74xx:74LS374 U84
U 1 1 609AFEE5
P 5750 8000
F 0 "U84" H 5750 8981 50  0000 C CNN
F 1 "74LS374" H 5750 8890 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 5750 8000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS374" H 5750 8000 50  0001 C CNN
	1    5750 8000
	1    0    0    -1  
$EndComp
NoConn ~ 6250 5700
NoConn ~ 5250 5700
Text Label 5250 5800 2    50   ~ 0
s0
Text Label 5250 5900 2    50   ~ 0
s1
Text Label 5250 6000 2    50   ~ 0
s2
Wire Wire Line
	4400 5900 5250 5900
$Comp
L 74xx:74LS86 U81
U 4 1 609DB284
P 4100 5900
F 0 "U81" H 4100 6225 50  0000 C CNN
F 1 "74LS86" H 4100 6134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 5900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4100 5900 50  0001 C CNN
	4    4100 5900
	1    0    0    -1  
$EndComp
Text Label 3800 5800 2    50   ~ 0
a0
Text Label 3800 6000 2    50   ~ 0
a1
$Comp
L 74xx:74LS86 U81
U 3 1 609F44E3
P 4100 6450
F 0 "U81" H 4100 6775 50  0000 C CNN
F 1 "74LS86" H 4100 6684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 6450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4100 6450 50  0001 C CNN
	3    4100 6450
	1    0    0    -1  
$EndComp
Text Label 3800 6350 2    50   ~ 0
a2
Wire Wire Line
	4400 6450 4550 6450
Wire Wire Line
	4550 6450 4550 6000
Wire Wire Line
	4550 6000 5250 6000
$Comp
L 74xx:74LS08 U59
U 4 1 609FE3E4
P 3300 6550
F 0 "U59" H 3300 6875 50  0000 C CNN
F 1 "74LS08" H 3300 6784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3300 6550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3300 6550 50  0001 C CNN
	4    3300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6550 3800 6550
$Comp
L 74xx:74LS86 U81
U 2 1 60A03ACA
P 4100 5200
F 0 "U81" H 4100 5525 50  0000 C CNN
F 1 "74LS86" H 4100 5434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 5200 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4100 5200 50  0001 C CNN
	2    4100 5200
	1    0    0    -1  
$EndComp
Text Label 3800 5300 2    50   ~ 0
a0
$Comp
L power:+5V #PWR0270
U 1 1 60A06B00
P 3800 5100
F 0 "#PWR0270" H 3800 4950 50  0001 C CNN
F 1 "+5V" H 3815 5273 50  0000 C CNN
F 2 "" H 3800 5100 50  0001 C CNN
F 3 "" H 3800 5100 50  0001 C CNN
	1    3800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5200 4550 5200
Wire Wire Line
	4550 5200 4550 5800
Wire Wire Line
	4550 5800 5250 5800
Text Label 3000 6650 2    50   ~ 0
a1
Text Label 3000 6450 2    50   ~ 0
a0
$Comp
L 74xx:74LS86 U81
U 1 1 60A228AC
P 4100 3650
F 0 "U81" H 4100 3975 50  0000 C CNN
F 1 "74LS86" H 4100 3884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4100 3650 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4100 3650 50  0001 C CNN
	1    4100 3650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U78
U 1 1 60A28CF1
P 3200 2700
F 0 "U78" H 3200 3025 50  0000 C CNN
F 1 "74LS08" H 3200 2934 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U38
U 2 1 60A2B2E8
P 3200 3200
F 0 "U38" H 3200 3525 50  0000 C CNN
F 1 "74LS08" H 3200 3434 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3200 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3200 3200 50  0001 C CNN
	2    3200 3200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U59
U 3 1 60A2DFA7
P 4600 6950
F 0 "U59" H 4600 7275 50  0000 C CNN
F 1 "74LS08" H 4600 7184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 6950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 6950 50  0001 C CNN
	3    4600 6950
	1    0    0    -1  
$EndComp
NoConn ~ 4400 3650
NoConn ~ 3800 3750
NoConn ~ 3800 3550
NoConn ~ 3500 3200
NoConn ~ 3500 2700
NoConn ~ 2900 2600
NoConn ~ 2900 2800
NoConn ~ 2900 3100
NoConn ~ 2900 3300
$Comp
L 74xx:74LS08 U82
U 5 1 60A52641
P 5050 3600
F 0 "U82" H 5280 3646 50  0000 L CNN
F 1 "74LS08" H 5280 3555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5050 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5050 3600 50  0001 C CNN
	5    5050 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U81
U 5 1 60A569B9
P 5950 3600
F 0 "U81" H 6180 3646 50  0000 L CNN
F 1 "74LS86" H 6180 3555 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5950 3600 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 5950 3600 50  0001 C CNN
	5    5950 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A59402
P 5950 4100
AR Path="/601B5CAE/60A59402" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60A59402" Ref="#PWR?"  Part="1" 
AR Path="/60ECA4CB/60A59402" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/60A59402" Ref="#PWR0272"  Part="1" 
F 0 "#PWR0272" H 5950 3850 50  0001 C CNN
F 1 "GND" H 5955 3927 50  0000 C CNN
F 2 "" H 5950 4100 50  0001 C CNN
F 3 "" H 5950 4100 50  0001 C CNN
	1    5950 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A59B77
P 5050 4100
AR Path="/601B5CAE/60A59B77" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60A59B77" Ref="#PWR?"  Part="1" 
AR Path="/60ECA4CB/60A59B77" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/60A59B77" Ref="#PWR0266"  Part="1" 
F 0 "#PWR0266" H 5050 3850 50  0001 C CNN
F 1 "GND" H 5055 3927 50  0000 C CNN
F 2 "" H 5050 4100 50  0001 C CNN
F 3 "" H 5050 4100 50  0001 C CNN
	1    5050 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0271
U 1 1 60A5A17B
P 5950 3100
F 0 "#PWR0271" H 5950 2950 50  0001 C CNN
F 1 "+5V" H 5965 3273 50  0000 C CNN
F 2 "" H 5950 3100 50  0001 C CNN
F 3 "" H 5950 3100 50  0001 C CNN
	1    5950 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0265
U 1 1 60A5A9BF
P 5050 3100
F 0 "#PWR0265" H 5050 2950 50  0001 C CNN
F 1 "+5V" H 5065 3273 50  0000 C CNN
F 2 "" H 5050 3100 50  0001 C CNN
F 3 "" H 5050 3100 50  0001 C CNN
	1    5050 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0273
U 1 1 610288ED
P 5250 8500
F 0 "#PWR0273" H 5250 8250 50  0001 C CNN
F 1 "GND" H 5255 8327 50  0000 C CNN
F 2 "" H 5250 8500 50  0001 C CNN
F 3 "" H 5250 8500 50  0001 C CNN
	1    5250 8500
	1    0    0    -1  
$EndComp
Text GLabel 9750 6750 2    50   Output ~ 0
ctrlMemInstrImmToRam
Text GLabel 9750 6550 2    50   Output ~ 0
~ctrlMemMar0WE~
Text GLabel 9750 3600 2    50   Output ~ 0
~ctrlAluOE~
Text HLabel 5250 8200 0    50   Input ~ 0
instrCode7
Text Label 8750 9200 2    50   ~ 0
a3
Text Label 8750 9300 2    50   ~ 0
a4
Text Label 8750 9400 2    50   ~ 0
a5
Text Label 8750 9500 2    50   ~ 0
a6
Text Label 8750 9600 2    50   ~ 0
a7
Text Label 8750 9700 2    50   ~ 0
a8
Text Label 8750 9800 2    50   ~ 0
a9
Text Label 8750 9900 2    50   ~ 0
a10
Text Label 8750 10000 2    50   ~ 0
a11
Text Label 8750 10100 2    50   ~ 0
a12
Text Label 8750 8900 2    50   ~ 0
a0
Text Label 8750 9000 2    50   ~ 0
a1
Text Label 8750 9100 2    50   ~ 0
a2
$Comp
L power:+5V #PWR0289
U 1 1 6321F4D0
P 9150 8700
F 0 "#PWR0289" H 9150 8550 50  0001 C CNN
F 1 "+5V" H 9100 8950 50  0000 C CNN
F 2 "" H 9150 8700 50  0001 C CNN
F 3 "" H 9150 8700 50  0001 C CNN
	1    9150 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0290
U 1 1 6321F4D6
P 9150 10900
F 0 "#PWR0290" H 9150 10650 50  0001 C CNN
F 1 "GND" H 9155 10727 50  0000 C CNN
F 2 "" H 9150 10900 50  0001 C CNN
F 3 "" H 9150 10900 50  0001 C CNN
	1    9150 10900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0284
U 1 1 6321F4DC
P 8600 10650
F 0 "#PWR0284" H 8600 10400 50  0001 C CNN
F 1 "GND" H 8605 10477 50  0000 C CNN
F 2 "" H 8600 10650 50  0001 C CNN
F 3 "" H 8600 10650 50  0001 C CNN
	1    8600 10650
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0283
U 1 1 6321F4E2
P 8600 10500
F 0 "#PWR0283" H 8600 10350 50  0001 C CNN
F 1 "+5V" H 8615 10673 50  0000 C CNN
F 2 "" H 8600 10500 50  0001 C CNN
F 3 "" H 8600 10500 50  0001 C CNN
	1    8600 10500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 10500 8600 10500
Wire Wire Line
	8750 10700 8700 10700
Wire Wire Line
	8700 10700 8700 10650
Wire Wire Line
	8700 10650 8600 10650
Wire Wire Line
	8750 10600 8700 10600
Wire Wire Line
	8700 10600 8700 10650
Connection ~ 8700 10650
Wire Wire Line
	9750 8900 9550 8900
Wire Wire Line
	9750 9100 9550 9100
Wire Wire Line
	9750 9200 9550 9200
Wire Wire Line
	9750 9300 9550 9300
Wire Wire Line
	9750 9400 9550 9400
Wire Wire Line
	9750 9500 9550 9500
Wire Wire Line
	9750 9600 9550 9600
NoConn ~ 9750 9600
Text Notes 9150 4300 0    50   ~ 0
micro0
Text Notes 9050 6850 0    50   ~ 0
micro1
Text Notes 9000 9450 0    50   ~ 0
micro2
Text GLabel 9750 6850 2    50   Output ~ 0
~ctrlMemRamWE~
NoConn ~ 9750 9400
NoConn ~ 9750 9500
Text GLabel 9750 8900 2    50   Output ~ 0
~ctrlMemRamOE~
Text Label 6250 5600 0    50   ~ 0
a14
Text Label 6250 5500 0    50   ~ 0
a13
Text GLabel 5250 5600 0    50   Input ~ 0
flagOverflow
Text GLabel 5250 5500 0    50   Input ~ 0
flagCarry
$Comp
L Memory_EEPROM:28C256 U85
U 1 1 61715981
P 9150 4400
F 0 "U85" H 9150 5681 50  0000 C CNN
F 1 "28C256" H 9150 5590 50  0000 C CNN
F 2 "" H 9150 4400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 9150 4400 50  0001 C CNN
	1    9150 4400
	1    0    0    -1  
$EndComp
Text Label 8750 4800 2    50   ~ 0
a13
Text Label 8750 4900 2    50   ~ 0
a14
$Comp
L Memory_EEPROM:28C256 U86
U 1 1 617A78A5
P 9150 7050
F 0 "U86" H 9150 8331 50  0000 C CNN
F 1 "28C256" H 9150 8240 50  0000 C CNN
F 2 "" H 9150 7050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 9150 7050 50  0001 C CNN
	1    9150 7050
	1    0    0    -1  
$EndComp
Text Label 8750 7450 2    50   ~ 0
a13
Text Label 8750 7550 2    50   ~ 0
a14
$Comp
L Memory_EEPROM:28C256 U87
U 1 1 617D12F3
P 9150 9800
F 0 "U87" H 9150 11081 50  0000 C CNN
F 1 "28C256" H 9150 10990 50  0000 C CNN
F 2 "" H 9150 9800 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 9150 9800 50  0001 C CNN
	1    9150 9800
	1    0    0    -1  
$EndComp
Text Label 8750 10200 2    50   ~ 0
a13
Text Label 8750 10300 2    50   ~ 0
a14
Text GLabel 9750 9000 2    50   Output ~ 0
~ctrlMemPCEn~
Wire Wire Line
	9550 9000 9750 9000
Text GLabel 9750 9100 2    50   Output ~ 0
~ctrlMemPC0FromBus~
Text GLabel 9750 9200 2    50   Output ~ 0
~ctrlMemPC1FromBus~
$Comp
L 8bitCPU-rescue:74AS825-74xx U?
U 1 1 6152118F
P 5750 5800
AR Path="/601B5CAE/6152118F" Ref="U?"  Part="1" 
AR Path="/600C5001/6152118F" Ref="U?"  Part="1" 
AR Path="/6152118F" Ref="U?"  Part="1" 
AR Path="/601BB1C4/6152118F" Ref="U83"  Part="1" 
F 0 "U83" H 5750 6681 50  0000 C CNN
F 1 "74AS825" H 5750 6590 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn54as825a.pdf" H 5750 5800 50  0001 C CNN
	1    5750 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0278
U 1 1 615277EC
P 6350 6400
F 0 "#PWR0278" H 6350 6150 50  0001 C CNN
F 1 "GND" H 6355 6227 50  0000 C CNN
F 2 "" H 6350 6400 50  0001 C CNN
F 3 "" H 6350 6400 50  0001 C CNN
	1    6350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6400 6250 6400
Wire Wire Line
	6250 6200 6350 6200
Wire Wire Line
	6350 6200 6350 6300
Connection ~ 6350 6400
Wire Wire Line
	6250 6300 6350 6300
Connection ~ 6350 6300
Wire Wire Line
	6350 6300 6350 6400
Text GLabel 4950 6300 0    50   Input ~ 0
halt
Wire Wire Line
	4950 6300 5250 6300
Text GLabel 9750 9300 2    50   Output ~ 0
~ctrlInstrFinished~
Wire Wire Line
	4900 6950 5050 6950
Wire Wire Line
	5050 6950 5050 6400
Wire Wire Line
	5050 6400 5250 6400
Text GLabel 4300 6850 0    50   Input ~ 0
~ctrlInstrFinished~
$Comp
L 8bitCPU-rescue:74ABT540 U?
U 1 1 63C4D029
P 2000 4700
AR Path="/600C5001/63C4D029" Ref="U?"  Part="1" 
AR Path="/601B5CAE/63C4D029" Ref="U?"  Part="1" 
AR Path="/61492876/63C4D029" Ref="U?"  Part="1" 
AR Path="/601BB1C4/63C4D029" Ref="U96"  Part="1" 
F 0 "U96" H 1700 5681 50  0000 C CNN
F 1 "74ABT540" H 1700 5590 50  0000 C CNN
F 2 "" H 2200 4275 50  0001 C CNN
F 3 "" H 2200 4275 50  0001 C CNN
	1    2000 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 63C4D02F
P 1100 5200
AR Path="/600C5001/63C4D02F" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63C4D02F" Ref="#PWR?"  Part="1" 
AR Path="/61492876/63C4D02F" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/63C4D02F" Ref="#PWR0267"  Part="1" 
F 0 "#PWR0267" H 1100 4950 50  0001 C CNN
F 1 "GND" H 1105 5027 50  0000 C CNN
F 2 "" H 1100 5200 50  0001 C CNN
F 3 "" H 1100 5200 50  0001 C CNN
	1    1100 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5200 1200 5200
Wire Wire Line
	1200 5100 1100 5100
Wire Wire Line
	1100 5100 1100 5200
Connection ~ 1100 5200
$Comp
L power:GND #PWR?
U 1 1 63C4D039
P 1700 5500
AR Path="/600C5001/63C4D039" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63C4D039" Ref="#PWR?"  Part="1" 
AR Path="/61492876/63C4D039" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/63C4D039" Ref="#PWR0269"  Part="1" 
F 0 "#PWR0269" H 1700 5250 50  0001 C CNN
F 1 "GND" H 1705 5327 50  0000 C CNN
F 2 "" H 1700 5500 50  0001 C CNN
F 3 "" H 1700 5500 50  0001 C CNN
	1    1700 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C4D03F
P 1700 3900
AR Path="/600C5001/63C4D03F" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63C4D03F" Ref="#PWR?"  Part="1" 
AR Path="/61492876/63C4D03F" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/63C4D03F" Ref="#PWR0268"  Part="1" 
F 0 "#PWR0268" H 1700 3750 50  0001 C CNN
F 1 "+5V" H 1700 4150 50  0000 C CNN
F 2 "" H 1700 3900 50  0001 C CNN
F 3 "" H 1700 3900 50  0001 C CNN
	1    1700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 63C4D045
P 2500 4200
AR Path="/600C5001/63C4D045" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D045" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D045" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D045" Ref="D49"  Part="1" 
F 0 "D49" H 2300 4250 50  0000 C CNN
F 1 "LED_Small" H 2750 4250 50  0000 C CNN
F 2 "" V 2500 4200 50  0001 C CNN
F 3 "~" V 2500 4200 50  0001 C CNN
	1    2500 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 2200 4200
$Comp
L Device:R_Network08 RN?
U 1 1 63C4D04C
P 3200 4600
AR Path="/61492876/63C4D04C" Ref="RN?"  Part="1" 
AR Path="/601B5CAE/63C4D04C" Ref="RN?"  Part="1" 
AR Path="/601BB1C4/63C4D04C" Ref="RN11"  Part="1" 
F 0 "RN11" H 3588 4646 50  0000 L CNN
F 1 "220" H 3588 4555 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3675 4600 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3200 4600 50  0001 C CNN
	1    3200 4600
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 63C4D052
P 3500 4100
AR Path="/61492876/63C4D052" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/63C4D052" Ref="#PWR?"  Part="1" 
AR Path="/601B5CAE/63C4D052" Ref="#PWR?"  Part="1" 
AR Path="/601BB1C4/63C4D052" Ref="#PWR0311"  Part="1" 
F 0 "#PWR0311" H 3500 3950 50  0001 C CNN
F 1 "+5V" H 3515 4273 50  0000 C CNN
F 2 "" H 3500 4100 50  0001 C CNN
F 3 "" H 3500 4100 50  0001 C CNN
	1    3500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4100 3500 4200
Wire Wire Line
	3500 4200 3400 4200
Wire Wire Line
	3000 4200 2600 4200
$Comp
L Device:LED_Small D?
U 1 1 63C4D05B
P 2500 4300
AR Path="/600C5001/63C4D05B" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D05B" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D05B" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D05B" Ref="D50"  Part="1" 
F 0 "D50" H 2300 4350 50  0000 C CNN
F 1 "LED_Small" H 2750 4350 50  0000 C CNN
F 2 "" V 2500 4300 50  0001 C CNN
F 3 "~" V 2500 4300 50  0001 C CNN
	1    2500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4300 2200 4300
Wire Wire Line
	3000 4300 2600 4300
$Comp
L Device:LED_Small D?
U 1 1 63C4D063
P 2500 4400
AR Path="/600C5001/63C4D063" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D063" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D063" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D063" Ref="D51"  Part="1" 
F 0 "D51" H 2300 4450 50  0000 C CNN
F 1 "LED_Small" H 2750 4450 50  0000 C CNN
F 2 "" V 2500 4400 50  0001 C CNN
F 3 "~" V 2500 4400 50  0001 C CNN
	1    2500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4400 2200 4400
Wire Wire Line
	3000 4400 2600 4400
$Comp
L Device:LED_Small D?
U 1 1 63C4D06B
P 2500 4500
AR Path="/600C5001/63C4D06B" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D06B" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D06B" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D06B" Ref="D52"  Part="1" 
F 0 "D52" H 2300 4550 50  0000 C CNN
F 1 "LED_Small" H 2750 4550 50  0000 C CNN
F 2 "" V 2500 4500 50  0001 C CNN
F 3 "~" V 2500 4500 50  0001 C CNN
	1    2500 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4500 2200 4500
Wire Wire Line
	3000 4500 2600 4500
$Comp
L Device:LED_Small D?
U 1 1 63C4D073
P 2500 4600
AR Path="/600C5001/63C4D073" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D073" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D073" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D073" Ref="D53"  Part="1" 
F 0 "D53" H 2300 4650 50  0000 C CNN
F 1 "LED_Small" H 2750 4650 50  0000 C CNN
F 2 "" V 2500 4600 50  0001 C CNN
F 3 "~" V 2500 4600 50  0001 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4600 2200 4600
Wire Wire Line
	3000 4600 2600 4600
$Comp
L Device:LED_Small D?
U 1 1 63C4D07B
P 2500 4700
AR Path="/600C5001/63C4D07B" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D07B" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D07B" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D07B" Ref="D54"  Part="1" 
F 0 "D54" H 2300 4750 50  0000 C CNN
F 1 "LED_Small" H 2750 4750 50  0000 C CNN
F 2 "" V 2500 4700 50  0001 C CNN
F 3 "~" V 2500 4700 50  0001 C CNN
	1    2500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4700 2200 4700
Wire Wire Line
	3000 4700 2600 4700
$Comp
L Device:LED_Small D?
U 1 1 63C4D083
P 2500 4800
AR Path="/600C5001/63C4D083" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D083" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D083" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D083" Ref="D55"  Part="1" 
F 0 "D55" H 2300 4850 50  0000 C CNN
F 1 "LED_Small" H 2750 4850 50  0000 C CNN
F 2 "" V 2500 4800 50  0001 C CNN
F 3 "~" V 2500 4800 50  0001 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4800 2200 4800
Wire Wire Line
	3000 4800 2600 4800
$Comp
L Device:LED_Small D?
U 1 1 63C4D08B
P 2500 4900
AR Path="/600C5001/63C4D08B" Ref="D?"  Part="1" 
AR Path="/601B5CAE/63C4D08B" Ref="D?"  Part="1" 
AR Path="/61492876/63C4D08B" Ref="D?"  Part="1" 
AR Path="/601BB1C4/63C4D08B" Ref="D56"  Part="1" 
F 0 "D56" H 2300 4950 50  0000 C CNN
F 1 "LED_Small" H 2750 4950 50  0000 C CNN
F 2 "" V 2500 4900 50  0001 C CNN
F 3 "~" V 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4900 2200 4900
Wire Wire Line
	3000 4900 2600 4900
Text Label 1200 4200 2    50   ~ 0
a0
Text Label 1200 4300 2    50   ~ 0
a1
Text Label 1200 4400 2    50   ~ 0
a2
Wire Wire Line
	1100 5100 1100 4900
Wire Wire Line
	1100 4500 1200 4500
Connection ~ 1100 5100
Wire Wire Line
	1200 4600 1100 4600
Connection ~ 1100 4600
Wire Wire Line
	1100 4600 1100 4500
Wire Wire Line
	1100 4700 1200 4700
Connection ~ 1100 4700
Wire Wire Line
	1100 4700 1100 4600
Wire Wire Line
	1200 4800 1100 4800
Connection ~ 1100 4800
Wire Wire Line
	1100 4800 1100 4700
Wire Wire Line
	1100 4900 1200 4900
Connection ~ 1100 4900
Wire Wire Line
	1100 4900 1100 4800
$EndSCHEMATC
