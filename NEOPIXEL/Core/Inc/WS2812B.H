/*
 * WS2812B.H
 *
 *  Created on: May 23, 2024
 *      Author: adria
 */

#ifndef INC_WS2812B_H_
#define INC_WS2812B_H_

#include <stdint.h>
#include "stm32f4xx.h"

#define _0code 0x00
#define _1code 0x01
#define RET_code 0x02

#define N_pixel 3 // Modificar segun la cantidad de leds
#define total_bits (N_pixel * 8 * 3)

// Codigo rgb de un neopixel
struct pixel
{
    uint8_t R;
    uint8_t G;
    uint8_t B;
};

typedef struct tira
{
    struct pixel LEDs[N_pixel];
    uint8_t vecotr[total_bits]; // 192 bits para 8 neopixel
} tira_T;

// METODOS
void blank(tira_T *tira); // setea
void vector_data(tira_T *tira); // Obtine vector de datos
//void send_colors(tira_T *tira, void (*Dout(uint8_t state))); // mandamos los bytes de info a la tira


#endif /* INC_WS2812B_H_ */
