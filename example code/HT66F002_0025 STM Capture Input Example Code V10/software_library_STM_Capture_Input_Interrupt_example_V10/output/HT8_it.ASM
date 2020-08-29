#pragma debug scope 1 1
#line 45 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
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
@@INT_ISR .SECTION AT 04H 'CODE'
RETI
#line 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
@@TB0_ISR .SECTION AT 08H 'CODE'
RETI
#line 72 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
@@TB1_ISR .SECTION AT 0cH 'CODE'
RETI
#line 86 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
@@Timer_ISR .SECTION AT 010H 'CODE'
JMP _Timer_ISR
@Timer_ISR .SECTION 'CODE'
_Timer_ISR PROC
MOV V4A,A
MOV A,[0AH]
MOV V4S,A
MOV A,[03H]
MOV V4MP1,A
MOV A,[04H]
MOV V4BP,A
#pragma debug scope 5 1 ; 90 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#line 90 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
SNZ [011H].5
JMP L9
#pragma debug scope 6 5 ; 92 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#line 92 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CLR [011H].5
#line 94 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
SZ [029H].5
JMP L11
SZ [029H].4
JMP L11
#pragma debug scope 7 6 ; 96 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#line 96 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,__stm0ah
MOV b0_4[1],A
CLR b0_4
MOV A,__stm0al
MOV b1_4,A
CLR b1_4[1]
MOV A,b0_4
OR A,b1_4
MOV CR1,A
MOV A,b0_4[1]
OR A,b1_4[1]
MOV CR1[1],A
#line 97 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
MOV A,[02H]
MOV b0_4,A
CLR b0_4[1]
MOV A,b0_4
MOV b0_4[1],A
CLR b0_4
CLR [0AH].0
RLC b0_4[1]
CLR [0AH].0
RLC b0_4[1]
MOV A,b0_4
ADDM A,CR1
MOV A,b0_4[1]
ADCM A,CR1[1]
#line 98 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CLR [029H].5
SET [029H].4
#line 99 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#pragma debug scope 6 5 ; 99 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
JMP L12
L11:
#line 101 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
SZ [029H].5
JMP L13
SNZ [029H].4
JMP L13
#pragma debug scope 8 6 ; 103 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#line 103 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,__stm0ah
MOV b0_4[1],A
CLR b0_4
MOV A,__stm0al
MOV b1_4,A
CLR b1_4[1]
MOV A,b0_4
OR A,b1_4
MOV CR2,A
MOV A,b0_4[1]
OR A,b1_4[1]
MOV CR2[1],A
#line 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
MOV A,[02H]
MOV b0_4,A
CLR b0_4[1]
MOV A,b0_4
MOV b0_4[1],A
CLR b0_4
CLR [0AH].0
RLC b0_4[1]
CLR [0AH].0
RLC b0_4[1]
MOV A,b0_4
ADDM A,CR2
MOV A,b0_4[1]
ADCM A,CR2[1]
#line 105 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nCapture_Value
MOV [04H],A
MOV A,OFFSET _g_nCapture_Value
MOV [03H],A
MOV A,CR2
SUB A,CR1
MOV [02H],A
INC [03H]
MOV A,CR2[1]
SBC A,CR1[1]
MOV [02H],A
#line 106 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nCapture_Value
MOV [04h],A
MOV A,OFFSET _g_nCapture_Value
MOV [03h],A
CLR [0AH].0
INC [03h]
RRC [02h]
DEC [03h]
RRC [02h]
#line 107 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
CLR [02H]
#line 108 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CLR [029H].5
CLR [029H].4
#line 109 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CLR [028H].3
#line 111 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nCaptureFlag
MOV [04H],A
MOV A,OFFSET _g_nCaptureFlag
MOV [03H],A
MOV A,1
MOV [02H],A
L13:
L12:
L9:
#line 117 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#pragma debug scope 5 1 ; 117 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
SNZ [011H].4
JMP L15
#pragma debug scope 9 5 ; 119 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
#line 119 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CLR [011H].4
#line 120 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
MOV A,BANK _g_nSTM_CCRP_Time
MOV [04H],A
MOV A,OFFSET _g_nSTM_CCRP_Time
MOV [03H],A
INC [02H]
L15:
L8:
MOV A,V4MP1
MOV [03H],A
MOV A,V4BP
MOV [04H],A
MOV A,V4S
MOV [0AH],A
MOV A,V4A
RETI
_Timer_ISR ENDP
RAMBANK 0 @Timer_ISR
@Timer_ISR .SECTION 'DATA'
b0_4 DB 2 DUP(?)
b1_4 DB 2 DUP(?)
#line 87 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CR1 DB 2 DUP (?) ; g_nCapture_rising_Value
#pragma debug variable 12 5 CR1 g_nCapture_rising_Value
#line 88 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
CR2 DB 2 DUP (?) ; g_nCapture_falling_Value
#pragma debug variable 12 5 CR2 g_nCapture_falling_Value
#line 133 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
@@EEPROM_ISR .SECTION AT 014H 'CODE'
RETI
#line 146 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
@@ADC_ISR .SECTION AT 018H 'CODE'
RETI
#line 34 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_Capture_Input_Interrupt_example_V1.0_0308\src\HT8_it.c"
PUBLIC _g_nSTM_CCRP_Time
@g_nSTM_CCRP_Time .SECTION 'DATA'
_g_nSTM_CCRP_Time DB ? ; g_nSTM_CCRP_Time
#pragma debug variable 8 1 _g_nSTM_CCRP_Time g_nSTM_CCRP_Time
EXTERN _g_nCapture_Value:BYTE
EXTERN _g_nCaptureFlag:BYTE
EXTERN V4A:BYTE
EXTERN V4S:BYTE
EXTERN V4MP1:BYTE
EXTERN V4BP:BYTE
