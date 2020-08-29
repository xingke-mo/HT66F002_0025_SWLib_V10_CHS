/**
  ******************************************************************************
  * @file HT8_STM.h
  * @brief The header file of the STM library.
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

#ifndef _STM_H_
#define _STM_H_

#include "HT8_MCU_IP_SEL.h"


#define	STM_ENABLE()			(_st0on = 1)
#define	STM_DISABLE()			(_st0on = 0)
#define	STM_CCRA_ISR_ENABLE()	(_stma0e = 1)
#define	STM_CCRA_ISR_DISABLE()	(_stma0e = 0)
#define STM_SET_FLAG_A()		(_stma0f = 1)
#define STM_CLEAR_FLAG_A()		(_stma0f = 0)
#define	STM_CCRP_ISR_ENABLE()	(_stmp0e = 1)
#define	STM_CCRP_ISR_DISABLE()	(_stmp0e = 0)
#define STM_SET_FLAG_P()		(_stmp0f = 1)
#define STM_CLEAR_FLAG_P()		(_stmp0f = 0)
#define	STM_PAUSE()				(_st0pau = 1)
#define	STM_RUN()				(_st0pau = 0)
#define	STM_GET_CCRA_FLAG()		_stma0f
#define	STM_GET_CCRP_FLAG()		_stmp0f

#define STM_CAPTURE_RISING_EDGE()		(_st0io1 = 0, _st0io0 = 0)
#define STM_CAPTURE_FALLING_EDGE()		(_st0io1 = 0, _st0io0 = 1)
#define STM_CAPTURE_BOTH_EDGE()			(_st0io1 = 1, _st0io0 = 0)
#define STM_CAPTURE_DISABLE()			(_st0io1 = 1, _st0io0 = 1)

/******** STM work mode select ********/

//	#define	STM_TIMER_COUNTER_MODE			1
//	#define	STM_PWM_OUTPUT_MODE				1	
	#define	STM_COMPARE_MATCH_MODE			1
//	#define	STM_CAPTURE_INPUT_MODE			1
//	#define	STM_SINGLE_PULSE_OUTPUT_MODE	1

/**** end of STM work mode select *****/


/************* clock select **************/

	#define		STM_FSYS_DIV4				1
//	#define		STM_FSYS					1
//	#define		STM_FH_DIV16				1
//	#define		STM_FH_DIV64				1
//	#define		STM_FTBC					1
//	#define		STM_TCK_RISING_EDGE			1
//	#define		STM_TCK_FALLING_EDGE		1
/********* end of clock select *********/

	
/** TM Counter Clear condition selection **/
	
	#define		STM_CCRA_MATCH				1
//	#define		STM_CCRP_MATCH				1	
/* end of TMn Counter Clear condition selection */


/************* TM Output pin select**************************
* Single selection. 
*/
	#define 	STP0_PA2			1			//Output pin select pa2
//	#define		STP0_PA0			1			//Output pin select pa0
//	#define		STP0_DISABLE		1			//Output pin disable
/** end of Output pin select **/


/************* TM Inverting Output pin select**************************
* Single selection. 
*/
	#define 	STP0B_PA5			1			//Inverting Output pin select pa5
//	#define		STP0B_PA1			1			//Inverting Output pin select pa1
//	#define		STP0B_DISABLE		1			//Inverting Output pin disable
/** end of Inverting Output pin select **/


/************* TM Input pin select**************************
* Single selection. 
*/
	#define 	STP0I_PA6			1			//Input pin select pa6,default
//	#define		STP0I_PA0			1			//Input pin select pa0
/** end of Input pin select **/


/************* TM CLK pin select**************************
* Single selection. 
*/
	#define 	STCK0_PA7			1			//CLK pin select pa7,default
//	#define		STCK0_PA6			1			//CLK pin select pa6
/** end of CLK pin select **/

	
/*-------------------- PWM OUTPUT MODE setting -----------------*/
#ifdef	STM_PWM_OUTPUT_MODE		
/***************** Output control ***************/
//	#define		STM_PWM_ACTIVE_LOW	 		1
	#define		STM_PWM_ACTIVE_HIGH			1
/************* end of Output control ************/
	
/************** Output polarity control *********/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/******** end of Output polarity control ********/

/************** PWM duty and period control *********/
	#define		STM_CCRP_P_CCRA_D			1	//CCRP control period,CCRA control duty
//	#define		STM_CCRP_D_CCRA_P			1	//CCRP control duty,CCRA control period
/******** end of PWM duty and period control ********/

#endif
/*------------ end of PWM OUTPUT MODE setting -----------------*/



/*--------------- SINGLE PULSE OUTPUT MODE setting ------------*/
#ifdef	STM_SINGLE_PULSE_OUTPUT_MODE		
/* Output control */
//	#define		STM_ACTIVE_LOW				1
	#define		STM_ACTIVE_HIGH				1
/* end of Output control */
	
/***** Output polarity control *****/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/* end of Output polarity control */		

/***** STCK0 trigger control *****/
	#define		STM_STCK0_TRIG_ENABLE		1
//	#define		STM_STCK0_TRIG_DISABLE		1
/* end of STCK0 trigger control */
#endif

/*--------- end of SINGLE PULSE OUTPUT MODE setting ---------*/


/*-------------- TIMER COUNTER MODE setting -----------------*/

#ifdef	STM_TIMER_COUNTER_MODE

	#define	STM_GET_COUNTER_VALUE()	((u16)_stm0dh<<8 | _stm0dl)

#endif
/*---------- end of TIMER COUNTER MODE setting -------------*/


/*------------- COMPARE MATCH MODE setting -----------------*/
#ifdef	STM_COMPARE_MATCH_MODE	
	/* Select output function */
//	#define		STM_NO_CHANGE				1	/* No change */
//	#define		STM_OUTPUT_LOW				1	/* Output low */
//	#define		STM_OUTPUT_HIGH				1	/* Output high */
	#define		STM_OUTPUT_TOGGLE			1	/* Toggle output */
/* end of Select output function */
	
/* Output initialization status control */
//	#define		STM_INITIAL_LOW				1	/* Initial low */
	#define		STM_INITIAL_HIGH			1	/* Initial high */
/* end of Output control */
	
/***** Output polarity control *****/
	#define		STM_NON_INVERTED			1
//	#define		STM_INVERTED				1
/* end of Output polarity control */	
#endif

/*---------- end of COMPARE MATCH MODE setting -------------*/



/*-------------- CAPTURE INPUT MODE setting ---------------*/
#ifdef STM_CAPTURE_INPUT_MODE
/* GET CAPTURE VALUE function */
	#define	STM_GET_CAPTURE_VALUE()	((u16)_stm0ah<<8 | _stm0al)

#endif
/*----------- end of CAPTURE INPUT MODE setting ---------*/



void STM_Init(void);
void STM_PwmOutputConfig(void);
void STM_PwmUpdate(u16 TempCCRA,u8 TempCCRP);
void STM_SinglePulseOutputConfig(void);
void STM_SinglePulseUpdate(u16 TempCCRA);
void STM_CounterModeConfig(u16 TempPeriod);
void STM_CompareMatchOutputConfig();
void STM_CompareMatchOutputUpdate(u16 TempMatchTime);

#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/