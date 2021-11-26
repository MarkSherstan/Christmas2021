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
L power:GND #PWR0101
U 1 1 619C5F19
P 2550 3500
F 0 "#PWR0101" H 2550 3250 50  0001 C CNN
F 1 "GND" H 2555 3327 50  0000 C CNN
F 2 "" H 2550 3500 50  0001 C CNN
F 3 "" H 2550 3500 50  0001 C CNN
	1    2550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3350 2550 3500
Text GLabel 3400 2650 2    50   Input ~ 0
PB2-SCK-BLUE
$Comp
L Device:R R1
U 1 1 619C74DD
P 3250 2150
F 0 "R1" H 3320 2196 50  0000 L CNN
F 1 "10 kohm" H 3320 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3180 2150 50  0001 C CNN
F 3 "~" H 3250 2150 50  0001 C CNN
	1    3250 2150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 619C84F5
P 6850 5450
F 0 "SW1" H 6850 5735 50  0000 C CNN
F 1 "SW_Push" H 6850 5644 50  0000 C CNN
F 2 "" H 6850 5650 50  0001 C CNN
F 3 "~" H 6850 5650 50  0001 C CNN
	1    6850 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 619C8DA9
P 2550 5700
F 0 "BT1" H 2668 5796 50  0000 L CNN
F 1 "2x AAA" H 2668 5705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2468_2xAAA" V 2550 5760 50  0001 C CNN
F 3 "~" V 2550 5760 50  0001 C CNN
F 4 "Keystone Electronics" H 2550 5700 50  0001 C CNN "Manufacturer"
F 5 "2468" H 2550 5700 50  0001 C CNN "Manufacturer #"
F 6 "36-2468-ND" H 2550 5700 50  0001 C CNN "Digi-Key #"
	1    2550 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 619C96AD
P 2150 1900
F 0 "C1" V 1898 1900 50  0000 C CNN
F 1 "0.1 uF" V 1989 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2188 1750 50  0001 C CNN
F 3 "~" H 2150 1900 50  0001 C CNN
	1    2150 1900
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 1900 2550 1900
Connection ~ 2550 1900
Wire Wire Line
	2550 1900 2550 2150
Wire Wire Line
	2550 1650 2550 1900
$Comp
L power:GND #PWR0102
U 1 1 619CD6E0
P 1750 2050
F 0 "#PWR0102" H 1750 1800 50  0001 C CNN
F 1 "GND" H 1755 1877 50  0000 C CNN
F 2 "" H 1750 2050 50  0001 C CNN
F 3 "" H 1750 2050 50  0001 C CNN
	1    1750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1900 1750 2050
Wire Wire Line
	1750 1900 2000 1900
Text GLabel 3400 2550 2    50   Input ~ 0
PB1-MISO-GREEN
Text GLabel 3400 2450 2    50   Input ~ 0
PB0-MOSI-RED
Text GLabel 3400 2850 2    50   Input ~ 0
PB4-WHITE
Wire Wire Line
	3150 2850 3400 2850
Wire Wire Line
	3400 2950 3250 2950
Wire Wire Line
	3150 2750 3400 2750
Wire Wire Line
	3150 2450 3400 2450
Wire Wire Line
	3400 2550 3150 2550
Wire Wire Line
	3150 2650 3400 2650
Text GLabel 3400 2750 2    50   Input ~ 0
PCINT3
Text GLabel 3400 2950 2    50   Input ~ 0
RESET
Text GLabel 8700 5450 2    50   Input ~ 0
PCINT3
$Comp
L Device:LED D1
U 1 1 619D12C4
P 7850 1950
F 0 "D1" H 7843 1695 50  0000 C CNN
F 1 "White 2V 20mA" H 7843 1786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 1950 50  0001 C CNN
F 3 "~" H 7850 1950 50  0001 C CNN
	1    7850 1950
	-1   0    0    1   
$EndComp
Text GLabel 2300 7550 0    50   Input ~ 0
RESET
Text GLabel 2300 7450 0    50   Input ~ 0
PB2-SCK-BLUE
Text GLabel 2300 7350 0    50   Input ~ 0
PB1-MISO-GREEN
Text GLabel 3200 7450 2    50   Input ~ 0
PB0-MOSI-RED
$Comp
L power:GND #PWR0103
U 1 1 619D2D26
P 3200 7550
F 0 "#PWR0103" H 3200 7300 50  0001 C CNN
F 1 "GND" H 3205 7377 50  0000 C CNN
F 2 "" H 3200 7550 50  0001 C CNN
F 3 "" H 3200 7550 50  0001 C CNN
	1    3200 7550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 619D36BE
