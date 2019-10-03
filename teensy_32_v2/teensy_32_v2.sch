EESchema Schematic File Version 2
LIBS:teensy_32_v2-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:teensy_3
LIBS:MF_Aesthetics
LIBS:MF_Connectors
LIBS:MF_Discrete_Semiconductor
LIBS:MF_Displays
LIBS:MF_Frequency_Control
LIBS:MF_IC_Analog
LIBS:MF_IC_Digital
LIBS:MF_IC_Power
LIBS:MF_LEDs
LIBS:MF_Passives
LIBS:MF_Sensors
LIBS:MF_Switches
LIBS:teensy_32_v2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TEENSY_3 U1
U 1 1 59ED5951
P 2000 4650
F 0 "U1" H 2200 3450 60  0000 C CNN
F 1 "TEENSY" H 2200 6150 60  0000 C CNN
F 2 "teensy:TEENSY_3" H 2000 4650 60  0001 C CNN
F 3 "" H 2000 4650 60  0000 C CNN
	1    2000 4650
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x20_Odd_Even P1
U 1 1 59ED637C
P 9450 3250
F 0 "P1" H 9500 4250 50  0000 C CNN
F 1 "S9200-ND" H 9500 2150 50  0000 C CNN
F 2 "teensy:RPI_BOTTOM_NOLABELS" H 9450 3250 50  0001 C CNN
F 3 "" H 9450 3250 50  0001 C CNN
	1    9450 3250
	1    0    0    -1  
$EndComp
$Sheet
S 1750 1150 950  1300
U 59ED6513
F0 "Power" 60
F1 "power.sch" 60
F2 "PWR_ON" I R 2700 1600 60 
F3 "VSENSE" I R 2700 1850 60 
$EndSheet
$Sheet
S 5200 5200 1150 1550
U 59ED67C6
F0 "PiTeensyIO" 60
F1 "pi-teensy-io.sch" 60
F2 "R_SDA" I R 6350 5550 60 
F3 "R_SCL" I R 6350 5700 60 
F4 "R_TX" I R 6350 5900 60 
F5 "R_RX" I R 6350 6050 60 
F6 "T_SDA" I L 5200 5550 60 
F7 "T_SCL" I L 5200 5700 60 
F8 "T_RX3" I L 5200 5900 60 
F9 "T_TX3" I L 5200 6050 60 
$EndSheet
$Sheet
S 5300 1050 1150 1800
U 59ED6859
F0 "RCIO" 60
F1 "rc-io.sch" 60
F2 "OUT_STEER" I L 5300 1250 60 
F3 "OUT_THROTTLE" I L 5300 1350 60 
F4 "OUT_AUX" I L 5300 1450 60 
F5 "IN_AUX" I L 5300 1550 60 
F6 "IN_THROTTLE" I L 5300 1650 60 
F7 "IN_STEER" I L 5300 1750 60 
F8 "T_RX1" I L 5300 1950 60 
F9 "T_TX1" I L 5300 2050 60 
F10 "T_CTX" I L 5300 2150 60 
F11 "T_CRX" I L 5300 2250 60 
F12 "T_A8" I L 5300 2350 60 
F13 "T_A9" I L 5300 2450 60 
F14 "T_RX2" I L 5300 2550 60 
F15 "T_TX2" I L 5300 2650 60 
F16 "T_SDA" I R 6450 2050 60 
F17 "T_SCL" I R 6450 2200 60 
F18 "T_RX3" I R 6450 2400 60 
F19 "T_TX3" I R 6450 2550 60 
$EndSheet
$Comp
L +5V #PWR01
U 1 1 59ED68B8
P 9900 2000
F 0 "#PWR01" H 9900 1850 50  0001 C CNN
F 1 "+5V" H 9900 2140 50  0000 C CNN
F 2 "" H 9900 2000 50  0001 C CNN
F 3 "" H 9900 2000 50  0001 C CNN
	1    9900 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 59ED68D0
