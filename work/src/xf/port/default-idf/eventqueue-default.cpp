#include <config/xf-config.h>

#if (USE_XF_EVENT_QUEUE_DEFAULT_IDF_IMPLEMENTATION != 0)

#include <cassert>
#include "eventqueue-default.h"

#endif // USE_XF_EVENT_QUEUE_DEFAULT_IDF_IMPLEMENTATION

XFEventQueueDefault::XFEventQueueDefault()
{

}

XFEventQueueDefault::~XFEventQueueDefault()
{

}

bool XFEventQueueDefault::empty() const
{
	return _queue.empty();
}

bool XFEventQueueDefault::push(const XFEvent* pEvent)
{
	_mutex.lock();
	_queue.push(pEvent);
	_mutex.unlock();
	return true;
}

const XFEvent* XFEventQueueDefault::front()
{
	return _queue.front();
}

void XFEventQueueDefault::pop()
{
	_mutex.lock();
	_queue.pop();
	_mutex.unlock();
}

bool XFEventQueueDefault::pend()
{
	_mutex.lock();
	//TODO: wait?
	_mutex.unlock();

	return !_queue.empty();
}
