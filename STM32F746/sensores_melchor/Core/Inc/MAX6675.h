/*
 * MAX6675.h
 * Thermocouple SPI Master_recive only
 *
 * Created on: Apr 5, 2024
 * Author: Adrián Silva Palafox
 * Social media:
 */

#ifndef INC_MAX6675_H_
#define INC_MAX6675_H_

#include "stm32f7xx.h" //Needed for SPI protocol
#include "main.h" //Needed for SSPORT and SSPIN

/*
 * DEFINES
 */
#define SSPORT CS_GPIO_Port // GPIO Port of Chip Select(Slave Select)
#define SSPIN  CS_Pin  // GPIO PIN of Chip Select(Slave Select)

/*
 * REGISTERS
 *
 * For this case, MAX6675 has only one 16 bits registe
 * divided in 5 sectors
 *
 */
#define MAX6675_dummy 0x8000 //It must always be 0
#define MAX6675_input 0x04 // 0->It has a thermacople on 1->It does not
#define MAX6675_temperature 0x7FF8 // Temperature reading
#define MAX6675_ID 0x02 // ID = 0
// MAX6675_STATE is not included

/*
 *STRUCTURES
 */
typedef struct
{
    uint16_t registro; // Raw register reading
    float temp; // Temperature in Celcius
} MAX6675;

/*
 * FUNCTIONS DEFINITION
 */
//Get register information
HAL_StatusTypeDef SENS_max6675(MAX6675* thermocouple, SPI_HandleTypeDef *spiHandle);

#endif /* INC_MAX6675_H_ */
