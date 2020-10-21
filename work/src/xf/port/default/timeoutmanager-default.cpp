
#include <config/xf-config.h>


#if (USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION != 0)

#include <cassert>
#include "xf/interface/reactive.h"
#include "xf/interface/mutex.h"
#include "xf/interface/resourcefactory.h"
#include "port-functions.h"
#include "timeoutmanager-default.h"

using interface::XFMutex;

interface::XFTimeoutManager * interface::XFTimeoutManager::getInstance()
{
    return XFTimeoutManagerDefault::getInstance();
}

#endif // USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION

XFTimeoutManagerDefault::~XFTimeoutManagerDefault()
{
    _timeouts.clear();
    delete _pMutex;
}

interface::XFTimeoutManager *XFTimeoutManagerDefault::getInstance()
{
    static XFTimeoutManagerDefault timeoutmanager;
    return &timeoutmanager;
}

void XFTimeoutManagerDefault::start()
{
    XF_startTimeoutManagerTimer(XF_tickIntervalInMilliseconds());
}

void XFTimeoutManagerDefault::scheduleTimeout(int32_t timeoutId, int32_t interval, interface::XFReactive *pReactive)
{
    XFTimeout* timeout = new XFTimeout(timeoutId,interval,pReactive);
    addTimeout(timeout);
}

void XFTimeoutManagerDefault::unscheduleTimeout(int32_t timeoutId, interface::XFReactive *pReactive)
{
    _pMutex->lock();
    TimeoutList::iterator it = _timeouts.begin();
    while(it!=_timeouts.end())
    {
        if(timeoutId == (*it)->getId() && pReactive == (*it)->getBehavior())
        {
            it = _timeouts.erase(it);
        }
        else
        {
            it++;
        }
    }
    _pMutex->unlock();
}

void XFTimeoutManagerDefault::tick()
{
    _pMutex->lock();

    //v0.1
    /*TimeoutList::iterator it = _timeouts.begin();
    while(it!=_timeouts.end())
    {
        (*it)->substractFromRelTicks(XF_tickIntervalInMilliseconds());
        if((*it)->getRelTicks()<=0)
        {
            returnTimeout((*it));
            it = _timeouts.erase(it);
        }
        else
        {
            it++;
        }
    }*/

    //v1.0
    TimeoutList::iterator first = _timeouts.begin();

    if(first!=_timeouts.end())
    {
        (*first)->substractFromRelTicks(XF_tickIntervalInMilliseconds());

        while((*first)->getRelTicks()<=0)
        {
            returnTimeout((*first));
            first = _timeouts.erase(first);
            if(first == _timeouts.end())
                break;
        }
    }
    _pMutex->unlock();
}

XFTimeoutManagerDefault::XFTimeoutManagerDefault()
{
    _timeouts.clear();
    _pMutex = interface::XFResourceFactory::getInstance()->createMutex();
}

void XFTimeoutManagerDefault::addTimeout(XFTimeout *pNewTimeout)
{
    _pMutex->lock();

    //v0.1
    //_timeouts.push_back(pNewTimeout);

    //v1.0
    int sum = 0;
    int ticks = 0;
    int interval = pNewTimeout->getRelTicks();

    TimeoutList::iterator it = _timeouts.begin();
    while(it!=_timeouts.end())
    {
        ticks = (*it)->getRelTicks();
        if(sum + ticks > interval)
        {
            (*it)->setRelTicks(ticks-interval);
            break;
        }
        sum += ticks;
        it++;
    }
    pNewTimeout->setRelTicks(interval-sum);
    _timeouts.insert(it,pNewTimeout);
    _pMutex->unlock();
}

void XFTimeoutManagerDefault::returnTimeout(XFTimeout *pTimeout)
{
    pTimeout->getBehavior()->pushEvent(pTimeout);
}
