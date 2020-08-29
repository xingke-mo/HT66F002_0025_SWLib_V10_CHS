#pragma debug scope 1 1
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
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
#pragma debug scope 2 1 ; 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
CALL _STM_Init
#line 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nCCRA
MOV [04H],A
MOV A,OFFSET _g_nCCRA
MOV [03H],A
MOV A,080h
MOV [02H],A
INC [03H]
CLR [02H]
#line 52 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nCCRP
MOV [04H],A
MOV A,OFFSET _g_nCCRP
MOV [03H],A
MOV A,04h
MOV [02H],A
INC [03H]
CLR [02H]
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
CALL _STM_PwmOutputConfig
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
MOV A,BANK _g_nCCRA
MOV [04H],A
MOV A,OFFSET _g_nCCRA
MOV [03H],A
MOV A,[02H]
MOV STM_PwmUpdate0,A
INC [03H]
MOV A,[02H]
MOV STM_PwmUpdate0[1],A
MOV A,BANK _g_nCCRP
MOV [04H],A
MOV A,OFFSET _g_nCCRP
MOV [03H],A
MOV A,[02H]
MOV b0_1,A
MOV A,b0_1
MOV STM_PwmUpdate1,A
CALL _STM_PwmUpdate
#line 63 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
SET [028H].3
#line 65 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
MOV A,01H
MOV RH,A
MOV A,0f2H
CALL __DELAYY1
#line 65 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 71 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
#line 71 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
CLR WDT
L7:
#line 68 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
#pragma debug scope 2 1 ; 68 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
JMP L6
L5:
#line 74 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
JMP $
LOCAL b0_1 DB ?
_main ENDP
EXTERN STM_PwmUpdate1:BYTE
EXTERN STM_PwmUpdate0:BYTE
#line 37 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
PUBLIC _g_nCCRP
@g_nCCRP .SECTION 'DATA'
_g_nCCRP DB 2 DUP (?) ;g_nCCRP
#pragma debug variable 12 1 _g_nCCRP g_nCCRP
#line 36 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
PUBLIC _g_nCCRA
@g_nCCRA .SECTION 'DATA'
_g_nCCRA DB 2 DUP (?) ;g_nCCRA
#pragma debug variable 12 1 _g_nCCRA g_nCCRA
EXTERN _STM_PwmUpdate:NEAR
EXTERN _STM_PwmOutputConfig:NEAR
EXTERN _STM_Init:NEAR
#line 46 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
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
#line 46 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\STM\software_library_STM_PWM_Output_example_V1.0_0312\src\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
