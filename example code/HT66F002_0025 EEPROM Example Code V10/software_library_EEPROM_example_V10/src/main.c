/**
  ******************************************************************************
  * @file EEPROM\main.c
  * @brief This file contains the main function for the EEPROM example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-08
  ******************************************************************************
  * MCU 				: HT66F002/HT66F0025
  * Operating Voltage 	: 5.0v
  * System Clock 		: 8MHz
  ******************************************************************************
  * @attention
  *
  * Firmware Disclaimer Information
  *
  * 1. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, which is supplied by Holtek Semiconductor Inc., (hereinafter referred to as "HOLTEK") is the
  *    proprietary and confidential intellectual property of HOLTEK, and is protected by copyright law and
  *    other intellectual property laws.
  *
  * 2. The customer hereby acknowledges and agrees that the program technical documentation, including the
  *    code, is confidential information belonging to HOLTEK, and must not be disclosed to any third parties
  *    other than HOLTEK and the customer.
  *
  * 3. The program technical documentation, including the code, is provided "as is" and for customer reference
  *    only. After delivery by HOLTEK, the customer shall use the program technical documentation, including
  *    the code, at their own risk. HOLTEK disclaims any expressed, implied or statutory warranties, including
  *    the warranties of merchantability, satisfactory quality and fitness for a particular purpose.
  *
  * <h2><center>Copyright (C) Holtek Semiconductor Inc. All rights reserved</center></h2>
  ************************************************************************************************************/

#include "HT8_MCU_IP_SEL.h"

u8 EEPROM_DATA0;
u8 EEPROM_DATA1;


/**
  * @brief EEPROM main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{	
	_wdtc = 0x57;						//Watchdog set 2^18 * Tlirc(32KHz)
	
	EEPROM_Write(0x55,0x10);			//Write 0x55 to EEPROM,adress 0x10
	_clrwdt();						//Clear Watchdog
		
	EEPROM_Write(0x69,0x11);			//Write 0x69 to EEPROM,adress 0x11
	_clrwdt();						//Clear Watchdog
		
	EEPROM_DATA0 = 0;					//EEPROM_DATA0 init
	EEPROM_DATA0 = EEPROM_Read(0x10);	//Read EEPROM data to EEPROM_DATA0,adress 0x10 
		
	EEPROM_DATA1 = 0;					//EEPROM_DATA1 init
	EEPROM_DATA1 = EEPROM_Read(0x11);	//Read EEPROM data to EEPROM_DATA1,adress 0x11

	while(1)
	{	
		_delay(1);
	}	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/

