#include <stdio.h>
#include "trace/trace.h"
#include "statemachine05b.h"

/**
 * Constructor
 *
 * \param text Text to display by the state machine.
 */
StateMachine05b::StateMachine05b(string text)
 : _text(text)
{
	_currentState = STATE_INITIAL;
}

StateMachine05b::~StateMachine05b()
{

}

XFEventStatus StateMachine05b::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	switch (_currentState)
	{
	case STATE_INITIAL:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				GEN(XFNullTransition());

				_currentState = STATE_SAY_TEXT;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_SAY_TEXT:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::NullTransition ||
				(getCurrentEvent()->getEventType() == XFEvent::Timeout &&
				 getCurrentTimeout()->getId() == Timeout_SAY_HELLO_id))
			{
				{
					Trace::out(getText());
				}

                scheduleTimeout(Timeout_SAY_HELLO_id, 1000);

				_currentState = STATE_SAY_TEXT;

				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}
