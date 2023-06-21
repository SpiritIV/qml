import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window
{
	id: _root
	property variant chosed_graph: 0

	visible: true
	width: 640
	height: 480
//	title: qsTr("Task 1")

	Rectangle
	{
		id: _main_rec

		anchors.centerIn: parent

		width: _root.width * 0.5
		height: _root.height * 0.5

		radius: 5
		color: "#bfe0b5"

		Column
		{
			anchors.centerIn: parent
			spacing: 10

			Button
			{
				id: _run_task_1

				text: "Run task 1"

				width: _main_rec.width * 0.4
				height: _main_rec.height * 0.15

				font:
				{
					pixelSize: 14;
					family: "Arial"
				}

				onClicked:
				{
					_main_rec.visible = false;

					_task_1.visible = true
				}
			}

			Button
			{
				id: _run_task_2

				text: "Run task 2"

				width: _main_rec.width * 0.4
				height: _main_rec.height * 0.15

				font:
				{
					pixelSize: 14;
					family: "Arial"
				}

				onClicked:
				{
					_main_rec.visible = false;

					_task_2.visible = true
				}
			}
		}
	}

	CreateCustomGraph
	{
		id: _task_1

		anchors.fill: parent

		visible: false
	}

	LeastSquares
	{
		id: _task_2

		anchors.fill: parent

		visible: false
	}

}
