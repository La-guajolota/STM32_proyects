# 🔥 Reflow Oven Controller Project

This project is a complete reflow oven controller based on an STM32F411CEUx microcontroller. It uses a PID controller to accurately control the temperature of a reflow oven, and it features a graphical user interface (GUI) for setting the temperature profile and monitoring the process.

## 🚀 Features

*   **PID Temperature Control:** Implements a PID control loop to accurately follow a predefined temperature profile.
*   **Thermocouple Interface:** Reads temperature data from multiple MAX6675 thermocouple sensors over SPI.
*   **Zero-Crossing Detection:** Uses a zero-crossing detection circuit to control the power to the heater using a triac, which provides precise and efficient power control.
*   **Graphical User Interface:** A user-friendly GUI allows you to:
    *   Set the desired reflow profile.
    *   Monitor the current temperature and the progress of the reflow process.
    *   Adjust the PID parameters.
*   **Encoder Navigation:** Uses a rotary encoder to navigate the GUI menus.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **SPI1:** Used to communicate with the MAX6675 thermocouple sensors.
*   **I2C1:** Used to communicate with an OLED display for the GUI.
*   **TIM1:** Generates a PWM signal to control the triac for the heater.
*   **TIM2:** Used as an encoder interface to read the rotary encoder.
*   **TIM3:** Used as a timer to trigger the PID control loop at a constant rate.
*   **USART1:** Used for debugging and serial communication.
*   **GPIO:** Used for chip selects for the SPI devices, zero-crossing detection, and other control signals.

## Application Logic 🧠

The application is built around a state machine that manages the reflow process. The core of the control system is a PID loop that runs periodically.

1.  **GUI:** The user interacts with the system through a GUI on an OLED display. The GUI is used to select the desired reflow profile and to start the reflow process.
2.  **Temperature Sensing:** The temperature inside the oven is measured using multiple thermocouples connected to MAX6675 sensors. The readings are averaged to get a more accurate temperature reading.
3.  **PID Control:** The measured temperature is used as the process variable for a PID controller. The PID controller calculates the required power to be supplied to the heater to follow the selected temperature profile.
4.  **Zero-Crossing Control:** The power to the heater is controlled using a triac. A zero-crossing detection circuit is used to synchronize the firing of the triac with the AC mains cycle. This allows for precise control of the power delivered to the heater and reduces electrical noise.
5.  **Reflow Profile:** The application follows a predefined reflow profile, which consists of several stages (preheat, soak, reflow, and cooling). The PID controller adjusts the heater power to follow the temperature curve of the selected profile.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Build a reflow oven with a heating element and a K-type thermocouple.
    *   Connect the thermocouple to a MAX6675 amplifier.
    *   Connect the MAX6675 to the STM32F411CEUx via SPI.
    *   Connect a zero-crossing detection circuit to an external interrupt pin.
    *   Connect a triac to control the heater, and drive the triac with a PWM signal from the STM32.
    *   Connect an OLED display to the I2C bus.
    *   Connect a rotary encoder to the timer pins.
2.  **Software:**
    *   The PID controller needs to be tuned for the specific thermal characteristics of your reflow oven.
    *   You can define different reflow profiles in the code.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   Use the rotary encoder to navigate the GUI and select a reflow profile.
    *   Start the reflow process.
    *   The application will control the heater to follow the selected profile and will display the progress on the OLED screen.
