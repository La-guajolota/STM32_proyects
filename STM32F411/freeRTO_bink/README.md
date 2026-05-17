# 🕒 FreeRTOS Blink Project

This project is a basic template that demonstrates how to set up and run FreeRTOS on an STM32F411CEUx microcontroller (Black Pill). It includes a single default task that performs a simple delay, serving as a starting point for more complex real-time applications.

## 🚀 Features

*   **FreeRTOS Integration:** Uses CMSIS-OS V2 (FreeRTOS) for task management.
*   **Default Task:** A pre-configured task (`StartDefaultTask`) that runs an infinite loop.
*   **GPIO Initialization:** Configures several pins for LEDs, including the built-in LED.

## MCU 🤖

*   **MCU:** `STM32F411CEUx`
*   **Family:** STM32F4

## Peripherals Used ⚙️

*   **TIM11:** Used as the timebase source for the HAL, which is a best practice when using FreeRTOS.
*   **GPIO:**
    *   `PC13`: Built-in LED (`builtIn_LED`).
    *   `PA8`: `led1`.
    *   `PA9`: `led2`.

## Application Logic 🧠

The application follows the standard FreeRTOS initialization flow:

1.  **Hardware Init:** The `main()` function initializes the HAL, configures the system clock, and initializes the GPIO pins.
2.  **Kernel Init:** The OS kernel is initialized using `osKernelInitialize()`.
3.  **Task Creation:** a single thread named `defaultTask` is created using `osThreadNew()`.
4.  **Scheduler Start:** The scheduler is started with `osKernelStart()`, passing control to the FreeRTOS kernel.
5.  **Default Task Execution:** The `StartDefaultTask` function runs indefinitely, calling `osDelay(1)` in each iteration.

This project is designed to be easily extended by adding more tasks, queues, semaphores, or mutexes in the `main.c` and `freertos.c` files.

## How to Use 🤔

1.  **Hardware Setup:**
    *   A standard STM32F411 "Black Pill" board can be used.
    *   The built-in LED is on `PC13`.
    *   Optional LEDs can be connected to `PA8` and `PA9`.
2.  **Run:**
    *   Build and flash the project to your STM32F411 microcontroller.
    *   The OS will start, and the default task will begin execution.
    *   You can modify `StartDefaultTask` to toggle the LEDs or perform other actions to verify it's working.
