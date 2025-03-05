/*
 * esp01.h
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */

#ifndef INC_ESP01_H_
#define INC_ESP01_H_

/* STD LIBS */
#include <stdio.h>
#include <stdint.h>
#include <string.h>

/* STM32 HALS */
#include "main.h"
#include "stm32f4xx.h"

/* DATA TYPES */
/**
  * @brief  Status structures definition
  */
typedef enum
{
  ESP01_OK       = 0x00U,
  ESP01_ERROR    = 0x01U,
  ESP01_READY     = 0x02U,
  ESP01_TIMEOUT  = 0x03U
} ESP01_StatusTypeDef;

/* MACROS */
#define UART_RX_BUFFER_SIZE  40
#define ESP01_DEFAULT_TIMEOUT 1000 //ms
// Helper macros to convert numbers to strings
#define STR_HELPER(x) #x
#define STR(x) STR_HELPER(x)

// =================================================
// AT Commands Configuration (Wi-Fi/UART Module)
// =================================================

// ---------------------------
// Basic Control Commands
// ---------------------------
static const char AT_CMD_BASIC_AT[]    = "AT\r\n";
static const char AT_CMD_RESET[]       = "AT+RST\r\n";
static const char AT_CMD_ECHO_OFF[]    = "ATE0\r\n";

// ---------------------------
// Connection Mode Configuration
// ---------------------------
static const char AT_CMD_SINGLE_CONNECTION[] = "AT+CIPMUX=0\r\n";
// static const char AT_CMD_MULTI_CONNECTION[] = "AT+CIPMUX=1\r\n";  // Alternative not used

// ---------------------------
// Operational Modes
// ---------------------------
static const char AT_CMD_WIFI_MODE[]           = "AT+CWMODE=3\r\n";  // SoftAP + Station
static const char AT_CMD_UART_TRANSPARENT[]    = "AT+CIPMODE=1\r\n"; // Transparent mode
static const char AT_CMD_EXIT_TRANSPARENT[]    = "AT+CIPMODE=0\r\n"; // Exit transparent mode

// ---------------------------
// UDP Configuration
// ---------------------------
#define UDP_SERVER_IP "192.168.4.2"
#define UDP_SERVER_PORT 8080
#define UDP_LOCAL_PORT  1112

// The following line concatenates the strings and converts the numbers to text
static const char AT_CMD_UDP_CONNECTION[] = "AT+CIPSTART=\"UDP\",\"" UDP_SERVER_IP "\"," STR(UDP_SERVER_PORT) "," STR(UDP_LOCAL_PORT) ",0\r\n";
static const char AT_CMD_CLOSE_CONNECTION[] = "AT+CIPCLOSE\r\n";

// ---------------------------
// Data Transmission
// ---------------------------
static const char AT_CMD_SEND_DATA[]     = "AT+CIPSEND\r\n";
static const char AT_CMD_EXIT_DATA_MODE[] = "+++";

// =================================================
// AT Response Patterns (for processing)
// =================================================
static const char AT_RESP_OK[]       = "OK\r\n";
static const char AR_RESP_OK_UART[]   = "\r\n>";
static const char AT_RESP_ERROR[]    = "ERROR\r\n";
static const char AT_RESP_READY[]    = "ready\r\n";
static const char AT_RESP_UDP_CLOSED[] = "CLOSED\r\n";
static const char AT_RESP_ALLREADY[] = "ALREADY CONNECTED\r\n";


/* USER'S FUNCTIONS */
ESP01_StatusTypeDef esp01_init();
ESP01_StatusTypeDef esp01_udp_start();
ESP01_StatusTypeDef esp01_start_uart_transparent();
ESP01_StatusTypeDef esp01_end_uart_transparent();

#endif /* INC_ESP01_H_ */
