#ifndef TESTFACTORY04_H
#define TESTFACTORY04_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "statemachine04a.h"
#include "statemachine04b.h"


/**
 * \ingroup test04
 *
 * Factory creating all objects used in test4.
 *
 */
class TestFactory04
{
public:
    TestFactory04();                    ///< Constructor

    static void initialize();           ///< Initializes the factory
    static void build();                ///< Creates components and initializes relations
	
protected:
	static StateMachine04a _task01;		///< Instance of StateMachine04a
	static StateMachine04b _task02;		///< Instance of StateMachine04b
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
#endif // TESTFACTORY03_H
