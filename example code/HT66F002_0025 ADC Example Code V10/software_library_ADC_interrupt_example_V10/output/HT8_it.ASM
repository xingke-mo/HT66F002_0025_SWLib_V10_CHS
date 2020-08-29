#pragma debug scope 1 1
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
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
#line 58 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
@@TB0_ISR .SECTION AT 08H 'CODE'
RETI
#line 71 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
@@TB1_ISR .SECTION AT 0cH 'CODE'
RETI
#line 85 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
@@Timer_ISR .SECTION AT 010H 'CODE'
RETI
#line 98 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
@@EEPROM_ISR .SECTION AT 014H 'CODE'
RETI
#line 111 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
@@ADC_ISR .SECTION AT 018H 'CODE'
JMP _ADC_ISR
@ADC_ISR .SECTION 'CODE'
_ADC_ISR PROC
MOV V6A,A
MOV A,[0AH]
MOV V6S,A
MOV A,[03H]
MOV V6MP1,A
MOV A,[04H]
MOV V6BP,A
MOV A,RH
MOV V6T1,A
#pragma debug scope 7 1 ; 112 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
#line 112 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
MOV A,__sadoh
MOV b0_6[1],A
CLR b0_6
MOV A,__sadol
MOV b1_6,A
CLR b1_6[1]
MOV A,BANK _g_nADC_ISR_Value
MOV [04H],A
MOV A,OFFSET _g_nADC_ISR_Value
MOV [03H],A
MOV A,b0_6
OR A,b1_6
MOV [02H],A
INC [03H]
MOV A,b0_6[1]
OR A,b1_6[1]
MOV [02H],A
#line 114 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_it.c"
NOP
L11:
MOV A,V6T1
MOV RH,A
MOV A,V6MP1
MOV [03H],A
MOV A,V6BP
MOV [04H],A
MOV A,V6S
MOV [0AH],A
MOV A,V6A
RETI
_ADC_ISR ENDP
RAMBANK 0 @ADC_ISR
@ADC_ISR .SECTION 'DATA'
b0_6 DB 2 DUP(?)
b1_6 DB 2 DUP(?)
EXTERN _g_nADC_ISR_Value:BYTE
EXTERN RH:BYTE
EXTERN V6A:BYTE
EXTERN V6S:BYTE
EXTERN V6MP1:BYTE
EXTERN V6BP:BYTE
EXTERN V6T1:BYTE
