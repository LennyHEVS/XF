#include "xf/xf.h"
#include "app/testfactory01.h"

int main(int argc, char *argv[])
{
    XF::initialize(20, argc, argv);

	TestFactory01 factory;

    factory.initialize();
    factory.build();

    return XF::exec();
}
