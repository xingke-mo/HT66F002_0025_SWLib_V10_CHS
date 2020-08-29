/**
  ******************************************************************************
  * @file ADC\main.c
  * @brief This file contains the main function for the A/D Conversion example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-07
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

/* Debug mode can be enabled by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */
#ifdef	DEBUG
	#include "HT8_Simulation_UART.h"
#endif

 u16 g_nADC_ISR_Value;	//AD conversion value

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
	SIMULATION_UART_INIT();		//simulation UART initialization, TX on pa7
#endif
	
	/* Init ADC peripheral,specify ADC clock,reference Voltage and 
	   data alignment type in HT8_ADC.h */
	ADC_Init();	
	
	/* ADC channel select */
	ADC_SelectChannel(ADC_CH0);
	
	/* enable ADC IP */
	ADC_ENABLE();
	
	/* enable ADC interrupt */
	ADC_CLEAR_ISR_FLAG();
	ADC_ISR_ENABLE();
	
	/* enable global interrupt */
	EMI_ENABLE();
	
	_delay(2000);	//wait system stable
	
	//system loop
	while(1)
	{
		_clrwdt();
		
		/* start A/D conversion,you can get the conversion 
		   value in HT8_it.c ADC interrupt(0X18)  */
		ADC_START();		//trigger A/D conversion
		_delay(4000);	//delay 2ms
		#ifdef	DEBUG	
		/* send conversion data to PC for debug,Debug mode can be enabled 
		   by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */	
			UART_SoftWareSendByte(0xaa);		//send head code
			_delay(100);
			UART_SoftWareSendByte(g_nADC_ISR_Value>>8);		//send high byte
			_delay(100);
			UART_SoftWareSendByte(g_nADC_ISR_Value&0xff);	//send low byte
		#endif	
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/