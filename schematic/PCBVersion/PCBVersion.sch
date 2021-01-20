EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 11
Title "ALU"
Date "2021-01-20"
Rev "v01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3050 2050 850  800 
U 60248238
F0 "Adder0" 50
F1 "4BitFullAdder.sch" 50
F2 "a[0-3]" I L 3050 2150 50 
F3 "b[0-3]" I L 3050 2350 50 
F4 "Cin" I L 3050 2550 50 
F5 "sub" I L 3050 2700 50 
F6 "y[0-3]" I R 3900 2200 50 
F7 "Cout" I R 3900 2600 50 
$EndSheet
$Sheet
S 3050 3350 850  800 
U 60260EB9
F0 "Adder1" 50
F1 "4BitFullAdder.sch" 50
F2 "a[0-3]" I L 3050 3450 50 
F3 "b[0-3]" I L 3050 3650 50 
F4 "Cin" I L 3050 3850 50 
F5 "sub" I L 3050 4000 50 
F6 "y[0-3]" I R 3900 3500 50 
F7 "Cout" I R 3900 3900 50 
$EndSheet
Wire Wire Line
	3900 2600 4000 2600
Wire Wire Line
	4000 2600 4000 3150
Wire Wire Line
	4000 3150 3000 3150
Wire Wire Line
	3000 3150 3000 3850
Wire Wire Line
	3000 3850 3050 3850
Wire Wire Line
	3050 2700 2900 2700
Wire Wire Line
	2900 2700 2900 4000
Wire Wire Line
	2900 4000 3050 4000
Wire Wire Line
	2900 2700 2900 2550
Wire Wire Line
	2900 2550 3050 2550
Connection ~ 2900 2700
$EndSCHEMATC
