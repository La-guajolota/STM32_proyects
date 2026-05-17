# 🚌 CAN Transceiver Example Project

This project is an example of how to use the built-in CAN peripheral of an STM32F103C8Tx microcontroller. It demonstrates how to send data from an ADC over the CAN bus and how to receive CAN messages using interrupts.

## 🚀 Features

*   **CAN Communication:** Uses the built-in CAN peripheral of the STM32F103C8Tx.
*   **ADC Data Transmission:** Reads data from the ADC and transmits it over the CAN bus.
*   **Interrupt-based Reception:** Uses an interrupt to receive CAN messages.
*   **Simple and Clear:** Provides a simple and easy-to-understand example of CAN communication.

## MCU 🤖

*   **MCU:** `STM32F103C8Tx`
*   **Family:** STM32F1

## Peripherals Used ⚙️

*   **CAN:** The built-in CAN peripheral is used for sending and receiving CAN messages.
    *   `PB8`: CAN_RX
    *   `PB9`: CAN_TX
*   **ADC1:** Used to read an analog value that is then transmitted over the CAN bus.
*   **USART2:** Used for debugging and sending information to a computer.
*   **GPIO:**
    *   `PC13`: TX_led (indicates a message is being transmitted)
    *   `PB11`: RX_led (indicates a message is being received)

## Application Logic 🧠

The application performs the following steps:

1.  **Initialization:** The `main` function initializes the CAN, ADC, and USART peripherals, as well as the GPIOs for the LEDs.
2.  **CAN Configuration:** It configures the CAN transmission header with a standard ID of `0x0B`.
3.  **ADC Reading and Transmission:** In the main loop, the application reads a value from the ADC and then sends it over the CAN bus in a message with ID `0x0B`.
4.  **Reception:** The `HAL_CAN_RxFifo0MsgPendingCallback` function is implemented to handle incoming CAN messages. When a message is received, this function is called, and it toggles the `RX_led` to indicate that a message has been received.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect a CAN transceiver to the `PB8` and `PB9` pins of the STM32F103C8Tx.
    *   Connect an analog sensor or a potentiometer to the ADC input pin (`PA0`).
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to `PA2` and `PA3` respectively.
    *   You will need another CAN node to receive the messages sent by this device and to send messages to it.
2.  **Software:**
    *   Open a serial terminal on your computer to view any debug messages.
3.  **Run:**
    *   Power on the STM32 board.
    *   The application will start reading the ADC value and transmitting it over the CAN bus every 100ms.
    *   You can use another CAN node to see the messages being sent.
    *   If you send a CAN message to the board, you should see the `RX_led` toggle.
