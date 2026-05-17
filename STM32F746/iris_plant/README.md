# 🌺 Iris Plant Classification Project

This project is a machine learning application that classifies iris flowers using a model trained with Edge Impulse. It runs on an STM32F746NGHx microcontroller, likely on an STM32F746G-Discovery board.

## 🚀 Features

*   **Machine Learning:** Uses a neural network to classify iris flowers into three species: setosa, versicolor, and virginica.
*   **Edge Impulse:** The machine learning model is trained and deployed using the Edge Impulse platform.
*   **Real-Time Inference:** Performs real-time inference on the microcontroller to classify the flowers based on their sepal and petal dimensions.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals & Software Used ⚙️

*   **USART1:** Used for communication with a computer, likely to input the flower dimensions and to output the classification result.
*   **Edge Impulse:** The project integrates a machine learning model trained and deployed using the Edge Impulse platform.

## Application Logic 🧠

Although the `main.c` file is missing, the application logic can be inferred from the project's name and the `.ioc` file. Here's how it likely works:

1.  **Input:** The application receives the sepal length, sepal width, petal length, and petal width of an iris flower as input. This data is likely sent from a computer over UART.
2.  **Inference:** The input data is fed into the Edge Impulse machine learning model. The model processes the data and outputs a probability for each of the three iris species.
3.  **Output:** The application determines the most likely species based on the model's output and sends the classification result back to the computer over UART.

## How to Use 🤔

1.  **Hardware Setup:**
    *   You need an STM32F746G-Discovery board.
    *   Connect the `TX` and `RX` pins of a USB-to-UART converter to the `PA9` and `PB7` pins of the board.
2.  **Software:**
    *   Open a serial terminal on your computer.
    *   Configure the serial port with the following settings:
        *   **Baud Rate:** 115200
        *   **Data Bits:** 8
        *   **Parity:** None
        *   **Stop Bits:** 1
3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   Send the sepal and petal dimensions of an iris flower over the serial port in the format expected by the application.
    *   The application will respond with the predicted iris species.
