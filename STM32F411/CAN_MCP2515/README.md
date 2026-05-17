# 🚌 CAN MCP2515 Project

This project demonstrates how to use an STM32F411CEUx microcontroller to communicate with an MCP2515 CAN controller. It provides a simple example of how to send and receive CAN messages.

## 🚀 Features

*   **CAN Communication:** Implements CAN communication using the MCP2515 CAN controller.
*   **SPI Interface:** Uses the SPI peripheral to communicate with the MCP2515.
*   **Custom Driver:** Includes a custom driver (`CAN_SPI.h`) for the MCP2515.
*   **Simple Example:** Provides a straightforward example of sending and receiving CAN messages.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **SPI1:** Used to communicate with the MCP2515 CAN controller.
    *   `PA5`: SPI1_SCK
    *   `PA6`: SPI1_MISO
    *   `PA7`: SPI1_MOSI
    *   `PA4`: SPI_CS (Chip Select)
*   **USART1:** Used for debugging and sending information to a computer.
*   **GPIO:**
    *   `PC13`: TX_led (indicates a message is being transmitted)
    *   `PB10`: RX_led (indicates a message is being received)

## Application Logic 🧠

The application performs the following steps:

1.  **Initialization:** The `main` function initializes the SPI and USART peripherals, as well as the GPIOs for the LEDs and chip select. It then initializes the MCP2515 CAN controller using the `CANSPI_Initialize()` function from the custom driver.
2.  **Receive Message:** In the main loop, the application continuously checks for incoming CAN messages using the `CANSPI_Receive()` function.
3.  **Process Message:** If a message with ID `0x36` is received, the application checks the first data byte. If it's `1`, it turns on the `RX_led`; otherwise, it turns it off.
4.  **Transmit Message:** After processing the received message, the application constructs a new CAN message with ID `0x0A` and transmits it using the `CANSPI_Transmit()` function.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the MCP2515 CAN controller to the STM32F411CEUx microcontroller using the SPI pins.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to `PA9` and `PA10` respectively.
    *   You will need another CAN node to send and receive messages.
2.  **Software:**
    *   Open a serial terminal on your computer to view any debug messages.
3.  **Run:**
    *   Power on the STM32 board.
    *   The application will start listening for CAN messages.
    *   Send a CAN message with ID `0x36` from another CAN node. You should see the `RX_led` turn on or off depending on the data in the message.
    *   The application will then transmit a CAN message with ID `0x0A`.
