# ⚡️ ADC RMS 6k Sampling Project

This project demonstrates how to calculate the RMS (Root Mean Square) value of three analog signals using an STM32F746NGHx microcontroller, likely on an STM32F746G-DISCO board. It samples three ADC channels at a rate of 6kHz and calculates the RMS value for each channel.

## MCU & Board MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-DISCO

## Peripherals Used ⚙️

*   **ADC3:** Configured to sample three analog channels.
    *   `PF6` (ADC3_IN4)
    *   `PF7` (ADC3_IN5)
    *   `PF8` (ADC3_IN6)
*   **TIM7:** Used to create a 166µs delay, which results in a sampling frequency of approximately 6kHz.
*   **USART1:** Used to transmit the calculated RMS values to a computer.
*   **GPIO:** A GPIO pin (`ARDUINO_D8_Pin`) is toggled at each sampling event, which can be used for debugging.

## Application Logic 🧠

The application performs the following steps:

1.  **Sampling:** It acquires 6000 samples from each of the three ADC channels at a frequency of 6kHz. A delay of 166µs is generated using `TIM7` to achieve this sampling rate.
2.  **Filtering:** An Exponential Moving Average (EMA) filter is applied to the ADC readings to smooth out the signal. A custom library `LP_EMA.h` is used for this purpose.
3.  **RMS Calculation:** The RMS value for each channel is calculated using the following steps:
    *   The ADC reading is converted to a voltage value.
    *   The square of the voltage is calculated.
    *   The squared values are accumulated.
    *   The mean of the accumulated values is calculated.
    *   The square root of the mean is taken to get the RMS value.
4.  **UART Transmission:** The calculated RMS values for the three channels are sent over `USART1` to a computer for display and analysis.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect your analog signals to the ADC input pins: `PF6`, `PF7`, and `PF8`.
    *   Connect the `TX` pin of a USB-to-UART converter to `PA9`.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 115200
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Power on the STM32 board.
    *   The calculated RMS values will be printed on the serial terminal in the format: `rms1 rms2 rms3\r\n`.
    *   You can connect an oscilloscope to the `ARDUINO_D8_Pin` to verify the 6kHz sampling frequency.
