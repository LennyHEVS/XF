#ifndef STATEMACHINE04A_H
#define STATEMACHINE04A_H

#include <string>
#include "xf/behavior.h"

/**
 * \ingroup test04
 *
 * Implements a state machine sending its neighbour state machine
 * an \a evRestart event every four seconds.
 *
 * Following you will find the state machine implemented by StateMachine04a:
 * \image html state-machine04a.png "State Machine implemented by StateMachine04"
 */
class StateMachine04a : public XFBehavior
{
public:
	StateMachine04a();					///< Constructor
    ~StateMachine04a() override;

    void setNeighbour(XFBehavior * pNeighbour);
    XFBehavior * getNeighbour() const;

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
		STATE_UNKOWN = 0,			///< Unknown state
		STATE_INITIAL = 1,			///< Initial state
		STATE_WAIT = 2,				///< Wait state
		STATE_SEND_RESTART = 3		///< State sending an restart event
	} eMainState;

	eMainState _currentState;		///< Attribute indicating currently active state

    XFBehavior * _pNeighbour;		///< Association to the neigbour state machine
};

#endif // STATEMACHINE04A_H
