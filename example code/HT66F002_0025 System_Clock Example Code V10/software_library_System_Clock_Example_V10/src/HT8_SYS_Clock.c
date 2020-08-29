/**
  ******************************************************************************
  * @file HT8_SYS_Clock.c
  * @brief This file provides all the system clock prescaler firmware functions.
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

/* Includes ------------------------------------------------------------------*/
#include "HT8_SYS_Clock.h"


/**
  * @brief system clock prescaler select.
  * @par Parameters:
  * None
  * @retval 
  * None
  */
void SysClockDivision_Init()
{
#ifdef	SYSCLOCK_FH
	_hlclk = 1;										//set Fsys as FH
	
#elif	SYSCLOCK_FH_DIV2
	_hlclk = 0; _cks2 = 1; _cks1 = 1; _cks0 = 1;	//set Fsys as FH/2
	
#elif	SYSCLOCK_FH_DIV4
	_hlclk = 0; _cks2 = 1; _cks1 = 1; _cks0 = 0;	//set Fsys as FH/4
	
#elif	SYSCLOCK_FH_DIV8
	_hlclk = 0; _cks2 = 1; _cks1 = 0; _cks0 = 1;	//set Fsys as FH/8
	
#elif	SYSCLOCK_FH_DIV16
	_hlclk = 0; _cks2 = 1; _cks1 = 0; _cks0 = 0;	//set Fsys as FH/16
	
#elif	SYSCLOCK_FH_DIV32
	_hlclk = 0; _cks2 = 0; _cks1 = 1; _cks0 = 1;	//set Fsys as FH/32
	
#elif	SYSCLOCK_FH_DIV64
	_hlclk = 0; _cks2 = 0; _cks1 = 1; _cks0 = 0;	//set Fsys as FH/64
	
#elif	SYSCLOCK_FLIRC
	_hlclk = 0; _cks2 = 0; _cks1 = 0; _cks0 = 0;	//set Fsys as FLIRC(32K)
#endif	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/