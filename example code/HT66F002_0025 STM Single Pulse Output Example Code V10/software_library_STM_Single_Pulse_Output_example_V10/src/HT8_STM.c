/**
  ******************************************************************************
  * @file HT8_STM.c
  * @brief This file provides all the STM firmware functions.
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

/* Includes ------------------------------------------------------------------*/


#include "HT8_STM.h"

/**
  * @brief STM initialization function.
  * @param[in] Non.
  * @retval Non.
  */
void STM_Init(void)
{
/******************** work mode select ********************/
	#ifdef	STM_TIMER_COUNTER_MODE
		_st0m1 = 1; _st0m0 = 1;	//Select STM timer/counter Mode		
		
	#elif	STM_PWM_OUTPUT_MODE
		_st0m1 = 1; _st0m0 = 0;	
		_st0io1 = 1; _st0io0 = 0;	 //Select STM PWM Output Mode
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
	
	#elif	STM_SINGLE_PULSE_OUTPUT_MODE
		_st0m1 = 1; _st0m0 = 0;	
		_st0io1 = 1; _st0io0 = 1;	//Select STM Single Pulse Output Mode
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
		
	#elif	STM_COMPARE_MATCH_MODE	//Select STM Compare Match Output Mode
		_st0m1 = 0; _st0m0 = 0;
		
		#ifdef	STP0_PA2
			_pas5 = 0; _pas4 = 1;
		#elif 	STP0_PA0
			_pas1 = 0; _pas0 = 1;
		#endif
		
		#ifdef	STP0B_PA5
			_pas7 = 0; _pas6 = 1;
		#elif 	STP0B_PA1
			_pas3 = 0; _pas2 = 1;
		#endif
		
	#elif	STM_CAPTURE_INPUT_MODE	//Select STM Capture Input Mode
		_st0m1 = 0; _st0m0 = 1;	
		
		#ifdef 	STP0I_PA6
			_stp0ips = 0; 
			_pac6 = 1; _papu6 = 1;
		#elif 	STP0I_PA0
			_stp0ips = 1;
			_pas1 = 0; _pas0 = 0;
			_pac0 = 1; _papu0 = 1;
		#endif	
	
	#endif
/** end of work mode select **/		


/********************* clock select **********************/
	#ifdef	STM_FSYS_DIV4
		_st0ck2 = 0; _st0ck1 = 0; _st0ck0 = 0;	//Select STM Counter clock Fsys/4
	
	#elif	STM_FSYS
		_st0ck2 = 0; _st0ck1 = 0; _st0ck0 = 1;	//Select STM Counter clock Fsys
	
	#elif	STM_FH_DIV16
		_st0ck2 = 0; _st0ck1 = 1; _st0ck0 = 0; //Select STM Counter clock FH/16
		
	#elif	STM_FH_DIV64
		_st0ck2 = 0; _st0ck1 = 1; _st0ck0 = 1; //Select STM Counter clock FH/64
		
	#elif	STM_FTBC
		_st0ck2 = 1; _st0ck1 = 0; _st0ck0 = 0;	//Select STM Counter clock Ftbc
		
	#elif	STM_TCK_RISING_EDGE
		_st0ck2 = 1; _st0ck1 = 1; _st0ck0 = 0; //Select STM Counter clock TCKn rising edge clock
		
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif	
		
	#elif	STM_TCK_FALLING_EDGE
		_st0ck2 = 1; _st0ck1 = 1; _st0ck0 = 1; //Select STM Counter clock TCKn falling edge clock
		
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif	

	#endif	
/** end of clock select **/
		
/************ TMn Counter Clear condition selection *************/	
	#ifdef	STM_CCRA_MATCH
		_st0cclr = 1;	//STM Counter Clear condition selection STM Comparator A match		
	#else
		_st0cclr = 0;	//STM Counter Clear condition selection STM Comparator P match	
	#endif
/********* end of TMn Counter Clear condition selection *********/	
}


/**
  * @brief STM PWM configure function.
  * Specify the following parameters in HT8_STM.h,\n
  * 1.Output control\n
  * 2.Output polarity control\n
  * @param[in] Non.
  * @retval Non.
  */
void STM_PwmOutputConfig(void)
{
/************* Output control **************/		
	#ifdef	STM_PWM_ACTIVE_LOW
		_st0oc = 0;					//active low
	#else
		_st0oc = 1;					//active high
	#endif
/********* end of Output control ***********/	
		
/******** Output polarity control **********/
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;					//no inverted
	#else
		_st0pol = 1;					//inverted
	#endif
/******** Output polarity control **********/	

/*********** PWM duty and period control *******/
	#ifdef	STM_CCRP_P_CCRA_D
		_st0dpx = 0;
	#else
		_st0dpx = 1;
	#endif
/* end of Output polarity control */
}


