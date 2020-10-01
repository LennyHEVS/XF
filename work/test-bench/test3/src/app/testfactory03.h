#ifndef TESTFACTORY03_H
#define TESTFACTORY03_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "statemachine03.h"


/**
 * \ingroup test03
 *
 * Factory creating all objects used in test3.
 *
 */
class TestFactory03
{
public:
    TestFactory03();                    ///< Constructor

    static void initialize();           ///< Initializes the factory
    static void build();                ///< Creates components and initializes relations

protected:
	static StateMachine03 _task01;		///< Instance of StateMachine03
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
