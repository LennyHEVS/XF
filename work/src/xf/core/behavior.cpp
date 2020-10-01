#include <cassert>
#include "xf/xf.h"
#include "xf/interface/resourcefactory.h"
#include "xf/interface/dispatcher.h"
#include "xf/timeout.h"
#include "xf/initialevent.h"
#include "xf/behavior.h"

using interface::XFResourceFactory;

XFBehavior::XFBehavior(bool ownDispatcher)
{
    _hasOwnDispatcher = ownDispatcher;
    if(ownDispatcher)
    {
        _pDispatcher = XFResourceFactory::getInstance()->createDispatcher();
    }
    else
    {
        _pDispatcher = XFResourceFactory::getInstance()->getDefaultDispatcher();
    }
}

XFBehavior::~XFBehavior()
{
    if(_hasOwnDispatcher)
    {
        delete _pDispatcher;
    }
}

void XFBehavior::startBehavior()
{
    GEN(XFInitialEvent());
}

void XFBehavior::pushEvent(XFEvent *pEvent)
{
    pEvent->setBehavior(this);
    _pDispatcher->pushEvent(pEvent);
}

bool XFBehavior::deleteOnTerminate() const
{
    return deleteOnTerminate_;
}

void XFBehavior::setDeleteOnTerminate(bool deleteBehaviour)
{
    deleteOnTerminate_ = deleteBehaviour;
}

const XFEvent *XFBehavior::getCurrentEvent() const
{
    return _pCurrentEvent;
}

interface::XFDispatcher *XFBehavior::getDispatcher()
{
    return _pDispatcher;
}

const XFTimeout *XFBehavior::getCurrentTimeout()
{
    if(_pCurrentEvent->getEventType() == XFEvent::XFEventType::Timeout)
    {
        return (XFTimeout*) _pCurrentEvent;
    }
    else
    {
        return nullptr;
    }
}

void XFBehavior::setCurrentEvent(const XFEvent *pEvent)
{
    _pCurrentEvent = pEvent;
}

interface::XFReactive::TerminateBehavior XFBehavior::process(const XFEvent *pEvent)
{
    setCurrentEvent(pEvent);
    if(processEvent() == XFEventStatus::Terminate)
    {
        return deleteOnTerminate_;
    }
    else
    {
        return false;
    }
}
