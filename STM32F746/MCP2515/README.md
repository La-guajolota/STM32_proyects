# 🚌 MCP2515 CAN Project

This project demonstrates how to use an STM32F746NGHx microcontroller to communicate with an MCP2515 CAN controller. It provides a simple example of how to send and receive CAN messages using the SPI interface.

## 🚀 Features

*   **CAN Communication:** Implements CAN communication using the MCP2515 CAN controller.
*   **SPI Interface:** Uses the SPI peripheral to communicate with the MCP2515.
*   **Custom Driver:** Includes a custom driver (`CAN_SPI.h`) for the MCP2515.
*   **Simple Example:** Provides a straightforward example of sending and receiving CAN messages.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **SPI2:** Used to communicate with the MCP2515 CAN controller.
    *   `PI1`: SPI2_SCK
    *   `PB14`: SPI2_MISO
    *   `PB15`: SPI2_MOSI
    *   `PI3`: SPI_CS (Chip Select)
*   **USART1:** Used for debugging and sending information to a computer.

## Application Logic 🧠

The application performs the following steps:

1.  **Initialization:** The `main` function initializes the SPI and USART peripherals, as well as the GPIO for the chip select. It then initializes the MCP2515 CAN controller using the `CANSPI_Initialize()` function from the custom driver.
2.  **Receive Message:** In the main loop, the application continuously checks for incoming CAN messages using the `CANSPI_Receive()` function.
3.  **Process Message:** If a message with ID `0x0A` is received, the application sends a confirmation message over UART.
4.  **Transmit Message:** The application then constructs a new CAN message with ID `0x36` and transmits it using the `CANSPI_Transmit()` function.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the MCP2515 CAN controller to the STM32F746G-Discovery board using the SPI2 pins.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to the `PA9` and `PB7` pins of the board.
    *   You will need another CAN node to send and receive messages.
2.  **Software:**
    *   Open a serial terminal on your computer to view any debug messages.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The application will start listening for CAN messages.
    *   Send a CAN message with ID `0x0A` from another CAN node. You should see a confirmation message on the serial terminal.
    *   The application will then transmit a CAN message with ID `0x36`.
