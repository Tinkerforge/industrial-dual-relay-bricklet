EESchema Schematic File Version 2
LIBS:tinkerforge
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Industrial Dual Relay"
Date "2017-12-06"
Rev "1.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2017, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 550  7700 0    40   ~ 0
Copyright Tinkerforge GmbH 2017.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L DRILL U4
U 1 1 4C6050A5
P 10650 6150
F 0 "U4" H 10700 6200 60  0001 C CNN
F 1 "DRILL" H 10650 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6150 60  0001 C CNN
F 3 "" H 10650 6150 60  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L DRILL U5
U 1 1 4C6050A2
P 10650 6350
F 0 "U5" H 10700 6400 60  0001 C CNN
F 1 "DRILL" H 10650 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6350 60  0001 C CNN
F 3 "" H 10650 6350 60  0001 C CNN
	1    10650 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U7
U 1 1 4C60509F
P 11000 6350
F 0 "U7" H 11050 6400 60  0001 C CNN
F 1 "DRILL" H 11000 6350 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6350 60  0001 C CNN
F 3 "" H 11000 6350 60  0001 C CNN
	1    11000 6350
	1    0    0    -1  
$EndComp
$Comp
L DRILL U6
U 1 1 4C605099
P 11000 6150
F 0 "U6" H 11050 6200 60  0001 C CNN
F 1 "DRILL" H 11000 6150 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6150 60  0001 C CNN
F 3 "" H 11000 6150 60  0001 C CNN
	1    11000 6150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 4C5FCFB4
P 2850 1100
F 0 "#PWR01" H 2850 1200 30  0001 C CNN
F 1 "VCC" H 2850 1200 30  0000 C CNN
F 2 "" H 2850 1100 60  0001 C CNN
F 3 "" H 2850 1100 60  0001 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4C5FCF4F
P 1450 2350
F 0 "#PWR02" H 1450 2350 30  0001 C CNN
F 1 "GND" H 1450 2280 30  0001 C CNN
F 2 "" H 1450 2350 60  0001 C CNN
F 3 "" H 1450 2350 60  0001 C CNN
	1    1450 2350
	1    0    0    -1  
$EndComp
$Comp
L CON-SENSOR2 P1
U 1 1 4C5FCF27
P 1450 1800
F 0 "P1" H 1600 2200 60  0000 C CNN
F 1 "CON-SENSOR2" V 1600 1800 60  0000 C CNN
F 2 "kicad-libraries:CON-SENSOR2" H 1450 1800 60  0001 C CNN
F 3 "" H 1450 1800 60  0001 C CNN
	1    1450 1800
	-1   0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54F76B96
P 2850 1400
F 0 "C3" V 2950 1550 50  0000 L CNN
F 1 "1uF" V 2700 1400 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 2850 1400 60  0001 C CNN
F 3 "" H 2850 1400 60  0001 C CNN
	1    2850 1400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 54F77AEA
P 2850 1650
F 0 "#PWR03" H 2850 1650 30  0001 C CNN
F 1 "GND" H 2850 1580 30  0001 C CNN
F 2 "" H 2850 1650 60  0001 C CNN
F 3 "" H 2850 1650 60  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5820FDE6
P 4600 6600
F 0 "C4" V 4650 6350 50  0000 L CNN
F 1 "100nF" V 4450 6500 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 4600 6600 60  0001 C CNN
F 3 "" H 4600 6600 60  0001 C CNN
	1    4600 6600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5821096B
P 4600 6250
F 0 "#PWR04" H 4600 6350 30  0001 C CNN
F 1 "VCC" H 4600 6350 30  0000 C CNN
F 2 "" H 4600 6250 60  0001 C CNN
F 3 "" H 4600 6250 60  0001 C CNN
	1    4600 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58210C80
