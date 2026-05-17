/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
//typedef enum
//{
//  STATE_MACHINE_CALIBRATE	  = 0x00,
//  STATE_MACHINE_IDLE		  = 0x01,
//  STATE_MACHINE_PID           = 0x02,
//  STATE_MACHINE_UDP_SEND      = 0x03,
//  STATE_MACHINE_UDP_RECIVE    = 0x04
//} StateMachineTypeDef;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define led_user_Pin GPIO_PIN_13
#define led_user_GPIO_Port GPIOC
#define builtint_btn_Pin GPIO_PIN_0
#define builtint_btn_GPIO_Port GPIOA
#define ttl_ldo_Pin GPIO_PIN_2
#define ttl_ldo_GPIO_Port GPIOA
#define mux_en_Pin GPIO_PIN_3
#define mux_en_GPIO_Port GPIOA
#define muxchn_3_Pin GPIO_PIN_4
#define muxchn_3_GPIO_Port GPIOA
#define muxchn_2_Pin GPIO_PIN_5
#define muxchn_2_GPIO_Port GPIOA
#define muxchn_1_Pin GPIO_PIN_6
#define muxchn_1_GPIO_Port GPIOA
#define muxchn_0_Pin GPIO_PIN_7
#define muxchn_0_GPIO_Port GPIOA
#define sleep_mode_Pin GPIO_PIN_15
#define sleep_mode_GPIO_Port GPIOB
#define M1_1_Pin GPIO_PIN_8
#define M1_1_GPIO_Port GPIOA
#define M1_0_Pin GPIO_PIN_9
#define M1_0_GPIO_Port GPIOA
#define M2_0_Pin GPIO_PIN_10
#define M2_0_GPIO_Port GPIOA
#define M2_1_Pin GPIO_PIN_11
#define M2_1_GPIO_Port GPIOA
#define fault_Pin GPIO_PIN_12
#define fault_GPIO_Port GPIOA
#define fault_EXTI_IRQn EXTI15_10_IRQn

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
