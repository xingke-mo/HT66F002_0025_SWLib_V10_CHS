/**
  ******************************************************************************
  * @file WDT\main.c
  * @brief This file contains the main function for the WDT example.
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
  * @brief WDT main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	if (0 == _to)
	{
		/* initialization WDT */
		WDT_Init();
		WDT_ENABLE();
		_pac7 = 0;		//set pa7 output mode
	}
	else
	{
		_pa7  = ~_pa7;	//WDT counter overflow reset,pa7 is Test IO	
	}
	
	//system loop
	while(1)
	{
		_halt();		//go to halt mode,waiting watch dog counter timeout
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/