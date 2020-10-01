#include <stdio.h>
#include "trace/trace.h"
#include "statemachine02.h"

uint32_t StateMachine02::nextId = 1;        // Static attribute initialization.

StateMachine02::StateMachine02() :
    id(nextId++),
    counter(0)
{
    _currentState = STATE_INITIAL;

    Trace::out("Called constructor of StateMachine02 object '%d' (obj%02d)", id, id);
}

StateMachine02::~StateMachine02()
{
    Trace::out("obj%02d: Called destructor", id);
}

/**
 * Implements state machine behavior.
 */
XFEventStatus StateMachine02::processEvent()
{
    eEventStatus eventStatus = XFEventStatus::Unknown;

    switch (_currentState)
    {
    case STATE_INITIAL:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::Initial)
            {
                {
                    counter = 5;
                }

                GEN(XFNullTransition());

                _currentState = STATE_PRINT_COUNT;

                eventStatus = XFEventStatus::Consumed;
            }
        }
        break;
    case STATE_PRINT_COUNT:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::NullTransition)
            {
                {
                    Trace::out("obj%02d: counter %d", id, counter);
                }

                scheduleTimeout(Timeout_PRINT_COUNT_id, 1000);

                _currentState = STATE_CONDITION_01;

                eventStatus = XFEventStatus::Consumed;
            }
        }
        break;
    case STATE_CONDITION_01:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::Timeout &&
                getCurrentTimeout()->getId() == Timeout_PRINT_COUNT_id)
            {
                {
                    counter--;
                }

                if (counter)
                {
                    _currentState = STATE_PRINT_COUNT;
                }
                else
                {
                    _currentState = STATE_TERMINATION_01;
                }

                GEN(XFNullTransition());

                eventStatus = XFEventStatus::Consumed;
            }
        }
        break;
    case STATE_TERMINATION_01:
        {
            if (getCurrentEvent()->getEventType() == XFEvent::NullTransition)
            {

                Trace::out("obj%02d: Terminating State Machine", id);

                eventStatus = XFEventStatus::Terminate;
            }
        }
        break;
    default:
        break;
    }

    return eventStatus;
}
