QT += \
    core \
    location \
    positioning

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    src/Geo/MGRS.cpp \
    src/Geo/Math.cpp \
    src/Geo/PolarStereographic.cpp \
    src/Geo/TransverseMercator.cpp \
    src/Geo/UTMUPS.cpp \
    src/Geo/Utility.cpp

HEADERS += \
    src/Geo/Constants.hpp \
    src/Geo/MGRS.hpp \
    src/Geo/Math.hpp \
    src/Geo/PolarStereographic.hpp \
    src/Geo/QGCGeo.h \
    src/Geo/TransverseMercator.hpp \
    src/Geo/UTMUPS.hpp \
    src/Geo/Utility.h \
    src/Geo/Utility.hpp

INCLUDEPATH += src/Geo

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#win32: LIBS += -L$$PWD/'../../../../Program Files/GeographicLib-2.3/lib/' -lGeographicLib

#INCLUDEPATH += $$PWD/'../../../../Program Files/GeographicLib-2.3/include'


#win32:!win32-g++: PRE_TARGETDEPS += $$PWD/'../../../../Program Files/GeographicLib-2.3/lib/GeographicLib.lib'
#else:win32-g++: PRE_TARGETDEPS += $$PWD/'../../../../Program Files/GeographicLib-2.3/lib/GeographicLib.a'


