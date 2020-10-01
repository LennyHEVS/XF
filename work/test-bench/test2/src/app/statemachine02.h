#ifndef STATEMACHINE02_H
#define STATEMACHINE02_H

#include <string>
#include "xf/behavior.h"

/**
 * \ingroup test02
 *
 * Task implementing a state machine doing a count down
 * from 5 to 1 and terminating.
 *
 * Following you will find the state machine implemented by StateMachine02:
 * \image html state-machine02.png "State Machine implemented by StateMachine02"
 */
class StateMachine02 : public XFBehavior
{
public:
    StateMachine02();
    ~StateMachine02() override;

protected:
    XFEventStatus processEvent() override;

protected:
    /**
     * Timeout identifier(s) for this state machine
     */
    typedef enum
    {
        Timeout_PRINT_COUNT_id = 1	///< Timeout id for WAIT
    } eTimeoutId;

    /**
     * Enumeration used to have a unique identifier for every
     * state in the state machine.
     */
    typedef enum
    {
        STATE_UNKOWN = 0,			///< Unkown state.
        STATE_INITIAL = 1,			///< Initial state.
        STATE_PRINT_COUNT = 2,		///< Print count state.
        STATE_CONDITION_01 = 3,		///< Condition after print count state.
        STATE_TERMINATION_01 = 4	///< Termination state.
    } eMainState;

    eMainState _currentState;		///< Attribute indicating currently active state.

    static uint32_t nextId;         ///< Static attribute providing identifier for next object.
    const uint32_t id;              ///< Object identifier.

    int counter;					///< Count down attribute used in state machine.
};

#endif // STATEMACHINE02_H
