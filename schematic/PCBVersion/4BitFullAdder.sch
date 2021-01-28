EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 18
Title "ALU"
Date "2021-01-20"
Rev "v01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 2350 3250 2350
Wire Wire Line
	4300 1050 4300 1000
Wire Wire Line
	5000 1000 5000 1050
Wire Wire Line
	5650 1050 5650 1000
Wire Wire Line
	5650 2100 5650 2050
Wire Wire Line
	5000 2050 5000 2100
Wire Wire Line
	4300 2100 4300 2050
Wire Wire Line
	2900 2100 2900 2050
Wire Wire Line
	3650 2050 3650 2100
Wire Wire Line
	3650 1000 3650 1050
Wire Wire Line
	2900 1000 2900 1050
$Comp
L power:+5V #PWR?
U 1 1 601C37F5
P 5650 1000
AR Path="/60248238/601C37F5" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601C37F5" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601C37F5" Ref="#PWR013"  Part="1" 
AR Path="/600C5001/60260EB9/601C37F5" Ref="#PWR023"  Part="1" 
F 0 "#PWR013" H 5650 850 50  0001 C CNN
F 1 "+5V" H 5665 1173 50  0000 C CNN
F 2 "" H 5650 1000 50  0001 C CNN
F 3 "" H 5650 1000 50  0001 C CNN
	1    5650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601C25DD
P 5000 1000
AR Path="/60248238/601C25DD" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601C25DD" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601C25DD" Ref="#PWR011"  Part="1" 
AR Path="/600C5001/60260EB9/601C25DD" Ref="#PWR021"  Part="1" 
F 0 "#PWR011" H 5000 850 50  0001 C CNN
F 1 "+5V" H 5015 1173 50  0000 C CNN
F 2 "" H 5000 1000 50  0001 C CNN
F 3 "" H 5000 1000 50  0001 C CNN
	1    5000 1000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 60189268
P 5000 1550
AR Path="/60248238/60189268" Ref="U?"  Part="5" 
AR Path="/60260EB9/60189268" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/60189268" Ref="U4"  Part="5" 
AR Path="/600C5001/60260EB9/60189268" Ref="U9"  Part="5" 
F 0 "U4" H 5230 1596 50  0000 L CNN
F 1 "74LS08" H 5230 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5000 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5000 1550 50  0001 C CNN
	5    5000 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A9C21
P 2900 2100
AR Path="/60248238/601A9C21" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A9C21" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A9C21" Ref="#PWR06"  Part="1" 
AR Path="/600C5001/60260EB9/601A9C21" Ref="#PWR016"  Part="1" 
F 0 "#PWR06" H 2900 1850 50  0001 C CNN
F 1 "GND" H 2905 1927 50  0000 C CNN
F 2 "" H 2900 2100 50  0001 C CNN
F 3 "" H 2900 2100 50  0001 C CNN
	1    2900 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A9101
P 3650 2100
AR Path="/60248238/601A9101" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A9101" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A9101" Ref="#PWR08"  Part="1" 
AR Path="/600C5001/60260EB9/601A9101" Ref="#PWR018"  Part="1" 
F 0 "#PWR08" H 3650 1850 50  0001 C CNN
F 1 "GND" H 3655 1927 50  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A8BDE
P 4300 2100
AR Path="/60248238/601A8BDE" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A8BDE" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A8BDE" Ref="#PWR010"  Part="1" 
AR Path="/600C5001/60260EB9/601A8BDE" Ref="#PWR020"  Part="1" 
F 0 "#PWR010" H 4300 1850 50  0001 C CNN
F 1 "GND" H 4305 1927 50  0000 C CNN
F 2 "" H 4300 2100 50  0001 C CNN
F 3 "" H 4300 2100 50  0001 C CNN
	1    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A8769
P 5000 2100
AR Path="/60248238/601A8769" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A8769" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A8769" Ref="#PWR012"  Part="1" 
AR Path="/600C5001/60260EB9/601A8769" Ref="#PWR022"  Part="1" 
F 0 "#PWR012" H 5000 1850 50  0001 C CNN
F 1 "GND" H 5005 1927 50  0000 C CNN
F 2 "" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A81A4
P 5650 2100
AR Path="/60248238/601A81A4" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A81A4" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A81A4" Ref="#PWR014"  Part="1" 
AR Path="/600C5001/60260EB9/601A81A4" Ref="#PWR024"  Part="1" 
F 0 "#PWR014" H 5650 1850 50  0001 C CNN
F 1 "GND" H 5655 1927 50  0000 C CNN
F 2 "" H 5650 2100 50  0001 C CNN
F 3 "" H 5650 2100 50  0001 C CNN
	1    5650 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601A601F
