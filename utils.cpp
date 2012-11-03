#include "utils.h"
#include <cstdio>

namespace FruitClick {

char g_buffer[16];

const char* toString(int i)
{
    sprintf(g_buffer, "%d", i);
    return g_buffer;
}

float toWorld(float x)
{
    return x * 0.01f;
}

float toScreen(float x)
{
    return x * 100.0f;
}

}
