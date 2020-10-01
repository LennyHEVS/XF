#include "xf/xf.h"
#include "trace/trace.h"
#include "testfactory03.h"

void Factory_initialize()
{
    TestFactory03::initialize();
}

void Factory_build()
{
    TestFactory03::build();
}

StateMachine03 TestFactory03::_task01;

TestFactory03::TestFactory03()
{
}

// static
void TestFactory03::initialize()
{
}

// static
void TestFactory03::build()
{
    Trace::out("Starting test3...\n---------------------");

    // Start state machine
    _task01.startBehavior();
}
