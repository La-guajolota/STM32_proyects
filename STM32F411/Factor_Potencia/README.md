# ⚡️ Power Factor Measurement Project

This project measures the power factor of an AC signal using an STM32F411CEUx microcontroller. It samples both the voltage and current waveforms and calculates the power factor, as well as the RMS voltage, RMS current, and apparent power.

## 🚀 Features

*   **Power Factor Measurement:** Calculates the power factor of an AC signal.
*   **Simultaneous Sampling:** Samples both voltage and current waveforms simultaneously using the ADC with DMA.
*   **RMS Calculation:** Calculates the RMS values of the voltage and current.
*   **Apparent Power Calculation:** Calculates the apparent power.
*   **UART Output:** Sends the calculated values to a computer over UART for display and analysis.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **ADC1:** Two channels are used to sample the voltage and current waveforms.
    *   `PB0`: Voltage input
    *   `PB1`: Current input
*   **DMA:** Used to transfer the ADC data from the peripheral to memory without CPU intervention.
*   **TIM2:** Configured as a trigger for the ADC, ensuring a constant sampling rate.
*   **TIM3:** Used for input capture, which can be used for frequency measurement (not fully implemented in this example).
*   **USART2:** Used to transmit the calculated power factor and other values to a computer.

## Application Logic 🧠

The application performs the following steps:

1.  **Initialization:** The `main` function initializes the ADC with DMA, timers, and USART.
2.  **Sampling:** The ADC is triggered by `TIM2` to sample the voltage and current channels at a constant rate. The DMA is used to transfer the ADC data to a buffer in memory.
3.  **Calculation:** The `HAL_ADC_ConvCpltCallback` function is called when the DMA transfer is complete. In the main loop, the application processes the collected samples to calculate:
    *   RMS Voltage
    *   RMS Current
    *   Apparent Power (Vrms * Irms)
    *   Active Power (the average of the instantaneous power)
    *   Power Factor (Active Power / Apparent Power)
4.  **Output:** The calculated values are sent over UART to a computer.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect a voltage sensor to `PB0` and a current sensor to `PB1`.
    *   Make sure the analog signals are properly conditioned (e.g., scaled and offset) to be within the ADC's input range.
    *   Connect the `TX` pin of a USB-to-UART converter to `PA2`.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 1000000
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Power on the STM32 board.
    *   The application will start sampling the voltage and current and will send the calculated power factor and other values to the serial terminal.
