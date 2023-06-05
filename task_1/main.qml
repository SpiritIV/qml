import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Window {
    id: _root

    visible: true
    width: 800
    height: 800
    title: qsTr("Dating service")

    color: "#c1e1c3"

    ScrollView
    {
        width: parent.width
        height: 500

        Column
        {
            height: parent.height
            width: parent.width / 2

            anchors.horizontalCenter: parent.horizontalCenter

            YourData
            {
                id: _your_data

                height: 600
                width: parent.width
            }

            Label
            {
                id: _search_label
                text: " Search for... "

                width: parent.width
                height: 40

                font
                {
                    family: "Arial"
                    bold: true
                    pixelSize: 20
                }
            }

            SearchFor
            {
                id: _search_for

                height: 300
                width: parent.width
            }

            Button
            {
                id: _register

                width: 150
                height: 50

                text: "Register"

                onClicked:
                {
                    printStr("Name: " + _your_data.name)
                    printStr("Gender: " + _your_data.gender)
                    printStr("Age: " + _your_data.age)
                    printStr("Education: " + _your_data.edu)
                    printHobbies(_your_data.hobby)
                    printStr("About: " + _your_data.about)
                    printStr("Serach for...")
                    printStr("Age from " + _search_for.age_from + " to " + _search_for.age_to)
                    printStr("Gender: " + _search_for.search_gender)
                    printStr("Education: " + _search_for.edu)
                }
            }
        }
    }

    function printStr(str)
    {
        console.log(str + "\n")
    }

    function printHobbies(hobbies)
    {
        var result;

        result = "Hobbies: "

        for (var i = 0; i < hobbies.length; ++i)
        {
            if (hobbies[i].checked)
            {
                result += hobbies[i].text
                result += "\n"
            }
        }
        console.log(result);
    }

}
