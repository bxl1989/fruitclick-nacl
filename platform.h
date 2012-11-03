#ifndef PLATFORM_H
#define PLATFORM_H

#include "export.h"

namespace FruitClick {

class FRUITCLICK_EXPORT Platform
{
public:

    enum Texture
    {
        APPLE = 0,
        BACKGROUND
    };

    static void drawBegin();
    static void drawEnd();
    static void draw(Texture id, float x, float y, float angle = 0);
    static void drawText(const char* text, float x, float y);

    enum Sound
    {
        CRUNCH = 0,
        CRASH
    };

    static void playSound(Sound id);
    static void log(const char* text);

protected:
    static void set(Platform* concretePlatform);

protected:
    virtual void drawBeginImpl() {}
    virtual void drawEndImpl() {}
    virtual void drawImpl(Texture id, float x, float y, float angle) = 0;
    virtual void drawTextImpl(const char* text, float x, float y) = 0;
    virtual void playSoundImpl(Sound id) = 0;
    virtual void logImpl(const char* text) = 0;

protected:
    static Platform* ms_platform;
};

}

#endif
