/**
  ******************************************************************************
  * @file HT8_Simulation_UART\main.c
  * @brief This file contains the main function for the simulation UART transmit example.
  * @author Holtek Semiconductor Inc.
  * @version V1.0.0
  * @date 2019-03-12
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
#include "HT8_Simulation_UART.h"

u8 g_nUART_TX_Data;	//UART TX data

/**
  * @brief simulation UART transmit main entry point.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void main()
{
	SIMULATION_UART_INIT();		//simulation uart initialization,set baud rate 9600(Fsys=8MHz)
	_delay(2000);			//wait system stable
	
	g_nUART_TX_Data = 0;
	//system loop
	while(1)
	{		
		UART_SoftWareSendByte(g_nUART_TX_Data);	//send data to PC by UART
		g_nUART_TX_Data++;						//transmit data+1,it will be transmit next loop
		_clrwdt();
		_delay(1000);
		_clrwdt();
	}
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/