#include <cassert>
#include <config/xf-config.h>

#if (USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION != 0)
#if (XF_TRACE_EVENT_PUSH_POP != 0)
    #include "trace/trace.h"
#endif // XF_TRACE_EVENT_PUSH_POP
#include "xf/eventstatus.h"
#include "xf/interface/timeoutmanager.h"
#include "xf/interface/reactive.h"
#include "xf/interface/resourcefactory.h"
#include "dispatcher-default.h"

using interface::XFTimeoutManager;
using interface::XFResourceFactory;
using interface::XFReactive;
using interface::XFMutex;

XFDispatcherDefault::XFDispatcherDefault()
{
	_bExecuting = false;
	_pMutex = XFResourceFactory::getInstance()->createMutex();
	//TODO: assert thread
}

XFDispatcherDefault::~XFDispatcherDefault()
{
	_bExecuting = false;
	//TODO: stop thread
}

void XFDispatcherDefault::start()
{
	//TODO: assert thread
	_bExecuting = true;
	//TODO: start thread
}

void XFDispatcherDefault::stop()
{
	_bExecuting = false;
		//TODO: stop thread
}

void XFDispatcherDefault::pushEvent(XFEvent* pEvent)
{
	_events.push(pEvent);
}

void XFDispatcherDefault::scheduleTimeout(int timeoutId, int interval, interface::XFReactive* pReactive)
{
	XFTimeoutManager::getInstance()->scheduleTimeout(timeoutId, interval, pReactive);
}

void XFDispatcherDefault::unscheduleTimeout(int timeoutId, interface::XFReactive* pReactive)
{
	XFTimeoutManager::getInstance()->unscheduleTimeout(timeoutId, pReactive);
}

int XFDispatcherDefault::executeOnce()
{
	dispatchEvent(_events.front());
	_events.pop();

	return _bExecuting;
}

int XFDispatcherDefault::execute(const void* param)
{
	(void)param;

	while(_bExecuting)
	{
		while (_events.empty() && _bExecuting)
		{
			_events.pend();	// Wait until something to do
		}

		executeOnce();
	}

	return 0;
}

void XFDispatcherDefault::dispatchEvent(const XFEvent* pEvent) const
{
	XFReactive * behavior = pEvent->getBehavior();
	if(behavior->process(pEvent))
	{
		delete behavior;
	}
}

#endif // USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION
