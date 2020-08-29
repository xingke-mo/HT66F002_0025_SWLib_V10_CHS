#pragma debug scope 1 1
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
__stm0ah EQU [02dH]
__stm0al EQU [02cH]
__stm0dh EQU [02bH]
__stm0dl EQU [02aH]
__stm0c1 EQU [029H]
__stm0c0 EQU [028H]
__pasr EQU [026H]
__rstc EQU [025H]
__sadc2 EQU [024H]
__sadc1 EQU [023H]
__sadc0 EQU [022H]
__sadoh EQU [021H]
__sadol EQU [020H]
__eed EQU [01fH]
__eea EQU [01eH]
__smod1 EQU [01cH]
__tbc EQU [01bH]
__wdtc EQU [019H]
__ifs0 EQU [018H]
__pawu EQU [017H]
__papu EQU [016H]
__pac EQU [015H]
__pa EQU [014H]
__mfi0 EQU [011H]
__intc1 EQU [0fH]
__intc0 EQU [0eH]
__integ EQU [0dH]
__smod EQU [0bH]
__status EQU [0aH]
__tblh EQU [08H]
__tblp EQU [07H]
__pcl EQU [06H]
__acc EQU [05H]
__bp EQU [04H]
__mp1 EQU [03H]
__iar1 EQU [02H]
__mp0 EQU [01H]
__iar0 EQU [00H]
@MAIN .SECTION 'CODE'
_main PROC
begin:
#pragma debug scope 2 1 ; 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
CLR [02H]
#line 64 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CALL _STM_Init
#line 66 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [029H].5
CLR [029H].4
#line 68 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [011H].5
#line 69 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [011H].4
#line 72 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
#line 73 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SET [028H].3
#line 73 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 77 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 77 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR WDT
#line 79 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SNZ [011H].5
JMP L9
#pragma debug scope 4 3 ; 81 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 81 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [011H].5
#line 83 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SZ [029H].5
JMP L11
SZ [029H].4
JMP L11
#pragma debug scope 5 4 ; 85 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 85 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,__stm0ah
MOV b0_1[1],A
CLR b0_1
MOV A,__stm0al
MOV b1_1,A
CLR b1_1[1]
MOV A,BANK _g_nCapture_rising_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_rising_Value
MOV [03H],A
MOV A,b0_1
OR A,b1_1
MOV [02H],A
INC [03H]
MOV A,b0_1[1]
OR A,b1_1[1]
MOV [02H],A
#line 86 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
CLR b0_1[1]
MOV A,b0_1
MOV b0_1[1],A
CLR b0_1
CLR [0AH].0
RLC b0_1[1]
CLR [0AH].0
RLC b0_1[1]
MOV A,BANK _g_nCapture_rising_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_rising_Value
MOV [03H],A
MOV A,b0_1
ADDM A,[02H]
MOV A,b0_1[1]
INC [03H]
ADCM A,[02H]
#line 87 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [029H].5
SET [029H].4
#line 88 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#pragma debug scope 4 3 ; 88 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
JMP L12
L11:
#line 90 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SZ [029H].5
JMP L13
SNZ [029H].4
JMP L13
#pragma debug scope 6 4 ; 92 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 92 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,__stm0ah
MOV b0_1[1],A
CLR b0_1
MOV A,__stm0al
MOV b1_1,A
CLR b1_1[1]
MOV A,BANK _g_nCapture_falling_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_falling_Value
MOV [03H],A
MOV A,b0_1
OR A,b1_1
MOV [02H],A
INC [03H]
MOV A,b0_1[1]
OR A,b1_1[1]
MOV [02H],A
#line 93 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
CLR b0_1[1]
MOV A,b0_1
MOV b0_1[1],A
CLR b0_1
CLR [0AH].0
RLC b0_1[1]
CLR [0AH].0
RLC b0_1[1]
MOV A,BANK _g_nCapture_falling_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_falling_Value
MOV [03H],A
MOV A,b0_1
ADDM A,[02H]
MOV A,b0_1[1]
INC [03H]
ADCM A,[02H]
#line 94 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nCapture_falling_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_falling_Value
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
INC [03H]
MOV A,[02H]
MOV b0_1[1],A
MOV A,BANK _g_nCapture_rising_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_rising_Value
MOV [03H],A
MOV A,[02H]
MOV b1_1,A
INC [03H]
MOV A,[02H]
MOV b1_1[1],A
MOV A,BANK _g_nCapture_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_Value
MOV [03H],A
MOV A,b0_1
SUB A,b1_1
MOV [02H],A
INC [03H]
MOV A,b0_1[1]
SBC A,b1_1[1]
MOV [02H],A
#line 95 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nCapture_Value
MOV [04h],A
MOV A,OFFSET _g_nCapture_Value
MOV [03h],A
CLR [0AH].0
INC [03h]
RRC [02h]
DEC [03h]
RRC [02h]
#line 96 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
CLR [02H]
#line 97 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [029H].5
CLR [029H].4
#line 98 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [028H].3
#line 110 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,09H
MOV RH,A
MOV A,0beH
CALL __DELAYY1
#line 111 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SET [028H].3
L13:
L12:
L9:
#line 115 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#pragma debug scope 3 2 ; 115 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
SNZ [011H].4
JMP L15
#pragma debug scope 7 3 ; 117 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#line 117 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
CLR [011H].4
#line 118 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
INC [02H]
#line 119 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
MOV A,[02H]
XOR A,040h
SNZ [0AH].2
JMP L17
#line 119 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
CLR [02H]
L17:
L15:
L7:
#line 75 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
#pragma debug scope 2 1 ; 75 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
JMP L6
L5:
#line 123 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
JMP $
LOCAL b0_1 DB 2 DUP(?)
LOCAL b1_1 DB 2 DUP(?)
_main ENDP
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
PUBLIC _g_nCapture_falling_Value
@g_nCapture_falling_Value .SECTION 'DATA'
_g_nCapture_falling_Value DB 2 DUP (?) ;g_nCapture_falling_Value
#pragma debug variable 12 1 _g_nCapture_falling_Value g_nCapture_falling_Value
#line 43 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
PUBLIC _g_nCapture_rising_Value
@g_nCapture_rising_Value .SECTION 'DATA'
_g_nCapture_rising_Value DB 2 DUP (?) ;g_nCapture_rising_Value
#pragma debug variable 12 1 _g_nCapture_rising_Value g_nCapture_rising_Value
#line 42 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
PUBLIC _g_nSTM_CCRP_Time
@g_nSTM_CCRP_Time .SECTION 'DATA'
_g_nSTM_CCRP_Time DB ? ; g_nSTM_CCRP_Time
#pragma debug variable 8 1 _g_nSTM_CCRP_Time g_nSTM_CCRP_Time
#line 41 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
PUBLIC _g_nCapture_Value
@g_nCapture_Value .SECTION 'DATA'
_g_nCapture_Value DB 2 DUP (?) ;g_nCapture_Value
#pragma debug variable 12 1 _g_nCapture_Value g_nCapture_Value
EXTERN _STM_Init:NEAR
#line 54 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 54 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Polling_example_V1.0_0308\src\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
