#include "grass.h"

namespace FruitClick {

Grass::Grass(b2World &world)
    : B2DObject(world)
{
    b2BodyDef bodyDef;
    bodyDef.type = b2_staticBody;
    b2Body* body = world.CreateBody(&bodyDef);
    b2PolygonShape shape;
    shape.SetAsBox(toWorld(FRUITCLICK_WIDTH / 2), toWorld(1));

    b2FixtureDef fixtureDef;
    fixtureDef.shape = &shape;
    body->CreateFixture(&fixtureDef);

    m_body = body;
    body->SetUserData(this);
}

}
