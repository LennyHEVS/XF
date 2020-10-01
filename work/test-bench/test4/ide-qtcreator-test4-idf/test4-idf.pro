QT       += core
QT       -= gui

TARGET = test4
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += c++11

DEFINES += TC_QTCREATOR

DEPENDPATH += . \

INCLUDEPATH += . \
    .. \
    ../src \
    ../../../src/xf/include \
    ../../../src/mdw \
    ../../../src/platform/qt

include(common.pri)
include(../../../src/xf/xf-core.pri)
include(../../../src/xf/port/default-qt/xf-port-default-qt.pri)
include(../../../src/xf/port/idf-qt/xf-port-default.pri)
include(../../../src/xf/port/idf-qt/xf-port-idf.pri)
include(../../../src/platform/qt/platform-qt.pri)

SOURCES += \
    ../src/main.cpp  \
    ../src/app/statemachine04a.cpp \
    ../src/app/statemachine04b.cpp \
    ../src/app/testfactory04.cpp \
    ../src/events/evrestart.cpp

HEADERS += \
    ../src/app/statemachine04a.h \
    ../src/app/statemachine04b.h \
    ../src/app/testfactory04.h \
    ../src/events/eventids.h \
    ../src/events/evrestart.h \
    config/xf-port-config.h \
    ../config/xf-config.h
