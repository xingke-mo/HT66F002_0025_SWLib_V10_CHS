/**
  ******************************************************************************
  * @file HT8_Simulation_UART.h
  * @brief This file  contains the headers of the Simulation UART.
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

#ifndef _HT8_Simulation_UART_H_
#define	_HT8_Simulation_UART_H_

#include "HT8_MCU_IP_SEL.h"

/* simulation TX pin on pa7,if you want to select other pin,
 * just modify TXD,TXC,TXPU mapping to the pin witch you want.
 */
	#define 	TXD		_pa7			//TX pin mapping on PA7	
	#define 	TXC		_pac7			//TX pin input/output control
	#define 	TXPU	_papu7			//TX pin pull-high control
	#define		SIMULATION_UART_INIT()	TXD=1,TXC=0,TXPU=1	

/**** select simulation uart baud for 8MHz system clock ****/	
//	#define BAUDRATE	404		// baud rate 4800,395~413
	#define BAUDRATE	193		// baud rate 9600,191~195
//	#define BAUDRATE	96		// baud rate 19200,93~99
//	#define BAUDRATE	43		// baud rate 38400,41~45
/***********************************************************/

void	UART_SoftWareSendByte(u8 TxData);					


#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/