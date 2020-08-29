/**
  ******************************************************************************
  * @file HT8_SYS_Clock.h
  * @brief The header file of the system clock prescaler library.
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


/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef _HT8_SYS_Clock_H_
#define _HT8_SYS_Clock_H_

#include "HT8_MCU_IP_SEL.h"

/****** system clock prescaler select ******/
	#define	SYSCLOCK_FH				(1)	
//	#define	SYSCLOCK_FH_DIV2		(1)	
//	#define	SYSCLOCK_FH_DIV4		(1)	
//	#define	SYSCLOCK_FH_DIV8		(1)	
//	#define	SYSCLOCK_FH_DIV16		(1)	
//	#define	SYSCLOCK_FH_DIV32		(1)	
//	#define	SYSCLOCK_FH_DIV64		(1)	
//	#define	SYSCLOCK_FLIRC			(1)	
/** end of system clock prescaler select **/


void SysClockDivision_Init();

#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/