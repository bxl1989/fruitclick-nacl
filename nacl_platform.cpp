#include "nacl_platform.h"
#include "ppapi/cpp/var.h"
#include <sstream>
#include <ctime>

const char* sep = "|";

NaclPlatform::NaclPlatform(PP_Instance instance)
: pp::Instance(instance)
{
    FruitClick::Platform::set(this);
}

void NaclPlatform::HandleMessage(const pp::Var& var)
{
    if (!var.is_string())
        return;

    std::stringstream stream(var.AsString());
    std::string type;
    stream >> type;
    if (type == "render")
    {
        m_app.render();
    }
    else if (type == "touch")
    {
        int x;
        int y;
        stream >> x >> y;
        m_app.touch(x, y);
    }
}

void NaclPlatform::drawImpl(FruitClick::Platform::Texture id, float x, float y, float angle)
{
    std::stringstream stream;
    stream << "draw" << sep << id << sep << x << sep << y << sep << angle;
    PostMessage(pp::Var(stream.str()));
}

void NaclPlatform::drawTextImpl(const char* text, float x, float y)
{
    std::stringstream stream;
    stream << "drawText" << sep << text << sep << x << sep << y;
    PostMessage(pp::Var(stream.str()));
}

void NaclPlatform::playSoundImpl(FruitClick::Platform::Sound id)
{
    std::stringstream stream;
    stream << "playSound" << sep << id;
    PostMessage(pp::Var(stream.str()));
}

void NaclPlatform::logImpl(const char* text)
{
    time_t currTime = time(NULL);
    std::string message(ctime(&currTime));
    message += ": ";
    message += text;
    std::stringstream stream;
    stream << "log" << sep << message;
    PostMessage(pp::Var(stream.str()));
}

pp::Instance* FruitclickModule::CreateInstance(PP_Instance instance)
{
    return new NaclPlatform(instance);
}

namespace pp {
    Module* CreateModule() {
        return new FruitclickModule();
    }
}
