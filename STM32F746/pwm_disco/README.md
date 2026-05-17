# 💡 PWM Disco Project

This project is a simple demonstration of how to use the PWM (Pulse-Width Modulation) feature on an STM32F746NGHx microcontroller, likely on an STM32F746G-Discovery board. It generates a PWM signal with a variable duty cycle.

## 🚀 Features

*   **PWM Generation:** Generates a PWM signal using a hardware timer.
*   **Variable Duty Cycle:** The duty cycle of the PWM signal is varied in a loop, which can be used to control the brightness of an LED or the speed of a motor.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **TIM2:** Configured in PWM mode to generate a PWM signal on channel 1.
    *   `PA15`: TIM2_CH1 (PWM output)

## Application Logic 🧠

The application is very simple:

1.  **Initialization:** The `main` function initializes `TIM2` in PWM mode.
2.  **PWM Control:** In the main loop, the application varies the duty cycle of the PWM signal by changing the value of the `CCR1` register of `TIM2`. The duty cycle is ramped up from 0 to 1000 and then repeats.

This project is a great starting point for learning how to use the PWM peripheral on an STM32 microcontroller. You can use it to control the brightness of an LED, the speed of a DC motor, or the position of a servo motor.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect an LED and a current-limiting resistor to the `PA15` pin.
2.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   You should see the brightness of the LED change as the duty cycle of the PWM signal is varied.
