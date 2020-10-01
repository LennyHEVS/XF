#include "xf/xf.h"
#include "trace/trace.h"
#include "testfactory04.h"

void Factory_initialize()
{
    TestFactory04::initialize();
}

void Factory_build()
{
    TestFactory04::build();
}

StateMachine04a TestFactory04::_task01;
StateMachine04b TestFactory04::_task02;

TestFactory04::TestFactory04()
{
}

// static
void TestFactory04::initialize()
{
}

// static
void TestFactory04::build()
{
	Trace::out("Starting test4...\n---------------------");

	// Set up association(s)
	_task01.setNeighbour(&_task02);

	// Start state machine(s)
	_task01.startBehavior();
	_task02.startBehavior();
}
