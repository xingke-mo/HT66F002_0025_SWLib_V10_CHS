#pragma debug scope 1 1
#line 39 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
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
@UART_SoftWareSendByte .SECTION 'CODE'
PUBLIC _UART_SoftWareSendByte
_UART_SoftWareSendByte PROC
#pragma debug scope 2 1
#line 38 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
PUBLIC UART_SoftWareSendByte0
LOCAL UART_SoftWareSendByte0 DB ? ; TxData
#pragma debug variable 8 2 UART_SoftWareSendByte0 TxData
#pragma debug scope 2 1 ; 41 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#line 41 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
CLR [014H].7
#line 42 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
MOV A,02fH
CALL __DELAYX1
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
CLR CR1
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
JMP L10
L7:
#pragma debug scope 3 2 ; 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
SNZ UART_SoftWareSendByte0.0
JMP L11
#pragma debug scope 4 3 ; 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
SET [014H].7
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#pragma debug scope 3 2 ; 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
JMP L12
L11:
#pragma debug scope 5 3 ; 53 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#line 53 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
CLR [014H].7
L12:
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#pragma debug scope 3 2 ; 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
MOV A,02fH
CALL __DELAYX1
#line 56 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
CLR [0AH].0
RRC UART_SoftWareSendByte0
L8:
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
#pragma debug scope 2 1 ; 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
INC CR1
L10:
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
MOV A,CR1
SUB A,08h
SNZ [0ah].0
JMP L7
#line 58 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
SET [014H].7
#line 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
MOV A,02fH
CALL __DELAYX1
L6:
RET
#line 40 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_Simulation_UART.c"
LOCAL CR1 DB ? ; i
#pragma debug variable 8 2 CR1 i
_UART_SoftWareSendByte ENDP
EXTERN RH:BYTE
EXTERN __DELAYX0:NEAR
EXTERN __DELAYX1:NEAR
EXTERN __DELAYX2:NEAR
EXTERN __DELAYX3:NEAR
EXTERN __DELAYX4:NEAR
EXTERN __DELAYX5:NEAR
EXTERN __DELAYX6:NEAR
