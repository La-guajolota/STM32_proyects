/*
 * WS2812B.c
 *
 *  Created on: May 23, 2024
 *      Author: adria
 */
#include "WS2812B.h"

void blank(tira_T *tira)
{
    for (int i = 0; i < N_pixel; i++)
    {
        tira->LEDs[i].R = 0x00;
        tira->LEDs[i].G = 0x00;
        tira->LEDs[i].B = 0x00;
    }

    vector_data(tira);
}

void vector_data(tira_T *tira)
{
    int j;
    int w;
    uint8_t bit;  // Almacenas 1 o 0 para BINARIZAR
    uint8_t mask; // Extrameos los bits de los bytes

    for (j = 0; j < N_pixel; j++) // 8 LEDS
    {
        mask = 0x01;            // LSB
        for (w = 0; w < 8; w++) // componente de color 8bits
        {
            bit = tira->LEDs[j].R & mask;
            tira->vecotr[j * 24 + w] = bit;

            bit = tira->LEDs[j].G & mask;
            tira->vecotr[j * 24 + 8 + w] = bit;

            bit = tira->LEDs[j].B & mask;
            tira->vecotr[j * 24 + 16 + w] = bit;

            mask <<= 1; // avanzamos al msb
        }
    }
}

void send_colors(tira_T *tira, void (*Dout(uint8_t state)))
{
    int i;
    for (i = 0; i < total_bits; i++)
    {
        if (tira->vecotr[i])
        {
            // printf("1 - tiempo")
            //  set pin 1
            //  delay
            Dout(1);

        }
        else
        {
            // printf("0 - tiempo")
            //  set pin 0
            //  delay
            Dout(0);
        }
    }
}
