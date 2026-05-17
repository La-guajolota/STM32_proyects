# 📡 ASK Transmitter Project

This project implements a simple ASK (Amplitude-Shift Keying) transmitter on an STM32F411CEUx microcontroller. It generates a 150kHz carrier signal and transmits a message over UART.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM11:** Used to generate a 150kHz PWM signal, which serves as the carrier for the ASK modulation.
*   **USART1:** Used to transmit the data.

## Application Logic 🧠

The application performs the following steps:

1.  **Carrier Generation:** `TIM11` is configured to generate a PWM signal with a frequency of 150kHz and a 50% duty cycle. This signal acts as the carrier wave.
2.  **Data Transmission:** The `main` function enters an infinite loop where it transmits the string "HOLA\r\n" over `USART1` every second.

In a typical ASK system, the carrier signal would be modulated (turned on and off) based on the data being sent. In this project, the data is sent over UART, and the carrier is generated separately. To create a complete ASK transmitter, you would need to modulate the PWM signal from `TIM11` based on the data from `USART1`.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the PWM output pin (`PB9`) to an antenna or a circuit for wireless transmission.
    *   Connect the `TX` pin of a USB-to-UART converter to `PA15` to monitor the transmitted data.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 2400
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Power on the STM32 board.
    *   You will see the message "HOLA" printed on the serial terminal every second.
    *   You can use an oscilloscope or a spectrum analyzer to observe the 150kHz carrier signal on the PWM output pin.
