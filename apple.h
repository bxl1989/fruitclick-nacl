#ifndef APPLE_H
#define APPLE_H

#include "b2dobject.h"

namespace FruitClick {

class Apple : public B2DObject
{
public:
    Apple(b2World& world);
};

}

#endif
