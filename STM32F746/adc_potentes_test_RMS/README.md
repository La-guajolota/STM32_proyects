# ⚡️ ADC RMS Test Project

This project is a test for high-speed ADC sampling and RMS (Root Mean Square) calculation on an STM32F746NGHx microcontroller, likely the STM32F746G-DISCO board. It uses two ADCs (ADC1 and ADC3) with DMA to continuously sample multiple channels at a high frequency.

## MCU & Board MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-DISCO

## Peripherals Used ⚙️

*   **ADC1:** Configured to sample two channels, triggered by TIM4.
*   **ADC3:** Configured to sample three channels in continuous mode.
*   **DMA:** Used to transfer the ADC data from the peripheral to memory without CPU intervention, which is essential for high-speed applications.
*   **TIM4:** Configured as a time base to trigger ADC1 conversions at a specific frequency.
*   **USART1:** Used for communication with a computer.
*   **GPIO:** A GPIO pin (`ARDUINO_D8_Pin`) is used to signal when an ADC conversion is complete.

## Application Logic 🧠

The application performs the following steps:

1.  Initializes the ADCs, DMA, TIM4, and USART1 peripherals.
2.  Starts ADC3 with DMA to continuously sample three channels.
3.  Starts TIM4 to generate a trigger for ADC1.
4.  Starts ADC1 with DMA to sample two channels, triggered by TIM4.
5.  The `HAL_ADC_ConvCpltCallback` and `HAL_ADC_ConvHalfCpltCallback` functions are used to set flags (`flag` and `flag_adc1`) when the ADC conversion is complete.
6.  The main loop checks for these flags and toggles a GPIO pin to indicate that the conversions are happening.
7.  The project name suggests that the intention is to perform RMS calculations on the acquired ADC data, although the provided code only shows the data acquisition part.
8.  The `_write` function is implemented to redirect `printf` output to the SWV (Serial Wire Viewer) ITM (Instrumentation Trace Macrocell) data console, which is a useful feature for debugging.

## How to Use 🤔

1.  **Hardware Setup:**
    *   This project is designed for the STM32F746G-DISCO board. No external components are required for this basic test.
2.  **Software:**
    *   Use an IDE that supports SWV, such as STM32CubeIDE.
    *   Open the SWV ITM Data Console to view the `printf` output.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-DISCO board.
    *   Run the debugger and open the SWV ITM Data Console.
    *   You should see the output of the `printf` statements in the console.
    *   You can connect an oscilloscope to the `ARDUINO_D8_Pin` to visualize the ADC conversion rate.
