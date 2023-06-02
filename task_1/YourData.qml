import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    property string name: _name.text
    property string gender: _gender.currentText
    property string gender_id: _gender.currentIndex
    property string age: _age.text
    property string edu: _edu_group.checkedButton.text
//    property list<Item> hobby: _group_box.contentChildren
    property string about: _about.text

//    implicitHeight: 500
//    implicitWidth: 800

    GridLayout
    {
        id: _main_grid

        rows: 7
        columns: 4

        Label
        {
            Layout.row: 0
            Layout.column: 0

            text: "Name: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        TextField
        {
            id: _name

            Layout.row: 0
            Layout.column: 1

            placeholderText: "Name"

            focus: true

        }

        Label
        {
            Layout.row: 1
            Layout.column: 0

            text: "Gender: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        ComboBox
        {
            id: _gender

            Layout.row: 1
            Layout.column: 1

            currentIndex: 2

            model: ["Male", "Female", "None"]
        }

        Label
        {
            Layout.row: 2
            Layout.column: 0

            text: "Age: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        TextField
        {
            id: _age

            Layout.row: 2
            Layout.column: 1

            placeholderText: "Age"
        }

        Label
        {
            Layout.row: 3
            Layout.column: 0

            text: "Education: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        ButtonGroup
        {
            id: _edu_group
        }

        Column
        {
            id: _edu_column

            Layout.row: 3
            Layout.column: 1

            RadioButton
            {
                id: _edu_associate

                text: "Associate"

                ButtonGroup.group: _edu_group
            }

            RadioButton
            {
                id: _edu_bachelor

                text: "Bachelor"

                ButtonGroup.group: _edu_group
            }

            RadioButton
            {
                id: _edu_master

                text: "Master"

                ButtonGroup.group: _edu_group
            }

            RadioButton
            {
                id: _edu_doctor

                text: "Doctor"

                ButtonGroup.group: _edu_group
            }
        }

        Label
        {
            Layout.row: 4
            Layout.column: 0

            text: "Hobbies: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        GroupBox
        {
            id: _group_box

            GridLayout
            {
                id: _grid_hobbies

                Layout.row: 4
                Layout.column: 1

                CheckBox
                {
                    Layout.row: 0
                    Layout.column: 0

                    text: "Reading"
                }


                CheckBox
                {
                    Layout.row: 1
                    Layout.column: 0

                    text: "Martial Arts"

                }

                CheckBox
                {
                    Layout.row: 2
                    Layout.column: 0

                    text: "Jewelry Making"

                }

                CheckBox
                {
                    Layout.row: 3
                    Layout.column: 0

                    text: "Woodworking"


                }

                CheckBox
                {
                    Layout.row: 0
                    Layout.column: 1

                    text: "Gardening"

                }

                CheckBox
                {
                    Layout.row: 1
                    Layout.column: 1

                    text: "Video Games"

                }

                CheckBox
                {
                    Layout.row: 2
                    Layout.column: 1

                    text: "Fishing"

                }

                CheckBox
                {
                    Layout.row: 3
                    Layout.column: 1

                    text: "Team Sports"

                }

                CheckBox
                {
                    Layout.row: 0
                    Layout.column: 2

                    text: "Walking"

                }

                CheckBox
                {
                    Layout.row: 1
                    Layout.column: 2

                    text: "Yoga"

                }

                CheckBox
                {
                    Layout.row: 2
                    Layout.column: 2

                    text: "Traveling"

                }

                CheckBox
                {
                    Layout.row: 3
                    Layout.column: 2

                    text: "Golf"
                }
            }
        }

        Label
        {
            Layout.row: 5
            Layout.column: 0

            text: "About: "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        TextField
        {
            id: _about

            Layout.row: 5
            Layout.column: 1

            placeholderText: "Tell something about yourself..."
        }

    }
}
