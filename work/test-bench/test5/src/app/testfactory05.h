#ifndef TESTFACTORY05_H
#define TESTFACTORY05_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "statemachine05a.h"
#include "statemachine05b.h"


/**
 * \ingroup test05
 *
 * @brief Factory creating all objects used in test5.
 *
 */
class TestFactory05
{
public:
	TestFactory05();			///< Constructor

    static void initialize();   ///< Initializes the factory
    static void build();        ///< Creates components and initializes relations

protected:
	static StateMachine05a _task01;		///< Instance of StateMachine05a saying 'Tick 500ms'
	static StateMachine05b _task02;		///< Instance of StateMachine05b saying 'One' every second.
	static StateMachine05b _task03;		///< Instance of StateMachine05b saying 'Two' every second.
	static StateMachine05b _task04;		///< Instance of StateMachine05b saying 'Three' every second.
};

#endif // __cplusplus

//
// What is seen by the C and C++ compiler
//
#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

void Factory_initialize();
void Factory_build();

#ifdef __cplusplus
}
#endif // __cplusplus
#endif // TESTFACTORY05_H
