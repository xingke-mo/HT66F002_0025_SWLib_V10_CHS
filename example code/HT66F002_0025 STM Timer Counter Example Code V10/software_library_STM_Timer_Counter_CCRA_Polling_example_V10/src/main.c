/**
  ******************************************************************************
  * @file HT8_STM\main.c
  * @brief This file contains the main function for the STM timer/counter CCRA interrupt example.
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

u16	g_nPeriod ;	//timer period

/**
  * @brief STM timer/counter CCRA polling main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	/* initialization STM IP */
	STM_Init();
	
	g_nPeriod = 256;
	
	STM_CounterModeConfig(g_nPeriod);	//set timer period
	STM_ENABLE();		//enable STM
	
	_pac7 = 0;			//test IO
	
	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
		_clrwdt();
	#ifdef	STM_CCRA_MATCH	
		if( 1 == STM_GET_CCRA_FLAG() )	//CCRA match
		{
			_pa7 = ~_pa7;
			STM_CLEAR_FLAG_A();	
		}
		
	#else	
		if( 1 == STM_GET_CCRP_FLAG() )	//CCRP match
		{
			_pa7 = ~_pa7;
			STM_CLEAR_FLAG_P();	
		}		
	#endif	
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/