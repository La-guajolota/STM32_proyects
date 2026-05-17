#include <gui/screen_screen/ScreenView.hpp>
#include <gui/screen_screen/ScreenPresenter.hpp>

ScreenPresenter::ScreenPresenter(ScreenView& v)
    : view(v)
{

}

void ScreenPresenter::activate()
{

}

void ScreenPresenter::deactivate()
{

}

void ScreenPresenter::circulo_pwm_fun(int value)
{
	model->circulo_pwm_fun(value);

}
