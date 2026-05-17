#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>

//Para el timer del pwm
#include "stm32f7xx_hal.h"
extern TIM_HandleTypeDef htim2;

Model::Model() : modelListener(0)
{

}

void Model::tick()
{

}

void Model::circulo_pwm_fun(int value)
{
	//Actualizamos el dutycycle
	__HAL_TIM_SET_COMPARE(&htim2,TIM_CHANNEL_1,value);

}
