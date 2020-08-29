/**
  ******************************************************************************
  * @file HT8_SYS_Clock\main.c
  * @brief This file contains the main function for the system clock prescaler example.
  * @author Holtek Semiconductor Inc
  * @version V1.0.0
  * @date 2019-03-12
  ******************************************************************************
  * MCU 				: HT66F002/HT66F0025
  * Operating Voltage 	: 5.0v
  * System Clock 		: 
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


/**
  * @brief system clock prescaler select main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	
	/* system clock prescaler select function,
	   you can select system clock in HT8_SYS_Clock.H*/
	SysClockDivision_Init();
	_wdtc = 0b01010111;
	_pac7 = 0;

	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
		_pa7 = 1;
		_clrwdt();	//clear watch dog counter
		_clrwdt();	//clear watch dog counter
		_clrwdt();	//clear watch dog counter
		_pa7 = 0;
		_clrwdt();	//clear watch dog counter
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/