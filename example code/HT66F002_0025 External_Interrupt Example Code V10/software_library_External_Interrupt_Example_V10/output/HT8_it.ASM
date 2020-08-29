#pragma debug scope 1 1
#line 43 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
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
JMP _INT_ISR
@INT_ISR .SECTION 'CODE'
_INT_ISR PROC
MOV V1A,A
MOV A,[0AH]
MOV V1S,A
#pragma debug scope 2 1 ; 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
MOV A,1<<6
XORM A,[014H]
#line 45 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
NOP
L5:
MOV A,V1S
MOV [0AH],A
MOV A,V1A
RETI
_INT_ISR ENDP
RAMBANK 0 @INT_ISR
@INT_ISR .SECTION 'DATA'
#line 58 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
@@TB0_ISR .SECTION AT 08H 'CODE'
JMP _TB0_ISR
@TB0_ISR .SECTION 'CODE'
_TB0_ISR PROC
MOV V2A,A
MOV A,[0AH]
MOV V2S,A
#pragma debug scope 3 1 ; 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
#line 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
MOV A,1<<0
XORM A,[014H]
L6:
MOV A,V2S
MOV [0AH],A
MOV A,V2A
RETI
_TB0_ISR ENDP
RAMBANK 0 @TB0_ISR
@TB0_ISR .SECTION 'DATA'
#line 71 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
@@TB1_ISR .SECTION AT 0cH 'CODE'
RETI
#line 85 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
@@Timer_ISR .SECTION AT 010H 'CODE'
RETI
#line 98 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
@@EEPROM_ISR .SECTION AT 014H 'CODE'
RETI
#line 111 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\External_Interrupt\software_library_External_Interrupt_Example_V1.0_0307\src\HT8_it.c"
@@ADC_ISR .SECTION AT 018H 'CODE'
RETI
EXTERN V1A:BYTE
EXTERN V1S:BYTE
EXTERN V2A:BYTE
EXTERN V2S:BYTE
