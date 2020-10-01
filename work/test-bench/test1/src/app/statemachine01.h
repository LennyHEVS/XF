#ifndef STATEMACHINE01_H
#define STATEMACHINE01_H

#include "xf/behavior.h"
#include <string>

using namespace std;

/**
 * \ingroup test01
 *
 * Task implementing a little state machine saying something
 * in a predefined time interval.
 *
 * Following you will find the state machine implemented by StateMachine01:
 * \image html state-machine01.png "State Machine implemented by StateMachine01"
 */
class StateMachine01 : public XFBehavior
{
public:
	StateMachine01(int repeatInterval, string text);
    ~StateMachine01() override;

protected:
    XFEventStatus processEvent() override;								///< Remplementation from XFBehavior

	inline int getRepeatInterval() const { return _repeatInterval; }	///< Returns repeat interval. Accessor for #_repeatInterval.
	inline string getText() const { return _text; }						///< Returns text. Accessor for #_text.

protected:
	/**
	 * Timeout identifier(s) for this state machine
	 */
	typedef enum
	{
		Timeout_SAY_HELLO_id = 1	///< Timeout id for WAIT
	} eTimeoutId;

	/**
	 * Enumeration used to have a unique identifier for every
	 * state in the state machine.
	 */
	typedef enum
	{
		STATE_UNKNOWN = 0,			///< Unknown state
		STATE_INITIAL = 1,			///< Initial state
		STATE_SAY_HELLO = 2			///< Say hello state
	} eMainState;

	eMainState _currentState;		///< Attribute indicating currently active state

	int _repeatInterval;			///< Interval in milliseconds to repeat text in state machine
	string _text;					///< Text to display in state machine state
};

#endif // STATEMACHINE01_H
