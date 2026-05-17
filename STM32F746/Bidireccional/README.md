# 🎨 TouchGFX Bidirectional Project

This project is a TouchGFX application for the STM32F746G-Discovery board. It showcases a graphical user interface with video playback capabilities, running on the FreeRTOS real-time operating system.

## 🚀 Features

*   **Rich Graphical User Interface:** Built with the TouchGFX library, this application provides a modern and responsive user interface.
*   **Video Playback:** The project includes a task for video playback, demonstrating the multimedia capabilities of the STM32F746G-Discovery board.
*   **Real-Time Operating System:** Uses FreeRTOS to manage multiple tasks, ensuring smooth and reliable operation.
*   **Performance Monitoring:** The application is configured to output performance metrics on GPIO pins, allowing you to measure VSYNC frequency, render time, frame rate, and MCU activity.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **LTDC (LCD-TFT Display Controller):** Drives the 4.3-inch 480x272 TFT LCD on the discovery board.
*   **DMA2D (Chrom-ART Accelerator™):** Used for hardware-accelerated graphics operations, offloading the CPU and improving performance.
*   **FMC (Flexible Memory Controller):** Manages the external SDRAM, which is used as a frame buffer for the display.
*   **QUADSPI:** Used to interface with the external Quad-SPI flash memory, which can be used to store graphical assets.
*   **I2C3:** Communicates with the touchscreen controller to get user input.
*   **LIBJPEG:** The JPEG library is used for decoding JPEG images, which can be used in the GUI.
*   **CRC:** The CRC (Cyclic Redundancy Check) peripheral is used for error checking.
*   **FreeRTOS:** The application runs on the FreeRTOS real-time operating system.

## Application Logic 🧠

The application is structured around three FreeRTOS tasks:

1.  **`defaultTask`:** A low-priority task that does nothing.
2.  **`TouchGFXTask`:** The main task that runs the TouchGFX graphics engine. It's responsible for rendering the user interface and handling user input from the touchscreen.
3.  **`videoTask`:** A task dedicated to video playback. It decodes and displays video frames on the screen.

The `main.c` file initializes all the necessary peripherals, including the display, memory, and touchscreen. It then creates the three tasks and starts the FreeRTOS scheduler. The TouchGFX library and the video playback code handle the rest of the application logic.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
2.  **Software:**
    *   The project is configured for STM32CubeIDE, but you can also use EWARM or MDK-ARM.
    *   You will need to have the TouchGFX Designer installed to modify the user interface.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The graphical user interface will start automatically.
    *   You can interact with the application using the touchscreen.
4.  **Performance Measurement:**
    *   You can use an oscilloscope to monitor the performance of the application on the following GPIO pins:
        *   `PB4` (D3): VSYNC frequency
        *   `PC6` (D1): Render time
        *   `PC7` (D0): Frame rate
        *   `PG6` (D2): MCU active
