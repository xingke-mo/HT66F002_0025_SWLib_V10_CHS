/**
  ******************************************************************************
  * @file HT8_Type.h
  * @brief This file contains all common data types.
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

/* Define to prevent recursive inclusion -------------------------------------*/

#ifndef		_HT8_Type_h_
#define		_HT8_Type_h_

typedef signed long  					s32;
typedef signed short 					s16;
typedef signed char  					s8;

typedef signed long  const 				sc32;  /* Read Only */
typedef signed short const 				sc16;  /* Read Only */
typedef signed char  const 				sc8;   /* Read Only */

typedef unsigned long  					u32;
typedef unsigned short 					u16;
typedef unsigned char  					u8;

typedef unsigned long  const 			uc32;  /* Read Only */
typedef unsigned short const 			uc16;  /* Read Only */
typedef unsigned char  const 			uc8;   /* Read Only */

typedef enum
{
  FALSE = 0,
  TRUE = 1,
}bool;

typedef enum 
{
  RESET = 0,
  SET = 1,
}FlagStatus, ITStatus, BitStatus;

typedef enum 
{
  DISABLE = 0,
  ENABLE = 1,
}FunctionalState;

typedef enum 
{
  ERROR = 0,
  SUCCESS = 1,
}ErrorStatus;

#define U8_MAX     ((u8)255)
#define S8_MAX     ((s8)127)
#define S8_MIN     ((s8)-128)
#define U16_MAX    ((u16)65535u)
#define S16_MAX    ((s16)32767)
#define S16_MIN    ((s16)-32768)
#define U32_MAX    ((u32)4294967295uL)
#define S32_MAX    ((s32)2147483647)
#define S32_MIN    ((s32)-2147483648)

/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */



#endif

/******************* (C) COPYRIGHT 2019 Holtek Semiconductor Inc *****END OF FILE****/