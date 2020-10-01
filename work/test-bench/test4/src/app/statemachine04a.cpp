#include <cassert>
#include "trace/trace.h"
#include "events/evrestart.h"
#include "statemachine04a.h"

StateMachine04a::StateMachine04a()
 : _pNeighbour(nullptr)
{
	_currentState = STATE_INITIAL;
}

StateMachine04a::~StateMachine04a()
{

}

/**
 * Sets the association to the neighbour state machine.
 * Call this method prior the start the state machine.
 */
void StateMachine04a::setNeighbour(XFBehavior * pNeighbour)
{
	_pNeighbour = pNeighbour;
}

/**
 * Returns reference to neighbour state machine.
 */
XFBehavior * StateMachine04a::getNeighbour() const
{
	assert(_pNeighbour);
	return _pNeighbour;
}

/**
 * Implements state machine behavior.
 */
XFEventStatus StateMachine04a::processEvent()
{
	eEventStatus eventStatus = XFEventStatus::Unknown;

	switch (_currentState)
	{
	case STATE_INITIAL:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Initial)
			{
				GEN(XFNullTransition());

				_currentState = STATE_WAIT;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_WAIT:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::NullTransition)
			{
				{
					Trace::out("SM04a: Wait");
				}

                scheduleTimeout(Timeout_WAIT_id, 4500);

				_currentState = STATE_SEND_RESTART;
				eventStatus = XFEventStatus::Consumed;
			}
		}
		break;
	case STATE_SEND_RESTART:
		{
			if (getCurrentEvent()->getEventType() == XFEvent::Timeout &&
				getCurrentTimeout()->getId() == Timeout_WAIT_id)
			{
				{
					Trace::out("SM04a: Send restart to SM04b");
					getNeighbour()->GEN(evRestart());
				}

				GEN(XFNullTransition());

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
