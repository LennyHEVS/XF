#include "xf/timeout.h"

XFTimeout::XFTimeout(int id, int interval, interface::XFReactive *pBehavior) : XFEvent(Timeout,id,pBehavior)
{
    _interval = interval;
    _relTicks = interval;
}

bool XFTimeout::operator ==(const XFTimeout &timeout) const
{
    return ((_relTicks == timeout._relTicks) && (_interval == timeout._interval) && (_id == timeout._id) && (_pBehavior == timeout._pBehavior));
}

bool XFTimeout::deleteAfterConsume() const
{
    return false;
}
