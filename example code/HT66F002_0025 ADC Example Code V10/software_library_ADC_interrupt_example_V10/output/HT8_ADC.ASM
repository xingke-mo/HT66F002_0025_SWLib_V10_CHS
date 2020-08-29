#pragma debug scope 1 1
#line 38 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
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
@ADC_Init .SECTION 'CODE'
PUBLIC _ADC_Init
_ADC_Init PROC
#pragma debug scope 2 1 ; 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 3 2 ; 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [023H].2
#line 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [023H].1
#line 104 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [023H].0
#pragma debug scope 4 2 ; 136 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 136 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [022H].4
#pragma debug scope 5 2 ; 150 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 150 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [024H].3
#line 150 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [024H].2
#line 150 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [024H].1
#line 150 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [024H].0
L6:
RET
_ADC_Init ENDP
#line 207 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
@ADC_SelectChannel .SECTION 'CODE'
PUBLIC _ADC_SelectChannel
_ADC_SelectChannel PROC
#pragma debug scope 6 1
#line 206 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
PUBLIC ADC_SelectChannel0
LOCAL ADC_SelectChannel0 DB ? ; ADC_Channel
#pragma debug variable 8 6 ADC_SelectChannel0 ADC_Channel
#pragma debug scope 6 1 ; 208 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 208 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,01fh
ANDM A,__sadc1
#line 209 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_SelectChannel0
SUB A,04h
SZ [0ah].0
JMP L8
#pragma debug scope 7 6 ; 212 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 212 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,0fch
ANDM A,__sadc0
#line 215 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_SelectChannel0
ORM A,__sadc0
#line 218 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_SelectChannel0
MOV b0_2,A
SZ b0_2
JMP L16
JMP L12
L16:
MOV A,b0_2
XOR A,01h
SZ [0ah].2
JMP L13
MOV A,b0_2
XOR A,02h
SZ [0ah].2
JMP L14
MOV A,b0_2
XOR A,03h
SZ [0ah].2
JMP L15
#line 218 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L9
L12:
#pragma debug scope 8 7 ; 220 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 220 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].1
#line 220 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].0
#line 220 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L9
L13:
#line 221 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].3
#line 221 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].2
#line 221 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L9
L14:
#line 222 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].5
#line 222 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].4
#line 222 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L9
L15:
#line 223 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].7
#line 223 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].6
#line 226 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 6 1 ; 226 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L9
L8:
#pragma debug scope 9 6 ; 230 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 230 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_SelectChannel0
ORM A,__sadc1
L9:
L7:
RET
LOCAL b0_2 DB ?
_ADC_SelectChannel ENDP
#line 241 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
@ADC_GetValue .SECTION 'CODE'
PUBLIC _ADC_GetValue
_ADC_GetValue PROC
#pragma debug scope 10 1 ; 245 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 11 10 ; 245 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 245 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [022H].7
#line 245 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [022H].7
#line 245 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [022H].7
L18:
L19:
#line 248 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 10 1 ; 248 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SZ [022H].6
JMP L18
#pragma debug scope 12 10 ; 254 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 254 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,__sadoh
MOV b0_3[1],A
CLR b0_3
MOV A,__sadol
MOV b1_3,A
CLR b1_3[1]
MOV A,b0_3
OR A,b1_3
MOV CR2,A
MOV A,b0_3[1]
OR A,b1_3[1]
MOV CR2[1],A
#line 264 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 10 1 ; 264 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,CR2[1]
MOV RH,A
MOV A,CR2
L17:
RET
LOCAL b0_3 DB 2 DUP(?)
LOCAL b1_3 DB 2 DUP(?)
#line 242 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
LOCAL CR2 DB 2 DUP (?) ; Value
#pragma debug variable 12 10 CR2 Value
_ADC_GetValue ENDP
#line 278 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
@ADC_GetChannelValue .SECTION 'CODE'
PUBLIC _ADC_GetChannelValue
_ADC_GetChannelValue PROC
#pragma debug scope 13 1
#line 277 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
PUBLIC ADC_GetChannelValue0
LOCAL ADC_GetChannelValue0 DB ? ; ADC_Channel
#pragma debug variable 8 13 ADC_GetChannelValue0 ADC_Channel
#pragma debug scope 13 1 ; 281 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 281 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,01fh
ANDM A,__sadc1
#line 282 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_GetChannelValue0
SUB A,04h
SZ [0ah].0
JMP L22
#pragma debug scope 14 13 ; 285 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 285 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,0f8h
ANDM A,__sadc0
#line 287 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_GetChannelValue0
ORM A,__sadc0
#line 290 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_GetChannelValue0
MOV b0_4,A
SZ b0_4
JMP L33
JMP L26
L33:
MOV A,b0_4
XOR A,01h
SZ [0ah].2
JMP L27
MOV A,b0_4
XOR A,02h
SZ [0ah].2
JMP L28
MOV A,b0_4
XOR A,03h
SZ [0ah].2
JMP L29
#line 290 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L23
L26:
#pragma debug scope 15 14 ; 292 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 292 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].1
#line 292 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].0
#line 292 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L23
L27:
#line 293 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].3
#line 293 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].2
#line 293 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L23
L28:
#line 294 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].5
#line 294 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].4
#line 294 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L23
L29:
#line 295 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].7
#line 295 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [026H].6
#line 298 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 13 1 ; 298 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
JMP L23
L22:
#pragma debug scope 16 13 ; 302 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 302 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,ADC_GetChannelValue0
ORM A,__sadc1
L23:
#pragma debug scope 17 13 ; 306 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 306 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [022H].7
#line 306 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SET [022H].7
#line 306 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
CLR [022H].7
L30:
L31:
#line 309 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 13 1 ; 309 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
SZ [022H].6
JMP L30
#pragma debug scope 18 13 ; 315 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#line 315 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,__sadoh
MOV b0_4[1],A
CLR b0_4
MOV A,__sadol
MOV b1_4,A
CLR b1_4[1]
MOV A,b0_4
OR A,b1_4
MOV CR3,A
MOV A,b0_4[1]
OR A,b1_4[1]
MOV CR3[1],A
#line 326 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
#pragma debug scope 13 1 ; 326 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
MOV A,CR3[1]
MOV RH,A
MOV A,CR3
L21:
RET
LOCAL b0_4 DB 2 DUP(?)
LOCAL b1_4 DB 2 DUP(?)
#line 279 "F:\2018-10-22 Software library(未)\第二階段\HT66F002_0025\example code\ADC\software_library_ADC_interrupt_example_V1.0_0307\src\HT8_ADC.c"
LOCAL CR3 DB 2 DUP (?) ; AD_ConverterValue
#pragma debug variable 12 13 CR3 AD_ConverterValue
_ADC_GetChannelValue ENDP
EXTERN RH:BYTE
