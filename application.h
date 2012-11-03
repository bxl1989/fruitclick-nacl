#ifndef APPLICATION_H
#define APPLICATION_H

#include "export.h"
#include "apple.h"
#include "grass.h"
#include "bound.h"
#include <set>
#include <vector>

namespace FruitClick {

class FRUITCLICK_EXPORT Application : public b2ContactListener, public b2QueryCallback
{
public:
    Application();
    ~Application();
    void render();
    void touch(float x, float y);

public:
    virtual bool ReportFixture(b2Fixture* fixture);
    virtual void BeginContact(b2Contact *contact);

private:
    void simulate();
    void deleteApples();
    void spawnApple();
    void touchApple(Apple* apple);
    void crashApple(Apple* apple);

    b2World m_world;
    int m_step;
    int m_appleInterval;

    std::set<Apple*> m_apples;
    std::vector<Apple*> m_applesToDelete;
    int m_score;
    int m_lives;

    Grass m_grass;
    Bound m_leftBound;
    Bound m_rightBound;
};

}

#endif
