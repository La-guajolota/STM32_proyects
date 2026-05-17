#ifndef SCREEN_LEDVIEW_HPP
#define SCREEN_LEDVIEW_HPP

#include <gui_generated/screen_led_screen/Screen_ledViewBase.hpp>
#include <gui/screen_led_screen/Screen_ledPresenter.hpp>

class Screen_ledView : public Screen_ledViewBase
{
public:
    Screen_ledView();
    virtual ~Screen_ledView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // SCREEN_LEDVIEW_HPP
