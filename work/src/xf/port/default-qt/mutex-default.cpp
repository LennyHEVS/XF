#include <cassert>
#include <config/xf-config.h>

#if (USE_XF_MUTEX_DEFAULT_QT_IMPLEMENTATION != 0)

#include "mutex-default.h"

#endif // USE_XF_MUTEX_DEFAULT_QT_IMPLEMENTATION

interface::XFMutex* interface::XFMutex::create()
{
    return new XFMutexDefault();
}

void XFMutexDefault::lock()
{
    _mutex.lock();
}

void XFMutexDefault::unlock()
{
    _mutex.unlock();
}

bool XFMutexDefault::tryLock(int32_t timeout)
{
    return _mutex.tryLock(timeout);
}
