#ifndef XF_CONFIG_H
#define XF_CONFIG_H

#include "config/xf-port-config.h"

#if (PORT_IDF_QT != 0)
    #define USE_XF_DEFAULT_IMPLEMENTATION                       0
    #define USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION      0
    #define USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION        1
    #define USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION            0
    #define USE_XF_DISPATCHER_ACTIVE_DEFAULT_IMPLEMENTATION     1
    #define USE_XF_EVENT_QUEUE_DEFAULT_QT_IMPLEMENTATION        1
    #define USE_XF_MUTEX_DEFAULT_QT_IMPLEMENTATION              1
    #define USE_XF_THREAD_DEFAULT_QT_IMPLEMENTATION             1
    #define USE_XF_CLASS_DEFAULT_QT_IMPLEMENTATION              1
    #define USE_XF_PORT_FUNCTIONS_DEFAULT_QT_IMPLEMENTATION     1

    #define USE_XF_PORT_IDF_QT_RESOURCE_FACTORY_IMPLEMENTATION  1

    #include "default-qt/eventqueue-default.h"
#ifdef __cplusplus
    // Force to take the XFEventQueueDefault implementation for the event queue
    using XFEventQueue = XFEventQueueDefault;
#endif // __cplusplus
#endif // PORT_IDF_QT

#if (PORT_IDF_STM32CUBE != 0)
    #define USE_XF_DEFAULT_IMPLEMENTATION                                   1
    #define USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION                        1
    #define USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION                    1
    #define USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION                  1
    #define USE_XF_MUTEX_DEFAULT_IDF_IMPLEMENTATION                         1
    #define USE_XF_EVENT_QUEUE_DEFAULT_IDF_IMPLEMENTATION                   1
    #define USE_XF_PORT_IDF_STM32CUBE_PORT_FUNCTIONS_IMPLEMENTATION         1

    #include "default-idf/eventqueue-default.h"
#ifdef __cplusplus
    // Force to take the XFEventQueueDefault implementation for the event queue
    using XFEventQueue = XFEventQueueDefault;
#endif // __cplusplus
#endif // PORT_IDF_STM32CUBE

#if (PORT_STM32CUBE_CMSIS_FREERTOS != 0)
    #define USE_XF_DISPATCHER_ACTIVE_DEFAULT_IMPLEMENTATION                          1
    #define USE_XF_MUTEX_DEFAULT_CMSIS_OS_IMPLEMENTATION                             1
    #define USE_XF_THREAD_DEFAULT_CMSIS_OS_IMPLEMENTATION                            1
    #define USE_XF_PORT_STM32CUBE_CMSIS_FREERTOS_RESOURCE_FACTORY_IMPLEMENTATION     1
    #define USE_XF_PORT_STM32CUBE_CMSIS_FREERTOS_TIMEOUTMANAGER_IMPLEMENTATION       1
    #define USE_XF_PORT_STM32CUBE_CMSIS_FREERTOS_EVENT_QUEUE_IMPLEMENTATION          1

    #include "stm32cube-cmsis-freertos/eventqueue.h"
#ifdef __cplusplus
    // Force to take the XFEventQueuePort implementation for the event queue
    using XFEventQueue = XFEventQueuePort;
#endif // __cplusplus
#endif // PORT_STM32CUBE_CMSIS_FREERTOS

#if (PORT_ACTIVE_QT != 0)

    // Take the resource factory. Must provide active dispatchers!
    #define USE_XF_PORT_ACTIVE_QT_RESOURCE_FACTORY_IMPLEMENTATION   1

    // Add classes from 'default-qt' port package
    #define USE_XF_CLASS_DEFAULT_QT_IMPLEMENTATION                  1
    #define USE_XF_PORT_FUNCTIONS_DEFAULT_QT_IMPLEMENTATION         1
    #define USE_XF_EVENT_QUEUE_DEFAULT_QT_IMPLEMENTATION            1
    #define USE_XF_MUTEX_DEFAULT_QT_IMPLEMENTATION                  1
    #define USE_XF_THREAD_DEFAULT_QT_IMPLEMENTATION                 1

    // ... and the remaining classes from the default port package.
    #define USE_XF_DEFAULT_IMPLEMENTATION                           0
    #define USE_XF_RESOURCE_FACTORY_DEFAULT_IMPLEMENTATION          0
    #define USE_XF_TIMEOUTMANAGER_DEFAULT_IMPLEMENTATION            1
    #define USE_XF_DISPATCHER_DEFAULT_IMPLEMENTATION                0
    #define USE_XF_DISPATCHER_ACTIVE_DEFAULT_IMPLEMENTATION         1

    #include "default-qt/eventqueue-default.h"
#ifdef __cplusplus
    // Force to take the XFEventQueueDefault implementation for the event queue
    using XFEventQueue = XFEventQueueDefault;
#endif // __cplusplus
#endif // PORT_ACTIVE_QT

#endif // XF_CONFIG_H
