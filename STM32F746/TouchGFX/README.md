# 🎨 TouchGFX Demonstration Project

This project is a demonstration of the TouchGFX framework on the STM32F746G-Discovery board. It showcases various features and capabilities of the TouchGFX library for creating modern and responsive graphical user interfaces (GUIs) on embedded systems.

## 🚀 Features

The demonstration includes the following modules:

*   **Custom Controls:** Shows how to create and use custom UI controls.
*   **Easing Equations:** Demonstrates different easing equations for smooth animations.
*   **TouchGFX Presentation:** A presentation about the TouchGFX framework itself.
*   **Graphs and Pie Charts:** Shows how to create and display different types of graphs and charts.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

This project uses the following peripherals to run the TouchGFX application:

*   **LTDC (LCD-TFT Display Controller):** Drives the 4.3-inch 480x272 TFT LCD on the discovery board.
*   **DMA2D (Chrom-ART Accelerator™):** Used for hardware-accelerated graphics operations.
*   **FMC (Flexible Memory Controller):** Manages the external SDRAM, which is used as a frame buffer.
*   **I2C3:** Communicates with the touchscreen controller.

## Application Logic 🧠

The application is a collection of different screens, each demonstrating a specific feature of the TouchGFX framework. The user can navigate between the different screens using the touchscreen. The project is built on top of the TouchGFX framework, which handles the rendering of the GUI and the interaction with the user.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
2.  **Software:**
    *   The project is configured for SW4STM32 (System Workbench for STM32), but it can be adapted to other toolchains like STM32CubeIDE, EWARM, or MDK-ARM.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The TouchGFX demonstration will start automatically.
    *   You can explore the different features by navigating through the screens using the touchscreen.
