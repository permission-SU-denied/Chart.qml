#include <QtGui/QGuiApplication>
#include <QtQml/QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    // set the stack size for the JS 16mb
    qputenv( "QV4_JS_MAX_STACK_SIZE", "16777216" );
    qputenv( "QV4_GC_MAX_STACK_SIZE", "16777216" );

    QGuiApplication::setApplicationName("QmlDynamicChart");
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load( QUrl("qrc:/src/qml/main.qml") );
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
