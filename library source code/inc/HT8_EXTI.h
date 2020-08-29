/**
  ******************************************************************************
  * @file HT8_EXTI.h
  * @brief The header file of the external interrupt library.
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


/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef _HT8_EXTI_H_
#define _HT8_EXTI_H_

#include "HT8_MCU_IP_SEL.h"

#define	INT_ISR_ENABLE()			_inte = 1
#define	INT_ISR_DISABLE()			_inte = 0

#define	INT_SET_FLAG()				_intf = 1
#define	INT_CLEAR_FLAG()			_intf = 0



/******** INT interrupr edge control ********/
//	#define	INT_DISABLE				(1)
	#define	INT_RISING_EDGE			(1)
//	#define	INT_FALLING_EDGE		(1)
//	#define	INT_BOTH_EDGE			(1)
/**** end of INT interrupr edge control *****/


/************* INT pin select**************************
* Single selection. 
*/
	#define 	INT_PA5				1			//INT pin select pa5,default
//	#define		INT_PA2				1			//INT pin select pa2
//	#define		INT_PA3				1			//INT pin select pa3
//	#define		INT_PA7				1			//INT pin select pa7
/** end of INT pin select **/


void EXIT_Init();


#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/