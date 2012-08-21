EESchema Schematic File Version 2  date Mon 06 Aug 2012 06:14:15 PM CEST
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
LIBS:special
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
LIBS:atmega8
LIBS:atmel89cxxxx
LIBS:atmel-1
LIBS:atmel-2005
LIBS:avr
LIBS:avr-1
LIBS:avr-2
LIBS:avr-3
LIBS:avr-4
LIBS:hopf
LIBS:rfm-ash
LIBS:mycomponents
LIBS:mcp120-130
LIBS:mcp3304
LIBS:microchip_mcp2120
LIBS:microchip-mcp125x-xxx
LIBS:toshiba
LIBS:output-board-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 3
Title "panStamp relay and 0-10V output board"
Date "6 aug 2012"
Rev "1.1"
Comp "www.panstamp.com"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2550 5750
Wire Wire Line
	2500 5750 3200 5750
Wire Wire Line
	2550 6250 2550 6350
Wire Wire Line
	9250 4400 9250 4350
Wire Wire Line
	8450 4750 8450 4700
Wire Wire Line
	8450 4700 8550 4700
Wire Wire Line
	8550 4600 8100 4600
Wire Wire Line
	4900 2850 5000 2850
Wire Wire Line
	4900 2450 5000 2450
Wire Wire Line
	3250 2950 3150 2950
Wire Wire Line
	3250 2750 3150 2750
Wire Wire Line
	3250 2550 3150 2550
Wire Wire Line
	4900 2550 5000 2550
Wire Wire Line
	5650 2250 4900 2250
Connection ~ 3000 5750
Wire Wire Line
	3000 6250 3000 6350
Wire Wire Line
	5100 4650 4650 4650
Wire Wire Line
	5700 4450 5600 4450
Wire Wire Line
	5700 4350 5150 4350
Wire Wire Line
	4050 4050 4050 3850
Connection ~ 4050 3950
Wire Wire Line
	4250 3850 4250 3950
Wire Wire Line
	4250 3950 3850 3950
Wire Wire Line
	3850 3950 3850 3850
Wire Wire Line
	4900 3150 5450 3150
Wire Wire Line
	6050 3050 6050 2950
Wire Wire Line
	6050 2950 5950 2950
Wire Wire Line
	4000 5750 5550 5750
Connection ~ 5250 5750
Wire Wire Line
	5250 5850 5250 5750
Wire Wire Line
	4800 6250 4800 6350
Connection ~ 4300 5750
Wire Wire Line
	4300 5750 4300 5850
Wire Wire Line
	4800 5750 4800 5850
Connection ~ 4800 5750
Wire Wire Line
	4300 6250 4300 6350
Wire Wire Line
	5550 5750 5550 5650
Wire Wire Line
	5250 6250 5250 6350
Wire Wire Line
	3600 6050 3600 6350
Wire Wire Line
	4900 2950 5450 2950
Wire Wire Line
	6050 3450 6050 3550
Wire Wire Line
	4900 3250 5450 3250
Wire Wire Line
	4150 3850 4150 3950
Connection ~ 4150 3950
Wire Wire Line
	3950 3850 3950 3950
Connection ~ 3950 3950
Wire Wire Line
	4050 1650 4050 1550
Wire Wire Line
	5700 4250 5150 4250
Wire Wire Line
	5700 4550 5600 4550
Wire Wire Line
	1800 5950 1850 5950
Wire Wire Line
	1850 5950 1850 6350
Wire Wire Line
	1800 5750 2000 5750
Wire Wire Line
	5700 4650 5500 4650
Wire Wire Line
	5850 2450 5850 2550
Wire Wire Line
	3000 5650 3000 5850
Wire Wire Line
	4900 2650 5000 2650
Wire Wire Line
	3250 2650 3150 2650
Wire Wire Line
	3250 2850 3150 2850
Wire Wire Line
	3250 3050 3150 3050
Wire Wire Line
	4900 3050 5000 3050
Wire Wire Line
	4900 2750 5000 2750
Wire Wire Line
	8550 4500 8450 4500
Wire Wire Line
	8450 4500 8450 4450
Wire Wire Line
	3250 3150 2300 3150
Wire Wire Line
	9250 4800 9250 4850
Wire Wire Line
	2550 5750 2550 5850
$Comp
L FUSE F1
U 1 1 501FE68B
P 2250 5750
F 0 "F1" H 2350 5800 40  0000 C CNN
F 1 "FUSE" H 2150 5700 40  0000 C CNN
F 2 "SM1206" H 2250 5750 60  0001 C CNN
	1    2250 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 501FE630
P 2550 6350
F 0 "#PWR01" H 2550 6350 30  0001 C CNN
F 1 "GND" H 2550 6280 30  0001 C CNN
	1    2550 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4FE47CBA
P 9250 4850
F 0 "#PWR02" H 9250 4850 30  0001 C CNN
F 1 "GND" H 9250 4780 30  0001 C CNN
	1    9250 4850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR03