P 4300 1000
AR Path="/60248238/601A601F" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A601F" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A601F" Ref="#PWR09"  Part="1" 
AR Path="/600C5001/60260EB9/601A601F" Ref="#PWR019"  Part="1" 
F 0 "#PWR09" H 4300 850 50  0001 C CNN
F 1 "+5V" H 4315 1173 50  0000 C CNN
F 2 "" H 4300 1000 50  0001 C CNN
F 3 "" H 4300 1000 50  0001 C CNN
	1    4300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601A5A36
P 3650 1000
AR Path="/60248238/601A5A36" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A5A36" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A5A36" Ref="#PWR07"  Part="1" 
AR Path="/600C5001/60260EB9/601A5A36" Ref="#PWR017"  Part="1" 
F 0 "#PWR07" H 3650 850 50  0001 C CNN
F 1 "+5V" H 3665 1173 50  0000 C CNN
F 2 "" H 3650 1000 50  0001 C CNN
F 3 "" H 3650 1000 50  0001 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 601A53ED
P 2900 1000
AR Path="/60248238/601A53ED" Ref="#PWR?"  Part="1" 
AR Path="/60260EB9/601A53ED" Ref="#PWR?"  Part="1" 
AR Path="/600C5001/60248238/601A53ED" Ref="#PWR05"  Part="1" 
AR Path="/600C5001/60260EB9/601A53ED" Ref="#PWR015"  Part="1" 
F 0 "#PWR05" H 2900 850 50  0001 C CNN
F 1 "+5V" H 2915 1173 50  0000 C CNN
F 2 "" H 2900 1000 50  0001 C CNN
F 3 "" H 2900 1000 50  0001 C CNN
	1    2900 1000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 6018B67E
P 5650 1550
AR Path="/60248238/6018B67E" Ref="U?"  Part="5" 
AR Path="/60260EB9/6018B67E" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/6018B67E" Ref="U5"  Part="5" 
AR Path="/600C5001/60260EB9/6018B67E" Ref="U10"  Part="5" 
F 0 "U5" H 5880 1596 50  0000 L CNN
F 1 "74LS32" H 5880 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5650 1550 50  0001 C CNN
	5    5650 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 5 1 60186DED
P 3650 1550
AR Path="/60248238/60186DED" Ref="U?"  Part="5" 
AR Path="/60260EB9/60186DED" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/60186DED" Ref="U2"  Part="5" 
AR Path="/600C5001/60260EB9/60186DED" Ref="U7"  Part="5" 
F 0 "U2" H 3880 1596 50  0000 L CNN
F 1 "74LS08" H 3880 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 3650 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 3650 1550 50  0001 C CNN
	5    3650 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 6018470D
P 4300 1550
AR Path="/60248238/6018470D" Ref="U?"  Part="5" 
AR Path="/60260EB9/6018470D" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/6018470D" Ref="U3"  Part="5" 
AR Path="/600C5001/60260EB9/6018470D" Ref="U8"  Part="5" 
F 0 "U3" H 4530 1596 50  0000 L CNN
F 1 "74LS86" H 4530 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4300 1550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 4300 1550 50  0001 C CNN
	5    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS86 U?
U 5 1 601820B8
P 2900 1550
AR Path="/60248238/601820B8" Ref="U?"  Part="5" 
AR Path="/60260EB9/601820B8" Ref="U?"  Part="5" 
AR Path="/600C5001/60248238/601820B8" Ref="U1"  Part="5" 
AR Path="/600C5001/60260EB9/601820B8" Ref="U6"  Part="5" 
F 0 "U1" H 3130 1596 50  0000 L CNN
F 1 "74LS86" H 3130 1505 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2900 1550 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 2900 1550 50  0001 C CNN
	5    2900 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3400 2950 3400
Wire Wire Line
	2950 2500 3250 2500
Wire Wire Line
	3250 4300 2950 4300
Wire Wire Line
	3250 5150 2950 5150
Wire Wire Line
	3150 5000 3250 5000
Wire Wire Line
	3150 4850 3150 5000
Wire Wire Line
	4250 4850 3150 4850
Wire Wire Line
	4250 4150 4250 4850
Wire Wire Line
	4050 4150 4250 4150
Wire Wire Line
	3150 4150 3250 4150
Wire Wire Line
	3150 4000 3150 4150
Wire Wire Line
	4250 4000 3150 4000
Wire Wire Line
	4250 3250 4250 4000
Wire Wire Line
	4050 3250 4250 3250
Wire Wire Line
	3150 3250 3250 3250
Wire Wire Line
	3150 3100 3150 3250
