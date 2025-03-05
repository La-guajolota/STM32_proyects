/*
 * DRV8833.h
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */

#ifndef INC_DRV8833_H_
#define INC_DRV8833_H_

/* STD LIBS */
#include <stdint.h>
#include <stdbool.h>

/* STM32 HALS */
#include "main.h"
#include "stm32f4xx.h"

/* MACROS */
#define stop 0
#define dir_a 1
#define dir_b 2
#define dir_c 3

/* USER'S FUNCTIONS */
void stop_motors();
void sleep_driver();
void motorA(uint8_t state, uint8_t duty);
void motorB(uint8_t state, uint8_t duty);
void motors(uint8_t state, uint8_t duty);

#endif /* INC_DRV8833_H_ */
