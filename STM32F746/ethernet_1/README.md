# 🌐 Ethernet Project

This project is a basic example of how to use the Ethernet peripheral on an STM32F746NGHx microcontroller with the LwIP (Lightweight IP) stack. It provides a starting point for developing applications that require network connectivity.

## 🚀 Features

*   **Ethernet Connectivity:** Implements a basic Ethernet interface using the on-board PHY.
*   **LwIP Stack:** Uses the LwIP TCP/IP stack for network communication.
*   **Static IP:** The device is configured with a static IP address (`192.168.0.123`).
*   **RMII Interface:** The Ethernet peripheral is configured in RMII (Reduced Media-Independent Interface) mode.

## MCU & Board  बोर्ड

*   **MCU:** `STM32F746NGHx`
*   **Board:** STM32F746G-Discovery

## Peripherals Used ⚙️

*   **ETH:** The Ethernet MAC (Media Access Control) peripheral is used to handle the Ethernet communication.
*   **LwIP:** The LwIP TCP/IP stack is used to provide networking services.
*   **USART1:** Used for debugging and sending information to a computer.

## Application Logic 🧠

The application initializes the Ethernet peripheral and the LwIP stack. The `main` function is very simple and just initializes the necessary peripherals. The actual network communication is handled by the LwIP stack, which runs in the background. The stack is configured with a static IP address of `192.168.0.123`.

This project can be used as a foundation for building more complex networked applications, such as a web server, an FTP client, or an MQTT client.

## How to Use 🤔

1.  **Hardware Setup:**
    *   Connect an Ethernet cable to the Ethernet port on the STM32F746G-Discovery board.
    *   Connect the board to a network with a router or a switch.
2.  **Software:**
    *   Make sure your computer is on the same network as the board.
    *   You can try to ping the board from your computer to check if the connection is working:

        ```bash
        ping 192.168.0.123
        ```

3.  **Run:**
    *   Build and flash the project to the STM32F746G-Discovery board.
    *   The board will initialize the Ethernet interface and the LwIP stack.
    *   You should be able to ping the board from your computer.
