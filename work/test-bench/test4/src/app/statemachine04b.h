#ifndef STATEMACHINE04B_H
#define STATEMACHINE04B_H

#include <string>
#include "xf/behavior.h"

/**
 * \ingroup test04
 *
 * Implements a state machine timeouting every second. It shows how many times
 * the timeout has expired (using a #timeout attribute). The state machine can
 * be reset by sending an \a evRestart event.
 *
 * Following you will find the state machine implemented by StateMachine04b:
 * \image html state-machine04b.png "State Machine implemented by StateMachine04"
 */
class StateMachine04b : public XFBehavior
{
public:
	StateMachine04b();
    ~StateMachine04b() override;

protected:
    XFEventStatus processEvent() override;

	bool isTimeoutEvent(int timeoutId);		///< Returns true in case state machine is currently processing a timeout.
	bool isRestartEvent() const;			///< Returns true in case state machine is currently processing an \a evRestart event.

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
		STATE_WAIT = 2				///< Wait for timeout state
	} eMainState;

	eMainState _currentState;		///< Attribute indicating currently active state
	int timeout;					///< Timeout attribute counting rised timeouts in state machine
};

#endif // STATEMACHINE04B_H
