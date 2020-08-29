#pragma debug scope 1 1
#line 45 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
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
#pragma debug scope 2 1 ; 46 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#line 46 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
SZ [0AH].5
JMP L6
#pragma debug scope 3 2 ; 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
CALL _WDT_Init
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
CLR [019H].7
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
SET [019H].6
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
CLR [019H].5
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
SET [019H].4
#line 50 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
CLR [019H].3
#line 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
CLR [015H].7
#line 52 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#pragma debug scope 2 1 ; 52 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
JMP L9
L6:
#pragma debug scope 4 2 ; 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
MOV A,1<<7
XORM A,[014H]
#line 56 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#pragma debug scope 2 1 ; 56 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
JMP L9
L8:
#pragma debug scope 5 2 ; 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
HALT
L9:
#line 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
#pragma debug scope 2 1 ; 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
JMP L8
L5:
#line 64 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
JMP $
_main ENDP
EXTERN _WDT_Init:NEAR
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\WDT\software_library_WDT_Example_V1.0_0312\src\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
