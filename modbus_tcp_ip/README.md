# 🏭 Modbus TCP/IP Project

This project implements the Modbus TCP/IP protocol on an STM32F746NGHx microcontroller, likely on an STM32F746G-Discovery board. It uses the LwIP stack for TCP/IP communication and FreeRTOS for task management.

## 🚀 Features

*   **Modbus TCP/IP:** Implements a Modbus TCP/IP server or client.
*   **LwIP Stack:** Uses the LwIP TCP/IP stack for network communication.
*   **FreeRTOS:** The application runs on the FreeRTOS real-time operating system.
*   **Comprehensive Peripheral Usage:** This project is a great example of how to use a wide variety of peripherals on the STM32F746G-Discovery board in a real-world application.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

This project uses a vast array of peripherals, including:

*   **ETH:** The Ethernet MAC peripheral for network communication.
*   **LwIP:** The LwIP TCP/IP stack.
*   **FreeRTOS:** The FreeRTOS real-time operating system.
*   **LTDC & DMA2D:** For the LCD display.
*   **FMC & QUADSPI:** For external memory.
*   **I2C, SPI, UART:** For communication with various sensors and peripherals.
*   **ADC, DCMI, SAI, SPDIFRX:** For analog and digital data acquisition.
*   **Timers:** For various timing and control purposes.
*   **USB Host & OTG:** For USB communication.
*   **And many more...**

## Application Logic 🧠

The application is built on top of the FreeRTOS real-time operating system. The `main.c` file initializes all the necessary peripherals and then starts the FreeRTOS scheduler. The core logic of the application is implemented in one or more FreeRTOS tasks.

Based on the project name, the main task of the application is to implement a Modbus TCP/IP server or client. This would involve:

*   Listening for incoming Modbus requests on a specific TCP port.
*   Parsing the Modbus requests.
*   Reading or writing data from/to the various peripherals on the board based on the Modbus request.
*   Sending a Modbus response back to the client.

The other peripherals are likely used to provide data to the Modbus server (e.g., reading sensor values via ADC or I2C) or to be controlled by the Modbus client (e.g., controlling motors via PWM).

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   Connect an Ethernet cable to the Ethernet port on the board.
2.  **Software:**
    *   You will need a Modbus TCP/IP client software on your computer to communicate with the board.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The board will initialize the Ethernet interface and start the Modbus TCP/IP server.
    *   You can then use a Modbus client to connect to the board and read or write data.
