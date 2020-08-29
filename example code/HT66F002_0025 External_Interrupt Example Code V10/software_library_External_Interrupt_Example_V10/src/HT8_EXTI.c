/**
  ******************************************************************************
  * @file HT8_EXIT.c
  * @brief This file provides all the external interrupt initialization firmware functions.
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

/* Includes ------------------------------------------------------------------*/
#include "HT8_EXTI.h"



/**
  * @brief external interrupt initialization function.
  * @par Parameters:
  * None
  * @retval
  * None
  */
void EXIT_Init()
{

	#ifdef	INT_DISABLE
		_int0s1 = 0; _int0s0 = 0;	//disable external interrupt 
	
	#elif	INT_RISING_EDGE
		_int0s1 = 0; _int0s0 = 1;	//rising edge trigger external interrupt 
		
	#elif	INT_FALLING_EDGE
		_int0s1 = 1; _int0s0 = 0;	//falling edge trigger external interrupt 
		
	#elif	INT_BOTH_EDGE
		_int0s1 = 1; _int0s0 = 1;	//both edge trigger external interrupt 
	#endif	
	
	
	#ifdef	INT_PA5
		_intps1 = 0; _intps0 = 0;   //set int pin on PA5
		_pac5 = 1; _papu5 = 1;		//set int input mode and enable pull-high
		_pas7 = 0; _pas6 = 0;
	
	#elif	INT_PA2
		_intps1 = 0; _intps0 = 1;   //set int pin on PA2
		_pac2 = 1; _papu2 = 1;		//set int input mode and enable pull-high
		_pas5 = 0; _pas4 = 0;
	
	#elif	INT_PA3
		_intps1 = 1; _intps0 = 0;   //set int pin on PA3
		_pac3 = 1; _papu3 = 1;		//set int input mode and enable pull-high
	
	#elif	INT_PA7
		_intps1 = 1; _intps0 = 1;   //set int pin on PA7
		_pac7 = 1; _papu7 = 1;		//set int input mode and enable pull-high
	#endif
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/