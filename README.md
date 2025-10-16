# 🚀 STM32 MCU Projects

This repository is a collection of various projects for STM32 microcontrollers, covering a wide range of applications from simple peripheral examples to complex systems involving real-time operating systems, communication protocols, and machine learning.

## 📂 Projects

Here is a list of the projects in this repository, with a brief description of each:

### ADC & Signal Processing

*   **`adc_curvefitting`**: A data acquisition system for temperature sensors (LM35 and thermistor) to be used for curve fitting.
*   **`adc_potentes_test_RMS`**: A test project for high-speed ADC sampling and RMS calculation on an STM32F7 discovery board.
*   **`ADC_rampa`**: An implementation of a ramp ADC with a 7-segment display and UART output for verification.
*   **`adc_rms_6ksampling`**: A project that calculates the RMS value of three analog signals at a 6kHz sampling rate.
*   **`ADC_SAR`**: An implementation of a Successive Approximation Register (SAR) ADC with a 7-segment display.
*   **`Factor_Potencia`**: A power factor measurement project that samples voltage and current to calculate the power factor.
*   **`fft_cmcis_display`**: A TouchGFX application that calculates and displays a Fast Fourier Transform (FFT) using the CMSIS-DSP library.
*   **`Frecuency_mesuarments`**: A frequency counter that uses the input capture feature of a timer.

### Communication

*   **`ASK_frecuency_measures`**: A simple ASK (Amplitude-Shift Keying) transmitter that generates a 150kHz carrier and transmits data over UART.
*   **`CAN_MCP2515`**: An example of how to use the MCP2515 CAN controller with an STM32F4 microcontroller.
*   **`CAN_transiver_ejemplo`**: A simple CAN communication project that demonstrates how to send and receive CAN messages using the built-in CAN peripheral of an STM32F1.
*   **`ethernet_1`**: A basic example of how to use the Ethernet peripheral on an STM32F7 with the LwIP stack.
*   **`MCP2515`**: Another project demonstrating the use of the MCP2515 CAN controller, this time with an STM32F7.

### Motor Control & Robotics

*   **`line_follower_speedy`**: A line follower robot with a PID controller, an IR sensor array, and Wi-Fi communication.

### GUI & Display

*   **`Bidireccional`**: A TouchGFX application for the STM32F746G-Discovery board with video playback capabilities.
*   **`TouchGFX`**: A folder containing TouchGFX projects.

### Audio

*   **`AUDIO_Standalone`**: A USB Audio Class implementation that allows you to use the STM32F746G-Discovery board as a USB speaker.

### Other

*   **`BSP`**: A comprehensive example that demonstrates how to use the Board Support Package (BSP) drivers for the STM32F746G-Discovery board.
*   **`Codigos_desktop`**: A collection of C code examples for DSP algorithms that can be run on a desktop computer.
*   **`Func_gen_mux`**: A 4-channel function generator with a multiplexer that uses PWM to generate waveforms.
*   **`heaters`**: A temperature control system for a set of heaters, likely for an application like a 3D printer extruder.
*   **`iris_plant`**: A machine learning application that classifies iris flowers using a model trained with Edge Impulse.

## 📝 To-Do

The following projects have not been documented yet:

*   `medidor_metereologico`
*   `modbus_tcp_ip`
*   `NEOPIXEL`
*   `ploteo_adc`
*   `pwm_disco`
*   `PWM_Slider`
*   `reflow_oven`
*   `Scanner_pixeles`
*   `senos_triangulos_neuronal_net`
*   `sensores_melchor`
*   `timmer_1`
*   `W25Q32JV_interface`