/**
  ******************************************************************************
  * @file HT8_TimeBase.c
  * @brief This file provides all the timebase firmware functions.
  * @author Holtek Semiconductor Inc.
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

/* Includes ------------------------------------------------------------------*/
#include "HT8_TimeBase.h"

/**
  * @brief Initializes the TimeBase peripheral according to the specified parameters
  * @retval None
  */
void TimeBase_Init(void)
{
/***************** TimeBase clock select *****************/
	#ifdef	TB_CLOCK_FTBC
		{
			/* select TimeBase clock ftbc */
			_tbck = 0; 
		}		
	#elif	TB_CLOCK_FSYS_DIV4
		{
			/* select TimeBase clock fsys/4 */
			_tbck = 1; 
		}
	#endif	
/*************** end of TimeBase clock select ******************/	

						
/******** TimeBase0 time-out period select**********/
	#ifdef	TB0_Period_2_8		
		{
			/* select TimeBase0 time-out period 2^8(256)	*/
			_tb02 = 0;	_tb01 = 0;	_tb00 = 0;
		}	
	#elif	TB0_Period_2_9		
		{
			/* select TimeBase0 time-out period 2^9(512)	*/
			_tb02 = 0;	_tb01 = 0;	_tb00 = 1;
		}
	#elif	TB0_Period_2_10		
		{
			/* select TimeBase0 time-out period 2^10(1024) */
			_tb02 = 0;	_tb01 = 1;	_tb00 = 0;
		}
	#elif	TB0_Period_2_11		
		{
			/* select TimeBase0 time-out period 2^11(2048)	*/
			_tb02 = 0;	_tb01 = 1;	_tb00 = 1;
		}
	#elif	TB0_Period_2_12		
		{
			/* select TimeBase0 time-out period 2^12(4096)	*/
			_tb02 = 1;	_tb01 = 0;	_tb00 = 0;
		}	
	#elif	TB0_Period_2_13		
		{
			/* select TimeBase0 time-out period 2^13(8192)	*/
			_tb02 = 1;	_tb01 = 0;	_tb00 = 1;
		}
	#elif	TB0_Period_2_14		
		{
			/* select TimeBase0 time-out period 2^14(16384)	*/
			_tb02 = 1;	_tb01 = 1;	_tb00 = 0;
		}
	#elif	TB0_Period_2_15		
		{
			/* select TimeBase0 time-out period 2^15(32768)	*/
			_tb02 = 1;	_tb01 = 1;	_tb00 = 1;
		}
	#endif
/***** end of TimeBase0 time-out period select ******/


/******** TimeBase1 time-out period select**********/
	#ifdef	TB1_Period_2_12	
		{
			/* select TimeBase1 time-out period 2^12(4096)	*/
			_tb11 = 0;	_tb10 = 0;
		}	
	#elif	TB1_Period_2_13		
		{
			/* select TimeBase1 time-out period 2^13(8192)	*/
			_tb11 = 0;	_tb10 = 1;
		}
	#elif	TB1_Period_2_14		
		{
			/* select TimeBase1 time-out period 2^14(16384)	*/
			_tb11 = 1;	_tb10 = 0;
		}
	#elif	TB1_Period_2_15		
		{
			/* select TimeBase1 time-out period 2^15(32768)	*/
			_tb11 = 1;	_tb10 = 1;
		}
	#endif
/***** end of TimeBase1 time-out period select ******/


}
/******************* (C) COPYRIGHT 2018 Holtek Semiconductor Inc *****END OF FILE****/