P 4600 7000
F 0 "#PWR05" H 4600 7000 30  0001 C CNN
F 1 "GND" H 4600 6930 30  0001 C CNN
F 2 "" H 4600 7000 60  0001 C CNN
F 3 "" H 4600 7000 60  0001 C CNN
	1    4600 7000
	1    0    0    -1  
$EndComp
Text GLabel 3150 1800 2    60   Output ~ 0
S-CS
Text GLabel 3150 1900 2    60   Output ~ 0
S-CLK
Text GLabel 3150 2000 2    60   Output ~ 0
S-MOSI
Text GLabel 3150 2100 2    60   Input ~ 0
S-MISO
$Comp
L LED D1
U 1 1 5823347E
P 3800 5550
F 0 "D1" H 3800 5650 50  0000 C CNN
F 1 "blue" H 3800 5450 50  0000 C CNN
F 2 "kicad-libraries:D0603E" H 3800 5550 50  0001 C CNN
F 3 "" H 3800 5550 50  0000 C CNN
	1    3800 5550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 58233528
P 3850 2800
F 0 "P2" H 3850 2950 50  0000 C CNN
F 1 "BOOT" V 3950 2800 50  0000 C CNN
F 2 "kicad-libraries:SolderJumper" H 3850 2700 50  0001 C CNN
F 3 "" H 3850 2700 50  0000 C CNN
	1    3850 2800
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR06
U 1 1 5824794E
P 3550 5500
F 0 "#PWR06" H 3550 5600 30  0001 C CNN
F 1 "VCC" H 3550 5600 30  0000 C CNN
F 2 "" H 3550 5500 60  0001 C CNN
F 3 "" H 3550 5500 60  0001 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
Text Notes 3050 3650 0    39   ~ 0
SPI Slave\nP0.13 : USIC0_CH0-DX2F : SEL\nP0.14 : USIC0_CH0-DX1A : CLK\nP0.15 : USIC0_CH0-DX0B : MOSI\nP2.0 : USIC0_CH0-DOUT0 : MISO
$Comp
L R R1
U 1 1 5898C45C
P 4350 5550
F 0 "R1" V 4430 5550 50  0000 C CNN
F 1 "1k" V 4350 5550 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 4350 5550 60  0001 C CNN
F 3 "" H 4350 5550 60  0000 C CNN
	1    4350 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2350 1450 2250
Wire Wire Line
	1800 1800 2200 1800
Wire Wire Line
	1800 1900 2200 1900
Wire Wire Line
	1800 2000 2200 2000
Wire Wire Line
	1800 2100 2200 2100
Wire Wire Line
	1800 1700 1900 1700
Wire Wire Line
	4100 5550 4000 5550
Wire Wire Line
	3600 5550 3550 5550
Wire Wire Line
	3550 5550 3550 5500
Wire Wire Line
	1800 1600 2850 1600
Connection ~ 2850 1600
$Comp
L XMC1XXX24 U1
U 3 1 58CC2BB9
P 5100 4300
F 0 "U1" H 5000 4550 60  0000 C CNN
F 1 "XMC1100" H 5100 4050 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 5050 60  0001 C CNN
F 3 "" H 5250 5050 60  0000 C CNN
	3    5100 4300
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U1
U 2 1 58CC312F
P 5100 3200
F 0 "U1" H 5000 3750 60  0000 C CNN
F 1 "XMC1100" H 5100 2650 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 3950 60  0001 C CNN
F 3 "" H 5250 3950 60  0000 C CNN
	2    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U1
U 4 1 58CC31C9
P 5100 5300
F 0 "U1" H 5000 5750 60  0000 C CNN
F 1 "XMC1100" H 5100 4850 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 6050 60  0001 C CNN
F 3 "" H 5250 6050 60  0000 C CNN
	4    5100 5300
	1    0    0    -1  
