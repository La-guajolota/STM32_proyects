# 🚀 STM32 MCU Projects

This repository is a collection of various projects for STM32 microcontrollers, organized by MCU family. It covers a wide range of applications from simple peripheral examples to complex systems involving real-time operating systems, communication protocols, and machine learning.

## 📂 Project Structure

The projects are categorized into folders based on the MCU family:

*   **`STM32F103/`**: Projects for the STM32F1 series (e.g., Blue Pill).
*   **`STM32F411/`**: Projects for the STM32F4 series (e.g., Black Pill).
*   **`STM32F746/`**: Projects for the STM32F7 series (e.g., STM32F746G-Discovery).
*   **`Codigos_desktop/`**: C code examples for DSP algorithms that can be run on a desktop computer.

## 📝 Project List

### ADC & Signal Processing

*   **`adc_curvefitting`** (`STM32F411`): A data acquisition system for temperature sensors (LM35 and thermistor) to be used for curve fitting.
*   **`adc_potentes_test_RMS`** (`STM32F746`): A test project for high-speed ADC sampling and RMS calculation on an STM32F7 discovery board.
*   **`ADC_rampa`** (`STM32F411`): An implementation of a ramp ADC with a 7-segment display and UART output for verification.
*   **`adc_rms_6ksampling`** (`STM32F746`): A project that calculates the RMS value of three analog signals at a 6kHz sampling rate.
*   **`ADC_SAR`** (`STM32F411`): An implementation of a Successive Approximation Register (SAR) ADC with a 7-segment display.
*   **`Factor_Potencia`** (`STM32F411`): A power factor measurement project that samples voltage and current to calculate the power factor.
*   **`fft_cmcis_display`** (`STM32F746`): A TouchGFX application that calculates and displays a Fast Fourier Transform (FFT) using the CMSIS-DSP library.
*   **`Frecuency_mesuarments`** (`STM32F411`): A frequency counter that uses the input capture feature of a timer.
*   **`ploteo_adc`** (`STM32F746`): A TouchGFX application that demonstrates how to plot real-time ADC data on the screen.

### Communication

*   **`ASK_frecuency_measures`** (`STM32F411`): A simple ASK (Amplitude-Shift Keying) transmitter that generates a 150kHz carrier and transmits data over UART.
*   **`CAN_MCP2515`** (`STM32F411`): An example of how to use the MCP2515 CAN controller with an STM32F4 microcontroller.
*   **`CAN_transiver_ejemplo`** (`STM32F103`): A simple CAN communication project that demonstrates how to send and receive CAN messages using the built-in CAN peripheral of an STM32F1.
*   **`ethernet_1`** (`STM32F746`): A basic example of how to use the Ethernet peripheral on an STM32F7 with the LwIP stack.
*   **`MCP2515`** (`STM32F746`): Another project demonstrating the use of the MCP2515 CAN controller, this time with an STM32F7.
*   **`modbus_tcp_ip`** (`STM32F746`): Implements the Modbus TCP/IP protocol using the LwIP stack and FreeRTOS.

### Motor Control & Robotics

*   **`line_follower_speedy`** (`STM32F411`): A line follower robot with a PID controller, an IR sensor array, and Wi-Fi communication.

### GUI & Display

*   **`Bidireccional`** (`STM32F746`): A TouchGFX application for the STM32F746G-Discovery board with video playback capabilities.
*   **`TouchGFX`** (`STM32F746`): A folder containing TouchGFX projects.
*   **`PWM_Slider`** (`STM32F746`): A TouchGFX application that uses a slider to control the duty cycle of a PWM signal.
*   **`pwm_disco`** (`STM32F746`): A project that uses PWM to control lights or other devices on the STM32F7 Discovery board.

### Audio

*   **`AUDIO_Standalone`** (`STM32F746`): A USB Audio Class implementation that allows you to use the STM32F746G-Discovery board as a USB speaker.

### Other

*   **`BSP`** (`STM32F746`): A comprehensive example that demonstrates how to use the Board Support Package (BSP) drivers for the STM32F746G-Discovery board.
*   **`Codigos_desktop`**: A collection of C code examples for DSP algorithms that can be run on a desktop computer.
*   **`Func_gen_mux`** (`STM32F411`): A 4-channel function generator with a multiplexer that uses PWM to generate waveforms.
*   **`heaters`** (`STM32F411`): A temperature control system for a set of heaters using PID controllers and MAX6675 thermocouples.
*   **`iris_plant`** (`STM32F746`): A machine learning application that classifies iris flowers using a model trained with Edge Impulse.
*   **`medidor_metereologico`** (`STM32F103`): A weather station that measures temperature, humidity, and light, and displays data on an OLED screen.
*   **`NEOPIXEL`** (`STM32F411`): A driver for controlling WS2812B (NeoPixel) addressable LEDs.
*   **`Scanner_pixeles`** (`STM32F411`): A simple pixel scanner that sends data to a computer over UART.
*   **`senos_triangulos_neuronal_net`** (`STM32F746`): A machine learning application that classifies waveforms as either sine or triangle waves.
*   **`sensores_melchor`** (`STM32F746`): A project for reading various sensors, likely for a specific application.
*   **`timmer_1`** (`STM32F746`): A basic project demonstrating the use of timers on the STM32F7.
*   **`freeRTO_bink`** (`STM32F411`): A basic FreeRTOS blink project template for the STM32F411.