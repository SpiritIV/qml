import QtQuick 2.0
import QtCharts 2.3
import CustomGraphPack 1.0

Item {
	CustomGraph
	{
		id: _new_graph
	}

	ChartView
	{

		anchors.fill: parent
		antialiasing: true

		ValueAxis {
				id: xAxis
				min: 0
				max: 5
		}

		ValueAxis {
				id: yAxis
				min: 0
				max: 5
		}

		SplineSeries
		{
			id: _my_graph

			axisX: xAxis
			axisY: yAxis

//			color: _new_graph.getColor()
		}

		Component.onCompleted:
		{
			for (var i = 0; i < _new_graph.getSize(); i++)
			{
				_my_graph.insert(i, _new_graph.getXCoordByIndex(i), _new_graph.getYCoordByIndex(i))
			}
		}
	}
}