P 1150 3000
F 0 "#PWR02" H 1150 2850 50  0001 C CNN
F 1 "+5V" H 1150 3140 50  0000 C CNN
F 2 "" H 1150 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR03
U 1 1 59ED68F4
P 8600 2000
F 0 "#PWR03" H 8600 1850 50  0001 C CNN
F 1 "+3V3" H 8600 2140 50  0000 C CNN
F 2 "" H 8600 2000 50  0001 C CNN
F 3 "" H 8600 2000 50  0001 C CNN
	1    8600 2000
	1    0    0    -1  
$EndComp
NoConn ~ 1400 5150
$Comp
L GND #PWR04
U 1 1 59ED6925
P 1100 6100
F 0 "#PWR04" H 1100 5850 50  0001 C CNN
F 1 "GND" H 1100 5950 50  0000 C CNN
F 2 "" H 1100 6100 50  0001 C CNN
F 3 "" H 1100 6100 50  0001 C CNN
	1    1100 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59ED6960
P 8400 4700
F 0 "#PWR05" H 8400 4450 50  0001 C CNN
F 1 "GND" H 8400 4550 50  0000 C CNN
F 2 "" H 8400 4700 50  0001 C CNN
F 3 "" H 8400 4700 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59ED6978
P 10450 4700
F 0 "#PWR06" H 10450 4450 50  0001 C CNN
F 1 "GND" H 10450 4550 50  0000 C CNN
F 2 "" H 10450 4700 50  0001 C CNN
F 3 "" H 10450 4700 50  0001 C CNN
	1    10450 4700
	1    0    0    -1  
$EndComp
Text Label 6500 5550 0    60   ~ 0
R_SDA
Text Label 6500 5700 0    60   ~ 0
R_SCL
Text Label 6500 5900 0    60   ~ 0
R_TX
Text Label 6500 6050 0    60   ~ 0
R_RX
Text Label 4800 6050 0    60   ~ 0
T_TX3
Text Label 4800 5900 0    60   ~ 0
T_RX3
Text Label 4800 5700 0    60   ~ 0
T_SCL
Text Label 4800 5550 0    60   ~ 0
T_SDA
Text Label 9850 2650 0    60   ~ 0
R_TX
Text Label 9850 2750 0    60   ~ 0
R_RX
Text Label 8900 2450 0    60   ~ 0
R_SDA
Text Label 8900 2550 0    60   ~ 0
R_SCL
Wire Wire Line
	9900 2350 9750 2350
Wire Wire Line
	9900 2000 9900 2450
Wire Wire Line
	9900 2450 9750 2450
Connection ~ 9900 2350
Wire Wire Line
	1150 3000 1150 3450
Wire Wire Line
	1150 3450 1400 3450
Wire Wire Line
	8600 2350 9250 2350
Wire Wire Line
	8600 2000 8600 3150
Wire Wire Line
	1400 5550 1100 5550
Wire Wire Line
	1100 5550 1100 6100
Wire Wire Line
	9250 2750 8400 2750
Wire Wire Line
	8400 2750 8400 4700
Wire Wire Line
	9750 2550 10450 2550
Wire Wire Line
	10450 2550 10450 4700
Wire Wire Line
	6350 5550 6900 5550
Wire Wire Line
	6350 5700 6900 5700
Wire Wire Line
	6350 5900 6900 5900
Wire Wire Line
	6350 6050 6900 6050
Wire Wire Line
	4700 6050 5200 6050
Wire Wire Line
	4700 5900 5200 5900
Wire Wire Line
	4700 5700 5200 5700
Wire Wire Line
	4700 5550 5200 5550
Wire Wire Line
	9750 2650 10200 2650
Wire Wire Line
	9750 2750 10200 2750
Wire Wire Line
	8800 2450 9250 2450
Wire Wire Line
	8800 2550 9250 2550
Wire Wire Line
	8600 3150 9250 3150
Connection ~ 8600 2350
Wire Wire Line
	9250 3550 8400 3550
