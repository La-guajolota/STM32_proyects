/*
 * array_ir_sensor.c
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */
#include "array_ir_sensor.h"

extern ADC_HandleTypeDef hadc1;

#include "array_ir_sensor.h"

/**
 * @brief  Reads a value from the ADC.
 *
 * This function starts the ADC conversion, waits for the conversion to complete,
 * stops the ADC, and then returns the ADC conversion result.
 *
 * @return uint16_t The ADC conversion value.
 */
static uint16_t adc_read(void) {
    // Start ADC conversion
    if (HAL_ADC_Start(&hadc1) != HAL_OK) {
        // Optionally handle error here
    }

    // Wait for conversion to complete (blocking call)
    if (HAL_ADC_PollForConversion(&hadc1, HAL_MAX_DELAY) != HAL_OK) {
        // Optionally handle error here
    }

    // Stop ADC conversion
    if (HAL_ADC_Stop(&hadc1) != HAL_OK) {
        // Optionally handle error here
    }

    return HAL_ADC_GetValue(&hadc1);
}

/**
 * @brief  Selects the multiplexer channel.
 *
 * This function sets the multiplexer’s selection pins (PA4-PA7) by first reversing
 * the lower 4 bits of the provided channel number using the hardware-accelerated RBIT
 * instruction. This method is both efficient and compact.
 *
 * @param chnn The channel number (0-15) to select.
 */
static void select_channel(uint8_t chnn) {
    // Reverse the lower 4 bits of the channel number.
    uint32_t reversed = __RBIT((uint32_t)(chnn & 0x0F)) >> 28;

    // Update PA4-PA7: clear the 4 bits then set them to the reversed value.
    GPIOA->ODR = (GPIOA->ODR & ~(0x0F << 4)) | (reversed << 4);

    // Optional: add a short delay if your multiplexer requires time to settle.
    // HAL_Delay(1);
}

/**
 * @brief  Enables or disables the multiplexer.
 *
 * This function sets the multiplexer enable pin to the specified logic state.
 *
 * @param state True to enable the multiplexer, False to disable it.
 */
void enable_mux(bool state) {
    HAL_GPIO_WritePin(mux_en_GPIO_Port, mux_en_Pin, state ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

/**
 * @brief  Enables or disables the LDO supply.
 *
 * This function first selects the LDO channel on the multiplexer and then sets
 * the LDO enable pin according to the desired state.
 *
 * @param state True to enable the LDO, False to disable it.
 */
void enable_ldo(bool state) {
    select_channel(LDO_CHNN);
    HAL_GPIO_WritePin(ttl_ldo_GPIO_Port, ttl_ldo_Pin, state ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

/**
 * @brief  Reads the IR sensor array.
 *
 * This function iterates through all IR sensor channels, selects each channel via
 * the multiplexer, reads the ADC value for that channel, and stores the result
 * in the provided array.
 *
 * @param array_ptr Pointer to an array where the sensor readings will be stored.
 */
void read_array(uint16_t* array_ptr) {
    for (int chnn = 0; chnn < IR_SENSORS; ++chnn) {
        select_channel(chnn);
        // Optional: small delay after switching channels to allow signals to settle.
        // HAL_Delay(1);
        array_ptr[chnn] = adc_read();
    }
}

/**
 * @brief  Senses the IR sensors.
 *
 * This high-level function enables the LDO supply, reads all IR sensor values,
 * and then disables the LDO supply.
 *
 * @param IRsarray Pointer to an array where the sensor readings will be stored.
 */
void sense_IR(uint16_t* IRsarray) {
    enable_ldo(true);
    read_array(IRsarray);
    enable_ldo(false);
}
