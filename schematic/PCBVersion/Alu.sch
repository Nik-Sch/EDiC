EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 14
Title "ALU"
Date "2021-01-24"
Rev "v01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+5V #PWR0101
U 1 1 6021D812
P 13700 6500
F 0 "#PWR0101" H 13700 6350 50  0001 C CNN
F 1 "+5V" H 13715 6673 50  0000 C CNN
F 2 "" H 13700 6500 50  0001 C CNN
F 3 "" H 13700 6500 50  0001 C CNN
	1    13700 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 6021CA76
P 14200 5300
F 0 "#PWR0102" H 14200 5150 50  0001 C CNN
F 1 "+5V" H 14215 5473 50  0000 C CNN
F 2 "" H 14200 5300 50  0001 C CNN
F 3 "" H 14200 5300 50  0001 C CNN
	1    14200 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6021BF19
P 14200 6900
F 0 "#PWR0103" H 14200 6650 50  0001 C CNN
F 1 "GND" H 14205 6727 50  0000 C CNN
F 2 "" H 14200 6900 50  0001 C CNN
F 3 "" H 14200 6900 50  0001 C CNN
	1    14200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 6600 13700 6600
Wire Wire Line
	13650 6850 13650 6600
Wire Wire Line
	13600 6850 13650 6850
Text Label 13600 6850 2    50   ~ 0
aluNOE
Wire Wire Line
	3050 2200 2850 2200
Text Label 3050 2200 0    50   ~ 0
aluNOE
Text GLabel 2850 2200 0    50   Input ~ 0
ctrlAluNOE
$Comp
L 74xx:74LS245 U36
U 1 1 601DF6AE
P 14200 6100
F 0 "U36" H 14200 7081 50  0000 C CNN
F 1 "74LS245" H 14200 6990 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 14200 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS245" H 14200 6100 50  0001 C CNN
	1    14200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	12400 6500 12700 6500
Wire Wire Line
	12700 6700 12700 6600
Wire Wire Line
	12400 6700 12700 6700
Text GLabel 12400 6500 0    50   Input ~ 0
clk
Text Label 12400 6700 2    50   ~ 0
nWrY
Wire Wire Line
	3050 2050 2850 2050
Text Label 3050 2050 0    50   ~ 0
nWrY
Text GLabel 2850 2050 0    50   Input ~ 0
ctrlAluNWrY
$Comp
L power:+5V #PWR080
U 1 1 60155CBB
P 13200 5300
F 0 "#PWR080" H 13200 5150 50  0001 C CNN
F 1 "+5V" H 13215 5473 50  0000 C CNN
F 2 "" H 13200 5300 50  0001 C CNN
F 3 "" H 13200 5300 50  0001 C CNN
	1    13200 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR081
U 1 1 601550AF
P 13200 6900
F 0 "#PWR081" H 13200 6650 50  0001 C CNN
F 1 "GND" H 13205 6727 50  0000 C CNN
F 2 "" H 13200 6900 50  0001 C CNN
F 3 "" H 13200 6900 50  0001 C CNN
	1    13200 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	12500 6000 12700 6000
Wire Wire Line
	12500 6750 12500 6000
Wire Wire Line
	12000 6750 12500 6750
Wire Wire Line
	12550 6100 12700 6100
Wire Wire Line
	12550 7050 12550 6100
Wire Wire Line
	12000 7050 12550 7050
Wire Wire Line
	12600 6200 12700 6200
Wire Wire Line
	12600 7350 12600 6200
Wire Wire Line
	12000 7350 12600 7350
Wire Wire Line
	12650 6300 12700 6300
Wire Wire Line
	12650 7650 12650 6300
Wire Wire Line
	12000 7650 12650 7650
Wire Wire Line
	12500 5900 12700 5900
Wire Wire Line
	12500 5050 12500 5900
Wire Wire Line
	12000 5050 12500 5050
Wire Wire Line
	12550 5800 12700 5800
Wire Wire Line
	12550 4750 12550 5800
Wire Wire Line
	12000 4750 12550 4750
Wire Wire Line
	12600 5700 12700 5700
Wire Wire Line
	12600 4450 12600 5700
Wire Wire Line
	12000 4450 12600 4450
Wire Wire Line
	12650 5600 12700 5600
Wire Wire Line
	12650 4150 12650 5600
Wire Wire Line
	12000 4150 12650 4150
$Comp
L 74xx:74LS377 U29
U 1 1 600E5779
P 13200 6100
F 0 "U29" H 13200 7081 50  0000 C CNN
F 1 "74LS377" H 13200 6990 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 13200 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 13200 6100 50  0001 C CNN
	1    13200 6100
	1    0    0    -1  
