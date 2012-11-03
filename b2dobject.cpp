#include "b2dobject.h"

namespace FruitClick {

B2DObject::B2DObject(b2World &world)
    : m_world(world)
    , m_body(NULL)
{
}

B2DObject::~B2DObject()
{
    m_world.DestroyBody(m_body);
}

float B2DObject::x() const
{
    return m_body->GetPosition().x;
}

float B2DObject::y() const
{
    return m_body->GetPosition().y;
}

float B2DObject::angle() const
{
    return m_body->GetAngle();
}

void B2DObject::setPosition(float x, float y)
{
    m_body->SetTransform(b2Vec2(x, y), 0);
}

void B2DObject::setVelocity(float vx, float vy)
{
    m_body->SetLinearVelocity(b2Vec2(vx, vy));
}

void B2DObject::setAngularVelocity(float omega)
{
    m_body->SetAngularVelocity(omega);
}

}
