#include <config/xf-config.h>

#if (USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION != 0)

#include "resourcefactory-default.h"
#include "mutex-default.h"


//static
interface::XFResourceFactory * interface::XFResourceFactory::getInstance()
{
    return XFResourceFactoryDefault::getInstance();
}

interface::XFResourceFactory * XFResourceFactoryDefault::getInstance()
{
	static XFResourceFactoryDefault xfresourcefact;
	return &xfresourcefact;
}

interface::XFDispatcher* XFResourceFactoryDefault::getDefaultDispatcher()
{
	static XFDispatcherDefault xfDispatcherDefault;
	return &xfDispatcherDefault;
}

interface::XFDispatcher* XFResourceFactoryDefault::createDispatcher()
{
	return getDefaultDispatcher();
}

interface::XFThread* XFResourceFactoryDefault::createThread(
		interface::XFThreadEntryPointProvider* pProvider,
		interface::XFThread::EntryMethodBody entryMethod,
		const char* threadName, const uint32_t stackSize)
{

	//TODO: return default thread
	return nullptr;
}

interface::XFMutex* XFResourceFactoryDefault::createMutex()
{
	return interface::XFMutex::create();
}

#endif // USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION
