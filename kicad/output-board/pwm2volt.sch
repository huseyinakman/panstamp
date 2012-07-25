EESchema Schematic File Version 2  date Tue 24 Jul 2012 05:50:09 PM CEST
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
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 3
Title "panStamp relay and 0-10V output board"
Date "24 jul 2012"
Rev "01"
Comp "www.panstamp.com"
Comment1 "PWM to 0-10V conversion"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4350 6200 4350 6100
Wire Wire Line
	7600 4950 7600 5050
Wire Wire Line
	8800 5150 8800 5250
Wire Wire Line
	8850 4650 8700 4650
Wire Wire Line
	8750 2500 8750 2600
Wire Wire Line
	8650 2000 8800 2000
Wire Wire Line
	6950 2000 7100 2000
Wire Wire Line
	3550 5150 3550 5250
Wire Wire Line
	3450 4650 3600 4650
Wire Wire Line
	1750 4650 1900 4650
Wire Wire Line
	3500 2050 3500 2150
Wire Wire Line
	2100 1800 2100 1900
Wire Wire Line
	2250 2350 2250 2450
Wire Wire Line
	2850 2050 2700 2050
Wire Wire Line
	4900 6200 4900 6100
Wire Wire Line
	4650 2250 4650 2150
Wire Wire Line
	4650 2150 4750 2150
Connection ~ 4650 1950
Wire Wire Line
	4750 1950 4550 1950
Wire Wire Line
	2850 1350 2850 1250
Wire Wire Line
	2850 1250 2950 1250
Wire Wire Line
	3950 1500 3950 1550
Wire Wire Line
	3550 1250 3450 1250
Wire Wire Line
	4050 1250 4650 1250
Wire Wire Line
	4650 1250 4650 1950
Wire Wire Line
	3950 2350 3950 2450
Wire Wire Line
	3550 1850 3500 1850
Wire Wire Line
	3500 1850 3500 1250
Connection ~ 3500 1250
Connection ~ 3550 3850
Wire Wire Line
	3550 3850 3550 4450
Wire Wire Line
	3550 4450 3600 4450
Wire Wire Line
	4000 4950 4000 5050
Wire Wire Line
	4700 4550 4700 3850
Wire Wire Line
	4700 3850 4100 3850
Wire Wire Line
	3600 3850 3500 3850
Wire Wire Line
	4000 4100 4000 4150
Wire Wire Line
	3000 3850 2900 3850
Wire Wire Line
	2900 3850 2900 3950
Wire Wire Line
	4800 4550 4600 4550
Connection ~ 4700 4550
Wire Wire Line
	4800 4750 4700 4750
Wire Wire Line
	4700 4750 4700 4850
Wire Wire Line
	9950 4850 9950 4750
Wire Wire Line
	9950 4750 10050 4750
Connection ~ 9950 4550
Wire Wire Line
	10050 4550 9850 4550
Wire Wire Line
	8150 3950 8150 3850
Wire Wire Line
	8150 3850 8250 3850
Wire Wire Line
	9250 4100 9250 4150
Wire Wire Line
	8850 3850 8750 3850
Wire Wire Line
	9350 3850 9950 3850
Wire Wire Line
	9950 3850 9950 4550
Wire Wire Line
	9250 4950 9250 5050
Wire Wire Line
	8850 4450 8800 4450
Wire Wire Line
	8800 4450 8800 3850
Connection ~ 8800 3850
Connection ~ 8750 1200
Wire Wire Line
	8750 1200 8750 1800
Wire Wire Line
	8750 1800 8800 1800
Wire Wire Line
	9200 2300 9200 2400
Wire Wire Line
	9900 1900 9900 1200
Wire Wire Line
	9900 1200 9300 1200
Wire Wire Line
	8800 1200 8700 1200
Wire Wire Line
	9200 1450 9200 1500
Wire Wire Line
	8200 1200 8100 1200
Wire Wire Line
	8100 1200 8100 1300
Wire Wire Line
	10000 1900 9800 1900
Connection ~ 9900 1900
Wire Wire Line
	10000 2100 9900 2100
Wire Wire Line
	9900 2100 9900 2200
Wire Wire Line
	4900 6600 4900 6700
Wire Wire Line
	1800 2050 1650 2050
Wire Wire Line
	2100 2200 2100 2350
Wire Wire Line
	3500 2550 3500 2650
Wire Wire Line
	3350 2050 3550 2050
Connection ~ 3500 2050
Wire Wire Line
	2800 4650 2950 4650
Wire Wire Line
	3550 4750 3550 4650
Connection ~ 3550 4650
Wire Wire Line
	2350 4950 2350 5050
Wire Wire Line
	8000 2000 8150 2000
Wire Wire Line
	8750 2100 8750 2000
Connection ~ 8750 2000
Wire Wire Line
	7550 2300 7550 2400
Wire Wire Line
	8800 4750 8800 4650
Connection ~ 8800 4650
Wire Wire Line
	8200 4650 8050 4650
Wire Wire Line
	7150 4650 7000 4650
Wire Wire Line
	4350 6600 4350 6700
$Comp
L +3.3V #PWR019
U 1 1 500EC2E3
P 4350 6100
F 0 "#PWR019" H 4350 6060 30  0001 C CNN
F 1 "+3.3V" H 4350 6210 30  0000 C CNN
	1    4350 6100
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 500EC2D9
P 4350 6400
F 0 "C12" H 4400 6500 50  0000 L CNN
F 1 "100n" H 4400 6300 50  0000 L CNN
F 2 "SM0603S" H 4350 6400 60  0001 C CNN
	1    4350 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 500EC2D7
P 4350 6700
F 0 "#PWR020" H 4350 6700 30  0001 C CNN
F 1 "GND" H 4350 6630 30  0001 C CNN
	1    4350 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 500EBFCF
P 7600 5050
F 0 "#PWR021" H 7600 5050 30  0001 C CNN
F 1 "GND" H 7600 4980 30  0001 C CNN
	1    7600 5050
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U12
U 3 1 500EBFA8
P 7600 4650
F 0 "U12" H 7600 4750 50  0000 L BNN
F 1 "74LS125" H 7650 4500 40  0000 L TNN
F 2 "SO14E" H 7600 4650 60  0001 C CNN
	3    7600 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 500EBF68
P 7550 2400
F 0 "#PWR022" H 7550 2400 30  0001 C CNN
F 1 "GND" H 7550 2330 30  0001 C CNN
	1    7550 2400
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U12
U 4 1 500EBF2F
P 7550 2000
F 0 "U12" H 7550 2100 50  0000 L BNN
F 1 "74LS125" H 7600 1850 40  0000 L TNN
F 2 "SO14E" H 7550 2000 60  0001 C CNN
	4    7550 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 500EBF09
P 2350 5050
F 0 "#PWR023" H 2350 5050 30  0001 C CNN
F 1 "GND" H 2350 4980 30  0001 C CNN
	1    2350 5050
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U12
U 1 1 500EBE47
P 2350 4650
F 0 "U12" H 2350 4750 50  0000 L BNN
F 1 "74LS125" H 2400 4500 40  0000 L TNN
F 2 "SO14E" H 2350 4650 60  0001 C CNN
	1    2350 4650
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 500EBE0A
P 2100 1800
F 0 "#PWR024" H 2100 1760 30  0001 C CNN
F 1 "+3.3V" H 2100 1910 30  0000 C CNN
	1    2100 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 500EBD31
P 2100 2350
F 0 "#PWR025" H 2100 2350 30  0001 C CNN
F 1 "GND" H 2100 2280 30  0001 C CNN
	1    2100 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 500EBCD3
P 2250 2450
F 0 "#PWR026" H 2250 2450 30  0001 C CNN
F 1 "GND" H 2250 2380 30  0001 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS125 U12
U 2 1 500EBC43
P 2250 2050
F 0 "U12" H 2250 2150 50  0000 L BNN
F 1 "74LS125" H 2300 1900 40  0000 L TNN
F 2 "SO14E" H 2250 2050 60  0001 C CNN
	2    2250 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 4FD8C2A0
P 4900 6700
F 0 "#PWR027" H 4900 6700 30  0001 C CNN
F 1 "GND" H 4900 6630 30  0001 C CNN
	1    4900 6700
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR028
U 1 1 4FD8C29B
P 4900 6100
F 0 "#PWR028" H 4900 6050 20  0001 C CNN
F 1 "+12V" H 4900 6200 30  0000 C CNN
	1    4900 6100
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 4FD8C292
P 4900 6400
F 0 "C10" H 4950 6500 50  0000 L CNN
F 1 "100n" H 4950 6300 50  0000 L CNN
F 2 "SM0603S" H 4900 6400 60  0001 C CNN
	1    4900 6400
	1    0    0    -1  
$EndComp
Text GLabel 7000 4650 0    60   Input ~ 0
PWMOUT3
Text GLabel 6950 2000 0    60   Input ~ 0
PWMOUT2
Text GLabel 1750 4650 0    60   Input ~ 0
PWMOUT1
Text GLabel 1650 2050 0    60   Input ~ 0
PWMOUT0
$Comp
L R R33
U 1 1 4FCC6AA0
P 8450 1200
F 0 "R33" V 8530 1200 50  0000 C CNN
F 1 "10k" V 8450 1200 50  0000 C CNN
F 2 "SM0603S" H 8450 1200 60  0001 C CNN
	1    8450 1200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 4FCC6A9F
P 8750 2600
F 0 "#PWR029" H 8750 2600 30  0001 C CNN
F 1 "GND" H 8750 2530 30  0001 C CNN
	1    8750 2600
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 4FCC6A9C
P 9050 1200
F 0 "R35" V 9130 1200 50  0000 C CNN
F 1 "22k" V 9050 1200 50  0000 C CNN
F 2 "SM0603S" H 9050 1200 60  0001 C CNN
	1    9050 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R31
U 1 1 4FCC6A9B
P 8400 2000
F 0 "R31" V 8480 2000 50  0000 C CNN
F 1 "10K" V 8400 2000 50  0000 C CNN
F 2 "SM0603S" H 8400 2000 60  0001 C CNN
	1    8400 2000
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 4FCC6A9A
P 8750 2300
F 0 "C8" H 8800 2400 50  0000 L CNN
F 1 "4.7u" H 8800 2200 50  0000 L CNN
F 2 "SM0603S" H 8750 2300 60  0001 C CNN
	1    8750 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 4FCC6A99
P 8100 1300
F 0 "#PWR030" H 8100 1300 30  0001 C CNN
F 1 "GND" H 8100 1230 30  0001 C CNN
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 VOUT2
U 1 1 4FCC6A98
P 10350 2000
F 0 "VOUT2" V 10300 2000 40  0000 C CNN
F 1 "CONN_2" V 10400 2000 40  0000 C CNN
	1    10350 2000
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR031
U 1 1 4FCC6A97
P 9200 2400
F 0 "#PWR031" H 9200 2350 20  0001 C CNN
F 1 "+12V" H 9200 2500 30  0000 C CNN
	1    9200 2400
	-1   0    0    1   
$EndComp
$Comp
L LM324 U11
U 3 1 4FCC6A96
P 9300 1900
F 0 "U11" H 9350 2100 60  0000 C CNN
F 1 "LM324" H 9450 1700 50  0000 C CNN
F 2 "SO14E" H 9300 1900 60  0001 C CNN
	3    9300 1900
	1    0    0    1   
$EndComp
$Comp
L GND #PWR032
U 1 1 4FCC6A95
P 9200 1450
F 0 "#PWR032" H 9200 1450 30  0001 C CNN
F 1 "GND" H 9200 1380 30  0001 C CNN
	1    9200 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 4FCC6A94
P 9900 2200
F 0 "#PWR033" H 9900 2200 30  0001 C CNN
F 1 "GND" H 9900 2130 30  0001 C CNN
	1    9900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 4FCC6A93
P 9950 4850
F 0 "#PWR034" H 9950 4850 30  0001 C CNN
F 1 "GND" H 9950 4780 30  0001 C CNN
	1    9950 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 4FCC6A92
P 9250 4100
F 0 "#PWR035" H 9250 4100 30  0001 C CNN
F 1 "GND" H 9250 4030 30  0001 C CNN
	1    9250 4100
	-1   0    0    1   
$EndComp
$Comp
L LM324 U11
U 4 1 4FCC6A91
P 9350 4550
F 0 "U11" H 9400 4750 60  0000 C CNN
F 1 "LM324" H 9500 4350 50  0000 C CNN
F 2 "SO14E" H 9350 4550 60  0001 C CNN
	4    9350 4550
	1    0    0    1   
$EndComp
$Comp
L +12V #PWR036
U 1 1 4FCC6A90
P 9250 5050
F 0 "#PWR036" H 9250 5000 20  0001 C CNN
F 1 "+12V" H 9250 5150 30  0000 C CNN
	1    9250 5050
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 VOUT1
U 1 1 4FCC6A8F
P 10400 4650
F 0 "VOUT1" V 10350 4650 40  0000 C CNN
F 1 "CONN_2" V 10450 4650 40  0000 C CNN
	1    10400 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 4FCC6A8E
P 8150 3950
F 0 "#PWR037" H 8150 3950 30  0001 C CNN
F 1 "GND" H 8150 3880 30  0001 C CNN
	1    8150 3950
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4FCC6A8D
P 8800 4950
F 0 "C9" H 8850 5050 50  0000 L CNN
F 1 "4.7u" H 8850 4850 50  0000 L CNN
F 2 "SM0603S" H 8800 4950 60  0001 C CNN
	1    8800 4950
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 4FCC6A8C
P 8450 4650
F 0 "R32" V 8530 4650 50  0000 C CNN
F 1 "10K" V 8450 4650 50  0000 C CNN
F 2 "SM0603S" H 8450 4650 60  0001 C CNN
	1    8450 4650
	0    1    1    0   
$EndComp
$Comp
L R R36
U 1 1 4FCC6A8B
P 9100 3850
F 0 "R36" V 9180 3850 50  0000 C CNN
F 1 "22k" V 9100 3850 50  0000 C CNN
F 2 "SM0603S" H 9100 3850 60  0001 C CNN
	1    9100 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR038
U 1 1 4FCC6A88
P 8800 5250
F 0 "#PWR038" H 8800 5250 30  0001 C CNN
F 1 "GND" H 8800 5180 30  0001 C CNN
	1    8800 5250
	1    0    0    -1  
$EndComp
$Comp
L R R34
U 1 1 4FCC6A87
P 8500 3850
F 0 "R34" V 8580 3850 50  0000 C CNN
F 1 "10k" V 8500 3850 50  0000 C CNN
F 2 "SM0603S" H 8500 3850 60  0001 C CNN
	1    8500 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R27
U 1 1 4FCC6A86
P 3250 3850
F 0 "R27" V 3330 3850 50  0000 C CNN
F 1 "10k" V 3250 3850 50  0000 C CNN
F 2 "SM0603S" H 3250 3850 60  0001 C CNN
	1    3250 3850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR039
U 1 1 4FCC6A85
P 3550 5250
F 0 "#PWR039" H 3550 5250 30  0001 C CNN
F 1 "GND" H 3550 5180 30  0001 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 4FCC6A82
P 3850 3850
F 0 "R28" V 3930 3850 50  0000 C CNN
F 1 "22k" V 3850 3850 50  0000 C CNN
F 2 "SM0603S" H 3850 3850 60  0001 C CNN
	1    3850 3850
	0    -1   -1   0   
$EndComp
$Comp
L R R26
U 1 1 4FCC6A81
P 3200 4650
F 0 "R26" V 3280 4650 50  0000 C CNN
F 1 "10K" V 3200 4650 50  0000 C CNN
F 2 "SM0603S" H 3200 4650 60  0001 C CNN
	1    3200 4650
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 4FCC6A80
P 3550 4950
F 0 "C7" H 3600 5050 50  0000 L CNN
F 1 "4.7u" H 3600 4850 50  0000 L CNN
F 2 "SM0603S" H 3550 4950 60  0001 C CNN
	1    3550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 4FCC6A7F
P 2900 3950
F 0 "#PWR040" H 2900 3950 30  0001 C CNN
F 1 "GND" H 2900 3880 30  0001 C CNN
	1    2900 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 VOUT3
U 1 1 4FCC6A7E
P 5150 4650
F 0 "VOUT3" V 5100 4650 40  0000 C CNN
F 1 "CONN_2" V 5200 4650 40  0000 C CNN
	1    5150 4650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR041
U 1 1 4FCC6A7D
P 4000 5050
F 0 "#PWR041" H 4000 5000 20  0001 C CNN
F 1 "+12V" H 4000 5150 30  0000 C CNN
	1    4000 5050
	-1   0    0    1   
$EndComp
$Comp
L LM324 U11
U 2 1 4FCC6A7C
P 4100 4550
F 0 "U11" H 4150 4750 60  0000 C CNN
F 1 "LM324" H 4250 4350 50  0000 C CNN
F 2 "SO14E" H 4100 4550 60  0001 C CNN
	2    4100 4550
	1    0    0    1   
$EndComp
$Comp
L GND #PWR042
U 1 1 4FCC6A7B
P 4000 4100
F 0 "#PWR042" H 4000 4100 30  0001 C CNN
F 1 "GND" H 4000 4030 30  0001 C CNN
	1    4000 4100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR043
U 1 1 4FCC6A7A
P 4700 4850
F 0 "#PWR043" H 4700 4850 30  0001 C CNN
F 1 "GND" H 4700 4780 30  0001 C CNN
	1    4700 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 4FCB8BCC
P 4650 2250
F 0 "#PWR044" H 4650 2250 30  0001 C CNN
F 1 "GND" H 4650 2180 30  0001 C CNN
	1    4650 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR045
U 1 1 4FCB8BC4
P 3950 1500
F 0 "#PWR045" H 3950 1500 30  0001 C CNN
F 1 "GND" H 3950 1430 30  0001 C CNN
	1    3950 1500
	-1   0    0    1   
$EndComp
$Comp
L LM324 U11
U 1 1 4FCB8B19
P 4050 1950
F 0 "U11" H 4100 2150 60  0000 C CNN
F 1 "LM324" H 4200 1750 50  0000 C CNN
F 2 "SO14E" H 4050 1950 60  0001 C CNN
	1    4050 1950
	1    0    0    1   
$EndComp
$Comp
L +12V #PWR046
U 1 1 4FAD2D39
P 3950 2450
F 0 "#PWR046" H 3950 2400 20  0001 C CNN
F 1 "+12V" H 3950 2550 30  0000 C CNN
	1    3950 2450
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 VOUT4
U 1 1 4FAD27A8
P 5100 2050
F 0 "VOUT4" V 5050 2050 40  0000 C CNN
F 1 "CONN_2" V 5150 2050 40  0000 C CNN
	1    5100 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 4FAD1E62
P 2850 1350
F 0 "#PWR047" H 2850 1350 30  0001 C CNN
F 1 "GND" H 2850 1280 30  0001 C CNN
	1    2850 1350
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 4FAD1E4C
P 3500 2350
F 0 "C6" H 3550 2450 50  0000 L CNN
F 1 "4.7u" H 3550 2250 50  0000 L CNN
F 2 "SM0603S" H 3500 2350 60  0001 C CNN
	1    3500 2350
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 4FAD1DDC
P 3100 2050
F 0 "R24" V 3180 2050 50  0000 C CNN
F 1 "10K" V 3100 2050 50  0000 C CNN
F 2 "SM0603S" H 3100 2050 60  0001 C CNN
	1    3100 2050
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 4FAD1D96
P 3800 1250
F 0 "R22" V 3880 1250 50  0000 C CNN
F 1 "22k" V 3800 1250 50  0000 C CNN
F 2 "SM0603S" H 3800 1250 60  0001 C CNN
	1    3800 1250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR048
U 1 1 4FAD1BEC
P 3500 2650
F 0 "#PWR048" H 3500 2650 30  0001 C CNN
F 1 "GND" H 3500 2580 30  0001 C CNN
	1    3500 2650
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 4FAD1BEA
P 3200 1250
F 0 "R20" V 3280 1250 50  0000 C CNN
F 1 "10k" V 3200 1250 50  0000 C CNN
F 2 "SM0603S" H 3200 1250 60  0001 C CNN
	1    3200 1250
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
