/**
  ******************************************************************************
  * @file STM\main.c
  * @brief This file contains the main function for the STM PWM output example.
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

u16	g_nCCRA ;		
u16	g_nCCRP ;		

/**
  * @brief STM PWM output main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	/* initialization STM IP */
	STM_Init();
	
	g_nCCRA = 128;	//PWM duty set 128
	g_nCCRP = 4;	//PWM period set 4*128
	
	/* Configure pwm function */
	STM_PwmOutputConfig();
	
	/* setting pwm duty and period 
	 * param1: CCRA value,pwm duty;
	 * param2: CCRP value,pwm period;
	 */
	STM_PwmUpdate(g_nCCRA,g_nCCRP);
	
	STM_ENABLE();		//enable STM
	
	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
	/* PWM will be output by STP0(PA2) pin and STP0B(PA5) pin  */
		_clrwdt();
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/