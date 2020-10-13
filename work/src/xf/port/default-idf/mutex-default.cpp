#include <config/xf-config.h>

#if (USE_XF_MUTEX_DEFAULT_IDF_IMPLEMENTATION != 0)

#include "critical/critical.h"	// Provided by the platform used
#include "mutex-default.h"

#endif // USE_XF_MUTEX_DEFAULT_IDF_IMPLEMENTATION

interface::XFMutex* interface::XFMutex::create()
{
    return new XFMutexDefault();
}

void XFMutexDefault::lock()
{
	enterCritical();
}

void XFMutexDefault::unlock()
{
	exitCritical();
}

bool XFMutexDefault::tryLock(int32_t timeout)
{
	enterCritical();
	return true;
}

XFMutexDefault::XFMutexDefault()
{

}

XFMutexDefault::~XFMutexDefault()
{

}
