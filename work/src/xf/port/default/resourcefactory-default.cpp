#include <config/xf-config.h>

#if (USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION != 0)

#include "resourcefactory-default.h"
#include "mutex-default.h"

//static
interface::XFResourceFactory * interface::XFResourceFactory::getInstance()
{
	return XFResourceFactoryDefault::getInstance();
}

// TODO: Implement code for XFResourceFactoryDefault class

#endif // USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION
