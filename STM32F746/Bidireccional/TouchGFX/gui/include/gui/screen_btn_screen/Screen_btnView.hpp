#ifndef SCREEN_BTNVIEW_HPP
#define SCREEN_BTNVIEW_HPP

#include <gui_generated/screen_btn_screen/Screen_btnViewBase.hpp>
#include <gui/screen_btn_screen/Screen_btnPresenter.hpp>

class Screen_btnView : public Screen_btnViewBase
{
public:
    Screen_btnView();
    virtual ~Screen_btnView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // SCREEN_BTNVIEW_HPP
