#include "xf/xf.h"
#include "app/testfactory03.h"

int main(int argc, char *argv[])
{
    XF::initialize(20, argc, argv);

	TestFactory03 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}