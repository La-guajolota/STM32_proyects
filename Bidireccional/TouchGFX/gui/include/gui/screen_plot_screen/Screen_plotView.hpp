#ifndef SCREEN_PLOTVIEW_HPP
#define SCREEN_PLOTVIEW_HPP

#include <gui_generated/screen_plot_screen/Screen_plotViewBase.hpp>
#include <gui/screen_plot_screen/Screen_plotPresenter.hpp>

class Screen_plotView : public Screen_plotViewBase
{
public:
    Screen_plotView();
    virtual ~Screen_plotView() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // SCREEN_PLOTVIEW_HPP