Connection ~ 8400 3550
Wire Wire Line
	9250 4250 8400 4250
Connection ~ 8400 4250
Wire Wire Line
	9750 3950 10450 3950
Connection ~ 10450 3950
Wire Wire Line
	9750 3750 10450 3750
Connection ~ 10450 3750
Wire Wire Line
	9750 3250 10450 3250
Connection ~ 10450 3250
Wire Wire Line
	9750 2950 10450 2950
Connection ~ 10450 2950
Wire Wire Line
	3000 5150 3550 5150
Wire Wire Line
	3000 5250 3550 5250
Text Label 3150 5150 0    60   ~ 0
T_SDA
Text Label 3150 5250 0    60   ~ 0
T_SCL
Wire Wire Line
	3550 4050 3000 4050
Wire Wire Line
	3550 4150 3000 4150
Text Label 3100 4050 0    60   ~ 0
T_RX3
Text Label 3100 4150 0    60   ~ 0
T_TX3
Wire Wire Line
	3550 4950 3000 4950
Text Label 3150 4950 0    60   ~ 0
PWR_SENSE
Text Label 3150 5350 0    60   ~ 0
PWR_CTL
Wire Wire Line
	2700 1600 3250 1600
Wire Wire Line
	2700 1850 3250 1850
Text Label 2850 1850 0    60   ~ 0
PWR_SENSE
Text Label 2850 1600 0    60   ~ 0
PWR_CTL
Wire Wire Line
	3000 3850 3550 3850
Wire Wire Line
	3000 3950 3550 3950
Text Label 3100 3850 0    60   ~ 0
OUT_STEER
Text Label 3100 3950 0    60   ~ 0
OUT_THROTTLE
Text Label 3100 3550 0    60   ~ 0
OUT_AUX
Wire Wire Line
	3550 3550 3000 3550
Wire Wire Line
	3550 3650 3000 3650
Wire Wire Line
	3550 3750 3000 3750
Text Label 3100 3650 0    60   ~ 0
CTX
Text Label 3100 3750 0    60   ~ 0
CRX
Wire Wire Line
	3550 3350 3000 3350
Wire Wire Line
	3550 3450 3000 3450
Text Label 3100 3350 0    60   ~ 0
T_RX1
Text Label 3100 3450 0    60   ~ 0
T_TX1
Wire Wire Line
	3550 4250 3000 4250
Wire Wire Line
	3550 4350 3000 4350
Text Label 3100 4250 0    60   ~ 0
T_RX2
Text Label 3100 4350 0    60   ~ 0
T_TX2
Wire Wire Line
	3550 5350 3000 5350
Wire Wire Line
	3550 4450 3000 4450
Wire Wire Line
	3550 4550 3000 4550
Wire Wire Line
	3550 4650 3000 4650
Text Label 3100 4450 0    60   ~ 0
IN_STEER
Text Label 3100 4550 0    60   ~ 0
IN_THROTTLE
Text Label 3100 4650 0    60   ~ 0
IN_AUX
Wire Wire Line
	900  3700 900  3950
Wire Wire Line
	900  3950 1400 3950
$Comp
L +3.3VP #PWR07
U 1 1 59F80415
P 900 3700
F 0 "#PWR07" H 1050 3650 50  0001 C CNN
F 1 "+3.3VP" H 900 3800 50  0000 C CNN
F 2 "" H 900 3700 50  0001 C CNN
F 3 "" H 900 3700 50  0001 C CNN
	1    900  3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5550 3000 5550
Wire Wire Line
	3550 5650 3000 5650
Text Label 3150 5550 0    60   ~ 0
T_A8
Text Label 3150 5650 0    60   ~ 0
T_A9
Wire Wire Line
	5300 1250 4700 1250
Wire Wire Line
	5300 1350 4700 1350
Wire Wire Line
	5300 1450 4700 1450
Wire Wire Line
	5300 1550 4700 1550
Wire Wire Line
	5300 1650 4700 1650
