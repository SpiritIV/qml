#include <QApplication>
#include <QQmlApplicationEngine>
#include "customgraph.h"
#include "leastsquares.h"

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QApplication app(argc, argv);

	QQmlApplicationEngine engine;
	const QUrl url(QStringLiteral("qrc:/main.qml"));
	QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
					 &app, [url](QObject *obj, const QUrl &objUrl) {
		if (!obj && url == objUrl)
			QCoreApplication::exit(-1);
	}, Qt::QueuedConnection);

	qmlRegisterType<CustomGraph>("CustomGraphPack", 1, 0, "CustomGraph");
	qmlRegisterType<LeastSquares>("LeastSquaresPack", 1, 0, "LeastSquares");

	engine.load(url);

	return app.exec();
}
