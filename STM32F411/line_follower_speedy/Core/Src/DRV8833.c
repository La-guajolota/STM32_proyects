/*
 * DRV8833.c
 *
 *  Created on: Feb 3, 2025
 *      Author: Adrián Silva Palafox
 */
#include "DRV8833.h"

void sleep_driver(){
}

extern TIM_HandleTypeDef htim1;
void stop_motors(){
	// We stop both motors
	TIM1->CCR1=0;
	TIM1->CCR2=0;
	TIM1->CCR3=0;
	TIM1->CCR4=0;
}

/* It uses fast decay mode*/
void motorA(uint8_t state, uint8_t duty){

	switch (state) {
	    case stop: // Stop one motor
	    	TIM1->CCR1=0;
			TIM1->CCR2=0;
	    	break;
		case dir_a: // Change direction a and velocity
			TIM1->CCR1=0;
			TIM1->CCR2=duty;
			break;
		case dir_b: // Change direction b and velocity
			TIM1->CCR1=duty;
			TIM1->CCR2=0;
			break;
	}
}

/* It uses fast decay mode*/
void motorB(uint8_t state, uint8_t duty){
	switch (state) {
		    case stop: // Stop one motor
		    	TIM1->CCR3=0;
				TIM1->CCR4=0;
		    	break;
			case dir_a: // Change direction a and velocity
				TIM1->CCR3=0;
				TIM1->CCR4=duty;
				break;
			case dir_b: // Change direction b and velocity
				TIM1->CCR3=duty;
				TIM1->CCR4=0;
				break;
		}
}

void motors(uint8_t state, uint8_t duty){
	switch (state) {
		    case stop: // Stop one motor
		    	stop_motors();
		    	break;
			case dir_a: // Change direction a and velocity
				TIM1->CCR3=0;
				TIM1->CCR4=duty;
				TIM1->CCR1=duty;
				TIM1->CCR2=0;
				break;
			case dir_b: // Change direction b and velocity
				TIM1->CCR3=duty;
				TIM1->CCR4=0;
				TIM1->CCR3=0;
				TIM1->CCR4=duty;
			case dir_c:
				TIM1->CCR3=0;
				TIM1->CCR4=duty;
				TIM1->CCR3=0;
				TIM1->CCR4=duty;
				break;
		}
}
