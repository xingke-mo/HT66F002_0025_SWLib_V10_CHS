/**
  ******************************************************************************
  * @file HT8_TimeBase.h
  * @brief The header file of the TimeBase library.
  * @author Holtek Semiconductor Inc
  * @version V1.0.0
  * @date 2018-12-20
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

#ifndef _HT8_TimeBase_H_
#define _HT8_TimeBase_H_

#include "HT8_MCU_IP_SEL.h"

#define		TB_ENABLE()					_tbon = 1
#define		TB_DISABLE()				_tbon = 0

#define		TB0_ISR_ENABLE()			_tb0e = 1
#define		TB0_ISR_DISABLE()			_tb0e = 0
#define		TB0_SET_FLAG()				_tb0f = 1
#define		TB0_CLEAR_FLAG()			_tb0f = 0
#define		TB0_FLAG()					_tb0f

#define		TB1_ISR_ENABLE()			_tb1e = 1
#define		TB1_ISR_DISABLE()			_tb1e = 0
#define		TB1_SET_FLAG()				_tb1f = 1
#define		TB1_CLEAR_FLAG()			_tb1f = 0
#define		TB1_FLAG()					_tb1f

/*********** select TimeBase clock *************/
//	#define		TB_CLOCK_FTBC			(1)
	#define		TB_CLOCK_FSYS_DIV4		(1)
//end of select TimeBase clock

/******** select TimeBase0 time-out period  *********/ 
//	#define		TB0_Period_2_8			(1)
//	#define		TB0_Period_2_9			(1)
	#define		TB0_Period_2_10			(1)
//	#define		TB0_Period_2_11			(1)
//	#define		TB0_Period_2_12			(1)
//	#define		TB0_Period_2_13			(1)
//	#define		TB0_Period_2_14			(1)
//	#define		TB0_Period_2_15			(1)
/* end of select TimeBase0 time-out period */


/******** select TimeBase1 time-out period  *********/ 
	#define		TB1_Period_2_12			(1)
//	#define		TB1_Period_2_13			(1)
//	#define		TB1_Period_2_14			(1)
//	#define		TB1_Period_2_15			(1)
/* end of select TimeBase1 time-out period */


/** TimeBase initialization function，you can select 
  * TimeBase clock,TimeBase0 time-out period and TimeBase1 time-out period
  * in TimeBase.h.
  */
void TimeBase_Init(void);


#endif//end of _HT8_TimeBase_H_

/******************* (C) COPYRIGHT 2018 Holtek Semiconductor Inc *****END OF FILE****/