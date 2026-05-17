# 🔥 Heaters Control Project

This project is a sophisticated temperature control system for a set of heaters, likely for an application like a 3D printer extruder. It uses PID controllers to maintain the desired temperature for three different heating zones, and it also includes support for reading motor positions using magnetic encoders.

## 🚀 Features

*   **Multi-zone Temperature Control:** Controls up to three independent heating zones using PID controllers.
*   **Thermocouple Interface:** Reads temperature data from multiple MAX6675 thermocouple sensors over SPI.
*   **Motor Position Sensing:** Reads motor positions using AS5048B magnetic encoders over I2C.
*   **PID Control:** Implements a PID control loop to accurately maintain the target temperature for each heater.
*   **Modular Design:** The code is organized into separate drivers for the different sensors and a dedicated file for the extruder process logic.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **SPI1:** Used to communicate with the MAX6675 thermocouple sensors.
*   **I2C1:** Used to communicate with the AS5048B magnetic encoders.
*   **TIM1, TIM2, TIM3:** Used for various timing and control purposes, including triggering the PID control loop.
*   **GPIO:** Used for chip selects for the SPI devices and other control signals.

## Application Logic 🧠

The application is designed to control the temperature of three heaters and monitor the position of two motors. Here's a breakdown of the logic:

1.  **Initialization:** The `main` function initializes the SPI and I2C peripherals, timers, and GPIOs. It also initializes three PID controllers and the drivers for the MAX6675 thermocouples and AS5048B encoders.
2.  **Temperature Reading:** A timer interrupt periodically triggers the reading of the temperatures from the three thermocouples. The `MAX6675_ReadTemperature()` and `MAX6675_GetTemperature()` functions are used for this purpose.
3.  **PID Control:** The temperature readings are used as the process variable for the PID controllers. The `PID_Update()` function is called to calculate the new output for each heater based on the setpoint and the current temperature.
4.  **Motor Position Reading:** The application reads the angular position of two motors using the AS5048B magnetic encoders. The `AS5048B_GetAngleDegrees()` function is used to get the angle in degrees.
5.  **Heater and Motor Control:** The output of the PID controllers would be used to control the heaters (e.g., by driving a MOSFET or a solid-state relay). The motor position readings can be used for feedback in a motor control system. (The code for heater and motor control is not fully shown in `main.c` but is likely in `extrusor_process.h`)

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect up to four MAX6675 thermocouple sensors to the SPI1 bus, with separate chip select pins for each.
    *   Connect up to two AS5048B magnetic encoders to the I2C1 bus.
    *   Connect the heaters to the output of a suitable driver circuit (e.g., MOSFETs) and control them using GPIO pins.
    *   Connect the motors to their respective drivers.
2.  **Software:**
    *   The PID controllers need to be tuned for the specific thermal characteristics of the heaters.
    *   The setpoints for the heaters can be set in the `pipeSetpoints` array.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   The application will start the temperature control loop and monitor the motor positions.
