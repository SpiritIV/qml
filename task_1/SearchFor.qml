import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    property string age_from: _age_from.text
    property string age_to: _age_to.text
    property string search_gender: _gender.currentText
    property string edu: _edu_group.checkedButton.text

    GridLayout
    {
        id: _main_grid

        rows: 3
        columns: 4



        Label
        {
            Layout.row: 0
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
            id: _age_from

            Layout.row: 0
            Layout.column: 1

            placeholderText: "From"

            focus: true
        }

        Label
        {
            Layout.row: 0
            Layout.column: 2

            text: " - "

            font
            {
                family: "Arial"
                bold: true
                pixelSize: 14
            }
        }

        TextField
        {
            id: _age_to

            Layout.row: 0
            Layout.column: 3

            placeholderText: "To"

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

            Layout.row: 2
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

    }
}