$EndComp
Text Label 5700 3750 2    50   ~ 0
b2
Text Label 5700 3350 2    50   ~ 0
b1
Text Label 5700 2950 2    50   ~ 0
b0
Wire Wire Line
	7300 8550 7400 8550
Text Label 7300 8550 2    50   ~ 0
sub
Wire Wire Line
	7400 8350 7300 8350
Wire Wire Line
	7400 8250 7300 8250
Wire Wire Line
	7300 8150 7400 8150
Text Label 7300 8350 2    50   ~ 0
b2
Text Label 7300 8250 2    50   ~ 0
b1
Text Label 7300 8150 2    50   ~ 0
b0
Wire Wire Line
	7300 7900 7400 7900
Wire Wire Line
	7300 7800 7400 7800
Wire Wire Line
	7300 7700 7400 7700
Wire Wire Line
	7300 7600 7400 7600
Wire Wire Line
	7300 7500 7400 7500
Wire Wire Line
	7300 7400 7400 7400
Wire Wire Line
	7300 7300 7400 7300
Wire Wire Line
	7300 7200 7400 7200
Text Label 7300 7900 2    50   ~ 0
a7
Text Label 7300 7800 2    50   ~ 0
a6
Text Label 7300 7700 2    50   ~ 0
a5
Text Label 7300 7600 2    50   ~ 0
a4
Text Label 7300 7500 2    50   ~ 0
a3
Text Label 7300 7400 2    50   ~ 0
a2
Text Label 7300 7300 2    50   ~ 0
a1
Text Label 7300 7200 2    50   ~ 0
a0
Wire Wire Line
	10950 4150 11000 4150
Wire Wire Line
	10950 2450 10950 4150
Wire Wire Line
	10600 7750 11000 7750
Wire Wire Line
	10600 9850 10600 7750
Wire Wire Line
	10250 9850 10600 9850
Wire Wire Line
	10500 7450 11000 7450
Wire Wire Line
	10500 9550 10500 7450
Wire Wire Line
	10250 9550 10500 9550
Wire Wire Line
	10350 7150 11000 7150
Wire Wire Line
	10350 9250 10350 7150
Wire Wire Line
	10250 9250 10350 9250
Wire Wire Line
	10300 6850 11000 6850
Wire Wire Line
	10300 8950 10300 6850
Wire Wire Line
	10250 8950 10300 8950
Wire Wire Line
	10450 5150 11000 5150
Wire Wire Line
	10450 7600 10450 5150
Wire Wire Line
	10000 7600 10450 7600
Wire Wire Line
	10400 4850 11000 4850
Wire Wire Line
	10400 7300 10400 4850
Wire Wire Line
	10000 7300 10400 7300
Wire Wire Line
	10350 4550 11000 4550
Wire Wire Line
	10350 7000 10350 4550
Wire Wire Line
	10000 7000 10350 7000
Wire Wire Line
	10300 4250 11000 4250
Wire Wire Line
	10000 6700 10300 6700
Wire Wire Line
	10550 7650 11000 7650
Wire Wire Line
	10550 5550 10550 7650
Wire Wire Line
	10600 7350 11000 7350
Wire Wire Line
	10600 5250 10600 7350
Wire Wire Line
	10650 7050 11000 7050
Wire Wire Line
	10650 4950 10650 7050
Wire Wire Line
	10700 6750 11000 6750
Wire Wire Line
	10700 4650 10700 6750
Wire Wire Line
	10800 5050 11000 5050
Wire Wire Line
	10800 3350 10800 5050
Wire Wire Line
	10450 3350 10800 3350
Wire Wire Line
	10850 4750 11000 4750
Wire Wire Line
	10850 3050 10850 4750
Wire Wire Line
	10450 3050 10850 3050
Wire Wire Line
	10900 4450 11000 4450
Wire Wire Line
	10900 2750 10900 4450
Wire Wire Line
	10450 2750 10900 2750
Wire Wire Line
	10450 2450 10950 2450
Text Label 11000 7950 2    50   ~ 0
aluOp0
Text Label 9250 9850 2    50   ~ 0
xor7
Text Label 9250 9550 2    50   ~ 0
xor6
Text Label 9250 9250 2    50   ~ 0
xor5
Text Label 9250 8950 2    50   ~ 0
xor4
Text Label 9000 7600 2    50   ~ 0
xor3
Text Label 9000 7300 2    50   ~ 0
xor2
Text Label 9000 7000 2    50   ~ 0
xor1
Text Label 9000 6700 2    50   ~ 0
xor0
$Comp
L power:GND #PWR029
U 1 1 6042C699
P 9000 8000
F 0 "#PWR029" H 9000 7750 50  0001 C CNN
F 1 "GND" H 9005 7827 50  0000 C CNN
F 2 "" H 9000 8000 50  0001 C CNN
F 3 "" H 9000 8000 50  0001 C CNN
	1    9000 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 6042BBCE
