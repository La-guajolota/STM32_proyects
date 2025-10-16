# 🌈 NeoPixel Controller Project

This project is a driver for controlling NeoPixel (WS2812B) addressable LEDs using an STM32F411CEUx microcontroller. It uses a timer and PWM to generate the precise timing required by the NeoPixel protocol.

## 🚀 Features

*   **NeoPixel Control:** Provides a driver for controlling WS2812B addressable LEDs.
*   **PWM-based:** Uses a timer and PWM to generate the signal for the NeoPixels.
*   **Efficient and Non-blocking:** The use of hardware timers and PWM makes the driver efficient and non-blocking.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM1:** Configured to generate a PWM signal on channel 4, which is used to create the data signal for the NeoPixel LEDs.
    *   `PA11`: TIM1_CH4 (NeoPixel data line)

## Application Logic 🧠

The project uses `TIM1` to generate the specific waveform required by the WS2812B LEDs. The NeoPixel protocol is based on a single wire with a specific timing for the high and low pulses to represent a `0` or a `1`.

This project sets up the timer to generate a PWM signal with the correct frequency. To send data to the NeoPixels, you would typically create an array of color data and then use the timer's DMA feature to send the data to the PWM channel. The different duty cycles of the PWM signal would represent the high and low pulses of the NeoPixel protocol.

While the `main.c` file in this project is empty, the timer configuration provides the foundation for a fully functional NeoPixel driver. You would need to add the logic to fill a buffer with the color data and then start the DMA transfer to the timer's capture/compare register.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the data input of your NeoPixel strip to the `PA11` pin.
    *   Make sure to provide a suitable power supply for the NeoPixel strip.
2.  **Software:**
    *   You will need to add the code to define the colors of your LEDs and to start the DMA transfer to the timer.
    *   A common approach is to have a buffer that holds the color data for all the LEDs and then use DMA to transfer this buffer to the `TIM1` capture/compare register.
3.  **Run:**
    *   Build and flash the project to the STM32F411CEUx microcontroller.
    *   The application will initialize the timer, and once you add the data transfer logic, it will drive the NeoPixel LEDs.