P 2550 1650
F 0 "#PWR0104" H 2550 1500 50  0001 C CNN
F 1 "VCC" H 2565 1823 50  0000 C CNN
F 2 "" H 2550 1650 50  0001 C CNN
F 3 "" H 2550 1650 50  0001 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 619D3F29
P 3200 7350
F 0 "#PWR0105" H 3200 7200 50  0001 C CNN
F 1 "VCC" H 3215 7523 50  0000 C CNN
F 2 "" H 3200 7350 50  0001 C CNN
F 3 "" H 3200 7350 50  0001 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 619D52EA
P 7000 1950
F 0 "R2" V 7207 1950 50  0000 C CNN
F 1 "??" V 7116 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6930 1950 50  0001 C CNN
F 3 "~" H 7000 1950 50  0001 C CNN
	1    7000 1950
	0    -1   -1   0   
$EndComp
Text GLabel 6350 1950 0    50   Input ~ 0
PB4-WHITE
$Comp
L power:VCC #PWR0106
U 1 1 619D5EB4
P 2550 5200
F 0 "#PWR0106" H 2550 5050 50  0001 C CNN
F 1 "VCC" H 2565 5373 50  0000 C CNN
F 2 "" H 2550 5200 50  0001 C CNN
F 3 "" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 619D61CA
P 2550 6100
F 0 "#PWR0107" H 2550 5850 50  0001 C CNN
F 1 "GND" H 2555 5927 50  0000 C CNN
F 2 "" H 2550 6100 50  0001 C CNN
F 3 "" H 2550 6100 50  0001 C CNN
	1    2550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5500 2550 5200
Wire Wire Line
	2550 6100 2550 5800
$Comp
L power:GND #PWR0108
U 1 1 619D84F3
P 8850 1950
F 0 "#PWR0108" H 8850 1700 50  0001 C CNN
F 1 "GND" H 8855 1777 50  0000 C CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
Text GLabel 6350 3450 0    50   Input ~ 0
PB2-SCK-BLUE
Text GLabel 6350 2950 0    50   Input ~ 0
PB1-MISO-GREEN
Text GLabel 6350 2450 0    50   Input ~ 0
PB0-MOSI-RED
$Comp
L Device:R R3
U 1 1 619DEBE9
P 7000 2450
F 0 "R3" V 7207 2450 50  0000 C CNN
F 1 "??" V 7116 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6930 2450 50  0001 C CNN
F 3 "~" H 7000 2450 50  0001 C CNN
	1    7000 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 619DF89B
P 7000 2950
F 0 "R4" V 7207 2950 50  0000 C CNN
F 1 "??" V 7116 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6930 2950 50  0001 C CNN
F 3 "~" H 7000 2950 50  0001 C CNN
	1    7000 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 619DFD53
P 7000 3450
F 0 "R5" V 7207 3450 50  0000 C CNN
F 1 "??" V 7116 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6930 3450 50  0001 C CNN
F 3 "~" H 7000 3450 50  0001 C CNN
	1    7000 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3450 7850 3450
Wire Wire Line
	6350 2450 6850 2450
Wire Wire Line
	6850 3450 6350 3450
Wire Wire Line
	7150 2950 7850 2950
Connection ~ 8350 2450
Wire Wire Line
	8350 2950 7850 2950
Connection ~ 7850 2950
Wire Wire Line
	7150 2450 7850 2450
Wire Wire Line
	7850 2550 7850 2450
Connection ~ 7850 2450
Wire Wire Line
	7850 2450 8350 2450
Wire Wire Line
	7850 2850 7850 2950
Wire Wire Line
	8350 2850 8350 2950
Connection ~ 8350 2950
Wire Wire Line
	8350 2950 8350 3050
Wire Wire Line
	8350 2450 8350 2550
Wire Wire Line
	8350 3350 8350 3450
Connection ~ 8350 3450
Wire Wire Line
	7850 3350 7850 3450
Connection ~ 7850 3450
Wire Wire Line
	7850 3450 8350 3450
Wire Wire Line
	8350 2450 8850 2450
Wire Wire Line
	8350 3450 8850 3450
Wire Wire Line
	8850 2800 8850 2450
Connection ~ 8850 2450
Wire Wire Line
	8850 2450 9350 2450
Wire Wire Line
	9350 2800 9350 2450
Wire Wire Line
	8850 3100 8850 3450
Connection ~ 8850 3450
Wire Wire Line
	8850 3450 9350 3450
Wire Wire Line
	9350 3100 9350 3450
Wire Wire Line
	6350 2950 6850 2950
Wire Wire Line
	6350 1950 6850 1950
