#include "config/trace-config.h"

#if (USE_PLATFORM_QT_TRACE != 0)

#include <QDebug>
#include <QTime>
#include "trace/trace.h"

#define ADD_CRLF_SEQU 	0

//static
void Trace::initialize()
{

}

void Trace::out(string str)
{
    QTime t = QTime::currentTime();
    QString s;
    s = t.toString("HH:mm:ss.zzz");
    s = s + " --> " + str.c_str();
    qDebug() << s;
}

void Trace::out(const char * format, ...)
{
    char cstr[255];

    va_list args;

    va_start(args, format);
    vsprintf(cstr, format, args);
    va_end(args);

    QTime t = QTime::currentTime();
    QString s;
    string str(cstr);
    s = t.toString("HH:mm:ss.zzz");
    s = s + " --> " + str.c_str();
    qDebug() << s;
}

#endif // USE_PLATFORM_QT_TRACE
