#ifndef EVRESTART_H
#define EVRESTART_H


#include "xf/customevent.h"
#include "eventids.h"


/**
 * Restart event used to reset a state machine
 */
class evRestart : public XFCustomEvent
{
public:
	evRestart();
    ~evRestart() override;
};

#endif // EVRESTART_H
