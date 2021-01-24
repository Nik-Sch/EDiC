EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2750 1700 0    50   Input ~ 0
d0
Text HLabel 2750 1800 0    50   Input ~ 0
d1
$Comp
L 74xx:74LS377 U30
U 1 1 601B5E83
P 3250 2200
F 0 "U30" H 3250 3181 50  0000 C CNN
F 1 "74LS377" H 3250 3090 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3250 2200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 3250 2200 50  0001 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS377 U31
U 1 1 601B66FF
P 3250 4200
F 0 "U31" H 3250 5181 50  0000 C CNN
F 1 "74LS377" H 3250 5090 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 3250 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS377" H 3250 4200 50  0001 C CNN
	1    3250 4200
	1    0    0    -1  
$EndComp
Text HLabel 2750 1900 0    50   Input ~ 0
d2
Text HLabel 2750 2000 0    50   Input ~ 0
d3
Text HLabel 2750 2100 0    50   Input ~ 0
d4
Text HLabel 2750 2200 0    50   Input ~ 0
d5
Text HLabel 2750 2300 0    50   Input ~ 0
d6
Text HLabel 2750 2400 0    50   Input ~ 0
d7
Text HLabel 2750 3700 0    50   Input ~ 0
d0
Text HLabel 2750 3800 0    50   Input ~ 0
d1
Text HLabel 2750 3900 0    50   Input ~ 0
d2
Text HLabel 2750 4000 0    50   Input ~ 0
d3
Text HLabel 2750 4100 0    50   Input ~ 0
d4
Text HLabel 2750 4200 0    50   Input ~ 0
d5
Text HLabel 2750 4300 0    50   Input ~ 0
d6
Text HLabel 2750 4400 0    50   Input ~ 0
d7
Text GLabel 2750 2600 0    50   Input ~ 0
clk
Text GLabel 2750 4600 0    50   Input ~ 0
clk
Text GLabel 2750 2700 0    50   Input ~ 0
ctrlReg0NWr
Text GLabel 2750 4700 0    50   Input ~ 0
ctrlReg1NWr
$Comp
L power:+5V #PWR084
U 1 1 601B84BD
P 3250 3400
F 0 "#PWR084" H 3250 3250 50  0001 C CNN
F 1 "+5V" H 3265 3573 50  0000 C CNN
F 2 "" H 3250 3400 50  0001 C CNN
F 3 "" H 3250 3400 50  0001 C CNN
	1    3250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR082
U 1 1 601B8975
P 3250 1400
F 0 "#PWR082" H 3250 1250 50  0001 C CNN
F 1 "+5V" H 3265 1573 50  0000 C CNN
F 2 "" H 3250 1400 50  0001 C CNN
F 3 "" H 3250 1400 50  0001 C CNN
	1    3250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR083
U 1 1 601B948F
P 3250 3000
F 0 "#PWR083" H 3250 2750 50  0001 C CNN
F 1 "GND" H 3255 2827 50  0000 C CNN
F 2 "" H 3250 3000 50  0001 C CNN
F 3 "" H 3250 3000 50  0001 C CNN
	1    3250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR085
U 1 1 601B9A72
P 3250 5000
F 0 "#PWR085" H 3250 4750 50  0001 C CNN
F 1 "GND" H 3255 4827 50  0000 C CNN
F 2 "" H 3250 5000 50  0001 C CNN
F 3 "" H 3250 5000 50  0001 C CNN
	1    3250 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U32
U 1 1 601BC4CB
P 4950 2000
F 0 "U32" H 4950 3081 50  0000 C CNN
F 1 "74LS157" H 4950 2990 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS157 U33
U 1 1 601BDB8B
P 4950 4300
F 0 "U33" H 4950 5381 50  0000 C CNN
F 1 "74LS157" H 4950 5290 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4950 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 4950 4300 50  0001 C CNN
	1    4950 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 601C5224
