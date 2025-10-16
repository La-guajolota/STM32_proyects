# 🖥️ Desktop C Codes

This folder contains C code examples for digital signal processing (DSP) algorithms that can be run on a desktop computer. These examples are useful for testing and understanding the algorithms before implementing them on an embedded system.

## Files

### `FFT_embebida.c`

This file implements a Discrete Fourier Transform (DFT). It includes the following functions:

*   `signal_generator_sine()`: Generates a sine wave.
*   `DFT()`: Calculates the DFT of a given signal.

The `main` function demonstrates how to use these functions by generating a sine wave, calculating its DFT, and printing the magnitude of the DFT components.

### `promediador_movil.c`

This file implements a moving average filter and an RMS (Root Mean Square) calculation. It includes the following functions:

*   `gen_signal()`: Generates a noisy sine wave.
*   `gen_disc()`: Simulates an ADC by digitizing the analog signal.
*   `mov_filter()`: Applies a moving average filter to the digitized signal.
*   `rms()`: Calculates the RMS value of the filtered signal.

The `main` function demonstrates the entire process of generating a noisy signal, filtering it, and calculating its RMS value.

### `promediador_movil.exe`

This is the compiled executable of the `promediador_movil.c` file for Windows.

### `redes_pyhton`

This folder likely contains Python scripts related to neural networks.

## How to Use 🤔

1.  **Compile:** You can compile the C files using a C compiler like GCC:

    ```bash
    gcc FFT_embebida.c -o FFT_embebida -lm
    gcc promediador_movil.c -o promediador_movil -lm
    ```

2.  **Run:** You can then run the compiled executables from the command line:

    ```bash
    ./FFT_embebida
    ./promediador_movil
    ```
