EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Christmas Tree"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20MU U?
U 1 1 619C5063
P 4350 4400
F 0 "U?" H 3807 4446 50  0000 R CNN
F 1 "ATtiny85-20MU" H 3807 4355 50  0000 R CNN
F 2 "Package_DFN_QFN:QFN-20-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 4350 4400 50  0001 C CIN
F 3 "" H 4350 4400 50  0001 C CNN
F 4 "Microchip Technology" H 4350 4400 50  0001 C CNN "Manufacturer"
F 5 "ATTINY85-20MU" H 4350 4400 50  0001 C CNN "Manufacturer #"
F 6 "ATTINY85-20MU-ND" H 4350 4400 50  0001 C CNN "Digi-Key #"
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619C5F19
P 4350 5150
F 0 "#PWR?" H 4350 4900 50  0001 C CNN
F 1 "GND" H 4355 4977 50  0000 C CNN
F 2 "" H 4350 5150 50  0001 C CNN
F 3 "" H 4350 5150 50  0001 C CNN
	1    4350 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5000 4350 5150
$Comp
L power:+3V3 #PWR?
U 1 1 619C68AB
P 4350 3300
F 0 "#PWR?" H 4350 3150 50  0001 C CNN
F 1 "+3V3" H 4365 3473 50  0000 C CNN
F 2 "" H 4350 3300 50  0001 C CNN
F 3 "" H 4350 3300 50  0001 C CNN
	1    4350 3300
	1    0    0    -1  
$EndComp
Text GLabel 5200 4300 2    50   Input ~ 0
PB2-SCK
$Comp
L Device:R R?
U 1 1 619C74DD
P 6600 3750
F 0 "R?" H 6670 3796 50  0000 L CNN
F 1 "10 kohm" H 6670 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6530 3750 50  0001 C CNN
F 3 "~" H 6600 3750 50  0001 C CNN
	1    6600 3750
	1    0    0    -1  
$EndComp
Text Notes 3850 2500 0    50   ~ 0
https://bigdanzblog.wordpress.com/2014/08/10/attiny85-wake-from-sleep-on-pin-state-change-code-example/comment-page-1/
$Comp
L Switch:SW_Push SW?
U 1 1 619C84F5
P 6800 4850
F 0 "SW?" H 6800 5135 50  0000 C CNN
F 1 "SW_Push" H 6800 5044 50  0000 C CNN
F 2 "" H 6800 5050 50  0001 C CNN
F 3 "~" H 6800 5050 50  0001 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT?
U 1 1 619C8DA9
P 8600 4450
F 0 "BT?" H 8718 4546 50  0000 L CNN
F 1 "2x AAA" H 8718 4455 50  0000 L CNN
F 2 "" V 8600 4510 50  0001 C CNN
F 3 "~" V 8600 4510 50  0001 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619C96AD
P 3950 3550
F 0 "C?" V 3698 3550 50  0000 C CNN
F 1 "0.1 uF" V 3789 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3988 3400 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	4100 3550 4350 3550
Connection ~ 4350 3550
Wire Wire Line
	4350 3550 4350 3800
Wire Wire Line
	4350 3300 4350 3550
$Comp
L power:GND #PWR?
U 1 1 619CD6E0
P 3550 3700
F 0 "#PWR?" H 3550 3450 50  0001 C CNN
F 1 "GND" H 3555 3527 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3550 3550 3700
Wire Wire Line
	3550 3550 3800 3550
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J?
U 1 1 619CE28C
P 3900 6550
F 0 "J?" H 3950 6867 50  0000 C CNN
F 1 "ICSP" H 3950 6776 50  0000 C CNN
F 2 "" H 3900 6550 50  0001 C CNN
F 3 "~" H 3900 6550 50  0001 C CNN
	1    3900 6550
	1    0    0    -1  
$EndComp
Text GLabel 5200 4200 2    50   Input ~ 0
PB1-MISO
Text GLabel 5200 4100 2    50   Input ~ 0
PB0-MOSI
Text GLabel 5200 4500 2    50   Input ~ 0
PB4
Wire Wire Line
	4950 4500 5200 4500
Wire Wire Line
	5200 4600 4950 4600
Wire Wire Line
	4950 4400 5200 4400
Wire Wire Line
	4950 4100 5200 4100
Wire Wire Line
	5200 4200 4950 4200
Wire Wire Line
	4950 4300 5200 4300
Text GLabel 4650 6350 2    50   Input ~ 0
PB2-SCK
Text GLabel 4650 6250 2    50   Input ~ 0
PB1-MISO
Text GLabel 4650 6150 2    50   Input ~ 0
PB0-MOSI
Text GLabel 5200 4400 2    50   Input ~ 0
PCINT3
Text GLabel 5200 4600 2    50   Input ~ 0
PB5
Text GLabel 6400 4850 0    50   Input ~ 0
PCINT3
Text Notes 5000 4750 0    50   ~ 0
Use RESET as INT?
$Comp
L Device:LED D?
U 1 1 619D12C4
P 8550 3400
F 0 "D?" H 8543 3145 50  0000 C CNN
F 1 "LED" H 8543 3236 50  0000 C CNN
F 2 "" H 8550 3400 50  0001 C CNN
F 3 "~" H 8550 3400 50  0001 C CNN
	1    8550 3400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
