#pragma debug scope 1 1
#line 43 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
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
#pragma debug scope 2 1 ; 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
SET [014H].7
CLR [015H].7
SET [016H].7
#line 45 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nUART_TX_Data
MOV [04H],A
MOV A,OFFSET _g_nUART_TX_Data
MOV [03H],A
CLR [02H]
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
#line 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nUART_TX_Data
MOV [04H],A
MOV A,OFFSET _g_nUART_TX_Data
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
MOV A,b0_1
MOV UART_SoftWareSendByte0,A
CALL _UART_SoftWareSendByte
#line 52 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nUART_TX_Data
MOV [04H],A
MOV A,OFFSET _g_nUART_TX_Data
MOV [03H],A
INC [02H]
#line 53 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
CLR WDT
#line 54 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
MOV A,0f9H
CALL __DELAYX0
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
CLR WDT
L7:
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
#pragma debug scope 2 1 ; 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
JMP L6
L5:
#line 57 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
JMP $
LOCAL b0_1 DB ?
_main ENDP
EXTERN UART_SoftWareSendByte0:BYTE
#line 33 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
PUBLIC _g_nUART_TX_Data
@g_nUART_TX_Data .SECTION 'DATA'
_g_nUART_TX_Data DB ? ; g_nUART_TX_Data
#pragma debug variable 8 1 _g_nUART_TX_Data g_nUART_TX_Data
EXTERN _UART_SoftWareSendByte:NEAR
#line 42 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
EXTERN __DELAYX0:NEAR
EXTERN __DELAYX1:NEAR
EXTERN __DELAYX2:NEAR
EXTERN __DELAYX3:NEAR
EXTERN __DELAYX4:NEAR
EXTERN __DELAYX5:NEAR
EXTERN __DELAYX6:NEAR
EXTERN __DELAYY0:NEAR
EXTERN __DELAYY1:NEAR
EXTERN __DELAYY2:NEAR
EXTERN __DELAYY3:NEAR
EXTERN __DELAYY4:NEAR
EXTERN __DELAYY5:NEAR
#line 42 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\UART\software_library_SimulationUART_example_V1.0_0312\src\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
