#include <config/xf-config.h>

#if (USE_XF_EVENT_QUEUE_DEFAULT_QT_IMPLEMENTATION != 0)

#include <cassert>
#include <QtGlobal>
#include <QMutexLocker>
#include "eventqueue-default.h"

XFEventQueueDefault::XFEventQueueDefault() :
    _mutex(QMutex::NonRecursive)
{
}

XFEventQueueDefault::~XFEventQueueDefault()
{
    _newEvents.wakeAll();
}

bool XFEventQueueDefault::empty() const
{
    return _queue.isEmpty();
}

bool XFEventQueueDefault::push(const XFEvent * pEvent)
{
    QMutexLocker locker(&_mutex);
    _queue.enqueue(pEvent);
    // Tell waiting thread(s) there is again an event present
    _newEvents.wakeAll();
    return true;
}

const XFEvent * XFEventQueueDefault::front()
{
    return _queue.front();
}

void XFEventQueueDefault::pop()
{
    QMutexLocker locker(&_mutex);
    _queue.dequeue();
}

bool XFEventQueueDefault::pend()
{
    QMutexLocker locker(&_mutex);
    // Wait for new events. Mutex needs to be in lock-state
    // prior to call wait()!
    _newEvents.wait(&_mutex);

    return !_queue.isEmpty();
}

#endif // USE_XF_EVENT_QUEUE_DEFAULT_QT_IMPLEMENTATION
