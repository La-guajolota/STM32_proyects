# 🤖 ADC SAR Project

This project implements a Successive Approximation Register (SAR) ADC on an STM32F411CEUx microcontroller. It uses a PWM signal as a simple DAC and a comparator to perform the analog-to-digital conversion. The result is displayed on a 7-segment display and sent over UART for verification.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM1:** Generates a PWM signal, which is used as a Digital-to-Analog Converter (DAC).
*   **TIM4:** Used as an encoder interface to select the ADC mode.
*   **ADC1:** The internal ADC of the MCU is used to read the same analog input as the SAR ADC, for comparison.
*   **USART6:** Transmits the ADC readings (both from the SAR ADC and the internal ADC) to a computer.
*   **GPIO:**
    *   A set of GPIOs are used to drive a 7-segment display.
    *   Other GPIOs are used for a multiplexer and a comparator input.

## Application Logic 🧠

The application implements a SAR ADC, which works as follows:

1.  **DAC:** A PWM signal from `TIM1` is used as a simple DAC. The duty cycle of the PWM signal is proportional to the digital value.
2.  **SAR Algorithm:** The `convert()` function implements the SAR algorithm. It's a binary search algorithm that determines the digital value of the analog input. It works by setting the bits of the DAC (PWM duty cycle) one by one, from the Most Significant Bit (MSB) to the Least Significant Bit (LSB). For each bit, it compares the DAC's output voltage with the analog input voltage using an external comparator. If the DAC's voltage is higher, the bit is cleared; otherwise, it remains set. This process is repeated for all the bits, and the final digital value is obtained.
3.  **Display:** The digital value is displayed on a 7-segment display using a custom library (`Seg7_mux.h`).
4.  **Mode Selection:** An encoder connected to `TIM4` is used to select between two modes:
    *   **Continuous Mode:** The ADC conversion is performed continuously.
    *   **Interrupt Mode:** The ADC conversion is triggered by an external interrupt.
5.  **Verification:** The application also reads the same analog input using the MCU's internal ADC (`ADC1`). Both the SAR ADC value and the internal ADC value are sent over `USART6` for comparison and analysis.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect an analog signal to the input of the SAR ADC (the comparator's input) and to the input of the internal ADC (`PA0`).
    *   Connect the PWM output (`PA8`) to the other input of the comparator.
    *   Connect the output of the comparator to `PA9`.
    *   Connect a 7-segment display to the corresponding GPIO pins.
    *   Connect an encoder to the `TIM4` pins (`PB6`, `PB7`).
    *   Connect the `TX` pin of a USB-to-UART converter to `PA11`.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 9600
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Power on the STM32 board.
    *   The ADC value will be displayed on the 7-segment display.
    *   The SAR ADC value and the internal ADC value will be printed on the serial terminal.
    *   You can turn the encoder to switch between continuous and interrupt-based conversion modes.
