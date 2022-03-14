import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.3
import "../common" as Com


Item {
    Rectangle {
        id: topBar
        color: "#426097"
        height: 30
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        Com.BackButton{
            id: btnChangeName
            y: 0
            width: 60
            height: 24
            text: "Back"
            anchors.left: parent.left
            anchors.leftMargin: 0
            Layout.maximumWidth: 100
            Layout.preferredHeight: 40
            Layout.preferredWidth: 100
            onClicked: {
                stackview.pop()
            }
        }
    }
    RowLayout {
        id: row
        anchors.top: topBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        spacing: 20
        Rectangle {
            id: rectangle
            Layout.fillWidth: true
            height: 200
            color: Material.color(Material.Red)
            Rectangle {
                id: rectangleTop
                height: 69
                color: "#495163"
                radius: 10
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 20
                anchors.leftMargin: 20
                anchors.topMargin: 10

                GridLayout {
                    anchors.fill: parent
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    rows: 1
                    columns: 3

                    Com.CustomTextField{
                        id: textField
                        placeholderText: "Customer Name"
                        Layout.fillWidth: true
                        Keys.onEnterPressed: {
                            backend.welcomeText(textField.text)
                        }
                        Keys.onReturnPressed: {
                            backend.welcomeText(textField.text)
                        }
                    }
                    Com.CustomTextField{
                        id: textField1
                        placeholderText: "Phone"
                        Layout.fillWidth: true
                        Keys.onEnterPressed: {
                            backend.welcomeText(textField.text)
                        }
                        Keys.onReturnPressed: {
                            backend.welcomeText(textField.text)
                        }
                    }

//                    Com.BackButton{
//                        id: btnChangeName1
//                        text: "Change Name"
//                        Layout.maximumWidth: 200
//                        Layout.fillWidth: true
//                        Layout.preferredHeight: 40
//                        Layout.preferredWidth: 250
//                        onClicked: {
//                            backend.welcomeText(textField.text)
//                        }
//                    }


                }
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:2}D{i:1}D{i:7}D{i:8}
D{i:6}D{i:5}D{i:4}D{i:3}
}
##^##*/
