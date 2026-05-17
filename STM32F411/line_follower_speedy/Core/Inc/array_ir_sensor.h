/*
 * array_ir_sensor.h
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */

#ifndef ARRAY_IR_SENSOR_H_
#define ARRAY_IR_SENSOR_H_

/* STD LIBS */
#include <stdint.h>
#include <stdbool.h>

/* STM32 HALS */
#include "main.h"
#include "stm32f4xx.h"

/* MACROS */
#define LAST_IR 7 // Last IR sensor channel
#define LDO_CHNN 8 // Channel connected to ldo
#define IR_SENSORS 8 // Number of IR sensors
#define IR_ONESIDE 4 // Number of IR sensors on one side
#define IR_FIRST_HALF IR_ONESIDE
#define IR_SECOND_HALF (IR_SENSORS - IR_ONESIDE)


/* USER'S FUNCTIONS */
void enable_mux (bool);
void enable_ldo (bool);
void read_array (uint16_t*);
void sense_IR (uint16_t *);

#endif /* ARRAY_IR_SENSOR_H_ */
