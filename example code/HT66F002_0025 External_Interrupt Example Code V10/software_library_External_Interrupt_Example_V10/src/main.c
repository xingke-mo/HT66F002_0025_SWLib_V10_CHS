/**
  ******************************************************************************
  * @file HT8_EXTI\main.c
  * @brief This file contains the main function for the external interrupt example.
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


/**
  * @brief external interrupt main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	_pac6 = 0;				//set pa6 output mode
	_pa6  = 0;				//test IO
	_pac0 = 0;				//set pa0 output mode
	_pa0  = 0;				//general square wave as external interrupt input signal
	
	/* TimeBase initialization, */
	TimeBase_Init();
	
	/* enable TimeBase0 interrupt */
	TB0_ISR_ENABLE();
	
	/* enable TimeBase IP */
	TB_ENABLE();		
	
	/* external interrupt initialization, */
	EXIT_Init();
	
	INT_CLEAR_FLAG();		//clear external interrupt flag
	INT_ISR_ENABLE();		//enable external interrupt

	EMI_ENABLE();			//enable global interrupt
	
	_delay(2000);		//wait system stable
	
	//system loop
	while(1)
	{
	/* external interrupt(0x04)in the HT8_it.c,When the
	   external interrupt is generated,the PA6 io will be
	   flip in external interrupt routine */	
		_clrwdt();		//clear watch dog counter
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/