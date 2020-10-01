#ifndef TESTFACTORY02_H
#define TESTFACTORY02_H

//
// What is seen only by the C++ compiler
//
#ifdef __cplusplus

#include "statemachine02.h"

/**
 * \ingroup test02
 *
 * Factory creating all objects used in test2.
 *
 */
class TestFactory02
{
public:
    TestFactory02();                            ///< Constructor.

    static void initialize();                   ///< Initializes the factory.
    static void build();                        ///< Creates components and initializes relations.

protected:
    static StateMachine02 & getStaticTask();    ///< Returns reference to static instance of StateMachine02.
    static StateMachine02 & getDynamicTask();   ///< Returns reference to dynamically allocated instance of StateMachine02.
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
#endif // TESTFACTORY02_H
