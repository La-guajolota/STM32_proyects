/*
 * utils_stm32.c
 *
 *  Created on: Apr 5, 2024
 *      Author: adria
 */
#include "uitls_stm32.h"

long map_int(long x, long in_min, long in_max, long out_min, long out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
