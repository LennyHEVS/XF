PRI_PATH = $$PWD

# Points to 'common' folder containing files common for all tests.
COMMON_PATH = "$${PRI_PATH}/../../common"

INCLUDEPATH += \
    "$${COMMON_PATH}"

HEADERS += \
    "$${COMMON_PATH}/config/xf-config.h"
