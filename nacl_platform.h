#include "ppapi/cpp/instance.h"
#include "ppapi/cpp/module.h"
#include "platform.h"
#include "application.h"
#include <stdio.h>
class NaclPlatform : public pp::Instance, public FruitClick::Platform
{
public:
    NaclPlatform(PP_Instance instance);
    virtual void HandleMessage(const pp::Var& var_message);

protected:
    virtual void drawImpl(FruitClick::Platform::Texture id, float x, float y, float angle);
    virtual void drawTextImpl(const char* text, float x, float y);
    virtual void playSoundImpl(FruitClick::Platform::Sound id);
    virtual void logImpl(const char* text);

private:
    FruitClick::Application m_app;
};

class FruitclickModule : public pp::Module
{
public:
    virtual pp::Instance* CreateInstance(PP_Instance instance);
};

namespace pp {
    Module* CreateModule();
}