Wire Wire Line
	7150 1950 7700 1950
Wire Wire Line
	8850 1950 8000 1950
Wire Wire Line
	2550 1900 3250 1900
Wire Wire Line
	3250 1900 3250 2000
Wire Wire Line
	3250 2300 3250 2950
Connection ~ 3250 2950
Wire Wire Line
	3250 2950 3150 2950
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 61A0C357
P 2700 7450
F 0 "J1" H 2750 7767 50  0000 C CNN
F 1 "ICSP" H 2750 7676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2700 7450 50  0001 C CNN
F 3 "~" H 2700 7450 50  0001 C CNN
	1    2700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7450 2500 7450
Wire Wire Line
	3000 7550 3200 7550
Wire Wire Line
	3000 7450 3200 7450
Wire Wire Line
	3000 7350 3200 7350
Wire Wire Line
	2300 7350 2500 7350
Wire Wire Line
	2300 7550 2500 7550
$Comp
L Device:LED D2
U 1 1 61A199D8
P 7850 2700
F 0 "D2" V 7797 2780 50  0000 L CNN
F 1 "LED" V 7888 2780 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 2700 50  0001 C CNN
F 3 "~" H 7850 2700 50  0001 C CNN
	1    7850 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 61A1D4A6
P 7850 3200
F 0 "D3" V 7797 3280 50  0000 L CNN
F 1 "LED" V 7888 3280 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7850 3200 50  0001 C CNN
F 3 "~" H 7850 3200 50  0001 C CNN
	1    7850 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 2950 7850 3050
$Comp
L Device:LED D4
U 1 1 61A1FF70
P 8350 2700
F 0 "D4" V 8297 2780 50  0000 L CNN
F 1 "LED" V 8388 2780 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8350 2700 50  0001 C CNN
F 3 "~" H 8350 2700 50  0001 C CNN
	1    8350 2700
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 61A238D6
P 8350 3200
F 0 "D5" V 8297 3280 50  0000 L CNN
F 1 "LED" V 8388 3280 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8350 3200 50  0001 C CNN
F 3 "~" H 8350 3200 50  0001 C CNN
	1    8350 3200
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 61A27DF6
P 8850 2950
F 0 "D6" V 8797 3030 50  0000 L CNN
F 1 "LED" V 8888 3030 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8850 2950 50  0001 C CNN
F 3 "~" H 8850 2950 50  0001 C CNN
	1    8850 2950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D7
U 1 1 61A29E47
P 9350 2950
F 0 "D7" V 9297 3030 50  0000 L CNN
F 1 "LED" V 9388 3030 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9350 2950 50  0001 C CNN
F 3 "~" H 9350 2950 50  0001 C CNN
	1    9350 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 61A2E4DC
P 7700 5700
F 0 "R6" H 7770 5746 50  0000 L CNN
F 1 "10 kohm" H 7770 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7630 5700 50  0001 C CNN
F 3 "~" H 7700 5700 50  0001 C CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0109
U 1 1 61A2F449
P 6200 5450
F 0 "#PWR0109" H 6200 5300 50  0001 C CNN
F 1 "VCC" H 6215 5623 50  0000 C CNN
F 2 "" H 6200 5450 50  0001 C CNN
F 3 "" H 6200 5450 50  0001 C CNN
	1    6200 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5450 6650 5450
Wire Wire Line
	7050 5450 7700 5450
$Comp
L power:GND #PWR0110
U 1 1 61A391EE
P 7700 5950
F 0 "#PWR0110" H 7700 5700 50  0001 C CNN
F 1 "GND" H 7705 5777 50  0000 C CNN
F 2 "" H 7700 5950 50  0001 C CNN
F 3 "" H 7700 5950 50  0001 C CNN
	1    7700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5550 7700 5450
Connection ~ 7700 5450
Wire Wire Line
	7700 5450 8700 5450
Wire Wire Line
	7700 5950 7700 5850
$Comp
L MCU_Microchip_ATtiny:ATtiny85V-10SU U1
U 1 1 61A04A59
P 2550 2750
F 0 "U1" H 2021 2796 50  0000 R CNN
F 1 "ATtiny85-20SHR" H 2021 2705 50  0000 R CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 2550 2750 50  0001 C CIN
F 3 "" H 2550 2750 50  0001 C CNN
F 4 "Microchip Technology" H 2550 2750 50  0001 C CNN "Manufacturer"
F 5 "ATTINY85-20SHR" H 2550 2750 50  0001 C CNN "Manufacturer #"
F 6 "ATTINY85-20SHRCT-ND" H 2550 2750 50  0001 C CNN "Digi-Key #"
	1    2550 2750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
