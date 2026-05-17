/*
 * Seg7_mux.c
 *
 *  Created on: Apr 21, 2024
 *      Author: adria
 */

#include "Seg7_mux.h"

/*
 * DEFINICIONES DE LOS PINES PARA
 * CADA SELECTOR DE DIGITOS MULTIPLEXADO
 */
#define dig_0_port	 MUX0_GPIO_Port
#define dig_0_pin    MUX0_Pin

#define dig_1_port   MUX1_GPIO_Port
#define dig_1_pin    MUX1_Pin

#define dig_2_port   MUX2_GPIO_Port
#define dig_2_pin    MUX2_Pin

//#define dig_3_port   0x00
//#define dig_3_pin    0x00

/*
 * DEFINICIONES DE LOS PINES
 * PARA CADA SEGMENTO
 */
#define SEG_A_port   SEG_A_GPIO_Port
#define SEG_A_pin    SEG_A_Pin

#define SEG_B_port   SEG_B_GPIO_Port
#define SEG_B_pin    SEG_B_Pin

#define SEG_C_port   SEG_C_GPIO_Port
#define SEG_C_pin    SEG_C_Pin

#define SEG_D_port   SEG_D_GPIO_Port
#define SEG_D_pin    SEG_D_Pin

#define SEG_E_port   SEG_E_GPIO_Port
#define SEG_E_pin    SEG_E_Pin

#define SEG_F_port   SEG_F_GPIO_Port
#define SEG_F_pin    SEG_F_Pin

#define SEG_G_port   SEG_G_GPIO_Port
#define SEG_G_pin    SEG_G_Pin



/******************************************
 * YA NO HAY NADA QUE MODIFICAR
 ******************************************/

/*
 * Tabla para decodificacion
 * de digitos para 7 segmentos

Dígito | a | b | c | d | e | f | g |
-------|---|---|---|---|---|---|---|
   0   | 1 | 1 | 1 | 1 | 1 | 1 | 0 |
   1   | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
   2   | 1 | 1 | 0 | 1 | 1 | 0 | 1 |
   3   | 1 | 1 | 1 | 1 | 0 | 0 | 1 |
   4   | 0 | 1 | 1 | 0 | 0 | 1 | 1 |
   5   | 1 | 0 | 1 | 1 | 0 | 1 | 1 |
   6   | 1 | 0 | 1 | 1 | 1 | 1 | 1 |
   7   | 1 | 1 | 1 | 0 | 0 | 0 | 0 |
   8   | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
   9   | 1 | 1 | 1 | 1 | 0 | 1 | 1 |
 */
const uint8_t nums_bin[10] = {
	0x3F, // 0
	0x06, // 1
	0x5B, // 2
	0x4F, // 3
	0x66, // 4
	0x6D, // 5
	0x7D, // 6
	0x07, // 7
	0x7F, // 8
	0x6F  // 9
};

void show_num(uint16_t num){

	uint8_t digitos[N_dig] = {0};

	//Separamos los digitos
	//digitos[4] = num / 1000;
	//digitos[2] = (num % 1000) / 100;
	digitos[1] = (num % 100) / 10;
	digitos[0] = num % 10;

	//Ejecutamos la multiplexacoion
	int dig;
	uint8_t mux = 0b0001;
	for (dig = 0; dig < N_dig; ++dig){

		//ESCOGEMOS EL DIGITO A MOSTRAR
		HAL_GPIO_WritePin(dig_0_port, dig_0_pin, mux&0x01);
		HAL_GPIO_WritePin(dig_1_port, dig_1_pin, mux&0x02);
		HAL_GPIO_WritePin(dig_2_port, dig_2_pin, mux&0x04);
		//HAL_GPIO_WritePin(dig_0_port, dig_0_pin, mux&0x08);
		mux <<= 1;

		//MOSTRAMOS EL DIGITO A MOSTRAR
		HAL_GPIO_WritePin(SEG_A_port, SEG_A_pin, (nums_bin[digitos[dig]] & 0x40) >> 6); // A
		HAL_GPIO_WritePin(SEG_B_port, SEG_B_pin, (nums_bin[digitos[dig]] & 0x20) >> 5); // B
		HAL_GPIO_WritePin(SEG_C_port, SEG_C_pin, (nums_bin[digitos[dig]] & 0x10) >> 4); // C
		HAL_GPIO_WritePin(SEG_D_port, SEG_D_pin, (nums_bin[digitos[dig]] & 0x08) >> 3); // D
		HAL_GPIO_WritePin(SEG_E_port, SEG_E_pin, (nums_bin[digitos[dig]] & 0x04) >> 2); // E
		HAL_GPIO_WritePin(SEG_F_port, SEG_F_pin, (nums_bin[digitos[dig]] & 0x02) >> 1); // F
		HAL_GPIO_WritePin(SEG_G_port, SEG_G_pin, (nums_bin[digitos[dig]] & 0x01) >> 0); // G

		HAL_Delay(1);
	}

	//APAGAMOS TODOS LOS DIGITOS
	HAL_GPIO_WritePin(dig_0_port, dig_0_pin, 0);
	HAL_GPIO_WritePin(dig_1_port, dig_1_pin, 0);
	HAL_GPIO_WritePin(dig_2_port, dig_2_pin, 0);
	//HAL_GPIO_WritePin(dig_0_port, dig_0_pin, mux&0x08);
}
