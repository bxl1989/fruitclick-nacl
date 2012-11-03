#include "bound.h"

namespace FruitClick {

Bound::Bound(b2World &world)
    : B2DObject(world)
{
    b2BodyDef bodyDef;
    bodyDef.type = b2_staticBody;
    b2Body* body = world.CreateBody(&bodyDef);
    b2PolygonShape shape;
    shape.SetAsBox(toWorld(1), toWorld(1000 / 2));

    b2FixtureDef fixtureDef;
    fixtureDef.shape = &shape;
    body->CreateFixture(&fixtureDef);

    m_body = body;
    body->SetUserData(this);
}

}
