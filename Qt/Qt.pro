QT += widgets

CONFIG += c++17

# Helios SDK — desktop simulation target.
# Sets HeliosQt, the <hel_*> include paths, and the SDK sources.
# Add "CONFIG += helios_tests" above this line to also build the GoogleTest suites.
include($$PWD/../helios/target/qt/helios.pri)

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


