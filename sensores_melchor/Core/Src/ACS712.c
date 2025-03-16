/*
 * ACS712.c
 *
 *  Created on: Apr 7, 2024
 *      Author: adria
 */

#include "ACS712.h"
#include "LP_EMA.h"

/*
 * Defines del periferico en uso
 */
//extern ADC_HandleTypeDef hadc3;
extern DMA_HandleTypeDef hdma_adc3;
extern TIM_HandleTypeDef htim5;
extern TIM_HandleTypeDef htim8;


#define micros &htim5 //uS
#define adc &hadc3

extern bool flag_dma;
extern uint32_t adc_lec[3];

extern FILTRO_EMA filter_F1;
extern FILTRO_EMA filter_F2;
extern FILTRO_EMA filter_F3;

/*
 * Defines para los calculos
 */

//FORM FACTOR
#define ACS712_FF_SINUS           0.707 //(1.0/sqrt(2))

#define ACS712_DEFAULT_FREQ       60 //hz
#define ACS712_DEFAULT_NOISE      21 //hz

#define mV_amps 0.066 //

#define midpoimt_0v 2.5 //volts
#define _microsAdjust 0.9986

/*
 * Equivalente a mcros()
 * Arduino
 *
 * __HAL_TIM_GET_COUNTER(&htim14)
 */

//  TYPE   mV per Ampere
//  5A        185.0
//  20A       100.0
//  30A        66.0 --El que tenemos
/*
	Sensor	mVperA	LSB 10bit	LSB 12bit	LSB 16bit
	5A		185		26.4 mA		6.6 mA		0.41 mA
	20A		100		48.9 mA		12.2 mA		0.76 mA
	30A		66		74.1 mA		18.5 mA		1.16 mA
*/

//ADC reading por cana/
uint16_t analogRead(uint8_t channel){

	while(flag_dma == false){
		//esperamos a que se capturen los datos
	}
	flag_dma = false;
	return adc_lec[channel];
}

//  FREQUENCY DETECTION
//  uses oversampling and averaging to minimize variation
//  blocks for substantial amount of time, depending on minimalFrequency
void ACS712_Frequency(ACS712* modulo,float minimalFrequency)
{
  uint16_t maximum = 0;
  uint16_t minimum = 0;
  maximum = minimum = analogRead(modulo->channel);

  //  determine maxima
  uint32_t timeOut = round(1000000.0 / minimalFrequency);
  __HAL_TIM_SET_COUNTER(micros,0);
  while (__HAL_TIM_GET_COUNTER(micros)< timeOut)
  {
	 uint16_t value = analogRead(modulo->channel);
    if (value > maximum) maximum = value;
    if (value < minimum) minimum = value;
  }

  //  calculate quarter points
  //  using quarter points is less noise prone than using one single midpoint
  uint16_t Q1 = (3 * minimum + maximum ) / 4;
  uint16_t Q3 = (minimum + 3 * maximum ) / 4;

  //  10x passing Quantile points
  //  wait for the right moment to start
  //  to prevent endless loop a timeout is checked.
  timeOut *= 10;
  __HAL_TIM_SET_COUNTER(micros,0);
  //  casting to int to keep compiler happy.
  while ((analogRead(modulo->channel) >  Q1) && (__HAL_TIM_GET_COUNTER(micros) < timeOut));
  while ((analogRead(modulo->channel) <= Q3) && (__HAL_TIM_GET_COUNTER(micros) < timeOut));
  __HAL_TIM_SET_COUNTER(micros,0);
  for (int i = 0; i < 10; i++)
  {
    while ((analogRead(modulo->channel) >  Q1) && (__HAL_TIM_GET_COUNTER(micros) < timeOut));
    while ((analogRead(modulo->channel) <= Q3) && (__HAL_TIM_GET_COUNTER(micros) < timeOut));
  }
  uint32_t stop = __HAL_TIM_GET_COUNTER(micros);

  //  calculate frequency
  float wavelength = stop;
  float frequency = 1e7 / wavelength;
  if (_microsAdjust != 1.0) frequency *= _microsAdjust;

  modulo->FRE = frequency;
}


void ACS712_RMS(ACS712* modulo){

	FILTRO_EMA* filt;
	switch (modulo->channel) {
		case 0:
			filt = &filter_F1;
			break;
		case 1:
			filt = &filter_F2;
			break;
		case 2:
			filt = &filter_F3;
			break;
		default:
			break;
	}

	uint16_t samples = 500;
	float adc_value, acc_load_current = 0, insts_current;
	double rms;

	HAL_TIM_Base_Start(&htim8); //INTERRUPCIONES PARA EL ADC
	for(int i=0;i<samples;i++){
		adc_value = EMA_update(filt,3.3*((analogRead(modulo->channel)-3102)/4095.0));
		insts_current = adc_value;// /mV_amps

		//RMS calculation
		acc_load_current -= (acc_load_current/samples);//Eliminamos un sample
		insts_current *= insts_current; //Cuadrado de corriente instante
		acc_load_current += insts_current; //sumatoria
	}
	HAL_TIM_Base_Stop(&htim8); //INTERRUPCIONES PARA EL ADC
	rms = (acc_load_current/samples); //Media cuadrada del valor
	rms = sqrt(rms); //cuadrado del promedio

	modulo->rms = rms;//Coregimos el error
}

void ACS712_sense(ACS712* modulo){

	//FRECUENCIA
	//ACS712_Frequency(modulo,1);

	//RMS
	ACS712_RMS(modulo);
}
