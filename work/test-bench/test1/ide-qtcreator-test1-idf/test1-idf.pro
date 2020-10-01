QT       += core
QT       -= gui

TARGET = test1
TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += c++11

DEFINES += TC_QTCREATOR

DEPENDPATH += . \

INCLUDEPATH += . \
    .. \
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
    ../src/main.cpp \
    ../src/app/testfactory01.cpp \
    ../src/app/statemachine01.cpp

HEADERS += \
    ../src/app/testfactory01.h \
    ../src/app/statemachine01.h \
    config/xf-port-config.h
