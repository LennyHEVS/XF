#include <config/xf-config.h>

#if (USE_XF_PORT_IDF_QT_RESOURCE_FACTORY_IMPLEMENTATION != 0)

#include <QtGlobal>
#include "thread-default.h"
#include "default/dispatcher-active.h"
#include "xf/interface/mutex.h"
#include "default-qt/mutex-default.h"
#include "resourcefactory.h"

using interface::XFMutex;

//static
interface::XFResourceFactory * interface::XFResourceFactory::getInstance()
{
    return XFResourceFactoryPort::getInstance();
}

#endif // USE_XF_PORT_IDF_QT_RESOURCE_FACTORY_IMPLEMENTATION

interface::XFResourceFactory *XFResourceFactoryPort::getInstance()
{
    static XFResourceFactoryPort xfresourcefact;
    return &xfresourcefact;
}

interface::XFDispatcher *XFResourceFactoryPort::getDefaultDispatcher()
{
    static XFDispatcherActiveDefault xfDispatcherActiveDefault;
    return &xfDispatcherActiveDefault;
}

interface::XFDispatcher *XFResourceFactoryPort::createDispatcher()
{
    //Not an idf
    /*XFDispatcherActiveDefault * xfNewDispatcher = new XFDispatcherActiveDefault();
    return xfNewDispatcher;*/
    //For an idf
    return getDefaultDispatcher();
}

interface::XFThread *XFResourceFactoryPort::createThread(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize)
{
    XFThreadDefault * xfNewThread = new XFThreadDefault(pProvider,entryMethod,threadName,stackSize);
    return xfNewThread;
}

interface::XFMutex *XFResourceFactoryPort::createMutex()
{
    return interface::XFMutex::create();
}
