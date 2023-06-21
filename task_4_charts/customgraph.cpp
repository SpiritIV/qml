#include "customgraph.h"
#include <QDebug>

CustomGraph::CustomGraph(graph_type _type, QObject *parent) : QObject(parent)
{
	for (double i = 0; i < 5; i+=0.1)
	{
		x.push_back(i);
		y.push_back(count_y(_type, i));
	}

	QRandomGenerator	new_generator;

	graph_color.fromRgb(new_generator.global()->generate());

	qDebug() << graph_color;
}

double CustomGraph::getXCoordByIndex(int index)
{
	return (x[index]);
}

double CustomGraph::getYCoordByIndex(int index)
{
	return (y[index]);
}

QColor CustomGraph::getColor()
{
	return (graph_color);
}

double CustomGraph::getSize()
{
	return (x.length());
}

double CustomGraph::count_y(graph_type _type, double x)
{
	if (_type == SIN)
	{
		return (sin(x));
	}
	else if (_type == LINEAR)
	{
		return (x);
	}
	else if (_type == ABS)
	{
		return (abs(x - 2.5));
	}
	else if (_type == SQUARE)
	{
		return (x * x);
	}
	else if (_type == LOG)
	{
		return (log2(x));
	}
	return (0);
}
