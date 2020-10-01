#ifndef STATEMACHINE03_H
#define STATEMACHINE03_H

#include <string>
#include "xf/behavior.h"

/**
 * \ingroup test03
 *
 * Implements a state machine sending itself an \a evRestart
 * event, to drive the state machine further.
 *
 * Following you will find the state machine implemented by StateMachine03:
 * \image html state-machine03.png "State Machine implemented by StateMachine03"
 */
class StateMachine03 : public XFBehavior
{
public:
	StateMachine03();
    ~StateMachine03() override;

protected:
    XFEventStatus processEvent() override;

protected:
	/**
	 * Timeout identifier(s) for this state machine
	 */
	typedef enum
	{
		Timeout_WAIT_id = 1			///< Timeout id for WAIT
	} eTimeoutId;

	/**
	 * Enumeration used to have a unique identifier for every
	 * state in the state machine.
	 */
	typedef enum
	{
		STATE_UNKOWN = 0,			///< Unkown state
		STATE_INITIAL = 1,			///< Initial state
		STATE_WAIT = 2,				///< Wait state
		STATE_SEND_RESTART = 3		///< State sending an restart event
	} eMainState;

	eMainState _currentState;		///< Attribute indicating currently active state
};

#endif // STATEMACHINE03_H
