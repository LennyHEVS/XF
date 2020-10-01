#include "xf/xf.h"
#include "app/testfactory02.h"

int main(int argc, char *argv[])
{
    XF::initialize(20, argc, argv);

    TestFactory02 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}
