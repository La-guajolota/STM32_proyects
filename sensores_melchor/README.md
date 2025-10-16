# 🌡️ Melchor's Sensors Project

This project is a comprehensive sensor data acquisition system that reads data from a variety of sensors and sends it over UART. It's designed to run on an STM32F746NGHx microcontroller, likely on an STM32F746G-Discovery board.

## 🚀 Features

*   **Multi-sensor Integration:** Reads data from a variety of sensors, including:
    *   **MAX6675 Thermocouple:** For measuring high temperatures.
    *   **MLX90614 Infrared Thermometer:** For non-contact temperature measurement.
    *   **ACS712 Current Sensors:** For measuring AC or DC current.
    *   **Rotary Encoder:** For measuring motor speed and direction.
    *   **Piezoelectric Sensor:** For measuring vibrations.
    *   **Tachometer:** For measuring rotational speed.
*   **Multiple Communication Protocols:** Uses SPI and I2C to communicate with the different sensors.
*   **Frequency Measurement:** Uses the input capture feature of timers to measure the frequency of the piezoelectric sensor and the tachometer.
*   **Data Logging:** Sends the collected sensor data over UART, which can be logged on a computer for analysis.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **SPI2:** Used to communicate with the MAX6675 thermocouple sensor.
*   **I2C1 & I2C3:** Used to communicate with the MLX90614 infrared thermometer and other I2C devices.
*   **ADC1:** Reads the analog values from the ACS712 current sensors.
*   **TIM3:** Used in input capture mode to measure the frequency of the piezoelectric sensor.
*   **TIM5:** Used for generating microsecond delays.
*   **TIM12:** Used in input capture mode to measure the frequency of the tachometer.
*   **USART1:** Used to send the sensor data to a computer.

## Application Logic 🧠

The application continuously reads data from the various sensors and sends it over UART. Here's a breakdown of the process:

1.  **Initialization:** The `main` function initializes all the necessary peripherals, including SPI, I2C, ADC, timers, and UART. It also initializes the custom drivers for the different sensors.
2.  **Sensor Reading:** In the main loop, the application reads data from each sensor:
    *   **Temperature:** It reads the temperature from the MAX6675 thermocouple and the MLX90614 infrared thermometer.
    *   **Current:** It reads the current from the three ACS712 sensors using the ADC.
    *   **Motor Speed and Direction:** It reads the encoder to determine the speed and direction of a motor.
    *   **Vibration and Speed:** It uses the input capture feature of `TIM3` and `TIM12` to measure the frequency of the piezoelectric sensor and the tachometer.
3.  **Data Transmission:** The collected sensor data is formatted into a string and sent over `USART1` to a computer.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the various sensors to the corresponding pins on the STM32F746G-Discovery board:
        *   MAX6675 to `SPI2`.
        *   MLX90614 to `I2C1`.
        *   ACS712 sensors to `ADC1` inputs.
        *   Encoder to the `TIM1` pins.
        *   Piezoelectric sensor to the `TIM3` input capture pin.
        *   Tachometer to the `TIM12` input capture pin.
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
    *   The application will start reading the sensor data and sending it to the serial terminal.
