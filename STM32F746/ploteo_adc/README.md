# 📈 ADC Plotting Project

This project is a TouchGFX application for the STM32F746G-Discovery board that demonstrates how to plot real-time ADC data on the screen. It provides a simple and intuitive way to visualize analog signals.

## 🚀 Features

*   **Real-time ADC Plotting:** Samples an analog signal using the ADC and plots the data in real-time on the LCD screen.
*   **TouchGFX GUI:** Built with the TouchGFX library for a modern and responsive user interface.
*   **FreeRTOS:** Uses the FreeRTOS real-time operating system to manage the application tasks.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **ADC:** Used to sample the analog input signal.
*   **LTDC (LCD-TFT Display Controller):** Drives the 4.3-inch 480x272 TFT LCD on the discovery board.
*   **DMA2D (Chrom-ART Accelerator™):** Used for hardware-accelerated graphics operations.
*   **FMC (Flexible Memory Controller):** Manages the external SDRAM, which is used as a frame buffer.
*   **I2C3:** Communicates with the touchscreen controller.
*   **FreeRTOS:** The application runs on the FreeRTOS real-time operating system.

## Application Logic 🧠

The application is built on top of the FreeRTOS real-time operating system. The `main.c` file initializes all the necessary peripherals and then starts the FreeRTOS scheduler. The core logic of the application is implemented in the `TouchGFXTask`.

Here's how it likely works:

1.  **ADC Sampling:** A timer is used to trigger the ADC to sample the analog input at a constant rate.
2.  **Data Buffering:** The ADC data is stored in a buffer.
3.  **TouchGFX Task:** The `TouchGFXTask` reads the data from the buffer and uses the TouchGFX library to draw a graph of the ADC data on the screen.
4.  **Real-time Update:** The graph is updated in real-time, providing a live view of the analog signal.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   Connect an analog signal source to one of the ADC input pins on the board (e.g., `PA0`).
2.  **Software:**
    *   The project is configured for STM32CubeIDE, but you can also use EWARM or MDK-ARM.
    *   You will need to have the TouchGFX Designer installed to modify the user interface.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The graphical user interface will start automatically, displaying a real-time plot of the ADC data.
