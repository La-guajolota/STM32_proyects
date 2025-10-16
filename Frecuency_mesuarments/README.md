# ⏱️ Frequency Measurement Project

This project demonstrates how to measure the frequency of a digital signal using the input capture feature of a timer on an STM32F411CEUx microcontroller.

## 🚀 Features

*   **Frequency Measurement:** Measures the frequency of an input signal.
*   **Input Capture Mode:** Uses the input capture mode of a timer to accurately measure the time between signal edges.
*   **Timer Overflow Handling:** Handles timer overflows to correctly measure low-frequency signals.
*   **Interrupt-based:** The measurement is done using interrupts, which makes it efficient and non-blocking.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM11:** Configured in input capture mode to measure the time between two consecutive rising edges of the input signal.
    *   `PB9`: TIM11_CH1 (Input signal)

## Application Logic 🧠

The application measures the frequency of a signal connected to the `PB9` pin. Here's how it works:

1.  **Initialization:** The `main` function initializes `TIM11` in input capture mode and enables the corresponding interrupts.
2.  **Input Capture:** When a rising edge is detected on the input pin, the `HAL_TIM_IC_CaptureCallback` function is called. This function records the timer's counter value at the time of the event.
3.  **Frequency Calculation:** The function measures the time difference between two consecutive rising edges. It also uses the `HAL_TIM_PeriodElapsedCallback` function to count the number of timer overflows, which is necessary for measuring low-frequency signals. The frequency is then calculated using the following formula:

    ```
    Frequency = Clock_Frequency / Time_Difference
    ```

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect a digital signal to the `PB9` pin.
2.  **Software:**
    *   You can view the calculated frequency by setting a breakpoint in the `HAL_TIM_IC_CaptureCallback` function and inspecting the `gu32_Freq` variable.
    *   You can also modify the code to send the frequency value over UART or display it on an LCD.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   The application will start measuring the frequency of the input signal.