Wire Wire Line
	5300 1750 4700 1750
Wire Wire Line
	5300 1950 4700 1950
Wire Wire Line
	4700 2050 5300 2050
Wire Wire Line
	4700 2150 5300 2150
Wire Wire Line
	4700 2250 5300 2250
Wire Wire Line
	4700 2350 5300 2350
Wire Wire Line
	4700 2450 5300 2450
Wire Wire Line
	4700 2550 5300 2550
Wire Wire Line
	4700 2650 5300 2650
Text Label 4700 1250 0    60   ~ 0
OUT_STEER
Text Label 4700 1350 0    60   ~ 0
OUT_THROTTLE
Text Label 4700 1450 0    60   ~ 0
OUT_AUX
Text Label 4700 1550 0    60   ~ 0
IN_AUX
Text Label 4700 1650 0    60   ~ 0
IN_THROTTLE
Text Label 4700 1750 0    60   ~ 0
IN_STEER
Text Label 4700 1950 0    60   ~ 0
T_RX1
Text Label 4700 2050 0    60   ~ 0
T_TX1
Text Label 4700 2150 0    60   ~ 0
CTX
Text Label 4700 2250 0    60   ~ 0
CRX
Text Label 4700 2350 0    60   ~ 0
T_A8
Text Label 4700 2450 0    60   ~ 0
T_A9
Text Label 4700 2550 0    60   ~ 0
T_RX2
Text Label 4700 2650 0    60   ~ 0
T_TX2
NoConn ~ 3000 5050
NoConn ~ 3000 4850
NoConn ~ 3000 4750
NoConn ~ 9250 2650
NoConn ~ 9250 2850
NoConn ~ 9250 2950
NoConn ~ 9250 3050
NoConn ~ 9250 3650
NoConn ~ 9250 3750
NoConn ~ 9250 3850
NoConn ~ 9250 3950
NoConn ~ 9250 4050
NoConn ~ 9250 4150
NoConn ~ 9750 4250
NoConn ~ 9750 4150
NoConn ~ 9750 4050
NoConn ~ 9750 3850
NoConn ~ 9750 3650
NoConn ~ 9750 3150
NoConn ~ 9750 3050
NoConn ~ 9750 2850
Wire Wire Line
	8600 2100 8250 2100
Wire Wire Line
	8250 2100 8250 2000
Connection ~ 8600 2100
$Comp
L PWR_FLAG #FLG08
U 1 1 59F87F9A
P 8250 2000
F 0 "#FLG08" H 8250 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 8250 2150 50  0000 C CNN
F 2 "" H 8250 2000 50  0001 C CNN
F 3 "" H 8250 2000 50  0001 C CNN
	1    8250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2100 10300 2100
Wire Wire Line
	10300 2100 10300 2000
Connection ~ 9900 2100
$Comp
L PWR_FLAG #FLG09
U 1 1 59F880E3
P 10300 2000
F 0 "#FLG09" H 10300 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 2150 50  0000 C CNN
F 2 "" H 10300 2000 50  0001 C CNN
F 3 "" H 10300 2000 50  0001 C CNN
	1    10300 2000
	1    0    0    -1  
$EndComp
Text Label 6850 2550 2    60   ~ 0
T_TX3
Text Label 6850 2400 2    60   ~ 0
T_RX3
Text Label 6850 2200 2    60   ~ 0
T_SCL
Text Label 6850 2050 2    60   ~ 0
T_SDA
Wire Wire Line
	6950 2550 6450 2550
Wire Wire Line
	6950 2400 6450 2400
Wire Wire Line
	6950 2200 6450 2200
Wire Wire Line
	6950 2050 6450 2050
Wire Wire Line
	3850 6600 3850 6700
$Comp
L GND #PWR010
U 1 1 5A472554
P 3850 6700
F 0 "#PWR010" H 3850 6450 50  0001 C CNN
F 1 "GND" H 3850 6550 50  0000 C CNN
F 2 "" H 3850 6700 50  0001 C CNN
F 3 "" H 3850 6700 50  0001 C CNN
	1    3850 6700
	1    0    0    -1  