$EndComp
$Comp
L XMC1XXX24 U1
U 1 1 58CC3266
P 5100 6650
F 0 "U1" H 4950 7050 60  0000 C CNN
F 1 "XMC1100" H 5100 6250 60  0000 C CNN
F 2 "kicad-libraries:QFN24-4x4mm-0.5mm" H 5250 7400 60  0001 C CNN
F 3 "" H 5250 7400 60  0000 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6850 4600 6850
Wire Wire Line
	4600 6800 4600 7000
Wire Wire Line
	4600 6250 4600 6400
Wire Wire Line
	4600 6350 4750 6350
Connection ~ 4600 6350
Wire Wire Line
	4600 6950 4750 6950
NoConn ~ 4750 5450
NoConn ~ 4750 5350
NoConn ~ 4750 5250
NoConn ~ 4750 5150
NoConn ~ 4750 5650
NoConn ~ 4750 4450
NoConn ~ 4750 4350
NoConn ~ 4750 3250
NoConn ~ 4750 3350
Connection ~ 4600 6850
Connection ~ 4600 6950
Wire Wire Line
	4650 3450 4750 3450
Wire Wire Line
	4750 3550 4650 3550
Wire Wire Line
	4750 3650 4650 3650
Wire Wire Line
	4650 4950 4750 4950
$Comp
L GND #PWR07
U 1 1 5828358D
P 4100 2900
F 0 "#PWR07" H 4100 2900 30  0001 C CNN
F 1 "GND" H 4100 2830 30  0001 C CNN
F 2 "" H 4100 2900 60  0001 C CNN
F 3 "" H 4100 2900 60  0001 C CNN
	1    4100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2750 4750 2750
Wire Wire Line
	4050 2850 4100 2850
Wire Wire Line
	4100 2850 4100 2900
Wire Wire Line
	2600 1800 3150 1800
Wire Wire Line
	3150 1900 2600 1900
Wire Wire Line
	2600 2000 3150 2000
Wire Wire Line
	3150 2100 2600 2100
Text GLabel 4650 3450 0    60   Input ~ 0
S-CS
Text GLabel 4650 3550 0    60   Input ~ 0
S-CLK
Text GLabel 4650 3650 0    60   Input ~ 0
S-MOSI
Text GLabel 4650 4950 0    60   Output ~ 0
S-MISO
$Comp
L GND #PWR08
U 1 1 5900899B
P 8000 5600
F 0 "#PWR08" H 8000 5600 30  0001 C CNN
F 1 "GND" H 8000 5530 30  0001 C CNN
F 2 "" H 8000 5600 60  0001 C CNN
F 3 "" H 8000 5600 60  0001 C CNN
	1    8000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5200 8000 5600
Wire Wire Line
	8000 4800 8000 4500
$Comp
L DIODE D5
U 1 1 59008C09
P 7800 4350
F 0 "D5" H 7800 4450 40  0000 C CNN
F 1 "LL4148" H 7800 4250 40  0000 C CNN
F 2 "kicad-libraries:SOD-123" H 7800 4350 60  0001 C CNN
F 3 "" H 7800 4350 60  0000 C CNN
	1    7800 4350
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR09
U 1 1 59008D94
P 2500 1100
F 0 "#PWR09" H 2500 950 50  0001 C CNN
F 1 "+5V" H 2500 1240 50  0000 C CNN
F 2 "" H 2500 1100 50  0000 C CNN
F 3 "" H 2500 1100 50  0000 C CNN
	1    2500 1100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 59008E58
P 7800 4050
F 0 "#PWR010" H 7800 3900 50  0001 C CNN
F 1 "+5V" H 7800 4190 50  0000 C CNN
F 2 "" H 7800 4050 50  0000 C CNN
F 3 "" H 7800 4050 50  0000 C CNN
	1    7800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4200 7900 4200
Wire Wire Line
	7900 4200 7900 4150
Wire Wire Line
	7900 4150 7800 4150
Wire Wire Line
	7800 4150 7800 4050
Wire Wire Line
	7650 4550 7900 4550
Wire Wire Line
	7900 4550 7900 4500
Wire Wire Line
	7900 4500 8150 4500
