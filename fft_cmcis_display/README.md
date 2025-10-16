# 📈 FFT CMSIS Display Project

This project is a TouchGFX application for the STM32F746G-Discovery board that calculates and displays a Fast Fourier Transform (FFT) using the CMSIS-DSP library. It provides a graphical representation of the frequency spectrum of a signal.

## 🚀 Features

*   **FFT Calculation:** Calculates the FFT of a signal using the highly optimized CMSIS-DSP library.
*   **Graphical Display:** Displays the FFT result graphically on the LCD screen using the TouchGFX library.
*   **Real-Time Analysis:** Provides a real-time view of the frequency spectrum of a signal.
*   **TouchGFX GUI:** Built with the TouchGFX library for a modern and responsive user interface.
*   **FreeRTOS:** Uses the FreeRTOS real-time operating system to manage the application tasks.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **LTDC (LCD-TFT Display Controller):** Drives the 4.3-inch 480x272 TFT LCD on the discovery board.
*   **DMA2D (Chrom-ART Accelerator™):** Used for hardware-accelerated graphics operations.
*   **FMC (Flexible Memory Controller):** Manages the external SDRAM, which is used as a frame buffer.
*   **QUADSPI:** Used to interface with the external Quad-SPI flash memory.
*   **I2C3:** Communicates with the touchscreen controller.
*   **CRC:** The CRC (Cyclic Redundancy Check) peripheral is used for error checking.
*   **LIBJPEG:** The JPEG library is used for decoding JPEG images.
*   **FreeRTOS:** The application runs on the FreeRTOS real-time operating system.

## Application Logic 🧠

The application is structured around three FreeRTOS tasks:

1.  **`defaultTask`:** A low-priority task that does nothing.
2.  **`TouchGFXTask`:** The main task that runs the TouchGFX graphics engine. It's responsible for rendering the user interface, which includes the FFT graph, and handling user input from the touchscreen.
3.  **`videoTask`:** A task dedicated to video playback, although it may not be used in this specific application.

The `main.c` file initializes all the necessary peripherals. The FFT calculation is likely performed within the TouchGFX task, which then updates the graph on the screen.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
2.  **Software:**
    *   The project is configured for STM32CubeIDE, but you can also use EWARM or MDK-ARM.
    *   You will need to have the TouchGFX Designer installed to modify the user interface.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The graphical user interface will start automatically, displaying the FFT of a signal.
