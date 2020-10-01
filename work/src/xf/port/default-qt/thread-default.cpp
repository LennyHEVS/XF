#include <config/xf-config.h>

#if (USE_XF_THREAD_DEFAULT_QT_IMPLEMENTATION != 0)

#include <cassert>
#include <string.h>
#include "thread-default.h"

#if !defined(XFTHREAD_DEFAULT_STACK_SIZE)
    #define XFTHREAD_DEFAULT_STACK_SIZE	256
#endif

#endif // USE_XF_THREAD_DEFAULT_QT_IMPLEMENTATION

void XFThreadDefault::start()
{
    QThread::start();
}

void XFThreadDefault::stop()
{
    QThread::quit();
}

void XFThreadDefault::setPriority(XFThreadPriority priority)
{
    switch(priority)
    {
    case XF_THREAD_PRIO_UNKNOWN :
        QThread::setPriority(QThread::Priority::NormalPriority);
        break;
    case XF_THREAD_PRIO_LOW :
        QThread::setPriority(QThread::Priority::LowPriority);
        break;
    case XF_THREAD_PRIO_NORMAL:
        QThread::setPriority(QThread::Priority::NormalPriority);
        break;
    case XF_THREAD_PRIO_HIGH:
        QThread::setPriority(QThread::Priority::HighPriority);
        break;
    case XF_THREAD_PRIO_MAX:
        QThread::setPriority(QThread::Priority::HighestPriority);
        break;
    default:
        QThread::setPriority(QThread::Priority::NormalPriority);
        break;
    }
}

XFThreadPriority XFThreadDefault::getPriority() const
{
    XFThreadPriority retVal = XF_THREAD_PRIO_UNKNOWN;
    switch(QThread::priority())
    {
    case QThread::Priority::NormalPriority :
        retVal = XF_THREAD_PRIO_NORMAL;
        break;
    case QThread::Priority::LowPriority :
        retVal = XF_THREAD_PRIO_LOW;
        break;
    case QThread::Priority::HighPriority:
        retVal = XF_THREAD_PRIO_HIGH;
        break;
    case QThread::Priority::HighestPriority:
        retVal = XF_THREAD_PRIO_MAX;
    default:
        break;
    }
    return retVal;
}

void XFThreadDefault::delay(uint32_t milliseconds)
{
    QThread::wait(milliseconds);
}

XFThreadDefault::XFThreadDefault(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize)
{
    _pEntryMethodProvider = pProvider;
    _entryMethod = entryMethod;
    QThread::setObjectName(threadName);
}

void XFThreadDefault::run()
{
    (_pEntryMethodProvider->*_entryMethod)(this);
}