Connection ~ 8000 4500
Connection ~ 7800 4150
$Comp
L R R5
U 1 1 59009415
P 7600 5250
F 0 "R5" V 7680 5250 50  0000 C CNN
F 1 "10k" V 7600 5250 50  0000 C CNN
F 2 "kicad-libraries:R0402F" H 7600 5250 60  0001 C CNN
F 3 "" H 7600 5250 60  0000 C CNN
	1    7600 5250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 590094D3
P 7600 5600
F 0 "#PWR011" H 7600 5600 30  0001 C CNN
F 1 "GND" H 7600 5530 30  0001 C CNN
F 2 "" H 7600 5600 60  0001 C CNN
F 3 "" H 7600 5600 60  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5600 7600 5500
Wire Wire Line
	7450 5000 7700 5000
Connection ~ 7600 5000
$Comp
L GND #PWR012
U 1 1 5900A61C
P 8000 2650
F 0 "#PWR012" H 8000 2650 30  0001 C CNN
F 1 "GND" H 8000 2580 30  0001 C CNN
F 2 "" H 8000 2650 60  0001 C CNN
F 3 "" H 8000 2650 60  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2250 8000 2650
Wire Wire Line
	8000 1850 8000 1550
$Comp
L +5V #PWR013
U 1 1 5900A62A
P 7800 1100
F 0 "#PWR013" H 7800 950 50  0001 C CNN
F 1 "+5V" H 7800 1240 50  0000 C CNN
F 2 "" H 7800 1100 50  0000 C CNN
F 3 "" H 7800 1100 50  0000 C CNN
	1    7800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1250 7900 1250
Wire Wire Line
	7900 1250 7900 1200
Wire Wire Line
	7900 1200 7800 1200
Wire Wire Line
	7800 1200 7800 1100
Wire Wire Line
	7650 1600 7900 1600
Wire Wire Line
	7900 1600 7900 1550
Wire Wire Line
	7900 1550 8150 1550
Connection ~ 8000 1550
Connection ~ 7800 1200
$Comp
L R R4
U 1 1 5900A640
P 7600 2300
F 0 "R4" V 7680 2300 50  0000 C CNN
F 1 "10k" V 7600 2300 50  0000 C CNN
F 2 "kicad-libraries:R0402F" H 7600 2300 60  0001 C CNN
F 3 "" H 7600 2300 60  0000 C CNN
	1    7600 2300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5900A646
P 7600 2650
F 0 "#PWR014" H 7600 2650 30  0001 C CNN
F 1 "GND" H 7600 2580 30  0001 C CNN
F 2 "" H 7600 2650 60  0001 C CNN
F 3 "" H 7600 2650 60  0001 C CNN
	1    7600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2650 7600 2550
Wire Wire Line
	7450 2050 7700 2050
Connection ~ 7600 2050
Text GLabel 7450 5000 0    60   Input ~ 0
RELAY0
Text GLabel 7450 2050 0    60   Input ~ 0
RELAY1
Text GLabel 4550 3050 0    60   Output ~ 0
RELAY0
Text GLabel 4550 3150 0    60   Output ~ 0
RELAY1
Wire Wire Line
	4550 3150 4750 3150
Wire Wire Line
	4550 3050 4750 3050
NoConn ~ 4750 2950
Wire Wire Line
	4600 5550 4750 5550
$Comp
L R_PACK4 RP1
U 1 1 590B1954
P 2400 2150
F 0 "RP1" H 2400 2600 50  0000 C CNN
F 1 "82" H 2400 2100 50  0000 C CNN
F 2 "kicad-libraries:4X0402" H 2400 2150 50  0001 C CNN
F 3 "" H 2400 2150 50  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 590B1BE7
P 2150 2300
F 0 "C2" V 2250 2450 50  0000 L CNN
F 1 "220pF" V 2000 2300 50  0000 L CNN
F 2 "kicad-libraries:C0402F" H 2150 2300 60  0001 C CNN
F 3 "" H 2150 2300 60  0001 C CNN
	1    2150 2300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR015
