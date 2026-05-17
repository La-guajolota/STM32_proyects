# 🎵 USB Audio Standalone Project

This project demonstrates how to stream audio from a USB host (like a PC) to the STM32F746G-Discovery board. It implements the USB Audio Device Class 1.0, allowing you to use the board as a USB speaker without any special drivers.

## 🚀 Features

*   **USB Audio Streaming:** Streams audio from a USB host to the board's audio codec.
*   **Standard USB Audio Class:** Implements the USB Audio Device Class 1.0, which is natively supported by most operating systems.
*   **High-Quality Audio:** Supports PCM audio with a 48KHz sampling rate, 16-bit resolution, and 2 channels.
*   **Mute/Unmute:** Includes mute and unmute functionality.
*   **Asynchronous Endpoints:** Uses asynchronous endpoints for reliable audio streaming.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **USB OTG FS:** The Full-Speed USB On-The-Go peripheral is used to communicate with the USB host.
*   **SAI (Serial Audio Interface):** The SAI peripheral is used to send the audio data to the on-board audio codec.
*   **PLLI2S:** A dedicated PLL (Phase-Locked Loop) is used to generate the accurate clock signal required for the audio codec.

## Application Logic 🧠

The application works as follows:

1.  **Initialization:** The `main` function initializes the MPU, CPU cache, HAL, system clock, and LEDs. It then initializes the USB device library and registers the AUDIO class.
2.  **USB Communication:** The USB library handles the communication with the USB host. When the host sends audio data, the library receives it and passes it to the audio interface.
3.  **Audio Interface:** The `usbd_audio_if.c` file contains the implementation of the audio interface. It receives the audio data from the USB library and sends it to the SAI peripheral.
4.  **Audio Output:** The SAI peripheral sends the audio data to the on-board audio codec, which converts it to an analog signal and plays it through the headphones or speakers connected to the board.
5.  **Synchronization:** To overcome the clock domain differences between the USB host and the STM32, an Add-Remove synchronization mechanism is implemented. This mechanism adds or removes an audio sample periodically to keep the audio stream in sync.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect the STM32F746G-Discovery board to your PC using a USB micro A-Male to A-Male cable connected to the `CN13` USB FS connector.
    *   Plug a headset or speakers into the `CN10` audio jack.
2.  **Software:**
    *   No special drivers are needed. The board will be recognized as a standard USB audio device.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   Open your favorite audio player on your PC and play some music.
    *   The audio should play through the headset or speakers connected to the board.
