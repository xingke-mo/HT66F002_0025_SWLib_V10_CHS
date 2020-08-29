/**
  ******************************************************************************
  * @file TimeBase\main.c
  * @brief This file contains the main function for the TimeBase0 polling example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-12
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



/**
  * @brief TimeBase0 polling main entry point.
  * @par Parameters
  * None
  * @retval 
  * None
  */
void main()
{
	/* Init TimeBase peripheral,specify TimeBase clock、TimeBase0 time-out period and 
	TimeBase1 time-out period in HT8_TimeBase.h */
	TimeBase_Init();
	
	/* enable TimeBase IP */
	TB_ENABLE();	
	
	_pac7 = 0;			//test IO
	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
		_clrwdt();
		
		if (1 == TB0_FLAG())		//timebase0 counter overflow
		{	
			TB0_CLEAR_FLAG();		//clear timebase0 counter overflow flag
			_pa7 = ~_pa7 ;			//test IO
		}
		
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/