U 1 1 590B1E40
P 2150 2600
F 0 "#PWR015" H 2150 2600 30  0001 C CNN
F 1 "GND" H 2150 2530 30  0001 C CNN
F 2 "" H 2150 2600 60  0001 C CNN
F 3 "" H 2150 2600 60  0001 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2500 2150 2600
Connection ~ 2150 2100
NoConn ~ 4750 4150
$Comp
L DIODE D4
U 1 1 590B4FD5
P 7800 1400
F 0 "D4" H 7800 1500 40  0000 C CNN
F 1 "LL4148" H 7800 1300 40  0000 C CNN
F 2 "kicad-libraries:SOD-123" H 7800 1400 60  0001 C CNN
F 3 "" H 7800 1400 60  0000 C CNN
	1    7800 1400
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 592BEF9F
P 7550 1100
F 0 "D2" H 7550 1200 50  0000 C CNN
F 1 "blue" H 7550 1000 50  0000 C CNN
F 2 "kicad-libraries:D0603E" H 7550 1100 50  0001 C CNN
F 3 "" H 7550 1100 50  0000 C CNN
	1    7550 1100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 592BF601
P 7550 1600
F 0 "R2" V 7630 1600 50  0000 C CNN
F 1 "1k" V 7550 1600 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 7550 1600 60  0001 C CNN
F 3 "" H 7550 1600 60  0000 C CNN
	1    7550 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 1850 7650 1850
Wire Wire Line
	7650 1850 7650 1600
Connection ~ 7800 1600
Wire Wire Line
	7800 1100 7700 1100
Wire Wire Line
	7700 1100 7700 900 
Wire Wire Line
	7700 900  7550 900 
Wire Wire Line
	7550 1350 7550 1300
$Comp
L LED D3
U 1 1 592BFDB7
P 7550 4050
F 0 "D3" H 7550 4150 50  0000 C CNN
F 1 "blue" H 7550 3950 50  0000 C CNN
F 2 "kicad-libraries:D0603E" H 7550 4050 50  0001 C CNN
F 3 "" H 7550 4050 50  0000 C CNN
	1    7550 4050
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 592C08D3
P 7550 4550
F 0 "R3" V 7630 4550 50  0000 C CNN
F 1 "1k" V 7550 4550 50  0000 C CNN
F 2 "kicad-libraries:R0603F" H 7550 4550 60  0001 C CNN
F 3 "" H 7550 4550 60  0000 C CNN
	1    7550 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7550 4300 7550 4250
Wire Wire Line
	7550 3850 7700 3850
Wire Wire Line
	7700 3850 7700 4050
Wire Wire Line
	7700 4050 7800 4050
Wire Wire Line
	7550 4800 7650 4800
Wire Wire Line
	7650 4800 7650 4550
Connection ~ 7800 4550
Connection ~ 7800 4050
Connection ~ 7800 1100
$Comp
L ORWH-SX U2
U 1 1 5A1D73B6
P 8800 1400
F 0 "U2" H 8400 1850 60  0000 C CNN
F 1 "G5LE-1-36" H 8800 1000 60  0000 C CNN
F 2 "kicad-libraries:G5LE-1" H 8800 1400 60  0001 C CNN
F 3 "" H 8800 1400 60  0000 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1100 8000 1100
Wire Wire Line
	8000 1100 8000 1250
Wire Wire Line
	8350 1700 8150 1700
Wire Wire Line
	8150 1700 8150 1550
$Comp
L ORWH-SX U3
U 1 1 5A1D80FE
P 8800 4350
F 0 "U3" H 8400 4800 60  0000 C CNN
F 1 "G5LE-1-36" H 8800 3950 60  0000 C CNN
F 2 "kicad-libraries:G5LE-1" H 8800 4350 60  0001 C CNN
F 3 "" H 8800 4350 60  0000 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4050 8000 4050
Wire Wire Line
	8000 4050 8000 4200
