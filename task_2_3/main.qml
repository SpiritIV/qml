import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 800
    height: 400
    title: qsTr("Square of triangle")

    GridLayout
    {
        id: _layout_grid

        columns: 6
        rows: 5

        anchors.centerIn: parent

        //Task 2
        Label
        {
            text: "Side a"

            Layout.row: 0
            Layout.column: 1

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Side b"

            Layout.row: 0
            Layout.column: 2

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Side c"

            Layout.row: 0
            Layout.column: 3

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Result"

            Layout.row: 0
            Layout.column: 4

            width: parent.width / 4
            height: 20
        }

        TextField
        {
            id: _side_a

            placeholderText: "Enter side a";

            Layout.row: 1
            Layout.column: 1

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _side_b

            placeholderText: "Enter side b";

            Layout.row: 1
            Layout.column: 2

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _side_c

            placeholderText: "Enter side c";

            Layout.row: 1
            Layout.column: 3

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _result_2

            Layout.row: 1
            Layout.column: 4

            width: parent.width / 4
            height: 20

            focus: true
        }

        Button
        {
            id: _result_task_2

            text: "Result for task 2"

            Layout.row: 1
            Layout.column: 5

            onClicked:
            {
                 _result_2.text = getSquareTask2(_side_a.text, _side_b.text, _side_c.text)
            }
        }

        //Task 3

        Label
        {
            text: "x"

            Layout.row: 3
            Layout.column: 0

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "y"

            Layout.row: 4
            Layout.column: 0

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Point A"

            Layout.row: 2
            Layout.column: 1

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Point B"

            Layout.row: 2
            Layout.column: 2

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Point C"

            Layout.row: 2
            Layout.column: 3

            width: parent.width / 4
            height: 20
        }

        Label
        {
            text: "Result"

            Layout.row: 2
            Layout.column: 4

            width: parent.width / 4
            height: 20
        }

        TextField
        {
            id: _point_a_x

            placeholderText: "Enter x for A";

            Layout.row: 3
            Layout.column: 1

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _point_a_y

            placeholderText: "Enter y for A";

            Layout.row: 4
            Layout.column: 1

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _point_b_x

            placeholderText: "Enter x for B";

            Layout.row: 3
            Layout.column: 2

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _point_b_y

            placeholderText: "Enter y for B";

            Layout.row: 4
            Layout.column: 2

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _point_c_x

            placeholderText: "Enter x for C";

            Layout.row: 3
            Layout.column: 3

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _point_c_y

            placeholderText: "Enter y for C";

            Layout.row: 4
            Layout.column: 3

            width: parent.width / 4
            height: 20

            focus: true
        }

        TextField
        {
            id: _result_3

            Layout.row: 3
            Layout.column: 4

            width: parent.width / 4
            height: 20

            focus: true
        }

        Button
        {
            id: _result_task_3

            text: "Result for task 3"

            Layout.row: 4
            Layout.column: 4

            onClicked:
            {
                _result_3.text = getSquareTask3(_point_a_x.text, _point_a_y.text, _point_b_x.text, _point_b_y.text, _point_c_x.text, _point_c_y.text)
            }
        }
    }

    function getSquareTask2(a, b, c)
    {
        var p = (Number(a) + Number(b) + Number(c)) / 2
        var res = Math.sqrt(p * (p - a) * (p - b) * (p - c))
        return res.toPrecision(1)
    }

    function getSquareTask3(a_x, a_y, b_x, b_y, c_x, c_y)
    {
        var res = Math.abs(0.5 * ((Number(b_x) - Number(a_x)) * (Number(c_y) - Number(a_y)) - (Number(c_x) - Number(a_x)) * (Number(b_y) - Number(a_y))))
        return res.toPrecision(2)
    }

}
