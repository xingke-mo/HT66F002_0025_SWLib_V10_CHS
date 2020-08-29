/**
  ******************************************************************************
  * @file HT8_it.c
  * @brief This file provides all the interrupt firmware functions.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-07
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

#include "HT8_it.h"

extern	u8 g_nCaptureFlag;
extern u16 g_nCapture_Value;
u8  g_nSTM_CCRP_Time;

/**
  * @brief external Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector INT_ISR @ 0x04
void INT_ISR(void)
{
	/* user define */
}


/**
  * @brief timebase0 Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector TB0_ISR @ 0x08
void TB0_ISR(void)
{
	/* user define */
}

/**
  * @brief timebase1 Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector TB1_ISR @ 0x0C
void TB1_ISR(void)
{
	/* user define */
}


/**
  * @brief timer Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector Timer_ISR @ 0x10
void Timer_ISR(void)
{
	u16 g_nCapture_rising_Value;
	u16 g_nCapture_falling_Value;	
	
	if( 1 == STM_GET_CCRA_FLAG() )
	{
		STM_CLEAR_FLAG_A();
		
		if( _st0io1 == 0 && _st0io0 == 0 )
		{
			g_nCapture_rising_Value = STM_GET_CAPTURE_VALUE();
			g_nCapture_rising_Value += (g_nSTM_CCRP_Time * 1024 );
			STM_CAPTURE_FALLING_EDGE();
		}
		
		else if( _st0io1 == 0 && _st0io0 == 1 )
		{
			g_nCapture_falling_Value = STM_GET_CAPTURE_VALUE();
			g_nCapture_falling_Value += (g_nSTM_CCRP_Time * 1024 );
			g_nCapture_Value = g_nCapture_falling_Value - g_nCapture_rising_Value;
			g_nCapture_Value >>= 1;
			g_nSTM_CCRP_Time = 0;
			STM_CAPTURE_RISING_EDGE();
			STM_DISABLE();						//capture finished,disable PTM
			
			g_nCaptureFlag = 1;
	
		}

	}
	
	if( 1 == STM_GET_CCRP_FLAG() )
	{
		STM_CLEAR_FLAG_P();	
		g_nSTM_CCRP_Time++;
	}
}

/**
  * @brief EEPROM Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector EEPROM_ISR @ 0x14
void EEPROM_ISR(void)
{
	/* user define */
}

/**
  * @brief ADC Interruption routine.
  * @par Parameters:
  * None
  * @retval
  * None
  */
#pragma vector ADC_ISR @ 0x18
void ADC_ISR(void)
{
	/* user define */
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/