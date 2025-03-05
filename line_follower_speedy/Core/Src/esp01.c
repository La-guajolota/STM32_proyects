/*
 * esp01.c
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */
#include "esp01.h"

extern UART_HandleTypeDef huart1;

// LOW-LEVEL
/**
 * @brief Sends an AT command and waits for expected response
 * @param at_cmd The AT command to send (including CRLF)
 * @param at_res Expected response string
 * @return ESP01 status code
 */
static ESP01_StatusTypeDef send_command(const char *at_cmd, const char *at_res){
	uint8_t rx_byte;
	uint8_t match_pos = 0;
	uint8_t expected_len = strlen(at_res);
	uint32_t timeout = HAL_GetTick();

	//Send AT_command to ESP01
	HAL_UART_Transmit(&huart1,(uint8_t*)at_cmd,strlen(at_cmd), HAL_MAX_DELAY);

	/* Response detection state machine */
	while(match_pos < expected_len)
	{
		if(HAL_UART_Receive(&huart1, &rx_byte, 1, 1) == HAL_OK)
		{
			if(rx_byte == at_res[match_pos])
			{
				match_pos++;
			}
			else
			{
				match_pos = 0; /* Reset on mismatch */
			}
		}

		/* Timeout handling */
		if(HAL_GetTick() - timeout > ESP01_DEFAULT_TIMEOUT)
		{
			return ESP01_TIMEOUT;
		}
	}

	return ESP01_OK;
}

/**
 * @brief Initializes ESP01 module with basic configuration
 * @return ESP01 status code
 */
ESP01_StatusTypeDef esp01_init(void)
{
    ESP01_StatusTypeDef status;

    //If it is already in UART mode let's get it out
    //if((status = esp01_end_uart_transparent())							!= ESP01_OK) return status;

    /* Module reset sequence */
    if((status = send_command(AT_CMD_RESET, AT_RESP_READY)) 			!= ESP01_OK) return status;
    //HAL_Delay(1500); /* Allow time for boot sequence */

    /* Configuration commands */
    if((status = send_command(AT_CMD_ECHO_OFF, AT_RESP_OK))   			!= ESP01_OK) return status;
    if((status = send_command(AT_CMD_WIFI_MODE, AT_RESP_OK))  			!= ESP01_OK) return status;
    if((status = send_command(AT_CMD_SINGLE_CONNECTION, AT_RESP_OK))	!= ESP01_OK) return status;

    return ESP01_OK;
}

/**
 * @brief Establishes UDP connection and enables transparent mode
 * @return ESP01 status code
 */
ESP01_StatusTypeDef esp01_udp_start(void)
{
    ESP01_StatusTypeDef status;

    if((status = send_command(AT_CMD_UDP_CONNECTION, AT_RESP_OK))          != ESP01_OK) return status;
    if((status = send_command(AT_CMD_UART_TRANSPARENT, AT_RESP_OK))  	   != ESP01_OK) return status;

    return ESP01_OK;
}

ESP01_StatusTypeDef esp01_start_uart_transparent(){
    ESP01_StatusTypeDef status;

	if ((status = send_command(AT_CMD_SEND_DATA,AR_RESP_OK_UART)) != ESP01_OK) return status;

    return ESP01_OK;
}

ESP01_StatusTypeDef esp01_end_uart_transparent(){
    ESP01_StatusTypeDef status;

    HAL_Delay(1000);
    HAL_UART_Transmit(&huart1,(uint8_t*)AT_CMD_EXIT_DATA_MODE,strlen(AT_CMD_EXIT_DATA_MODE),1);
    HAL_Delay(1000);

	if ((status = send_command(AT_CMD_CLOSE_CONNECTION,AT_RESP_UDP_CLOSED)) != ESP01_OK) return status;

    return ESP01_OK;
}