P 9250 10250
F 0 "#PWR030" H 9250 10000 50  0001 C CNN
F 1 "GND" H 9255 10077 50  0000 C CNN
F 2 "" H 9250 10250 50  0001 C CNN
F 3 "" H 9250 10250 50  0001 C CNN
	1    9250 10250
	1    0    0    -1  
$EndComp
Text Label 9250 10150 2    50   ~ 0
aluOp1
Text Label 9000 7900 2    50   ~ 0
aluOp1
Wire Wire Line
	8950 7700 9000 7700
Wire Wire Line
	8950 7500 8950 7700
Wire Wire Line
	8200 7500 8950 7500
Wire Wire Line
	8600 9050 9250 9050
Wire Wire Line
	8600 7600 8600 9050
Wire Wire Line
	8200 7600 8600 7600
Wire Wire Line
	8550 7700 8200 7700
Wire Wire Line
	8550 9350 8550 7700
Wire Wire Line
	9250 9350 8550 9350
Wire Wire Line
	8500 9650 9250 9650
Wire Wire Line
	8500 7800 8500 9650
Wire Wire Line
	8200 7800 8500 7800
Wire Wire Line
	8450 9950 9250 9950
Wire Wire Line
	8450 7900 8450 9950
Wire Wire Line
	8200 7900 8450 7900
Wire Wire Line
	8200 7400 9000 7400
Wire Wire Line
	8800 7100 9000 7100
Wire Wire Line
	8800 7300 8800 7100
Wire Wire Line
	8200 7300 8800 7300
Wire Wire Line
	8750 6800 9000 6800
Wire Wire Line
	8750 7200 8750 6800
Wire Wire Line
	8200 7200 8750 7200
$Comp
L power:+5V #PWR035
U 1 1 6036EAD9
P 9750 8650
F 0 "#PWR035" H 9750 8500 50  0001 C CNN
F 1 "+5V" H 9765 8823 50  0000 C CNN
F 2 "" H 9750 8650 50  0001 C CNN
F 3 "" H 9750 8650 50  0001 C CNN
	1    9750 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6036EAD3
P 9750 10550
F 0 "#PWR037" H 9750 10300 50  0001 C CNN
F 1 "GND" H 9755 10377 50  0000 C CNN
F 2 "" H 9750 10550 50  0001 C CNN
F 3 "" H 9750 10550 50  0001 C CNN
	1    9750 10550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 6036EACD
P 9500 8300
F 0 "#PWR036" H 9500 8050 50  0001 C CNN
F 1 "GND" H 9505 8127 50  0000 C CNN
F 2 "" H 9500 8300 50  0001 C CNN
F 3 "" H 9500 8300 50  0001 C CNN
	1    9500 8300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U16
U 1 1 6036EAC7
P 9750 9550
F 0 "U16" H 9750 10631 50  0000 C CNN
F 1 "74LS157" H 9750 10540 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9750 9550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9750 9550 50  0001 C CNN
	1    9750 9550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U15
U 1 1 6036EAC1
P 9500 7300
F 0 "U15" H 9500 8381 50  0000 C CNN
F 1 "74LS157" H 9500 8290 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9500 7300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9500 7300 50  0001 C CNN
	1    9500 7300
	1    0    0    -1  
$EndComp
$Sheet
S 7400 7150 800  1500
U 60297135
F0 "shifter" 50
F1 "Shifter.sch" 50
F2 "a0" I L 7400 7200 50 
F3 "a1" I L 7400 7300 50 
F4 "a2" I L 7400 7400 50 
F5 "a3" I L 7400 7500 50 
F6 "a4" I L 7400 7600 50 
F7 "a5" I L 7400 7700 50 
F8 "a6" I L 7400 7800 50 
F9 "a7" I L 7400 7900 50 
F10 "rightNotLeft" I L 7400 8550 50 
F11 "b0" I L 7400 8150 50 
F12 "b1" I L 7400 8250 50 
F13 "b2" I L 7400 8350 50 
F14 "y0" O R 8200 7200 50 
F15 "y1" O R 8200 7300 50 
F16 "y2" O R 8200 7400 50 
F17 "y3" O R 8200 7500 50 
F18 "y4" O R 8200 7600 50 
F19 "y5" O R 8200 7700 50 
F20 "y6" O R 8200 7800 50 
F21 "y7" O R 8200 7900 50 
$EndSheet
Wire Wire Line
	2850 1900 3050 1900
