#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <time.h>

/*
DEFINES
*/
#define pi 3.1416
#define f 60.0
#define off_set 2.5
#define off_set_dig ((off_set / 3.3) * 4095.0)
#define ampli 0.180

#define SANPLING_FREQ 9000 // 9khz

#define r 0.05 // ruido

/*
PROTOTIPADOS
*/
// ADC y Sensor
void gen_signal(float *nousy_sig, unsigned int size);
void gen_disc(float *nousy_sig, int size, uint16_t *sig_dig);
float ruido(float min, float max);

// DSP
void mov_filter(uint16_t *sig_dig, unsigned int size, uint8_t window, uint16_t *filter_out);
float rms(uint16_t *input_sig, int size);

int main()
{
    srand(time(NULL)); // Semilla de numeros aleatoreos

    /*
    SENSOR OUTPUT SIMULATION
    */
    float sig_sensor[SANPLING_FREQ];

    gen_signal(sig_sensor, SANPLING_FREQ); // Generamos señal de un sensor

    /*
    MCU PROCESO
    */
    uint16_t adc_lec[100];
    uint16_t filter_out[SANPLING_FREQ];

    gen_disc(sig_sensor, SANPLING_FREQ, adc_lec);       // sampliamos en muestras digitales
    mov_filter(adc_lec, SANPLING_FREQ, 50, filter_out); // aplicamos filtro de media movil
    float Sensor_rms = rms(filter_out, SANPLING_FREQ);  // Calculamos RMS

    /*
    SALIDA A CONSOLA
    */
    // Pasamos el valor segun el senosr
    /*
    Sensor_rms *= 1.414; // Voltaje pico
    Sensor_rms /= 0.066; // 0.066mV/Amps
    Sensor_rms *= 0.707; // rms Sensors corrientes
    */
    printf("%f\n", Sensor_rms / 0.066);

    return 0;
}

/*
DEFINICIONES
*/

float rms(uint16_t *input_sig, int size)
{
    float val = 0;
    float volt = 0;

    // Implementamos la integral
    for (unsigned int i = 0; i < size; i++)
    {
        volt = ((float)(input_sig[i] - off_set_dig)) * (3.3 / 4095.0);

        /*
        De acuredo aun senonsor x
        */
        // volt /= 0.066; // 66mA/A

        val += (volt * volt) / size;
    }

    val = sqrtf(val);
    // printf("%f\n", val);
    return val;
}

float ruido(float min, float max)
{
    return min + (rand() / (float)RAND_MAX) * (max - min);
}

void gen_signal(float *nousy_sig, unsigned int size)
{

    for (unsigned int i = 0; i < size; i++)
    {
        nousy_sig[i] = ampli * sinf(2.0 * pi * f * ((float)i / (float)size)) + off_set + ruido(-r, r);
        // printf("%f\n", nousy_sig[i]);
    }
}

void gen_disc(float *nousy_sig, int size, uint16_t *sig_dig)
{

    for (size_t i = 0; i < size; i++)
    {
        sig_dig[i] = (uint16_t)round(nousy_sig[i] * (4095.0 / 3.3));
        // printf("%d\n", sig_dig[i]);
    }
}

void mov_filter(uint16_t *sig_dig, unsigned int size, uint8_t window, uint16_t *filter_out)
{
    /*
    100 'MOVING AVERAGE FILTER
    110 'This program filters 5000 samples with a 101 point moving
    120 'average filter, resulting in 4900 samples of filtered data.
    130 '
    140 DIM X[4999] 'X[ ] holds the input signal
    150 DIM Y[4999] 'Y[ ] holds the output signal
    160 '
    170 GOSUB XXXX 'Mythical subroutine to load X[ ]
    180 '
    190 FOR I% = 50 TO 4949 'Loop for each point in the output signal
    200     Y[I%] = 0 'Zero, so it can be used as an accumulator
    210     FOR J% = -50 TO 50 'Calculate the summation
    220         Y[I%] = Y[I%] + X(I%+J%]
    230     NEXT J%
    240     Y[I%] = Y[I%]/101 'Complete the average by dividing
    250 NEXT I%
    260 '
    270 END
    */

    uint32_t out; // acomulador
    unsigned int i, j;

    for (i = 0; i < size; i++) // output signal
    {
        out = 0;
        for (j = 0; j < window && i + j < size; j++) // media por tyamaño de ventana
        {
            out += sig_dig[i + j] / window;
        }
        filter_out[i] = out; // Dato filtrado
        // printf("%d\n", out);
    }
}