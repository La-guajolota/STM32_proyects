# 🌦️ Meteorological Meter Project

This project is a complete meteorological meter (weather station) that measures and displays various environmental data. It uses an STM32F103C8Tx microcontroller to read data from a GPS module, a light sensor, and a DHT11 temperature and humidity sensor, and it displays the information on an OLED screen.

## 🚀 Features

*   **GPS Data:** Reads and parses NMEA sentences from a GPS module to get the current date, time, and location.
*   **Temperature and Humidity:** Measures temperature and humidity using a DHT11 sensor.
*   **Light Sensing:** Measures the ambient light level using a photoresistor or a similar light sensor.
*   **OLED Display:** Displays the collected data on an SSD1306 OLED display.
*   **User Interface:** Uses a rotary encoder to switch between different display modes (GPS, light, and humidity).

## MCU 🤖

*   **MCU:** `STM32F103C8Tx`
*   **Family:** STM32F1

## Peripherals Used ⚙️

*   **I2C2:** Used to communicate with the SSD1306 OLED display.
*   **USART1:** Used to receive data from the GPS module.
*   **ADC1:** Reads the analog value from the light sensor.
*   **TIM1:** Configured as an encoder interface to read the rotary encoder.
*   **TIM2:** Used to create microsecond delays for the DHT11 sensor.
*   **GPIO:** Used to communicate with the DHT11 sensor and to control an LCD (not used in the final version).
*   **USB:** The project also initializes the USB peripheral, which could be used for communication with a computer.

## Application Logic 🧠

The application cycles through three states, controlled by a rotary encoder:

1.  **GPS Mode:** In this mode, the application reads NMEA sentences from the GPS module over UART, parses them to extract the date, time, and location, and displays this information on the OLED screen.
2.  **Light Sensor Mode:** In this mode, the application reads the analog value from the light sensor using the ADC and displays the light level on the OLED screen.
3.  **Humidity and Temperature Mode:** In this mode, the application reads the temperature and humidity from the DHT11 sensor and displays the values on the OLED screen.

The rotary encoder connected to `TIM1` is used to switch between these three modes.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect an SSD1306 OLED display to the `I2C2` pins (`PB10`, `PB11`).
    *   Connect a GPS module to the `USART1` pins (`PB6`, `PB7`).
    *   Connect a light sensor (e.g., a photoresistor) to the `ADC1` input pin (`PA0`).
    *   Connect a DHT11 sensor to the `PA1` pin.
    *   Connect a rotary encoder to the `TIM1` pins (`PA8`, `PA9`).
2.  **Run:**
    *   Build and flash the project to the STM32F103C8Tx microcontroller.
    *   The application will start and display a welcome message on the OLED screen.
    *   You can turn the rotary encoder to switch between the different display modes.