Text Label 3050 1900 0    50   ~ 0
aluOp1
Text GLabel 2850 1900 0    50   Input ~ 0
ctrlAluOp1
Wire Wire Line
	2850 1750 3050 1750
Text Label 3050 1750 0    50   ~ 0
aluOp0
Text GLabel 2850 1750 0    50   Input ~ 0
ctrlAluOp0
Text Label 11000 5350 2    50   ~ 0
aluOp0
Text Label 9250 5850 2    50   ~ 0
aluOp1
$Comp
L power:GND #PWR039
U 1 1 60246B85
P 11000 8050
F 0 "#PWR039" H 11000 7800 50  0001 C CNN
F 1 "GND" H 11005 7877 50  0000 C CNN
F 2 "" H 11000 8050 50  0001 C CNN
F 3 "" H 11000 8050 50  0001 C CNN
	1    11000 8050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 6024605A
P 11000 5450
F 0 "#PWR038" H 11000 5200 50  0001 C CNN
F 1 "GND" H 11005 5277 50  0000 C CNN
F 2 "" H 11000 5450 50  0001 C CNN
F 3 "" H 11000 5450 50  0001 C CNN
	1    11000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR040
U 1 1 60244D6E
P 11500 3850
F 0 "#PWR040" H 11500 3700 50  0001 C CNN
F 1 "+5V" H 11515 4023 50  0000 C CNN
F 2 "" H 11500 3850 50  0001 C CNN
F 3 "" H 11500 3850 50  0001 C CNN
	1    11500 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 602441E1
P 9950 2150
F 0 "#PWR031" H 9950 2000 50  0001 C CNN
F 1 "+5V" H 9965 2323 50  0000 C CNN
F 2 "" H 9950 2150 50  0001 C CNN
F 3 "" H 9950 2150 50  0001 C CNN
	1    9950 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 60242E9D
P 11500 6450
F 0 "#PWR042" H 11500 6300 50  0001 C CNN
F 1 "+5V" H 11515 6623 50  0000 C CNN
F 2 "" H 11500 6450 50  0001 C CNN
F 3 "" H 11500 6450 50  0001 C CNN
	1    11500 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 60242388
P 11500 8350
F 0 "#PWR043" H 11500 8100 50  0001 C CNN
F 1 "GND" H 11505 8177 50  0000 C CNN
F 2 "" H 11500 8350 50  0001 C CNN
F 3 "" H 11500 8350 50  0001 C CNN
	1    11500 8350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 60241821
P 11500 5750
F 0 "#PWR041" H 11500 5500 50  0001 C CNN
F 1 "GND" H 11505 5577 50  0000 C CNN
F 2 "" H 11500 5750 50  0001 C CNN
F 3 "" H 11500 5750 50  0001 C CNN
	1    11500 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U18
U 1 1 6023C2ED
P 11500 7350
F 0 "U18" H 11500 8431 50  0000 C CNN
F 1 "74LS157" H 11500 8340 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 11500 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 11500 7350 50  0001 C CNN
	1    11500 7350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U17
U 1 1 6023987C
P 11500 4750
F 0 "U17" H 11500 5831 50  0000 C CNN
F 1 "74LS157" H 11500 5740 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 11500 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 11500 4750 50  0001 C CNN
	1    11500 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5750 9050 5750
Wire Wire Line
	8300 5850 9100 5850
Wire Wire Line
	8300 5100 8800 5100
Wire Wire Line
	8300 5300 8750 5300
Wire Wire Line
	8300 5400 9200 5400
Wire Wire Line
	8800 5100 8800 4650
Wire Wire Line
	9200 5400 9200 5550
Wire Wire Line
	8750 5300 8750 5250
Wire Wire Line
	8300 3500 9100 3500
Wire Wire Line
	9100 3500 9100 2850
Wire Wire Line
	8300 3400 9050 3400
Wire Wire Line
	9050 3400 9050 2550
Wire Wire Line
	8300 3250 8950 3250
Wire Wire Line
	8950 3250 8950 3350
Wire Wire Line
	8300 3150 8950 3150
Wire Wire Line
	8950 3150 8950 3050
Wire Wire Line
	8300 3050 8900 3050
Wire Wire Line
	8900 3050 8900 2750
