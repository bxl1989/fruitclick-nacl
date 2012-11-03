#ifndef GRASS_H
#define GRASS_H

#include "b2dobject.h"

namespace FruitClick {

class Grass : public B2DObject
{
public:
    Grass(b2World& world);
};

}

#endif
