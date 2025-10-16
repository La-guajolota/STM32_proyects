# 📈 Waveform Classification Project

This project is a machine learning application that classifies waveforms as either sine or triangle waves. It uses a neural network model trained with Edge Impulse and runs on an STM32F746NGHx microcontroller, likely on an STM32F746G-Discovery board.

## 🚀 Features

*   **Machine Learning:** Uses a neural network to classify waveforms.
*   **Edge Impulse:** The machine learning model is trained and deployed using the Edge Impulse platform.
*   **Real-Time Inference:** Performs real-time inference on the microcontroller to classify the waveforms.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals & Software Used ⚙️

*   **USART1:** Used for communication with a computer, likely to input the waveform data and to output the classification result.
*   **Edge Impulse:** The project integrates a machine learning model trained and deployed using the Edge Impulse platform.

## Application Logic 🧠

Although the `main.c` file is missing, the application logic can be inferred from the project's name and the `.ioc` file. Here's how it likely works:

1.  **Input:** The application receives a buffer of data representing a waveform. This data could be acquired from an ADC or sent from a computer over UART.
2.  **Inference:** The input data is fed into the Edge Impulse machine learning model. The model processes the data and outputs a probability for each class (sine or triangle).
3.  **Output:** The application determines the most likely waveform based on the model's output and sends the classification result back to the computer over UART.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to the `PA9` and `PB7` pins of the board.
2.  **Software:**
    *   You will need a way to send waveform data to the board, either by generating it on the board itself using a DAC or by sending it from a computer over UART.
    *   Open a serial terminal on your computer to view the classification results.
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   Send the waveform data to the board.
    *   The application will classify the waveform and send the result to the serial terminal.
