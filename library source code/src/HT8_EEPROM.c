/**
  ******************************************************************************
  * @file HT8_EEPROM.c
  * @brief This file provides all the EEPROM firmware functions.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-08
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

#include "HT8_EEPROM.h"


/**
  * @brief EEPROM write function.
  * @param[in] The data you want to write to EEPROM.
  * It can be 0x00~0xff.
  * @param[in] Specifies EEPROM address.
  * It can be 0x00~0x1f for HT66F002 and HT66F0025.
  * @retval None
  */
void EEPROM_Write(u8 Data,u8 adr)
{
	/*config EEPROM init*/
	_dmbp0 = 1;			
	_emi = 0;		//disable global interrupt
	_mp1 = 0x40;
	
	/*config EEPROM address*/
	_eea = adr;	
	/*Write data*/
	_eed = Data;	
		
	/*config EEPROM Write mode*/
	_iar1 |= 0x08;
	_iar1 |= 0x04;
		
	/* waitting for EEPROM write finishing */
	while(_iar1 & 0x04);
	_iar1 = 0;
	_dmbp0 = 0;
	_emi = 1;		//enable global interrupt			
	return;
}
	

/**
  * @brief EEPROM read function.
  * @param[in] Specifies EEPROM address that you want to read.
  * It can be 0x00~0x1f for HT66F002 and HT66F0025.
  * @retval EEPROM data.
  */
u8 EEPROM_Read(u8 adr)
{
	/* config EEPROM init */
	u8 EP_Read_Data;
	_dmbp0 = 1;
	_mp1 = 0x40;
	
	/*config EEPROM address*/
	_eea = adr;
	
	/*config EEPROM Read mode*/
	_iar1 |= 0x02;
	_iar1 |= 0x01;
	
	/* waitting for EEPROM Read finishing */
	while(_iar1 & 0x01);
	_iar1 = 0;
	_dmbp0 = 0;
		
	EP_Read_Data = _eed;		//Read data
	return EP_Read_Data;			
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/




