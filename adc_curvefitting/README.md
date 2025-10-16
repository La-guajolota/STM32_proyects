# 🌡️ ADC Curve Fitting Project

This project is a data acquisition system for temperature sensors, designed to run on an STM32F411CEUx microcontroller. It reads data from two temperature sensors (an LM35 and a thermistor) and sends the data over UART. This data can then be used for curve fitting to characterize the sensors.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **ADC1:** Two channels are used to read the analog values from the temperature sensors.
    *   `PA1` (ADC1_IN1): Connected to the thermistor.
    *   `PA2` (ADC1_IN2): Connected to the LM35 temperature sensor.
*   **USART1:** Used to transmit the ADC readings to a computer for data logging and analysis.
    *   `PA9`: USART1_TX
    *   `PA10`: USART1_RX
*   **GPIO:**
    *   `PB13` (green): Green LED to indicate the completion of the data acquisition process.
    *   `PB14` (red): Red LED to indicate that the data acquisition is in progress.
    *   `PB15` (rele): A relay is used to control a heating element (e.g., a light bulb) to vary the temperature of the sensors.

## Application Logic 🧠

The application performs the following steps:

1.  Turns on the relay to start heating the sensors.
2.  Enters a loop to acquire 200 samples from the two ADC channels.
3.  In each iteration, it reads the values from the LM35 and the thermistor.
4.  The ADC values are sent over UART in the format: `lm35_value thermistor_value\r\n`.
5.  The red LED is turned on during the acquisition process.
6.  After acquiring 200 samples, the relay is turned off, the green LED is turned on, and the red LED is turned off.
7.  The system then waits for 60 seconds to allow the sensors to cool down before restarting the process.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the LM35 sensor to `PA2`.
    *   Connect the thermistor to `PA1`.
    *   Connect a relay to `PB15` to control a heating element.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to `PA10` and `PA9` respectively.
2.  **Software:**
    *   Open a serial terminal (e.g., PuTTY, Tera Term) on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 9600
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Power on the STM32 board.
    *   The data acquisition process will start automatically.
    *   You will see the ADC values printed on the serial terminal.
    *   You can copy this data and use it for curve fitting in your favorite software (e.g., MATLAB, Python with NumPy/SciPy).
