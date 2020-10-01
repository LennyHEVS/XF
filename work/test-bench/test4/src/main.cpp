#include "xf/xf.h"
#include "app/testfactory04.h"

int main(int argc, char *argv[])
{
    XF::initialize(20, argc, argv);

	TestFactory04 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}