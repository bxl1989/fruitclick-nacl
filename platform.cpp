#include "platform.h"

namespace FruitClick {

Platform* Platform::ms_platform;

void Platform::drawBegin()
{
    ms_platform->drawBeginImpl();
}

void Platform::drawEnd()
{
    ms_platform->drawEndImpl();
}

void Platform::draw(Texture id, float x, float y, float angle)
{
    ms_platform->drawImpl(id, x, y, angle);
}

void Platform::drawText(const char *text, float x, float y)
{
    ms_platform->drawTextImpl(text, x, y);
}

void Platform::playSound(Sound id)
{
    ms_platform->playSoundImpl(id);
}

void Platform::set(Platform *concretePlatform)
{
    ms_platform = concretePlatform;
}

void Platform::log(const char *text)
{
    ms_platform->logImpl(text);
}

}
