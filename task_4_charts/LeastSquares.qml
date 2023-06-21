import QtQuick 2.0
import QtCharts 2.3
import LeastSquaresPack 1.0

Item {
	LeastSquares
	{
		id: _least_squares
	}

	ChartView
	{
		anchors.fill: parent
		antialiasing: true

		ValueAxis
		{
			id: xAxis

			min: 0
			max: 210
		}

		ValueAxis
		{
			id: yAxis

			min: 0
			max: 30
		}

		ScatterSeries
		{
			id: _scatter

			axisX: xAxis
			axisY: yAxis
		}

		LineSeries
		{
			id: _line

			axisX: xAxis
			axisY: yAxis
		}

		Component.onCompleted:
		{
			for (var i = 0; i < _least_squares.getScatterSize(); i++)
			{
				_scatter.insert(i, _least_squares.getStartXValue(i), _least_squares.getStartYValue(i))
			}

			for (var j = 0; j < _least_squares.getLinearSize(); j++)
			{
				_line.insert(j, _least_squares.getResultXValue(j), _least_squares.getResultYValue(j))
			}
		}
	}
}