$EndComp
$Comp
L LED_SINGLE-0603-GREEN D?
U 1 1 5A47254D
P 3850 6500
AR Path="/59ED6513/5A47254D" Ref="D?"  Part="1" 
AR Path="/5A47254D" Ref="D6"  Part="1" 
F 0 "D6" H 3800 6350 45  0000 L BNN
F 1 "MF-LED-0603-RED" H 3450 6250 45  0000 L BNN
F 2 "MF_LEDs:MF_LEDs-LED0603" H 3890 6270 20  0001 C CNN
F 3 "" H 3850 6500 60  0001 C CNN
	1    3850 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6250 3850 6400
$Comp
L RESISTOR_0805 R?
U 1 1 5A472546
P 3850 6050
AR Path="/59ED6513/5A472546" Ref="R?"  Part="1" 
AR Path="/5A472546" Ref="R17"  Part="1" 
F 0 "R17" V 3750 6000 45  0000 L BNN
F 1 "MF-RES-0603-2K" V 4000 5650 45  0000 L BNN
F 2 "MF_Passives:MF_Passives-R0603" H 4100 5960 20  0001 C CNN
F 3 "" H 3850 6050 60  0001 C CNN
	1    3850 6050
	1    0    0    1   
$EndComp
Wire Wire Line
	3850 5450 3850 5850
Wire Wire Line
	3000 5450 3850 5450
Text Label 3150 5450 0    60   ~ 0
MSG_LED
$Sheet
S 5200 3900 1150 900 
U 5A8B3766
F0 "IMU I2C" 60
F1 "imu-i2c.sch" 60
F2 "SCL" B R 6350 4000 60 
F3 "SDA" B R 6350 4100 60 
F4 "R_MOSI" O R 6350 4200 60 
F5 "R_25" B R 6350 4300 60 
F6 "R_MISO" I R 6350 4400 60 
F7 "R_CE0" O R 6350 4500 60 
F8 "R_SCK" O R 6350 4600 60 
F9 "R_CE1" O R 6350 4700 60 
$EndSheet
Wire Wire Line
	6350 4000 6700 4000
Wire Wire Line
	6350 4100 6700 4100
Text Label 6450 4000 0    60   ~ 0
R_SCL
Text Label 6450 4100 0    60   ~ 0
R_SDA
Wire Wire Line
	9250 3250 8800 3250
Wire Wire Line
	9250 3350 8800 3350
Wire Wire Line
	9250 3450 8800 3450
Wire Wire Line
	9750 3350 10200 3350
Wire Wire Line
	9750 3450 10200 3450
Wire Wire Line
	9750 3550 10200 3550
Text Label 8900 3250 0    60   ~ 0
R_MOSI
Text Label 8900 3350 0    60   ~ 0
R_MISO
Text Label 8900 3450 0    60   ~ 0
R_SCK
Text Label 9850 3350 0    60   ~ 0
R_25
Text Label 9850 3450 0    60   ~ 0
R_CE0
Text Label 9850 3550 0    60   ~ 0
R_CE1
Wire Wire Line
	6350 4200 6700 4200
Wire Wire Line
	6350 4300 6700 4300
Wire Wire Line
	6350 4400 6700 4400
Wire Wire Line
	6350 4500 6700 4500
Wire Wire Line
	6350 4600 6700 4600
Wire Wire Line
	6350 4700 6700 4700
Text Label 6450 4200 0    60   ~ 0
R_MOSI
Text Label 6450 4300 0    60   ~ 0
R_25
Text Label 6450 4400 0    60   ~ 0
R_MISO
Text Label 6450 4500 0    60   ~ 0
R_CE0
Text Label 6450 4600 0    60   ~ 0
R_SCK
Text Label 6450 4700 0    60   ~ 0
R_CE1
$EndSCHEMATC