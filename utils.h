#ifndef FRUITCLICK_BOX2D_H
#define FRUITCLICK_BOX2D_H

#include <Box2D/Box2D.h>

#define FRUITCLICK_WIDTH 320
#define FRUITCLICK_HEIGHT 480
#define FRUITCLICK_APPLE_RADIUS 25
#define TO_DEG 57.29f

namespace FruitClick {

float toWorld(float x);
float toScreen(float x);
const char* toString(int i);

}

#endif
