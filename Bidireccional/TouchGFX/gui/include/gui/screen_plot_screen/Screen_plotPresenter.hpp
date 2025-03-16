#ifndef SCREEN_PLOTPRESENTER_HPP
#define SCREEN_PLOTPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class Screen_plotView;

class Screen_plotPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    Screen_plotPresenter(Screen_plotView& v);

    /**
     * The activate function is called automatically when this screen is "switched in"
     * (ie. made active). Initialization logic can be placed here.
     */
    virtual void activate();

    /**
     * The deactivate function is called automatically when this screen is "switched out"
     * (ie. made inactive). Teardown functionality can be placed here.
     */
    virtual void deactivate();

    virtual ~Screen_plotPresenter() {}

private:
    Screen_plotPresenter();

    Screen_plotView& view;
};

#endif // SCREEN_PLOTPRESENTER_HPP
