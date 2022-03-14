import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls.Material 2.3
import "../common" as Com


Item {
    Rectangle {
        id: topBar
        color: "#424958"
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
            height: 90
            color: "#273048"
            Rectangle {
                id: rectangleTop
                height: 69
                color: "#3c4251"
                radius: 10
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                anchors.topMargin: 10

                GridLayout {
                    id: topLayout
                    anchors.fill: parent
                    anchors.rightMargin: row.width>800? row.width/3: 10
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
                            backend.welcomeText(textField1.text)
                        }
                        Keys.onReturnPressed: {
                            backend.welcomeText(textField1.text)
                        }
                    }


                    Com.BackButton{
                        id: btnChangeName1
                        text: "Bill"
                        font.letterSpacing: 2.3
                        font.family: "Times New Roman"
                        font.styleName: "Bold"
                        Layout.maximumWidth: 200
                        Layout.fillWidth: true
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 250
                        Layout.leftMargin: 5
                        onClicked: {
                            backend.welcomeText(textField.text)
                        }
                    }


                }
            }
        }
    }
    Rectangle {
        id: contentBox
        color: "#1d2128"
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: row.bottom
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10
        Com.Content{
            id: leftContent
            width: parent.width/2
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5

        }
        Com.Content{
            id: rightContent
            width: parent.width/2
            anchors.left: leftContent.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:2}D{i:1}D{i:7}D{i:8}
D{i:9}D{i:6}D{i:5}D{i:4}D{i:3}D{i:11}D{i:12}D{i:10}
}
##^##*/
