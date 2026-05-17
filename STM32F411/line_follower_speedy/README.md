# 🏎️ Speedy Line Follower Robot Project

This project implements a line follower robot named "Speedy" on an STM32F411CEUx microcontroller. It uses a PID controller to follow a black line on a white surface and includes Wi-Fi communication for telemetry and remote control.

## 🚀 Features

*   **Line Following:** Implements a PID control algorithm to accurately follow a line.
*   **IR Sensor Array:** Uses an array of IR sensors to detect the line.
*   **Motor Control:** Controls two DC motors using the DRV8833 motor driver.
*   **Wi-Fi Communication:** Communicates with a computer or a smartphone over Wi-Fi using an ESP-01 module.
*   **Telemetry:** Sends real-time data, such as motor speed, sensor readings, and PID output, over UDP.
*   **Remote PID Tuning:** Allows you to tune the PID controller gains remotely over UART.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **ADC1:** Reads the analog values from the IR sensor array.
*   **TIM1:** Generates PWM signals to control the speed of the two motors.
*   **TIM3:** Used as a timer to trigger the PID control loop at a constant rate.
*   **USART1:** Communicates with the ESP-01 Wi-Fi module using DMA.
*   **GPIO:** Used for controlling the IR sensor array multiplexer and other digital signals.

## Application Logic 🧠

The robot's logic is centered around a PID control loop that runs periodically:

1.  **Sensing:** The application reads the values from the IR sensor array to determine the position of the line relative to the robot.
2.  **Error Calculation:** The sensor readings are used to calculate an error value, which represents how far the robot is from the center of the line.
3.  **PID Control:** The error value is fed into a PID controller, which calculates the necessary correction to be applied to the motors.
4.  **Motor Actuation:** The output of the PID controller is used to adjust the speed of the two motors, steering the robot to follow the line.
5.  **Telemetry:** The application sends telemetry data, including the motor PWM values, the calculated line position, and the individual sensor readings, over UDP using the ESP-01 module. This allows for real-time monitoring of the robot's behavior.
6.  **Remote Tuning:** The PID gains (Kp, Ki, Kd) can be updated remotely by sending commands over UART. This is a very useful feature for tuning the robot's performance without having to re-flash the firmware.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Build the robot chassis with two DC motors, an IR sensor array, and a DRV8833 motor driver.
    *   Connect the IR sensor array to the ADC input and the multiplexer control pins.
    *   Connect the motor driver to the PWM output pins of `TIM1`.
    *   Connect the ESP-01 module to `USART1`.
2.  **Software:**
    *   You will need a Wi-Fi network to connect the ESP-01 module to.
    *   You can use a UDP client on your computer or smartphone to receive the telemetry data.
    *   You can use a serial terminal to send commands to the robot to tune the PID gains.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   Place the robot on a black line on a white surface.
    *   The robot will start following the line.
    *   You can monitor the robot's performance and tune the PID controller in real-time.
