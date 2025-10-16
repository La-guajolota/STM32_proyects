# 🎶 Function Generator with Multiplexer Project

This project implements a 4-channel function generator with a multiplexer on an STM32F411CEUx microcontroller. It uses PWM to generate different waveforms and FreeRTOS to manage the signal generation and multiplexing tasks.

## 🚀 Features

*   **4-Channel Function Generator:** Generates four different waveforms simultaneously.
*   **PWM Waveform Generation:** Uses the PWM peripheral to generate sine and cosine waveforms.
*   **Multiplexer Control:** Includes a task to control a multiplexer to select the output signal.
*   **FreeRTOS:** Uses the FreeRTOS real-time operating system to manage the different tasks concurrently.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM1:** Four PWM channels of TIM1 are used to generate the waveforms.
    *   `PA8`: TIM1_CH1 (signal_3)
    *   `PA9`: TIM1_CH2 (signal_2)
    *   `PA10`: TIM1_CH3 (signal_1)
    *   `PA11`: TIM1_CH4 (signal_0)
*   **GPIO:** GPIO pins are used to control the multiplexer.
    *   `PB0`: mux_0
    *   `PB1`: mux_1
    *   `PB2`: mux_en
*   **FreeRTOS:** The application runs on the FreeRTOS real-time operating system.

## Application Logic 🧠

The application is built around five FreeRTOS tasks:

1.  **`signal0_func`, `signal1_func`, `signal2_func`, `signal3_func`:** These four tasks are responsible for generating the different waveforms. Each task calculates the values for a sine or cosine wave with a specific frequency and phase and updates the corresponding PWM channel of `TIM1`. 
2.  **`mux_signal`:** This task controls a multiplexer by setting the GPIO pins `mux_0`, `mux_1`, and `mux_en`. This allows you to select which of the four generated signals is routed to the output.

The `main.c` file initializes the timer and GPIO peripherals, creates the five tasks, and starts the FreeRTOS scheduler. The tasks then run concurrently to generate and multiplex the signals.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the PWM output pins (`PA8`, `PA9`, `PA10`, `PA11`) to low-pass filters to get analog waveforms.
    *   Connect the outputs of the low-pass filters to the inputs of a multiplexer.
    *   Connect the multiplexer control pins to `PB0`, `PB1`, and `PB2`.
    *   Connect the output of the multiplexer to an oscilloscope or another device to visualize the generated waveform.
2.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   The application will start generating the four different waveforms and multiplexing them.
    *   You can observe the output of the selected channel on the oscilloscope.