P 4950 3000
F 0 "#PWR088" H 4950 2750 50  0001 C CNN
F 1 "GND" H 4955 2827 50  0000 C CNN
F 2 "" H 4950 3000 50  0001 C CNN
F 3 "" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR089
U 1 1 601C5AF2
P 4950 5300
F 0 "#PWR089" H 4950 5050 50  0001 C CNN
F 1 "GND" H 4955 5127 50  0000 C CNN
F 2 "" H 4950 5300 50  0001 C CNN
F 3 "" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR091
U 1 1 601C61DA
P 7250 5300
F 0 "#PWR091" H 7250 5050 50  0001 C CNN
F 1 "GND" H 7255 5127 50  0000 C CNN
F 2 "" H 7250 5300 50  0001 C CNN
F 3 "" H 7250 5300 50  0001 C CNN
	1    7250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR090
U 1 1 601C679B
P 7250 2950
F 0 "#PWR090" H 7250 2700 50  0001 C CNN
F 1 "GND" H 7255 2777 50  0000 C CNN
F 2 "" H 7250 2950 50  0001 C CNN
F 3 "" H 7250 2950 50  0001 C CNN
	1    7250 2950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS257 U34
U 1 1 601C7FCA
P 7250 1950
F 0 "U34" H 7250 3031 50  0000 C CNN
F 1 "74LS257" H 7250 2940 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7250 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 7250 1950 50  0001 C CNN
	1    7250 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS257 U35
U 1 1 601C9C94
P 7250 4300
F 0 "U35" H 7250 5381 50  0000 C CNN
F 1 "74LS257" H 7250 5290 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7250 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS257" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
Text Label 3750 1700 0    50   ~ 0
r00
Text Label 3750 1800 0    50   ~ 0
r01
Text Label 3750 1900 0    50   ~ 0
r02
Text Label 3750 2000 0    50   ~ 0
r03
Text Label 3750 2100 0    50   ~ 0
r04
Text Label 3750 2200 0    50   ~ 0
r05
Text Label 3750 2300 0    50   ~ 0
r06
Text Label 3750 2400 0    50   ~ 0
r07
Text Label 3750 3700 0    50   ~ 0
r10
Text Label 3750 3800 0    50   ~ 0
r11
Text Label 3750 3900 0    50   ~ 0
r12
Text Label 3750 4000 0    50   ~ 0
r13
Text Label 3750 4100 0    50   ~ 0
r14
Text Label 3750 4200 0    50   ~ 0
r15
Text Label 3750 4300 0    50   ~ 0
r16
Text Label 3750 4400 0    50   ~ 0
r17
Text Label 4450 1400 2    50   ~ 0
r00
Text Label 4450 1500 2    50   ~ 0
r10
Text Label 4450 1700 2    50   ~ 0
r01
Text Label 4450 1800 2    50   ~ 0
r11
Text Label 4450 2000 2    50   ~ 0
r02
Text Label 4450 2300 2    50   ~ 0
r03
Text Label 4450 3700 2    50   ~ 0
r04
Text Label 4450 4000 2    50   ~ 0
r05
Text Label 4450 4300 2    50   ~ 0
r06
Text Label 4450 4600 2    50   ~ 0
r07
Text Label 4450 2100 2    50   ~ 0
r12
Text Label 4450 2400 2    50   ~ 0
r13
Text Label 4450 3800 2    50   ~ 0
r14
Text Label 4450 4100 2    50   ~ 0
r15
Text Label 4450 4400 2    50   ~ 0
r16
Text Label 4450 4700 2    50   ~ 0
r17
$Comp
L power:GND #PWR086
U 1 1 601CDEAD
P 4450 2700
F 0 "#PWR086" H 4450 2450 50  0001 C CNN
F 1 "GND" H 4455 2527 50  0000 C CNN
F 2 "" H 4450 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0001 C CNN
	1    4450 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR087
