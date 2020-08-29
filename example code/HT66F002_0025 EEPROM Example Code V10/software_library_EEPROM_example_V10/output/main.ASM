#pragma debug scope 1 1
#line 48 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
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
#pragma debug scope 2 1 ; 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
#line 49 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,057h
MOV __wdtc,A
#line 51 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,055h
MOV EEPROM_Write0,A
MOV A,010h
MOV EEPROM_Write1,A
CALL _EEPROM_Write
#line 52 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
CLR WDT
#line 54 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,069h
MOV EEPROM_Write0,A
MOV A,011h
MOV EEPROM_Write1,A
CALL _EEPROM_Write
#line 55 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
CLR WDT
#line 57 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,BANK _EEPROM_DATA0
MOV [04H],A
MOV A,OFFSET _EEPROM_DATA0
MOV [03H],A
CLR [02H]
#line 58 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,010h
MOV EEPROM_Read0,A
CALL _EEPROM_Read
MOV b0_1,A
MOV A,BANK _EEPROM_DATA0
MOV [04H],A
MOV A,OFFSET _EEPROM_DATA0
MOV [03H],A
MOV A,b0_1
MOV [02H],A
#line 60 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,BANK _EEPROM_DATA1
MOV [04H],A
MOV A,OFFSET _EEPROM_DATA1
MOV [03H],A
CLR [02H]
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
MOV A,011h
MOV EEPROM_Read0,A
CALL _EEPROM_Read
MOV b0_1,A
MOV A,BANK _EEPROM_DATA1
MOV [04H],A
MOV A,OFFSET _EEPROM_DATA1
MOV [03H],A
MOV A,b0_1
MOV [02H],A
#line 61 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
JMP L7
L6:
#pragma debug scope 3 2 ; 65 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
#line 65 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
NOP
L7:
#line 63 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
#pragma debug scope 2 1 ; 63 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
JMP L6
L5:
#line 67 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
JMP $
LOCAL b0_1 DB ?
_main ENDP
EXTERN EEPROM_Read0:BYTE
EXTERN EEPROM_Write1:BYTE
EXTERN EEPROM_Write0:BYTE
#line 37 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
PUBLIC _EEPROM_DATA1
@EEPROM_DATA1 .SECTION 'DATA'
_EEPROM_DATA1 DB ? ; EEPROM_DATA1
#pragma debug variable 8 1 _EEPROM_DATA1 EEPROM_DATA1
#line 36 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
PUBLIC _EEPROM_DATA0
@EEPROM_DATA0 .SECTION 'DATA'
_EEPROM_DATA0 DB ? ; EEPROM_DATA0
#pragma debug variable 8 1 _EEPROM_DATA0 EEPROM_DATA0
EXTERN _EEPROM_Read:NEAR
EXTERN _EEPROM_Write:NEAR
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
STARTSEC .SECTION  COM_L 'CODE'
STARTUP:
STARTSEC .SECTION  COM_E 'CODE'
RET
EXTERN RH:BYTE
#line 47 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\EEPROM\software_library_EEPROM_example_V1.0_0307\src\main.c"
@CODE .SECTION AT 0 'CODE'
CALL STARTUP
JMP begin
@DUMMY PROC
CALL _main
@DUMMY ENDP
