#include <stdio.h>
#include "trace/trace.h"
#include "statemachine01.h"

/**
 * Constructor
 *
 * \param repeatInterval Interval in milliseconds used in state machine.
 * \param text Text to display by the state machine.
 */
StateMachine01::StateMachine01(int repeatInterval, string text)
 : _repeatInterval(repeatInterval),
   _text(text)
{
	_currentState = STATE_INITIAL;
}

StateMachine01::~StateMachine01()
{

}

XFEventStatus StateMachine01::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	switch (_currentState)
	{
	case STATE_INITIAL:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				GEN(XFNullTransition());

				_currentState = STATE_SAY_HELLO;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_SAY_HELLO:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::NullTransition ||
				(getCurrentEvent()->getEventType() == XFEvent::Timeout &&
				 getCurrentTimeout()->getId() == Timeout_SAY_HELLO_id))
			{
				{
					Trace::out(getText());
				}

				scheduleTimeout(Timeout_SAY_HELLO_id, getRepeatInterval());

				_currentState = STATE_SAY_HELLO;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}
