TEMPLATE = app
TARGET = QmlDynamicChart
QT += qml quick core quickcontrols2
INCLUDEPATH += . \
               include \

CONFIG += c++11 ordered

contains(QT_ARCH, i386) {
    ARCH = "x86"
} else {
    ARCH = "x64"
}

target.path = $$PWD/bin
INSTALLS += target

CONFIG(release, debug|release) {
  DESTDIR = bin/$${ARCH}/release
}
CONFIG(debug, debug|release) {
  DESTDIR = bin/$${ARCH}/debug
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

RESOURCES += \
    resources/QmlDynamicChart.qrc

SOURCES += src/main.cpp \

lupdate_only{
    SOURCES += src/qml/*.qml \
}

HEADERS += \

DISTFILES += \
    src/qml/main.qml \
    src/qml/Chart.qml

# copying application dependencies to build directory
win32 {
 CONFIG(release, debug|release) {
      QMAKE_POST_LINK += $$(QTDIR)\bin\windeployqt.exe $$shell_quote($$DESTDIR/$$shell_quote($$TARGET).exe) --qmldir $$shell_quote($${PWD}/src/qml) --no-compiler-runtime  --no-translations  --no-webkit2 --no-system-d3d-compiler
    }
}
