#ifndef SCREEN_LEDPRESENTER_HPP
#define SCREEN_LEDPRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class Screen_ledView;

class Screen_ledPresenter : public touchgfx::Presenter, public ModelListener
{
public:
    Screen_ledPresenter(Screen_ledView& v);

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

    virtual ~Screen_ledPresenter() {}

private:
    Screen_ledPresenter();

    Screen_ledView& view;
};

#endif // SCREEN_LEDPRESENTER_HPP