Wire Wire Line
	8350 4650 8150 4650
Wire Wire Line
	8150 4650 8150 4500
Wire Wire Line
	8350 4350 8350 4250
Wire Wire Line
	8350 4250 9600 4250
Wire Wire Line
	8350 1400 8350 1300
Wire Wire Line
	8350 1300 9600 1300
Wire Wire Line
	9250 1100 9700 1100
Wire Wire Line
	9250 1700 9500 1700
Wire Wire Line
	9500 4050 9250 4050
Wire Wire Line
	9250 4650 9700 4650
$Comp
L CONN_8 P3
U 1 1 5A269E4B
P 10350 2950
F 0 "P3" V 10300 2950 60  0000 C CNN
F 1 "CONN_8" V 10400 2950 60  0000 C CNN
F 2 "kicad-libraries:OQ_8P" H 10350 3050 60  0001 C CNN
F 3 "" H 10350 3050 60  0000 C CNN
	1    10350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3300 9500 3300
Wire Wire Line
	10000 3200 9600 3200
Wire Wire Line
	10000 3100 9700 3100
Wire Wire Line
	9500 3300 9500 4050
Wire Wire Line
	9600 3200 9600 4250
Wire Wire Line
	9700 3100 9700 4650
Wire Wire Line
	10000 2800 9700 2800
Wire Wire Line
	10000 2700 9600 2700
Wire Wire Line
	10000 2600 9500 2600
Wire Wire Line
	9500 2600 9500 1700
Wire Wire Line
	9600 2700 9600 1300
Wire Wire Line
	9700 2800 9700 1100
NoConn ~ 10000 2900
NoConn ~ 10000 3000
$Comp
L DUAL_MOSFET_N_CH Q1
U 1 1 5A26D844
P 7900 2050
F 0 "Q1" H 8200 2100 50  0000 R CNN
F 1 "SSM6N7002KFU" H 8650 2000 50  0000 R CNN
F 2 "kicad-libraries:SOT363" H 8100 2150 50  0001 C CNN
F 3 "" H 7900 2050 50  0000 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
$Comp
L DUAL_MOSFET_N_CH Q1
U 2 1 5A26DA71
P 7900 5000
F 0 "Q1" H 8200 5050 50  0000 R CNN
F 1 "SSM6N7002KFU" H 8650 4950 50  0000 R CNN
F 2 "kicad-libraries:SOT363" H 8100 5100 50  0001 C CNN
F 3 "" H 7900 5000 50  0000 C CNN
	2    7900 5000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A26EF62
P 2500 1400
F 0 "C1" V 2600 1550 50  0000 L CNN
F 1 "1uF" V 2350 1400 50  0000 L CNN
F 2 "kicad-libraries:C0603F" H 2500 1400 60  0001 C CNN
F 3 "" H 2500 1400 60  0001 C CNN
	1    2500 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 1200 1800 1200
Wire Wire Line
	1800 1200 1800 1500
Wire Wire Line
	2500 1100 2500 1200
Wire Wire Line
	1900 1700 1900 1150
Wire Wire Line
	1900 1150 2850 1150
Wire Wire Line
	2850 1100 2850 1200
Connection ~ 2850 1150
Connection ~ 2500 1200
Connection ~ 2500 1600
Wire Wire Line
	2850 1600 2850 1650
NoConn ~ 4750 4250
$Comp
L CONN_01X01 P4
U 1 1 5A27AFED
P 4450 2850
F 0 "P4" H 4450 2950 50  0000 C CNN
F 1 "Debug" V 4550 2850 50  0000 C CNN
F 2 "kicad-libraries:DEBUG_PAD" H 4450 2850 50  0001 C CNN
F 3 "" H 4450 2850 50  0000 C CNN
	1    4450 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 2850 4750 2850
$EndSCHEMATC