U 1 1 4FE47CB8
P 9250 4350
F 0 "#PWR03" H 9250 4310 30  0001 C CNN
F 1 "+3.3V" H 9250 4460 30  0000 C CNN
	1    9250 4350
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 4FE47CB1
P 9250 4600
F 0 "C11" H 9300 4700 50  0000 L CNN
F 1 "100n" H 9300 4500 50  0000 L CNN
F 2 "SM0603S" H 9250 4600 60  0001 C CNN
	1    9250 4600
	1    0    0    -1  
$EndComp
Text Label 8100 4600 0    60   ~ 0
A6
Text Label 2300 3150 0    60   ~ 0
A6
$Comp
L GND #PWR04
U 1 1 4FE47C7E
P 8450 4750
F 0 "#PWR04" H 8450 4750 30  0001 C CNN
F 1 "GND" H 8450 4680 30  0001 C CNN
	1    8450 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR05
U 1 1 4FE47C73
P 8450 4450
F 0 "#PWR05" H 8450 4410 30  0001 C CNN
F 1 "+3.3V" H 8450 4560 30  0000 C CNN
	1    8450 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 A6
U 1 1 4FE47C45
P 8900 4600
F 0 "A6" V 8850 4600 50  0000 C CNN
F 1 "CONN_3" V 8950 4600 40  0000 C CNN
F 2 "SIL-3" H 8900 4600 60  0001 C CNN
	1    8900 4600
	1    0    0    -1  
$EndComp
Text GLabel 5000 2750 2    60   Output ~ 0
PWMOUT1
Text GLabel 5000 2850 2    60   Output ~ 0
PWMOUT2
Text GLabel 5000 3050 2    60   Output ~ 0
PWMOUT3
Text GLabel 5000 2450 2    60   Output ~ 0
PWMOUT0
Text GLabel 5000 2650 2    60   Output ~ 0
BINOUT7
Text GLabel 3150 3050 0    60   Output ~ 0
BINOUT6
Text GLabel 3150 2950 0    60   Output ~ 0
BINOUT5
Text GLabel 3150 2850 0    60   Output ~ 0
BINOUT4
Text GLabel 3150 2750 0    60   Output ~ 0
BINOUT3
Text GLabel 3150 2650 0    60   Output ~ 0
BINOUT2
Text GLabel 3150 2550 0    60   Output ~ 0
BINOUT1
Text GLabel 5000 2550 2    60   Output ~ 0
BINOUT0
$Comp
L +12V #PWR06
U 1 1 4FCCDD23
P 3000 5650
F 0 "#PWR06" H 3000 5600 20  0001 C CNN
F 1 "+12V" H 3000 5750 30  0000 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4FB0CF23
P 5850 2550
F 0 "#PWR07" H 5850 2550 30  0001 C CNN
F 1 "GND" H 5850 2480 30  0001 C CNN
	1    5850 2550
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW1
U 1 1 4FB0CF16
P 5750 2350
F 0 "SW1" H 5900 2460 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 5750 2271 30  0000 C CNN
F 2 "switch-tact-noah" H 5750 2350 60  0001 C CNN
	1    5750 2350
	0    1    -1   0   
$EndComp
$Sheet
S 8200 2900 1200 750 
U 4FAD1A96
F0 "pwmtovolt" 60
F1 "pwm2volt.sch" 60
$EndSheet
NoConn ~ 3250 3250
$Sheet
S 8200 1800 1200 750 
U 4FACEA45
F0 "relays" 60
F1 "relays.sch" 60
$EndSheet
$Comp
L GND #PWR08
U 1 1 4FA26348
P 3000 6350
F 0 "#PWR08" H 3000 6350 30  0001 C CNN
F 1 "GND" H 3000 6280 30  0001 C CNN
	1    3000 6350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 4FA26347
P 3000 6050
F 0 "C1" H 3050 6150 50  0000 L CNN
F 1 "47u" H 3050 5950 50  0000 L CNN
F 2 "SMDCPOL_6.3" H 3000 6050 60  0001 C CNN
	1    3000 6050
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4F9E9A21
P 5300 4650
F 0 "C5" H 5350 4750 50  0000 L CNN
F 1 "100n" H 5350 4550 50  0000 L CNN
F 2 "SM0603S" H 5300 4650 60  0001 C CNN
	1    5300 4650
	0    1    1    0   
$EndComp
$Comp
L DIODESCH D1
U 1 1 4E2EDD72
P 2550 6050
F 0 "D1" H 2550 6150 40  0000 C CNN
F 1 "DIODESCH" H 2550 5950 40  0000 C CNN
F 2 "SMA" H 2550 6050 60  0001 C CNN
	1    2550 6050
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P1
U 1 1 4E2D91DA
P 1450 5850
F 0 "P1" V 1400 5850 40  0000 C CNN
F 1 "CONN_2" V 1500 5850 40  0000 C CNN
F 2 "terminal_0.2_right_2" H 1450 5850 60  0001 C CNN
	1    1450 5850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 4E2D91A8
P 1850 6350
F 0 "#PWR09" H 1850 6350 30  0001 C CNN
F 1 "GND" H 1850 6280 30  0001 C CNN
	1    1850 6350
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3850
NoConn ~ 3250 2350
NoConn ~ 3250 2250
NoConn ~ 3250 2150
NoConn ~ 4150 1650
Text Label 4650 4650 0    60   ~ 0
RESET
Text Label 5150 4350 0    60   ~ 0
RXD
Text Label 5150 4250 0    60   ~ 0
TXD
$Comp
L +3.3V #PWR010
U 1 1 4E2D13B1
P 5600 4550
F 0 "#PWR010" H 5600 4510 30  0001 C CNN
F 1 "+3.3V" H 5600 4660 30  0000 C CNN
	1    5600 4550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 4E2D13A1
P 5600 4450
F 0 "#PWR011" H 5600 4450 30  0001 C CNN
F 1 "GND" H 5600 4380 30  0001 C CNN
	1    5600 4450
	0    1    1    0   
$EndComp
$Comp
L CONN_5 P2
U 1 1 4E2D137B
P 6100 4450
F 0 "P2" V 6050 4450 50  0000 C CNN
F 1 "CONN_5" V 6150 4450 50  0000 C CNN
F 2 "PIN_ARRAY_5X1" H 6100 4450 60  0001 C CNN
	1    6100 4450
	1    0    0    -1  
$EndComp
Text Label 5150 2250 0    60   ~ 0
RESET
$Comp
L +3.3V #PWR012
U 1 1 4E2D12EE
P 4050 1550
F 0 "#PWR012" H 4050 1510 30  0001 C CNN
F 1 "+3.3V" H 4050 1660 30  0000 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4E2D12D3
P 4050 4050
F 0 "#PWR013" H 4050 4050 30  0001 C CNN
F 1 "GND" H 4050 3980 30  0001 C CNN
	1    4050 4050
	1    0    0    -1  
$EndComp
Text Label 5300 3250 0    60   ~ 0
RXD
Text Label 5300 3150 0    60   ~ 0
TXD
$Comp
L GND #PWR014
U 1 1 4E2D126F
P 6050 3550
F 0 "#PWR014" H 6050 3550 30  0001 C CNN
F 1 "GND" H 6050 3480 30  0001 C CNN
	1    6050 3550
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 4E2D1265
P 6050 3250
F 0 "D2" H 6050 3350 50  0000 C CNN
F 1 "LED" H 6050 3150 50  0000 C CNN
F 2 "SM0603S" H 6050 3250 60  0001 C CNN
	1    6050 3250
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 4E2D1255
P 5700 2950
F 0 "R1" V 5780 2950 50  0000 C CNN
F 1 "470" V 5700 2950 50  0000 C CNN
F 2 "SM0603S" H 5700 2950 60  0001 C CNN
	1    5700 2950
	0    1    1    0   
$EndComp
$Comp
L PANSTAMP_02 U1
U 1 1 4E2D1188
P 4050 2800
F 0 "U1" H 4450 3700 60  0000 C CNN
F 1 "PANSTAMP_02" H 3650 3700 60  0000 C CNN
F 2 "PANSTAMP_02" H 4050 2800 60  0001 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 4BFFD8E5
P 5550 5650
F 0 "#PWR015" H 5550 5610 30  0001 C CNN
F 1 "+3.3V" H 5550 5760 30  0000 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L LF33 U2
U 1 1 4BFFD798
P 3600 5800
F 0 "U2" H 3750 5604 60  0000 C CNN
F 1 "UA78M33" H 3600 6000 60  0000 C CNN
F 2 "SOT223" H 3600 5800 60  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 48B3CC0B
P 5250 6350
F 0 "#PWR016" H 5250 6350 30  0001 C CNN
F 1 "GND" H 5250 6280 30  0001 C CNN
	1    5250 6350
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 48B3CBEC
P 5250 6050
F 0 "C4" H 5300 6150 50  0000 L CNN
F 1 "100n" H 5300 5950 50  0000 L CNN
F 2 "SM0603S" H 5250 6050 60  0001 C CNN
	1    5250 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 48B2DC35
P 3600 6350
F 0 "#PWR017" H 3600 6350 30  0001 C CNN
F 1 "GND" H 3600 6280 30  0001 C CNN
	1    3600 6350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 48B2D4E6
P 4300 6050
F 0 "C2" H 4350 6150 50  0000 L CNN
F 1 "22u" H 4350 5950 50  0000 L CNN
F 2 "SMDCPOL_5" H 4300 6050 60  0001 C CNN
	1    4300 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 48B2D427
P 4300 6350
F 0 "#PWR018" H 4300 6350 30  0001 C CNN
F 1 "GND" H 4300 6280 30  0001 C CNN
	1    4300 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 48B2D41E
P 4800 6350
F 0 "#PWR019" H 4800 6350 30  0001 C CNN
F 1 "GND" H 4800 6280 30  0001 C CNN
	1    4800 6350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 48B2D401
P 4800 6050
F 0 "C3" H 4850 6150 50  0000 L CNN
F 1 "1u" H 4850 5950 50  0000 L CNN
F 2 "SM0603S" H 4800 6050 60  0001 C CNN
	1    4800 6050
	1    0    0    -1  
$EndComp
$EndSCHEMATC