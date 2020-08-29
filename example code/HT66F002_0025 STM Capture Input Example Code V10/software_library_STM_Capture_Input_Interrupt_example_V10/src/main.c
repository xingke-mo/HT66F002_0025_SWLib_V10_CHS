/**
  ******************************************************************************
  * @file HT8_STM\main.c
  * @brief This file contains the main function for the STM capture input interrupt example.
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

u8 	g_nCaptureFlag;
u16 g_nCapture_Value;

/**
  * @brief STM capture input interrupt main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
#ifdef DEBUG
/* Debug mode can be enabled by uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */
	SIMULATION_UART_INIT();	/* simulation uart initialization,baud rate set 9600,TX on pa7 */		
#endif	
	
	g_nCaptureFlag = 0;

	/* initialization STM IP */
	STM_Init();
	
	STM_CAPTURE_RISING_EDGE();		//capture rising edge
		
	MF0F_CLEAR_FLAG();				//clear multi-function 0 interrupt flag
	MF0E_ENABLE();					//enable multi-function 0 interrupt
	
	STM_CLEAR_FLAG_A();				//clear STM CCRA interrupt flag
	STM_CLEAR_FLAG_P();				//clear STM CCRP interrupt flag
	STM_CCRA_ISR_ENABLE();			//enable STM CCRA interrupt
	STM_CCRP_ISR_ENABLE();			//enable STM CCRP interrupt
	EMI_ENABLE();					//enable global interrupt
	

	_delay(2000);				//wait system stable
	STM_ENABLE();					//enable STM
	//system loop
	while(1)
	{
		if (1 == g_nCaptureFlag)		//capture finished
		{
			g_nCaptureFlag = 0;
			
		#ifdef	DEBUG	
		/* send capture data to PC for debug,Debug mode can be enabled by 
			uncommenting "DEBUG" Macro in HT8_MCU_IP_SEL.h */
			UART_SoftWareSendByte(0xa9);
			_delay(100);
			UART_SoftWareSendByte(g_nCapture_Value >>8);		//send capture data high byte to PC by uart
			_clrwdt();
			_delay(100);
			UART_SoftWareSendByte(g_nCapture_Value & 0x00ff);	//send capture data low byte to PC by uart
			_clrwdt();
		#endif
			
			_delay(10000);	
			STM_ENABLE();			//start next capture		
		}
		
		_clrwdt();
	}
	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/