Wire Wire Line
	4250 3100 3150 3100
Wire Wire Line
	4250 2350 4250 3100
Wire Wire Line
	4050 2350 4250 2350
$Sheet
S 3250 4950 800  650 
U 6016C9C5
F0 "Bit3" 50
F1 "1BitFullAdder.sch" 50
F2 "Cin" I L 3250 5000 50 
F3 "A" I L 3250 5150 50 
F4 "B" I L 3250 5250 50 
F5 "Y" O R 4050 5200 50 
F6 "Cout" O R 4050 5000 50 
F7 "and" O R 4050 5300 50 
F8 "xor" O R 4050 5400 50 
$EndSheet
$Sheet
S 3250 4100 800  650 
U 6016C700
F0 "Bit2" 50
F1 "1BitFullAdder.sch" 50
F2 "Cin" I L 3250 4150 50 
F3 "A" I L 3250 4300 50 
F4 "B" I L 3250 4400 50 
F5 "Y" O R 4050 4350 50 
F6 "Cout" O R 4050 4150 50 
F7 "and" O R 4050 4450 50 
F8 "xor" O R 4050 4550 50 
$EndSheet
$Sheet
S 3250 3200 800  650 
U 6016C4DC
F0 "Bit1" 50
F1 "1BitFullAdder.sch" 50
F2 "Cin" I L 3250 3250 50 
F3 "A" I L 3250 3400 50 
F4 "B" I L 3250 3500 50 
F5 "Y" O R 4050 3450 50 
F6 "Cout" O R 4050 3250 50 
F7 "and" O R 4050 3550 50 
F8 "xor" O R 4050 3650 50 
$EndSheet
$Sheet
S 3250 2300 800  650 
U 6014201D
F0 "Bit0" 50
F1 "1BitFullAdder.sch" 50
F2 "Cin" I L 3250 2350 50 
F3 "A" I L 3250 2500 50 
F4 "B" I L 3250 2600 50 
F5 "Y" O R 4050 2550 50 
F6 "and" O R 4050 2650 50 
F7 "xor" O R 4050 2750 50 
F8 "Cout" O R 4050 2350 50 
$EndSheet
Text HLabel 2550 2350 0    50   Input ~ 0
Cin
Wire Wire Line
	2950 2600 3250 2600
Wire Wire Line
	2950 3500 3250 3500
Wire Wire Line
	2950 4400 3250 4400
Wire Wire Line
	2950 5250 3250 5250
Text HLabel 2950 2500 0    50   Input ~ 0
a0
Text HLabel 2950 2600 0    50   Input ~ 0
b0
Text HLabel 2950 3400 0    50   Input ~ 0
a1
Text HLabel 2950 4300 0    50   Input ~ 0
a2
Text HLabel 2950 5150 0    50   Input ~ 0
a3
Text HLabel 2950 3500 0    50   Input ~ 0
b1
Text HLabel 2950 4400 0    50   Input ~ 0
b2
Text HLabel 2950 5250 0    50   Input ~ 0
b3
Text HLabel 4350 2550 2    50   Output ~ 0
y0
Text HLabel 4400 3450 2    50   Output ~ 0
y1
Text HLabel 4400 4350 2    50   Output ~ 0
y2
Text HLabel 4450 5200 2    50   Output ~ 0
y3
Wire Wire Line
	4050 5200 4450 5200
Wire Wire Line
	4050 4350 4400 4350
Wire Wire Line
	4050 3450 4400 3450
Wire Wire Line
	4050 2550 4350 2550
Wire Wire Line
	4050 5000 4450 5000
Text HLabel 4450 5000 2    50   Output ~ 0
Cout
Text HLabel 4350 2650 2    50   Output ~ 0
and0
Text HLabel 4400 3550 2    50   Output ~ 0
and1
Text HLabel 4450 5300 2    50   Output ~ 0
and3
Text HLabel 4400 4450 2    50   Output ~ 0
and2
Wire Wire Line
	4050 2650 4350 2650
Wire Wire Line
	4050 3550 4400 3550
Wire Wire Line
	4400 4450 4050 4450
Wire Wire Line
	4050 5300 4450 5300
Text HLabel 4350 2750 2    50   Output ~ 0
xor0
Text HLabel 4400 3650 2    50   Output ~ 0
xor1
Text HLabel 4400 4550 2    50   Output ~ 0
xor2
Text HLabel 4450 5400 2    50   Output ~ 0
xor3
Wire Wire Line
	4450 5400 4050 5400
Wire Wire Line
	4050 4550 4400 4550
Wire Wire Line
	4400 3650 4050 3650
Wire Wire Line
	4050 2750 4350 2750
$EndSCHEMATC
