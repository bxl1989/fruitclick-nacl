#include "application.h"
#include "platform.h"
#include <string>

namespace FruitClick {

Application::Application()
    : m_world(b2Vec2(0, -2))
    , m_step(0)
    , m_appleInterval(100)
    , m_score(0)
    , m_lives(10)
    , m_grass(m_world)
    , m_leftBound(m_world)
    , m_rightBound(m_world)
{
    m_world.SetContactListener(this);
    m_leftBound.setPosition(0, toWorld(FRUITCLICK_HEIGHT / 2));
    m_rightBound.setPosition(toWorld(FRUITCLICK_WIDTH), toWorld(FRUITCLICK_HEIGHT / 2));
    m_grass.setPosition(toWorld(FRUITCLICK_WIDTH / 2), 0);
}

Application::~Application()
{
    std::set<Apple*>::const_iterator it = m_apples.begin();
    std::set<Apple*>::const_iterator itEnd = m_apples.end();

    while (it != itEnd)
    {
        Apple* apple = *it;
        delete apple;
        ++it;
    }
}

void Application::render()
{
    simulate();

    Platform::drawBegin();
    Platform::draw(Platform::BACKGROUND, FRUITCLICK_WIDTH / 2.0f, FRUITCLICK_HEIGHT / 2.0f);

    std::string text = "Score: ";
    text += toString(m_score);
    Platform::drawText(text.c_str(), 5, FRUITCLICK_HEIGHT - 20);

    text = "Lives: ";
    text += toString(m_lives);
    Platform::drawText(text.c_str(), 5, FRUITCLICK_HEIGHT - 45);

    std::set<Apple*>::const_iterator it = m_apples.begin();
    std::set<Apple*>::const_iterator itEnd = m_apples.end();

    while (it != itEnd)
    {
        Apple* apple = *it;
        Platform::draw(Platform::APPLE,
                       toScreen(apple->x()),
                       toScreen(apple->y()),
                       apple->angle());
        ++it;
    }

    Platform::drawEnd();
}

void Application::touch(float x, float y)
{
    b2AABB aabb;
    aabb.lowerBound.x = toWorld(x - 1);
    aabb.lowerBound.y = toWorld(y - 1);
    aabb.upperBound.x = toWorld(x + 1);
    aabb.upperBound.y = toWorld(y + 1);

    m_world.QueryAABB(this, aabb);
}

void Application::simulate()
{
    if (m_lives > 0)
    {
        deleteApples();

        ++m_step;
        m_world.Step(1.0f / 60.0f, 6, 2);

        spawnApple();
    }
}

void Application::spawnApple()
{
    if (m_step % m_appleInterval == 0)
    {
        float x = (rand() % (FRUITCLICK_WIDTH - FRUITCLICK_APPLE_RADIUS*2)) + FRUITCLICK_APPLE_RADIUS;
        float y = FRUITCLICK_HEIGHT + 10;

        float vx = (rand() % 9) - 4;
        float vy = -3;

        Apple* apple = new Apple(m_world);
        apple->setPosition(toWorld(x), toWorld(y));
        apple->setVelocity(vx, vy);
        apple->setAngularVelocity((rand() % 32) - 16);
        m_apples.insert(apple);

        if (m_appleInterval > 25)
            m_appleInterval -= 2;

        m_step = 0;
    }
}

void Application::deleteApples()
{
    for (size_t i = 0; i < m_applesToDelete.size(); ++i)
    {
        Apple* apple = m_applesToDelete[i];
        m_apples.erase(apple);
        delete apple;
    }

    m_applesToDelete.clear();
}

void Application::touchApple(Apple *apple)
{
    m_applesToDelete.push_back(apple);
    Platform::playSound(Platform::CRUNCH);
    ++m_score;
}

void Application::crashApple(Apple *apple)
{
    m_applesToDelete.push_back(apple);
    Platform::playSound(Platform::CRASH);
    --m_lives;

    Platform::log("Danger");
}

bool Application::ReportFixture(b2Fixture *fixture)
{
    B2DObject* object = static_cast<B2DObject*>(fixture->GetBody()->GetUserData());
    Apple* apple = dynamic_cast<Apple*>(object);
    if (apple)
        touchApple(apple);
    return false;
}

void Application::BeginContact(b2Contact *contact)
{
    B2DObject* object1 = static_cast<B2DObject*>(contact->GetFixtureA()->GetBody()->GetUserData());
    B2DObject* object2 = static_cast<B2DObject*>(contact->GetFixtureB()->GetBody()->GetUserData());

    Apple* apple = dynamic_cast<Apple*>(object1);
    if (apple)
    {
        Grass* grass = dynamic_cast<Grass*>(object2);
        if (grass)
        {
            crashApple(apple);
        }
    }
    else
    {
        apple = dynamic_cast<Apple*>(object2);
        if (apple)
        {
            Grass* grass = dynamic_cast<Grass*>(object1);
            if (grass)
            {
                crashApple(apple);
            }
        }
    }
}


}
