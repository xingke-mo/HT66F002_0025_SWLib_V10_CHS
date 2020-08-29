/**
  ******************************************************************************
  * @file HT8_ADC.c
  * @brief This file provides all the ADC firmware functions.
  * @author Holtek Semiconductor Inc
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

/* Includes ------------------------------------------------------------------*/
#include "HT8_ADC.h"

/**
  * @brief Initializes the ADC peripheral according to the specified parameters
  * @retval None
  */
void ADC_Init(void)
{
/***************** ADC clock select *****************/
	#ifdef HT66F002

		#ifdef	ADC_CLOCK_FSYS
			{
				/* select ADC clock fsys */
				_sacks2 = 0; _sacks1 = 0; _sacks0 = 0;
			}		
		#elif	ADC_CLOCK_FSYS_DIV2
			{
				/* select ADC clock fsys/2 */
				_sacks2 = 0; _sacks1 = 0; _sacks0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV4
			{
				/* select ADC clock fsys/4 */
				_sacks2 = 0; _sacks1 = 1; _sacks0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV8
			{
				/* select ADC clock fsys/8 */
				_sacks2 = 0; _sacks1 = 1; _sacks0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV16
			{
				/* select ADC clock fsys16 */
				_sacks2 = 1; _sacks1 = 0; _sacks0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV32
			{
				/* select ADC clock fsys/32 */
				_sacks2 = 1; _sacks1 = 0; _sacks0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV64
			{
				/* select ADC clock fsys/64 */
				_sacks2 = 1; _sacks1 = 1; _sacks0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV128
			{
				/* select ADC clock fsys/128 */
				_sacks2 = 1; _sacks1 = 1; _sacks0 = 1;
			}
		#endif	
		
	#else
	
		#ifdef	ADC_CLOCK_FSYS
			{
				/* select ADC clock fsys */
				_sack2 = 0; _sack1 = 0; _sack0 = 0;
			}		
		#elif	ADC_CLOCK_FSYS_DIV2
			{
				/* select ADC clock fsys/2 */
				_sack2 = 0; _sack1 = 0; _sack0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV4
			{
				/* select ADC clock fsys/4 */
				_sack2 = 0; _sack1 = 1; _sack0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV8
			{
				/* select ADC clock fsys/8 */
				_sack2 = 0; _sack1 = 1; _sack0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV16
			{
				/* select ADC clock fsys16 */
				_sack2 = 1; _sack1 = 0; _sack0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV32
			{
				/* select ADC clock fsys/32 */
				_sack2 = 1; _sack1 = 0; _sack0 = 1;
			}
		#elif	ADC_CLOCK_FSYS_DIV64
			{
				/* select ADC clock fsys/64 */
				_sack2 = 1; _sack1 = 1; _sack0 = 0;
			}
		#elif	ADC_CLOCK_FSYS_DIV128
			{
				/* select ADC clock fsys/128 */
				_sack2 = 1; _sack1 = 1; _sack0 = 1;
			}
		#endif	
	
	#endif
/*************** end of ADC clock select ******************/	

						
/******** setting AD convert data alignment type **********/
	#ifdef	ADC_VALUE_ALIGN_RIGHT		
		{
			/* select AD convert data alignment right	*/
			_adrfs = 1;
		}	
	#else		
		{
			/* select 	AD convert data alignment left */	
			_adrfs = 0;
		}	
	#endif
/***** end of setting AD convert data alignment type ******/


/********** setting AD convert reference voltage *********/		
	#ifdef	ADC_REF_VOLTAGE_VDD
		{
			_savrs3 = 0; _savrs2 = 0; _savrs1 = 0; _savrs0 = 0;
		}	
	#elif	ADC_REF_VOLTAGE_VREF
		{
			_savrs3 = 0; _savrs2 = 0; _savrs1 = 0; _savrs0 = 1;
			_pas3 = 1; _pas2 = 0; //enable Vref
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VREFx2
		{
			_savrs3 = 0; _savrs2 = 0; _savrs1 = 1; _savrs0 = 0;
			_pas3 = 1; _pas2 = 0;	//enable Vref
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VREFx3
		{
			_savrs3 = 0; _savrs2 = 0; _savrs1 = 1; _savrs0 = 1;
			_pas3 = 1; _pas2 = 0;	//enable Vref
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VREFx4
		{
			_savrs3 = 0; _savrs2 = 1; _savrs1 = 0; _savrs0 = 0;
			_pas3 = 1; _pas2 = 0;	//enable Vref
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VBGx2
		{
			_savrs3 = 1; _savrs2 = 0; _savrs1 = 1; _savrs0 = 0;
			ADC_VBG_ENABLE();	//enable Vbg
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VBGx3
		{
			_savrs3 = 1; _savrs2 = 0; _savrs1 = 1; _savrs0 = 1;
			ADC_VBG_ENABLE();	//enable Vbg
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#elif	ADC_REF_VOLTAGE_VBGx4
		{
			_savrs3 = 1; _savrs2 = 1; _savrs1 = 0; _savrs0 = 0;
			ADC_VBG_ENABLE();	//enable Vbg
			ADC_OPA_ENABLE();	//enable PGA
		}	
	#endif 
/********* end of setting AD convert reference voltage *********/
}



/**
  * @brief select ADC channel.
  * @param[in] ADC_Channel: specifies the ADC channel.
  * can have one of the values of @ref ADC_Channel_TypeDef.
  * @retval  none.
  */
void ADC_SelectChannel(u8 ADC_Channel)
{
	_sadc1 &= 0b00011111;
	if(ADC_Channel < 4)
	{
		/* clear ADC channel */
		_sadc0 &= 0b11111100;
		
		/* selection external ADC channel */
		_sadc0 |= ADC_Channel;
		
		/* select IO in AD input */
		switch(ADC_Channel)
		{
			case ADC_CH0 : _pas1 = 1; _pas0 = 1; break;
			case ADC_CH1 : _pas3 = 1; _pas2 = 1; break;
			case ADC_CH2 : _pas5 = 1; _pas4 = 1; break;
			case ADC_CH3 : _pas7 = 1; _pas6 = 1; break;	
			default : break;
		}
	}
	else
	{
		/* selection internal ADC channel */
		_sadc1 |= ADC_Channel;		
	}	
}/* end of ADC_SelectChannel(u8 ADC_Channel) */


/**
  * @brief Get one sample of measured signal.
  * @param[in] None.
  * @retval ConversionValue:  value of the measured signal.
  */
u16 ADC_GetValue(void)
{
	u16 Value;
	
	/* start AD converter */
	ADC_START();
	
	/* waitting AD conversion finish */
	while(1 == _adbz);	
	
/* AD conversion data alignment right */
	#ifdef	ADC_VALUE_ALIGN_RIGHT		
		{
			/* get the AD conversion value */
			Value = ((u16)_sadoh <<8) | _sadol;
		}	
	
/* AD conversion data alignment left */
	#else	
		{
			/* get the AD conversion value */
			Value = ((u16)_sadoh <<4) | (_sadol >>4);
		}	
	#endif
	return Value;
}



/**
  * @brief Get one sample of measured signal.
  * @param[in] ADC_Channel: specifies the ADC channel.
  * can have one of the values of @ref ADC_Channel_TypeDef.
  * @retval ConversionValue:  value of the measured signal.
  * @par Required preconditions:
  * ADC conversion finished.
  */
u16 ADC_GetChannelValue(u8 ADC_Channel)
{
	u16 AD_ConverterValue;
	
	_sadc1 &= 0b00011111;
	if(ADC_Channel < 4)
	{
		/* clear ADC channel */
		_sadc0 &= 0b11111000;
		/* selection external ADC channel */
		_sadc0 |= ADC_Channel;
		
		/* select IO in AD input */
		switch(ADC_Channel)
		{
			case ADC_CH0 : _pas1 = 1; _pas0 = 1; break;
			case ADC_CH1 : _pas3 = 1; _pas2 = 1; break;
			case ADC_CH2 : _pas5 = 1; _pas4 = 1; break;
			case ADC_CH3 : _pas7 = 1; _pas6 = 1; break;	
			default : break;
		}		
	}
	else
	{
		/* selection internal ADC channel */
		_sadc1 |= ADC_Channel;		
	}
	
	/* start AD convert */
	ADC_START();
		
	/* waitting AD conversion finish */	
	while(1 == _adbz);	
	
	/* AD conversion data alignment right */
	#ifdef	ADC_VALUE_ALIGN_RIGHT		
		{
			/* get the AD conversion value */
			AD_ConverterValue = ((u16)_sadoh <<8) | _sadol;
		}	
			
	/* AD conversion data alignment left */
	#else	
		{
			/* get the AD conversion value */
			AD_ConverterValue = ((u16)_sadoh <<4) | (_sadol >>4);
		}	
	#endif
	
		return AD_ConverterValue;
}

 
/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/