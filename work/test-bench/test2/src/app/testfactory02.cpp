#include <cassert>
#include "xf/xf.h"
#include "trace/trace.h"
#include "testfactory02.h"

void Factory_initialize()
{
    TestFactory02::initialize();
}

void Factory_build()
{
    TestFactory02::build();
}

TestFactory02::TestFactory02()
{
}

// static
void TestFactory02::initialize()
{
    // Object is statically created. Object cannot be deleted by the XF
    getStaticTask().setDeleteOnTerminate(false);

    // Object is dynamically created. Object must be deleted by the XF
    // when after event processing the behavior wants to be deleted
    getDynamicTask().setDeleteOnTerminate(true);
}

// static
void TestFactory02::build()
{
    Trace::out("Starting test2...\n---------------------");

    // Start state machines
    getStaticTask().startBehavior();
    getDynamicTask().startBehavior();
}

// static
StateMachine02 &TestFactory02::getStaticTask()
{
    static StateMachine02 staticTask;

    return staticTask;
}

// static
StateMachine02 &TestFactory02::getDynamicTask()
{
    static StateMachine02 * dynamicTask = nullptr;

    if (!dynamicTask)
    {
        dynamicTask = new StateMachine02;
    }

    assert(dynamicTask);        // Check heap
    return *dynamicTask;
}
