#include <stdio.h>
#include "trace/trace.h"
#include "events/evrestart.h"
#include "statemachine04b.h"


StateMachine04b::StateMachine04b()
{
	_currentState = STATE_INITIAL;
}

StateMachine04b::~StateMachine04b()
{

}

/**
 * Implements state machine behavior.
 */
XFEventStatus StateMachine04b::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	// Every time receiving an evRestart event, reset state machine
	if (isRestartEvent())
	{
		// Remove any previous WAIT timeouts
        unscheduleTimeout(Timeout_WAIT_id);

		_currentState = STATE_INITIAL;
	}

	switch (_currentState)
	{
	case STATE_INITIAL:
		{
			if (isRestartEvent() ||
				getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				{
					timeout = 0;
				}

				GEN(XFNullTransition());

				_currentState = STATE_WAIT;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_WAIT:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::NullTransition ||
				isTimeoutEvent(Timeout_WAIT_id))
			{
				if (isTimeoutEvent(Timeout_WAIT_id))
				{
					Trace::out("SM04b: Timeout %d", ++timeout);
				}

                scheduleTimeout(Timeout_WAIT_id, 1000);

				_currentState = STATE_WAIT;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	default:
		break;
	}

	return eventStatus;
}

bool StateMachine04b::isTimeoutEvent(int timeoutId)
{
	return (getCurrentEvent()->getEventType() == XFEvent::Timeout &&
			getCurrentTimeout()->getId() == timeoutId);
}

bool StateMachine04b::isRestartEvent() const
{
	return (getCurrentEvent()->getEventType() == XFEvent::Event &&
			getCurrentEvent()->getId() == EventId::evRestart);
}