U 1 1 601CE3D2
P 4450 5000
F 0 "#PWR087" H 4450 4750 50  0001 C CNN
F 1 "GND" H 4455 4827 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
Text Label 6750 1350 2    50   ~ 0
r00
Text Label 6750 1450 2    50   ~ 0
r10
Text Label 6750 1650 2    50   ~ 0
r01
Text Label 6750 1750 2    50   ~ 0
r11
Text Label 6750 1950 2    50   ~ 0
r02
Text Label 6750 2250 2    50   ~ 0
r03
Text Label 6750 3700 2    50   ~ 0
r04
Text Label 6750 4000 2    50   ~ 0
r05
Text Label 6750 4300 2    50   ~ 0
r06
Text Label 6750 4600 2    50   ~ 0
r07
Text Label 6750 2050 2    50   ~ 0
r12
Text Label 6750 2350 2    50   ~ 0
r13
Text Label 6750 3800 2    50   ~ 0
r14
Text Label 6750 4100 2    50   ~ 0
r15
Text Label 6750 4400 2    50   ~ 0
r16
Text Label 6750 4700 2    50   ~ 0
r17
Text GLabel 4450 2600 0    50   Input ~ 0
ctrlAluSel
Text GLabel 4450 4900 0    50   Input ~ 0
ctrlAluSel
Text GLabel 6750 2550 0    50   Input ~ 0
ctrlRegBusSel
Text GLabel 6750 4900 0    50   Input ~ 0
ctrlRegBusSel
Text GLabel 6750 2650 0    50   Input ~ 0
ctrlRegBusNOE
Text GLabel 6750 5000 0    50   Input ~ 0
ctrlRegBusNOE
Text HLabel 5450 1400 2    50   Output ~ 0
a0
Text HLabel 5450 1700 2    50   Output ~ 0
a1
Text HLabel 5450 2000 2    50   Output ~ 0
a2
Text HLabel 5450 2300 2    50   Output ~ 0
a3
Text HLabel 5450 3700 2    50   Output ~ 0
a4
Text HLabel 5450 4000 2    50   Output ~ 0
a5
Text HLabel 5450 4300 2    50   Output ~ 0
a6
Text HLabel 5450 4600 2    50   Output ~ 0
a7
Text HLabel 7750 1350 2    50   Output ~ 0
b0
Text HLabel 7750 1650 2    50   Output ~ 0
b1
Text HLabel 7750 1950 2    50   Output ~ 0
b2
Text HLabel 7750 2250 2    50   Output ~ 0
b3
Text HLabel 7750 3700 2    50   Output ~ 0
b4
Text HLabel 7750 4000 2    50   Output ~ 0
b5
Text HLabel 7750 4300 2    50   Output ~ 0
b6
Text HLabel 7750 4600 2    50   Output ~ 0
b7
$Comp
L power:+5V #PWR0109
U 1 1 6034A7FA
P 4950 1100
F 0 "#PWR0109" H 4950 950 50  0001 C CNN
F 1 "+5V" H 4965 1273 50  0000 C CNN
F 2 "" H 4950 1100 50  0001 C CNN
F 3 "" H 4950 1100 50  0001 C CNN
	1    4950 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 6034AB5A
P 7250 1050
F 0 "#PWR0110" H 7250 900 50  0001 C CNN
F 1 "+5V" H 7265 1223 50  0000 C CNN
F 2 "" H 7250 1050 50  0001 C CNN
F 3 "" H 7250 1050 50  0001 C CNN
	1    7250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 6034B0BA
P 7250 3400
F 0 "#PWR0111" H 7250 3250 50  0001 C CNN
F 1 "+5V" H 7265 3573 50  0000 C CNN
F 2 "" H 7250 3400 50  0001 C CNN
F 3 "" H 7250 3400 50  0001 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 6034BBB6
P 4950 3400
F 0 "#PWR0112" H 4950 3250 50  0001 C CNN
F 1 "+5V" H 4965 3573 50  0000 C CNN
F 2 "" H 4950 3400 50  0001 C CNN
F 3 "" H 4950 3400 50  0001 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
