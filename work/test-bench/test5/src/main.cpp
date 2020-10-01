#include "xf/xf.h"
#include "app/testfactory05.h"

int main(int argc, char *argv[])
{
    XF::initialize(20, argc, argv);

	TestFactory05 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}