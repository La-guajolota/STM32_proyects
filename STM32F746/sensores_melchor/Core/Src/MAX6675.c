/*
 * MAX6675.c
 *
 *  Created on: Apr 5, 2024
 *      Author: Adrián Silva Palafox
 */
#include "MAX6675.h"


/**
  * @brief  Receive an amount from a MAX6675 unit.
  * @param  thermocouple MAX6675 data type pointer to an actual unit.
  * @param  spiHandle SPI_HandleTypeDef for respective SPI periferal being used.
  * @retval HAL status
  */
HAL_StatusTypeDef SENS_max6675(MAX6675* thermocouple, SPI_HandleTypeDef *spiHandle){

	HAL_StatusTypeDef rslt = HAL_OK ;
	uint16_t rawtemp = 0;
	uint8_t DATA[2]; // Raw Data from MAX6675

	//SPI COMUNICATION
	HAL_GPIO_WritePin(SSPORT,SSPIN,GPIO_PIN_RESET);
	rslt = HAL_SPI_Receive(spiHandle,DATA, 1,50);
	HAL_GPIO_WritePin(SSPORT,SSPIN,GPIO_PIN_SET);

	thermocouple->registro = DATA[0]|(DATA[1]<<8); //16 bit register info

	if ((thermocouple->registro & MAX6675_input)>>2 == (thermocouple->registro & MAX6675_dummy)>>15){ //Checks if it has a themocouple on it and it is okay

		rawtemp = (thermocouple->registro & MAX6675_temperature) >> 3; //temperature data extraction
		thermocouple->temp = rawtemp*0.25; // Data to Centigrade Conversation

	}else{
		rslt = HAL_ERROR;
	}

	return rslt;
}

