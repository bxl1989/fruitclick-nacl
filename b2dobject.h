#ifndef B2DOBJECT_H
#define B2DOBJECT_H

#include <Box2D/Box2D.h>
#include "utils.h"

namespace FruitClick {

class B2DObject
{
public:
    B2DObject(b2World& world);
    virtual ~B2DObject();

    float x() const;
    float y() const;
    float angle() const;

    void setPosition(float x, float y);
    void setVelocity(float vx, float vy);
    void setAngularVelocity(float omega);

protected:
    b2World& m_world;
    b2Body* m_body;
};

}

#endif