/**
  * @brief STM PWM update function.
  * @param[in] CCRA value.
  * @param[in] CCRP value.
  * @retval Non.
  */
void STM_PwmUpdate(u16 TempCCRA,u8 TempCCRP)
{
	_stm0al = TempCCRA & 0x00ff;	//
	_stm0ah = TempCCRA >> 8;		//
	
	_st0rp2 = (TempCCRP>>2) & 0x01;			
	_st0rp1 = (TempCCRP>>1) & 0x01;	
	_st0rp0 = TempCCRP & 0x01;	
}


/**
  * @brief STM SinglePulse configure function.
  * Specify the following parameters in HT8_STM.h\n
  * 1.Output control\n
  * 2.Output polarity control\n
  * 3.STCK0 trigger control
  * @param[in] Non.
  * @retval Non.
  */
void STM_SinglePulseOutputConfig(void)
{
/************* Output control **************/		
	#ifdef	STM_ACTIVE_LOW
		_st0oc = 0;					//active low
	#else
		_st0oc = 1;					//active high
	#endif
/********* end of Output control **********/	
		
/******** Output polarity control ********/
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;					//no inverted
	#else
		_st0pol = 1;					//inverted
	#endif
/******** Output polarity control ********/	

/******** STCK0 trigger control *****/
	#ifdef	STM_STCK0_TRIG_ENABLE
	
		#ifdef 	STCK0_PA7
			_stck0ps = 0;
			_pac7 = 1; _papu7 = 1;
		#elif	STCK0_PA6
			_stck0ps = 1;
			_pac6 = 1; _papu6 = 1;
		#endif
			
	#endif
/*** end of STCK0 trigger control ***/
}


/**
  * @brief STM SinglePulse update function.
  * @param[in] pulse width value.
  * @retval Non.
  */
void STM_SinglePulseUpdate(u16 TempCCRA)
{
	_stm0al = TempCCRA & 0x00ff;	//
	_stm0ah = TempCCRA >> 8;		//
}


/**
  * @brief STM timer/counter mode period config function.
  * @param[in] period value,
  * @retval None.
  */
void STM_CounterModeConfig(u16 TempPeriod)
{
#ifdef	STM_CCRA_MATCH
	_stm0al = TempPeriod & 0x00ff;	//
	_stm0ah = TempPeriod >> 8;		//
#else	
	_st0rp2 = (TempPeriod>>2) & 0x01;			
	_st0rp1 = (TempPeriod>>1) & 0x01;	
	_st0rp0 = TempPeriod & 0x01;
#endif		
}


/**
  * @brief STM compare match output config function,
  * Specify the following parameters in HT8_STM.h\n 
  * 1.Output function select\n
  * 2.Output initial status control\n
  * 3.Output polarity control\n
  * @param[in] None.
  * @retval None.
  */
void STM_CompareMatchOutputConfig()
{
/********** Select pin output function **********/	
	#ifdef	STM_NO_CHANGE
		_st0io1 = 0; _st0io0 = 0;	//
	
	#elif	STM_OUTPUT_LOW
		_st0io1 = 0; _st0io0 = 1;	//
	
	#elif	STM_OUTPUT_HIGH
		_st0io1 = 1; _st0io0 = 0;	//
	
	#elif	STM_OUTPUT_TOGGLE
		_st0io1 = 1; _st0io0 = 1;	//
	#endif
/********** Select pin output function **********/	

/***** Output initialization status control *****/			
	#ifdef	STM_INITIAL_LOW
		_st0oc = 0;				//
	#else
		_st0oc = 1;	
	#endif			
/** end of Output initialization status control */		

/*********** Output polarity control ************/	
	#ifdef	STM_NON_INVERTED
		_st0pol = 0;				//
	#else
		_st0pol = 1;				//
	#endif
/******* end of Output polarity control ********/
}


/**
  * @brief STM compare match output update function,
  * @param[in] MatchTime value,
  * @retval None.
  */
void STM_CompareMatchOutputUpdate(u16 TempMatchTime)
{
#ifdef	STM_CCRA_MATCH
	_stm0al = TempMatchTime & 0x00ff;	//
	_stm0ah = TempMatchTime >> 8;		//
#else	
	_stm0al = 1;							//
	_stm0ah = 0;							//	
	_st0rp2 = (TempMatchTime>>2) & 0x01;			
	_st0rp1 = (TempMatchTime>>1) & 0x01;	
	_st0rp0 = TempMatchTime & 0x01;
#endif	
}

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/