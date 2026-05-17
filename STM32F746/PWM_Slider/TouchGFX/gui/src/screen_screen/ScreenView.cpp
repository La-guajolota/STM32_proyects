#include <gui/screen_screen/ScreenView.hpp>

ScreenView::ScreenView()
{

}

void ScreenView::setupScreen()
{
    ScreenViewBase::setupScreen();
}

void ScreenView::tearDownScreen()
{
    ScreenViewBase::tearDownScreen();
}

/*
 * Creamos un metodo para el cambio
 * del duty cycle del led
 */

void ScreenView::circulo_pwm_fun(int value)
{
	presenter->circulo_pwm_fun(value);

	circle.setAlpha(value);
	circle.invalidate();
}
