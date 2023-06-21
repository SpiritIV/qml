#ifndef CUSTOMGRAPH_H
#define CUSTOMGRAPH_H

#include <QObject>
#include <QVector>
#include <QtMath>
#include <QRandomGenerator>
#include <QColor>

enum	graph_type
{
	SIN,
	LINEAR,
	ABS,
	SQUARE,
	LOG
};

class CustomGraph : public QObject
{
	Q_OBJECT
public:
	explicit	CustomGraph(graph_type _type = SQUARE, QObject *parent = nullptr);

	Q_INVOKABLE double		getXCoordByIndex(int index);
	Q_INVOKABLE double		getYCoordByIndex(int index);
	Q_INVOKABLE QColor		getColor();
	Q_INVOKABLE double		getSize();

	double		count_y(graph_type _type, double x);

//	Q_INVOKABLE

signals:

private:
	QColor			graph_color;
	QVector<double>	x;
	QVector<double>	y;
};

#endif // CUSTOMGRAPH_H
