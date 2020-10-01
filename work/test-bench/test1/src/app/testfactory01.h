#ifndef TESTFACTORY01_H
#define TESTFACTORY01_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "statemachine01.h"

/**
 * \ingroup test01
 *
 * Factory creating all objects used in test1.
 *
 */
class TestFactory01
{
public:
    TestFactory01();                    ///< Constructor

    static void initialize();           ///< Initializes the factory
    static void build();                ///< Creates components and initializes relations

protected:
	static StateMachine01 _task01;      ///< First instance of StateMachine01
	static StateMachine01 _task02;		///< Second instance of StateMachine01
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
#endif // TESTFACTORY01_H
