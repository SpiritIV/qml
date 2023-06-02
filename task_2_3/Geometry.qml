import QtQuick 2.0

Item {
//    property color rec_color: _rectangle.color
    Rectangle
    {
        id: _rectangle

        width: 200
        height: 200

        color: "red"

        MouseArea
        {
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton

            onClicked:
            {
                if (mouse.button === Qt.LeftButton)
                {
                    parent.color = getRandColor()
                }
                else
                {
                    _rotate_rect.start()
                }

            }

            onDoubleClicked:
            {
                if (mouse.button === Qt.LeftButton)
                    parent.radius = checkRadius(parent.radius)
            }
        }

        RotationAnimation on rotation
        {
            id: _rotate_rect

            loops: 1
            from: 0
            to: 360
        }
    }

    function getRandColor()
    {
        var randomColor = Math.floor(Math.random()*16777215).toString(16);

        return "#" + randomColor
    }

    function checkRadius(r)
    {
        if (r === 0)
        {
            return 100
        }
        else
        {
            return 0
        }
    }
}