Wire Wire Line
	8300 2950 8850 2950
Text Label 9450 3650 2    50   ~ 0
aluOp1
$Comp
L power:GND #PWR027
U 1 1 601F24AF
P 9450 3750
F 0 "#PWR027" H 9450 3500 50  0001 C CNN
F 1 "GND" H 9455 3577 50  0000 C CNN
F 2 "" H 9450 3750 50  0001 C CNN
F 3 "" H 9450 3750 50  0001 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U13
U 1 1 601EDC8D
P 9950 3050
F 0 "U13" H 9950 4131 50  0000 C CNN
F 1 "74LS157" H 9950 4040 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9950 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9950 3050 50  0001 C CNN
	1    9950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3150 7450 3150
Wire Wire Line
	7200 3350 7450 3350
Wire Wire Line
	7200 3550 7450 3550
Wire Wire Line
	7200 5450 7450 5450
Wire Wire Line
	7200 5250 7450 5250
Wire Wire Line
	7200 5650 7450 5650
Wire Wire Line
	7200 5850 7450 5850
Text HLabel 7200 5850 0    50   Input ~ 0
a7
Text HLabel 7200 5650 0    50   Input ~ 0
a6
Text HLabel 7200 5450 0    50   Input ~ 0
a5
Text HLabel 7200 5250 0    50   Input ~ 0
a4
Text HLabel 7200 3550 0    50   Input ~ 0
a3
Text HLabel 7200 3350 0    50   Input ~ 0
a2
Text HLabel 7200 3150 0    50   Input ~ 0
a1
Text Label 8400 6000 0    50   ~ 0
xor4
Text Label 8400 6100 0    50   ~ 0
xor5
Text Label 8400 6200 0    50   ~ 0
xor6
Text Label 8400 6300 0    50   ~ 0
xor7
Wire Wire Line
	8400 6000 8300 6000
Wire Wire Line
	8300 6100 8400 6100
Wire Wire Line
	8400 6200 8300 6200
Wire Wire Line
	8300 6300 8400 6300
Text Label 8400 5550 0    50   ~ 0
and4
Text Label 8400 5650 0    50   ~ 0
and5
Text Label 8400 5750 0    50   ~ 0
and6
Text Label 8400 5850 0    50   ~ 0
and7
Text Label 8400 3850 0    50   ~ 0
xor0
Text Label 8400 3950 0    50   ~ 0
xor1
Text Label 8400 4050 0    50   ~ 0
xor2
Text Label 8400 4150 0    50   ~ 0
xor3
Wire Wire Line
	8400 3850 8300 3850
Wire Wire Line
	8300 3950 8400 3950
Wire Wire Line
	8400 4050 8300 4050
Wire Wire Line
	8300 4150 8400 4150
Text Label 8400 3400 0    50   ~ 0
and0
Text Label 8400 3500 0    50   ~ 0
and1
Text Label 8400 3600 0    50   ~ 0
and2
Text Label 8400 3700 0    50   ~ 0
and3
Wire Wire Line
	7400 5000 7450 5000
Wire Wire Line
	7400 4850 7400 5000
Wire Wire Line
	8350 4850 7400 4850
Wire Wire Line
	8350 4650 8350 4850
Wire Wire Line
	8300 4650 8350 4650
Wire Wire Line
	6550 5350 7450 5350
Wire Wire Line
	2850 1600 3050 1600
Text Label 3050 1600 0    50   ~ 0
sub
Text GLabel 2850 1600 0    50   Input ~ 0
ctrlAluSub
Wire Wire Line
	7300 3800 7450 3800
Text Label 7300 3800 2    50   ~ 0
sub
Wire Wire Line
	6500 3650 7450 3650
Wire Wire Line
	6450 3450 7450 3450
Wire Wire Line
	6350 3050 7450 3050
Wire Wire Line
	5550 3350 5750 3350
Wire Wire Line
	5600 5850 5800 5850
Wire Wire Line
	5600 5500 5800 5500
Wire Wire Line
	5600 5150 5800 5150
Wire Wire Line
	5600 4800 5800 4800
Wire Wire Line
	5750 4150 5550 4150
Wire Wire Line
	5550 3750 5750 3750
Wire Wire Line
	5550 2950 5750 2950
Text HLabel 5600 5850 0    50   Input ~ 0
b7
Text HLabel 5600 5500 0    50   Input ~ 0
b6
Text HLabel 5600 5150 0    50   Input ~ 0
b5
Text HLabel 5600 4800 0    50   Input ~ 0
b4
Text HLabel 5550 4150 0    50   Input ~ 0
b3
Text HLabel 5550 3750 0    50   Input ~ 0
b2
Text HLabel 5550 3350 0    50   Input ~ 0
b1
Text HLabel 5550 2950 0    50   Input ~ 0
b0
Wire Wire Line
	5550 6050 5800 6050
