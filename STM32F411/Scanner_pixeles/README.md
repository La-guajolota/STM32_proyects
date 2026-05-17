# 📠 Pixel Scanner Project

This project implements a simple pixel scanner using an STM32F411CEUx microcontroller. It's designed to be controlled by an external device (like a computer running a Python script) to scan an image line by line and send the pixel data back over UART.

## 🚀 Features

*   **Line Scanning:** Scans a surface and sends the pixel data (black or white) back to a computer.
*   **Analog Sensor:** Uses an analog sensor (like a photoresistor or an IR sensor) to detect the color of the surface.
*   **External Control:** The scanning process is controlled by external signals, making it easy to integrate with a larger system.
*   **UART Communication:** Uses UART to communicate with the host computer.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **ADC1:** Reads the analog value from the light sensor.
*   **USART1:** Used for communication with the host computer.
*   **GPIO:**
    *   `PB10`: `scan` input to trigger a horizontal scan.
    *   `PB12`: `next_line` input to indicate a vertical step.
    *   `PB1`: `fin_scan` input to indicate the end of the scan.
    *   `PC13`: User LED.

## Application Logic 🧠

The application works as a slave device, controlled by a master (e.g., a computer). Here's the workflow:

1.  **Calibration:** At startup, the application performs a calibration routine to determine the ADC thresholds for black and white. It does this by taking multiple readings of a white surface.
2.  **Waiting for Start:** The application then waits for a start command from the host computer over UART.
3.  **Scanning Loop:** Once the start command is received, the application enters a loop where it waits for commands on the GPIO pins:
    *   **Horizontal Scan:** When the `scan` pin is pulled low, the application reads the ADC value from the sensor. It then compares the value with the calibrated thresholds and sends a `1` for black or a `0` for white over UART.
    *   **Vertical Step:** When the `next_line` pin is pulled low, the application sends a `v` character over UART to indicate a vertical step.
    *   **End of Scan:** When the `fin_scan` pin is pulled low, the application sends a `fin` message over UART to indicate the end of the scanning process.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect a light sensor to the `PA0` pin.
    *   Connect three buttons or other control signals to the `PB10` (scan), `PB12` (next_line), and `PB1` (fin_scan) pins.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to the `PA9` and `PA10` pins.
2.  **Software:**
    *   You will need a program on your computer (e.g., a Python script) to send the start command and to control the scanning process by driving the GPIO pins.
    *   The computer program should also be able to receive and process the pixel data sent by the STM32.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   Run your control program on the computer.
    *   The STM32 will calibrate the sensor and then wait for the start command.
    *   Once the start command is sent, you can control the scanning process and receive the pixel data.
