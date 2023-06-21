#include "leastsquares.h"
#include <QtAlgorithms>
#include <algorithm>
#include <QDebug>

using namespace std;

LeastSquares::LeastSquares(QObject *parent) : QObject(parent)
{
	countABValues();

	for (int i = 0; i < getLinearSize(); ++i)
	{
		result_y.push_back(a_b[0] * result_x[i] + a_b[1]);
	}
}

double LeastSquares::getStartXValue(int index)
{
	return (start_x[index]);
}

double LeastSquares::getStartYValue(int index)
{
	return (start_y[index]);
}

double LeastSquares::getResultXValue(int index)
{
	return (result_x[index]);
}

double LeastSquares::getResultYValue(int index)
{
	return (result_y[index]);
}

double LeastSquares::getScatterSize()
{
	return (start_x.length());
}

double LeastSquares::getLinearSize()
{
	return (result_x.length());
}

double	LeastSquares::sumMulti()
{
	double	result;

	result = 0;

	for (int i = 0; i < getScatterSize(); ++i)
	{
		result += (start_x[i] * start_y[i]);
	}

	return (result);
}

double	LeastSquares::sumSquares()
{
	double	result;

	result = 0;

	for (int i = 0; i < getScatterSize(); ++i)
	{
		result += (start_x[i] * start_x[i]);
	}

	return (result);
}

double	LeastSquares::sumX()
{
	double	result;

	result = 0;

	for (int i = 0; i < getScatterSize(); ++i)
	{
		result += (start_x[i]);
	}

	return (result);
}

double	LeastSquares::sumY()
{
	double	result;

	result = 0;

	for (int i = 0; i < getScatterSize(); ++i)
	{
		result += (start_y[i]);
	}

	return (result);
}

void LeastSquares::countABValues()
{
	accumulate(start_x.begin(), start_x.end(), 0);

	a_b[0] = (getScatterSize() * sumMulti() - sumX() * sumY()) / (getScatterSize() * sumSquares() - sumX() * sumX());

	a_b[1] = (sumY() - a_b[0] * sumX()) / getScatterSize();

	qDebug() << a_b[0] << a_b[1];
}


