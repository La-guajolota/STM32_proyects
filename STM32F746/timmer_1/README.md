# ⏱️ Timer Example Project

This project is a simple example of how to use a timer on an STM32F746NGHx microcontroller to measure the execution time of a piece of code. It uses `TIM14` to measure the time it takes to perform a sine calculation and sends the result over UART.

## 🚀 Features

*   **Execution Time Measurement:** Demonstrates how to use a hardware timer to measure the execution time of a code snippet.
*   **Basic Timer Usage:** A simple example of how to initialize and use a basic timer.
*   **UART Output:** Sends the measured time to a computer over UART.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **TIM14:** A basic timer used to measure the execution time.
*   **USART1:** Used to send the measured time to a computer.

## Application Logic 🧠

The application performs the following steps in a loop:

1.  **Start Timer:** The `main` function starts `TIM14`.
2.  **Code Execution:** It then performs a sine calculation.
3.  **Stop Timer:** After the calculation is complete, it stops the timer.
4.  **Get Time:** It reads the timer's counter value to get the elapsed time.
5.  **Send Time:** The elapsed time is then sent over `USART1` to a computer.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   Connect the `TX` pin of a USB-to-UART converter to the `PA9` pin.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 115200
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   You will see the execution time of the sine calculation printed on the serial terminal every 250ms.
