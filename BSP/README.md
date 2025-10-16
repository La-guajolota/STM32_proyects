# 📦 BSP Drivers Example Project

This project is a comprehensive example that demonstrates how to use the Board Support Package (BSP) drivers for the STM32F746G-Discovery board. It includes a variety of demos that showcase the capabilities of the different peripherals available on the board.

## 🚀 Features

*   **Comprehensive Demos:** The project includes a wide range of demos that cover almost all the peripherals on the board, including:
    *   LCD
    *   Touchscreen
    *   Audio (record, playback, and loopback)
    *   SD Card
    *   SDRAM
    *   QSPI Flash
    *   EEPROM
*   **Interactive Menu:** You can easily switch between the different demos by pressing the user button on the board.
*   **Great Learning Resource:** This project is an excellent starting point for learning how to use the peripherals on the STM32F746G-Discovery board.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

This project uses a wide range of peripherals, including:

*   **LCD:** The 4.3-inch 480x272 TFT LCD is used to display the demo menu and the output of the different demos.
*   **Touchscreen:** The capacitive touchscreen is used for user interaction in the touchscreen demo.
*   **Audio Codec:** The on-board audio codec is used for audio recording and playback.
*   **SAI (Serial Audio Interface):** Used to communicate with the audio codec.
*   **SD Card:** The microSD card slot is used for reading and writing data in the SD card demo.
*   **SDRAM:** The external SDRAM is used for data storage in the SDRAM demo.
*   **QSPI Flash:** The external Quad-SPI flash memory is used for data storage in the QSPI demo.
*   **EEPROM:** The I2C EEPROM is used for data storage in the EEPROM demo.
*   **And many more...**

## Application Logic 🧠

The application is structured as a simple menu-driven system. The `main.c` file initializes the system and then enters an infinite loop. In the loop, it waits for the user to press the blue user button. When the button is pressed, it cycles through the different demos in the `BSP_examples` array and executes the corresponding demo function.

Each demo is implemented in a separate file (e.g., `lcd.c`, `touchscreen.c`, `audio_rec.c`, etc.) and demonstrates how to use a specific BSP driver.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   For the audio demos, connect a pair of headphones to the audio jack.
    *   For the SD card demo, insert a microSD card into the slot.
    *   For the EEPROM demo, you need to connect an ANT7-M24LR-A daughter board to the CN1 connector.
2.  **Software:**
    *   The project is configured for STM32CubeIDE, but you can also use EWARM or MDK-ARM.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The main menu will be displayed on the LCD.
    *   Press the user button to cycle through the different demos.
