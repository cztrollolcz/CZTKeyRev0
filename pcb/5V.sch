EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 600  650  0    98   ~ 0
Possibly better solution to EXT5V
Text GLabel 1350 1350 0    50   Input ~ 0
MCU5V
$Comp
L power:GND #PWR?
U 1 1 5FE07F85
P 1450 1600
F 0 "#PWR?" H 1450 1350 50  0001 C CNN
F 1 "GND" H 1455 1427 50  0000 C CNN
F 2 "" H 1450 1600 50  0001 C CNN
F 3 "" H 1450 1600 50  0001 C CNN
	1    1450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1600 1600 1600
$Comp
L Device:R_Small R11
U 1 1 5FE08A7B
P 1700 1600
F 0 "R11" V 1504 1600 50  0000 C CNN
F 1 "330k" V 1595 1600 50  0000 C CNN
F 2 "" H 1700 1600 50  0001 C CNN
F 3 "~" H 1700 1600 50  0001 C CNN
	1    1700 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 1600 1850 1600
Wire Wire Line
	1850 1600 1850 2050
Wire Wire Line
	1850 1600 2100 1600
Connection ~ 1850 1600
Text GLabel 1350 2050 0    50   Input ~ 0
EXT5V
Wire Wire Line
	2250 2050 2400 2050
Wire Wire Line
	2400 2050 2400 1800
Wire Wire Line
	2400 2050 3100 2050
Connection ~ 2400 2050
Wire Wire Line
	2400 1400 2400 1350
Wire Wire Line
	2400 1350 1350 1350
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 5FE0F49C
P 2300 1600
F 0 "Q1" H 2506 1646 50  0000 L CNN
F 1 "AO3401A" H 2506 1555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2500 1525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 2300 1600 50  0001 L CNN
	1    2300 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q2
U 1 1 5FE10646
P 2050 2150
F 0 "Q2" V 2393 2150 50  0000 C CNN
F 1 "AO3401A" V 2302 2150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2250 2075 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 2050 2150 50  0001 L CNN
	1    2050 2150
	0    -1   -1   0   
$EndComp
Connection ~ 1850 2050
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5FE11E60
P 1750 2300
F 0 "Q3" V 2001 2300 50  0000 C CNN
F 1 "2N7002" V 2092 2300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1950 2225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 1750 2300 50  0001 L CNN
	1    1750 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 2400 2050 2400
Wire Wire Line
	2050 2400 2050 2350
Wire Wire Line
	1350 2050 1750 2050
Wire Wire Line
	2050 2400 2400 2400
Connection ~ 2050 2400
Wire Wire Line
	1750 2100 1750 2050
Connection ~ 1750 2050
Wire Wire Line
	1750 2050 1850 2050
Wire Wire Line
	1550 2400 1500 2400
$Comp
L power:GND #PWR?
U 1 1 5FE1561B
P 1500 2400
F 0 "#PWR?" H 1500 2150 50  0001 C CNN
F 1 "GND" H 1505 2227 50  0000 C CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5FE165A1
P 2400 2250
F 0 "R13" H 2459 2296 50  0000 L CNN
F 1 "330k" H 2459 2205 50  0000 L CNN
F 2 "" H 2400 2250 50  0001 C CNN
F 3 "~" H 2400 2250 50  0001 C CNN
	1    2400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2400 2400 2350
Wire Wire Line
	2400 2150 2400 2050
Text GLabel 3100 2050 1    50   Input ~ 0
OUT5V
Text Notes 600  950  0    50   ~ 0
If there's no external power supply it uses PC5V\nwhich is the PC's USB VBUS line otherwise it uses\nexternal power (which is also 5V but more current is available).
$EndSCHEMATC
