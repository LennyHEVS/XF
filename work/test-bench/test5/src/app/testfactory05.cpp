#include "xf/xf.h"
#include "trace/trace.h"
#include "testfactory05.h"

void Factory_initialize()
{
    TestFactory05::initialize();
}

void Factory_build()
{
    TestFactory05::build();
}

StateMachine05a TestFactory05::_task01("Tick 500ms");
StateMachine05b TestFactory05::_task02(" One");
StateMachine05b TestFactory05::_task03("  Two");
StateMachine05b TestFactory05::_task04("   Three");

TestFactory05::TestFactory05()
{
}

// static
void TestFactory05::initialize()
{
}

// static
void TestFactory05::build()
{
	Trace::out("Starting test5...\n---------------------");

	// Start state machine(s)
	_task01.startBehavior();
	_task02.startBehavior();
	_task03.startBehavior();
	_task04.startBehavior();
}
