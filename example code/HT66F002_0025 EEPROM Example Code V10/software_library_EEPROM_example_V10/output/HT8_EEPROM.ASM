#pragma debug scope 1 1
#line 42 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
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
@EEPROM_Write .SECTION 'CODE'
PUBLIC _EEPROM_Write
_EEPROM_Write PROC
#pragma debug scope 2 1
#line 41 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
PUBLIC EEPROM_Write0
LOCAL EEPROM_Write0 DB ? ; Data
#pragma debug variable 8 2 EEPROM_Write0 Data
#line 41 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
PUBLIC EEPROM_Write1
LOCAL EEPROM_Write1 DB ? ; adr
#pragma debug variable 8 2 EEPROM_Write1 adr
#pragma debug scope 2 1 ; 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
#line 44 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET [04H].0
#line 45 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
CLR [0EH].0
#line 46 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,040h
MOV __mp1,A
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,EEPROM_Write1
MOV __eea,A
#line 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,EEPROM_Write0
MOV __eed,A
#line 54 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET __iar1.3
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET __iar1.2
L6:
L7:
#line 58 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SZ __iar1.2
JMP L6
#line 59 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
CLR __iar1
#line 60 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
CLR [04H].0
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET [0EH].0
L5:
RET
_EEPROM_Write ENDP
#line 73 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
@EEPROM_Read .SECTION 'CODE'
PUBLIC _EEPROM_Read
_EEPROM_Read PROC
#pragma debug scope 3 1
#line 72 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
PUBLIC EEPROM_Read0
LOCAL EEPROM_Read0 DB ? ; adr
#pragma debug variable 8 3 EEPROM_Read0 adr
#pragma debug scope 3 1 ; 76 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
#line 76 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET [04H].0
#line 77 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,040h
MOV __mp1,A
#line 80 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,EEPROM_Read0
MOV __eea,A
#line 83 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET __iar1.1
#line 84 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SET __iar1.0
L10:
L11:
#line 87 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
SZ __iar1.0
JMP L10
#line 88 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
CLR __iar1
#line 89 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
CLR [04H].0
#line 91 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,__eed
MOV CR1,A
#line 92 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
MOV A,CR1
L9:
RET
#line 75 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\HT8_EEPROM.c"
LOCAL CR1 DB ? ; EP_Read_Data
#pragma debug variable 8 3 CR1 EP_Read_Data
_EEPROM_Read ENDP
