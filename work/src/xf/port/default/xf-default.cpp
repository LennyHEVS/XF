#include <cassert>
#include <config/xf-config.h>

#if (USE_XF_DEFAULT_IMPLEMENTATION != 0)

#include "xf/interface/timeoutmanager.h"
#include "xf/interface/resourcefactory.h"
#include "xf/interface/dispatcher.h"
#include "xf/xf.h"

int32_t zeTickInterval;

using interface::XFResourceFactory;
using interface::XFTimeoutManager;
void XF_initialize(int timeInterval)
{
	interface::XFTimeoutManager::getInstance()->initialize(timeInterval);
	interface::XFTimeoutManager::getInstance()->start();
	zeTickInterval = timeInterval;
}
void XF_exec()
{
	//TODO: modify
	XFResourceFactory::getInstance()->getDefaultDispatcher()->start();
	while(true){};
}
void XF_execOnce()
{

}

#endif // USE_XF_DEFAULT_IMPLEMENTATION