Text Label 5550 6050 2    50   ~ 0
sub
Wire Wire Line
	5550 5700 5800 5700
Text Label 5550 5700 2    50   ~ 0
sub
Wire Wire Line
	5550 5350 5800 5350
Text Label 5550 5350 2    50   ~ 0
sub
Wire Wire Line
	5550 5000 5800 5000
Text Label 5550 5000 2    50   ~ 0
sub
Wire Wire Line
	5500 4350 5750 4350
Text Label 5500 4350 2    50   ~ 0
sub
Wire Wire Line
	5500 3950 5750 3950
Text Label 5500 3950 2    50   ~ 0
sub
Wire Wire Line
	5500 3550 5750 3550
Text Label 5500 3550 2    50   ~ 0
sub
Wire Wire Line
	5500 3150 5750 3150
Text Label 5500 3150 2    50   ~ 0
sub
$Comp
L power:GND #PWR026
U 1 1 60130405
P 6150 7450
F 0 "#PWR026" H 6150 7200 50  0001 C CNN
F 1 "GND" H 6155 7277 50  0000 C CNN
F 2 "" H 6150 7450 50  0001 C CNN
F 3 "" H 6150 7450 50  0001 C CNN
	1    6150 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6012F670
P 6050 2450
F 0 "#PWR04" H 6050 2200 50  0001 C CNN
F 1 "GND" H 6055 2277 50  0000 C CNN
F 2 "" H 6050 2450 50  0001 C CNN
F 3 "" H 6050 2450 50  0001 C CNN
	1    6050 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 6012EA97
P 6150 6450
F 0 "#PWR025" H 6150 6300 50  0001 C CNN
F 1 "+5V" H 6165 6623 50  0000 C CNN
F 2 "" H 6150 6450 50  0001 C CNN
F 3 "" H 6150 6450 50  0001 C CNN
	1    6150 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 6012DDCA
P 6050 1450
F 0 "#PWR03" H 6050 1300 50  0001 C CNN
F 1 "+5V" H 6065 1623 50  0000 C CNN
F 2 "" H 6050 1450 50  0001 C CNN
F 3 "" H 6050 1450 50  0001 C CNN
	1    6050 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U12
U 5 1 60129D47
P 6150 6950
F 0 "U12" H 6380 6996 50  0000 L CNN
F 1 "74LS86" H 6380 6905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6150 6950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6150 6950 50  0001 C CNN
	5    6150 6950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U12
U 4 1 60106802
P 6100 5950
F 0 "U12" H 6100 6275 50  0000 C CNN
F 1 "74LS86" H 6100 6184 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 5950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6100 5950 50  0001 C CNN
	4    6100 5950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U12
U 3 1 601067FC
P 6100 5600
F 0 "U12" H 6100 5925 50  0000 C CNN
F 1 "74LS86" H 6100 5834 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 5600 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6100 5600 50  0001 C CNN
	3    6100 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U12
U 2 1 601067F6
P 6100 5250
F 0 "U12" H 6100 5575 50  0000 C CNN
F 1 "74LS86" H 6100 5484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 5250 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6100 5250 50  0001 C CNN
	2    6100 5250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U12
U 1 1 601067F0
P 6100 4900
F 0 "U12" H 6100 5225 50  0000 C CNN
F 1 "74LS86" H 6100 5134 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 4900 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U11
U 5 1 600FB527
P 6050 1950
F 0 "U11" H 6280 1996 50  0000 L CNN
F 1 "74LS86" H 6280 1905 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 1950 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 1950 50  0001 C CNN
	5    6050 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U11
U 4 1 600FA2E9
P 6050 4250
F 0 "U11" H 6050 4575 50  0000 C CNN
F 1 "74LS86" H 6050 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 4250 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 4250 50  0001 C CNN
	4    6050 4250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U11
U 3 1 600F9042
P 6050 3850
F 0 "U11" H 6050 4175 50  0000 C CNN
F 1 "74LS86" H 6050 4084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 3850 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 3850 50  0001 C CNN
	3    6050 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U11
U 2 1 600F7043
P 6050 3450
F 0 "U11" H 6050 3775 50  0000 C CNN
F 1 "74LS86" H 6050 3684 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 3450 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 3450 50  0001 C CNN
	2    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U11
U 1 1 600F2BA1
P 6050 3050
F 0 "U11" H 6050 3375 50  0000 C CNN
F 1 "74LS86" H 6050 3284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6050 3050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 6050 3050 50  0001 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
Text HLabel 7200 2950 0    50   Input ~ 0
a0
Text Label 8400 2950 0    50   ~ 0
adderY0
Text Label 8400 3050 0    50   ~ 0
adderY1
Text Label 8400 3150 0    50   ~ 0
adderY2
Text Label 8400 3250 0    50   ~ 0
adderY3
Text Label 8400 5100 0    50   ~ 0
adderY4
Text Label 8400 5200 0    50   ~ 0
adderY5
Text Label 8400 5300 0    50   ~ 0
adderY6
Text Label 8400 5400 0    50   ~ 0
adderY7
Text Label 7350 5250 2    50   ~ 0
a4
Text Label 7350 3550 2    50   ~ 0
a3
Text Label 7350 3150 2    50   ~ 0
a1
Text Label 7350 2950 2    50   ~ 0
a0
Text Label 7350 3350 2    50   ~ 0
a2
Text Label 7350 5450 2    50   ~ 0
a5
Text Label 7350 5650 2    50   ~ 0
a6
Text Label 7350 5850 2    50   ~ 0
a7
Wire Wire Line
	7200 2950 7450 2950
$Sheet
S 7450 4950 850  1500
U 60260EB9
F0 "Adder1" 50
F1 "4BitFullAdder.sch" 50
F2 "Cin" I L 7450 5000 50 
F3 "Cout" O R 8300 5000 50 
F4 "a0" I L 7450 5250 50 
F5 "b0" I L 7450 5350 50 
F6 "a1" I L 7450 5450 50 
F7 "a2" I L 7450 5650 50 
F8 "a3" I L 7450 5850 50 
F9 "b1" I L 7450 5550 50 
F10 "b2" I L 7450 5750 50 
F11 "b3" I L 7450 5950 50 
F12 "y0" O R 8300 5100 50 
F13 "y1" O R 8300 5200 50 
F14 "y2" O R 8300 5300 50 
F15 "y3" O R 8300 5400 50 
F16 "and0" O R 8300 5550 50 
F17 "and1" O R 8300 5650 50 
F18 "and3" O R 8300 5850 50 
F19 "and2" O R 8300 5750 50 
F20 "xor0" O R 8300 6000 50 
F21 "xor1" O R 8300 6100 50 
F22 "xor2" O R 8300 6200 50 
F23 "xor3" O R 8300 6300 50 
$EndSheet
$Sheet
S 7450 2900 850  1800
U 60248238
F0 "Adder0" 50
F1 "4BitFullAdder.sch" 50
F2 "Cin" I L 7450 3800 50 
F3 "Cout" O R 8300 4650 50 
F4 "a0" I L 7450 2950 50 
F5 "b0" I L 7450 3050 50 
F6 "a1" I L 7450 3150 50 
F7 "a2" I L 7450 3350 50 
F8 "a3" I L 7450 3550 50 
F9 "b1" I L 7450 3250 50 
F10 "b2" I L 7450 3450 50 
F11 "b3" I L 7450 3650 50 
F12 "y0" O R 8300 2950 50 
F13 "y1" O R 8300 3050 50 
F14 "y2" O R 8300 3150 50 
F15 "y3" O R 8300 3250 50 
F16 "and0" O R 8300 3400 50 
F17 "and1" O R 8300 3500 50 
F18 "and3" O R 8300 3700 50 
F19 "and2" O R 8300 3600 50 
F20 "xor0" O R 8300 3850 50 
F21 "xor1" O R 8300 3950 50 
F22 "xor2" O R 8300 4050 50 
F23 "xor3" O R 8300 4150 50 
$EndSheet
Text HLabel 14700 6300 2    50   Output ~ 0
y7
Text HLabel 14700 6200 2    50   Output ~ 0
y6
Text HLabel 14700 6100 2    50   Output ~ 0
y5
Text HLabel 14700 6000 2    50   Output ~ 0
y4
Text HLabel 14700 5900 2    50   Output ~ 0
y3
Text HLabel 14700 5800 2    50   Output ~ 0
y2
Text HLabel 14700 5700 2    50   Output ~ 0
y1
Text HLabel 14700 5600 2    50   Output ~ 0
y0
Wire Wire Line
	10300 6700 10300 4250
Wire Wire Line
	10250 5250 10600 5250
