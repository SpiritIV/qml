#ifndef LEASTSQUARES_H
#define LEASTSQUARES_H

#include <QObject>
#include <QVector>

class LeastSquares : public QObject
{
	Q_OBJECT
public:
	explicit LeastSquares(QObject *parent = nullptr);

	Q_INVOKABLE	double	getStartXValue(int index);
	Q_INVOKABLE	double	getStartYValue(int index);
	Q_INVOKABLE	double	getResultXValue(int index);
	Q_INVOKABLE	double	getResultYValue(int index);

	Q_INVOKABLE	double	getScatterSize();
	Q_INVOKABLE	double	getLinearSize();

	void				countABValues();
	double				sumMulti();
	double				sumSquares();
	double				sumX();
	double				sumY();

signals:

private:
	QVector<double>	start_x = {7, 31, 61, 99, 129, 178, 209};
	QVector<double> start_y = {13, 10, 9, 10, 12, 20, 26};

	QVector<double> result_y = {};
	QVector<double>	result_x = {0, 209};

	QVector<double>	a_b = {0, 0};
};

#endif // LEASTSQUARES_H
