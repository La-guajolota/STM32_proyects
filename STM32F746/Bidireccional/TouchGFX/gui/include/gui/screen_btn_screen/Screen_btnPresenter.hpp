#ifndef SCREEN_BTNPRESENTER_HPP
#define SCREEN_BTNPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class Screen_btnView;

class Screen_btnPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    Screen_btnPresenter(Screen_btnView& v);

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

    virtual ~Screen_btnPresenter() {}

private:
    Screen_btnPresenter();

    Screen_btnView& view;
};

#endif // SCREEN_BTNPRESENTER_HPP