$Comp
L power:GND #PWR034
U 1 1 601F1A5B
P 9750 6250
F 0 "#PWR034" H 9750 6000 50  0001 C CNN
F 1 "GND" H 9755 6077 50  0000 C CNN
F 2 "" H 9750 6250 50  0001 C CNN
F 3 "" H 9750 6250 50  0001 C CNN
	1    9750 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4950 10650 4950
Wire Wire Line
	10250 4650 10700 4650
Wire Wire Line
	8800 4650 9250 4650
$Comp
L power:GND #PWR028
U 1 1 601F2E2C
P 9250 5950
F 0 "#PWR028" H 9250 5700 50  0001 C CNN
F 1 "GND" H 9255 5777 50  0000 C CNN
F 2 "" H 9250 5950 50  0001 C CNN
F 3 "" H 9250 5950 50  0001 C CNN
	1    9250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5550 9250 5550
Wire Wire Line
	10250 5550 10550 5550
Wire Wire Line
	8750 5250 9250 5250
$Comp
L 74xx:74LS157 U14
U 1 1 601EECB3
P 9750 5250
F 0 "U14" H 9750 6331 50  0000 C CNN
F 1 "74LS157" H 9750 6240 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9750 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 9750 5250 50  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 2850 9450 2850
Wire Wire Line
	9050 2550 9450 2550
Wire Wire Line
	8950 3350 9450 3350
Wire Wire Line
	8950 3050 9450 3050
Wire Wire Line
	8900 2750 9450 2750
$Comp
L power:+5V #PWR0104
U 1 1 60306C3A
P 9500 6400
F 0 "#PWR0104" H 9500 6250 50  0001 C CNN
F 1 "+5V" H 9515 6573 50  0000 C CNN
F 2 "" H 9500 6400 50  0001 C CNN
F 3 "" H 9500 6400 50  0001 C CNN
	1    9500 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 603078EB
P 9750 4350
F 0 "#PWR0105" H 9750 4200 50  0001 C CNN
F 1 "+5V" H 9765 4523 50  0000 C CNN
F 2 "" H 9750 4350 50  0001 C CNN
F 3 "" H 9750 4350 50  0001 C CNN
	1    9750 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60308402
P 9950 4050
F 0 "#PWR0106" H 9950 3800 50  0001 C CNN
F 1 "GND" H 9955 3877 50  0000 C CNN
F 2 "" H 9950 4050 50  0001 C CNN
F 3 "" H 9950 4050 50  0001 C CNN
	1    9950 4050
	1    0    0    -1  
$EndComp
NoConn ~ 8300 5000
Wire Wire Line
	6350 3850 6450 3850
Wire Wire Line
	6450 3450 6450 3850
Wire Wire Line
	6350 3450 6400 3450
Wire Wire Line
	6400 3450 6400 3250
Wire Wire Line
	6400 3250 7450 3250
Wire Wire Line
	6350 4250 6500 4250
Wire Wire Line
	6500 4250 6500 3650
Wire Wire Line
	6400 5950 7450 5950
Wire Wire Line
	6450 5750 7450 5750
Wire Wire Line
	6500 5550 7450 5550
Wire Wire Line
	6400 5600 6450 5600
Wire Wire Line
	6450 5600 6450 5750
Wire Wire Line
	6400 5250 6500 5250
Wire Wire Line
	6500 5250 6500 5550
Wire Wire Line
	6400 4900 6550 4900
Wire Wire Line
	6550 4900 6550 5350
Wire Wire Line
	8850 2950 8850 2450
Wire Wire Line
	8850 2450 9450 2450
Wire Wire Line
	8300 3600 9150 3600
Wire Wire Line
	9150 3600 9150 3150
Wire Wire Line
	9150 3150 9450 3150
Wire Wire Line
	9200 3700 9200 3450
Wire Wire Line
	9200 3450 9450 3450
Wire Wire Line
	8300 3700 9200 3700
Wire Wire Line
	8300 5200 8850 5200
Wire Wire Line
	8850 5200 8850 4950
Wire Wire Line
	8850 4950 9250 4950
Wire Wire Line
	8950 4750 9250 4750
Wire Wire Line
	8300 5550 8950 5550
Wire Wire Line
	8950 5550 8950 4750
Wire Wire Line
	9000 5050 9250 5050
Wire Wire Line
	8300 5650 9000 5650
Wire Wire Line
	9000 5650 9000 5050
Wire Wire Line
	9250 5350 9050 5350
Wire Wire Line
	9050 5350 9050 5750
Wire Wire Line
	9100 5850 9100 5650
Wire Wire Line
	9100 5650 9250 5650
$EndSCHEMATC