/**
  ******************************************************************************
  * @file HT8_WDT.c
  * @brief This file provides all the WDT firmware functions.
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


#include "HT8_WDT.h"



/**
  * @brief WDT initialization function.
  * @param[in] Non.
  * @retval Non.
  */
void WDT_Init()
{
#ifdef	WDT_OF_TIME_2_8
	_ws2=0;_ws1=0;_ws0=0;
	
#elif	WDT_OF_TIME_2_9
	_ws2=0;_ws1=0;_ws0=1;
	
#elif	WDT_OF_TIME_2_10
	_ws2=0;_ws1=1;_ws0=0;
	
#elif	WDT_OF_TIME_2_11
	_ws2=0;_ws1=1;_ws0=1;
	
#elif	WDT_OF_TIME_2_12
	_ws2=1;_ws1=0;_ws0=0;
	
#elif	WDT_OF_TIME_2_13
	_ws2=1;_ws1=0;_ws0=1;
	
#elif	WDT_OF_TIME_2_14
	_ws2=1;_ws1=1;_ws0=0;
	
#elif	WDT_OF_TIME_2_15
	_ws2=1;_ws1=1;_ws0=1;
#endif
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/