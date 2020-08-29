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

u16	g_nPeriod;	//timer period

/**
  * @brief STM timer/counter CCRA interrupt main entry point.
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
	
	/* set STM timer/counter period */
	STM_CounterModeConfig(g_nPeriod);
		
	MF0F_CLEAR_FLAG();		//clear multi-function 0 interrupt flag
	MF0E_ENABLE();			//enable multi-function 0 interrupt
	
	STM_CLEAR_FLAG_A();		//clear STM CCRA interrupt flag
	STM_CCRA_ISR_ENABLE();	//enable STM CCRA interrupt
	EMI_ENABLE();			//enable global interrupt
	STM_ENABLE();			//enable STM
	
	_pac7 = 0;				//TEST IO
	
	_delay(2000);		//wait system stable
	
	//system loop
	while(1)
	{
	/* STM(TM0) interrupt(0x10) in the HT8_it.c,When the
	   STM interrupt is generated,the PA7 io will be
	   flip in STM interrupt routine */
		_clrwdt();
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/