#include "apple.h"

namespace FruitClick {

Apple::Apple(b2World &world)
    : B2DObject(world)
{
    b2BodyDef bodyDef;
    bodyDef.type = b2_dynamicBody;

    b2CircleShape shape;
    shape.m_radius = toWorld(FRUITCLICK_APPLE_RADIUS);
    b2Body* body = world.CreateBody(&bodyDef);
    b2FixtureDef fixtureDef;
    fixtureDef.shape = &shape;
    fixtureDef.density = 10;
    fixtureDef.friction = 1;
    fixtureDef.restitution = 0.8f;
    body->CreateFixture(&fixtureDef);

    m_body = body;
    body->SetUserData(this);
}

}
