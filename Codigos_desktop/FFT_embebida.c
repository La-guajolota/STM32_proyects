// Online C compiler to run C program online
#include <stdio.h>
#include <math.h>
#include <stdint.h>

#define PI 3.1416

void signal_generator_sine(float *output_signal, uint8_t N)
{
    for (uint8_t n = 0; n < N; n++)
    {
        float t = (float)((float)n / (float)N);
        output_signal[n] = sin(2.0 * PI * 1.0 * t);
        // printf("%f\t", output_signal[n]);
    }
}

void DFT(float *input_signal, float *magnitude, uint8_t N)
{
    // uint8_t N = sizeof(input_signal) / sizeof(float);
    float real_part[N];
    float imag_part[N];
    float angle = 0.0;

    for (uint8_t k = 0; k < N; k++)
    {
        for (uint8_t n = 0; n < N; n++)
        {
            angle = (2 * PI * (float)k * (float)n) / (float)N;
            real_part[k] += input_signal[n] * cos(angle);
            imag_part[k] -= input_signal[n] * sin(angle);
        }
    }

    for (uint8_t k = 0; k < N; k++)
    {
        magnitude[k] = sqrt(pow(real_part[k], 2) + pow(imag_part[k], 2));
    }
}

int main()
{
    float signal_sine[8];
    float fourier[8];

    signal_generator_sine(signal_sine, 8);
    DFT(signal_sine, fourier, 8);
    for (uint8_t i = 0; i < 8; i++)
    {
        printf("%f\t", fourier[i]);
    }

    return 0;
}