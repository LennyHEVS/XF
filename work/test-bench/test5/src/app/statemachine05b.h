#ifndef STATEMACHINE05B_H
#define STATEMACHINE05B_H

#include <string>
#include "xf/behavior.h"

/**
 * \ingroup test05
 *
 * Task implementing a little state machine saying something
 * in a predefined time interval. The text to output is passed
 * to the object at construction time. The time interval is fixed
 * to one second.
 *
 * Following you will find the state machine implemented by StateMachine05b:
 * \image html state-machine05b.png "State Machine implemented by StateMachine05b"
 */
class StateMachine05b : public XFBehavior
{
public:
    StateMachine05b(std::string text);
    ~StateMachine05b() override;

protected:
    XFEventStatus processEvent() override;                              ///< Remplementation from XFReactive

    inline std::string getText() const { return _text; }				///< Returns text. Accessor for #_text.

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
		STATE_SAY_TEXT = 2			///< Say "text" state
	} eMainState;

	eMainState _currentState;		///< Attribute indicating currently active state

    std::string _text;				///< Text to display in state machine state
};

#endif // STATEMACHINE05B_H
