/**
  ******************************************************************************
  * @file ADC\main.c
  * @brief This file contains the main function for the ADC Conversion example.
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

#ifdef	DEBUG
/* Debug mode can be enabled by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */
	#include "HT8_Simulation_UART.h"
#endif

u16 g_nConversionValue;		//AD conversion value


/**
  * @brief A/D Conversion main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
#ifdef	DEBUG
/* Debug mode can be enabled by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */
	SIMULATION_UART_INIT();
#endif

	/* Init ADC peripheral,specify ADC clock、reference Volta and 
	data alignment type in HT8_ADC.h */
	ADC_Init();	
	
	/* ADC channel select */
	ADC_SelectChannel(ADC_CH0);
	
	/* enable ADC IP */
	ADC_ENABLE();
	
	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
		_clrwdt();
		
		/* get AD converter value */
		g_nConversionValue = ADC_GetValue();
		
	#ifdef DEBUG	
	/* send conversion data to PC for debug, Debug mode can be enabled
	   by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */	
		UART_SoftWareSendByte(0xaa);						//send head code to PC
		_delay(100);
		UART_SoftWareSendByte(g_nConversionValue>>8);		//send AD conversion value high byte to PC
		_delay(100);
		UART_SoftWareSendByte(g_nConversionValue&0xff);		//send AD conversion value low byte to PC
	#endif
		
		_delay(4000);		//delay 2ms
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/