import QtQuick 2.0
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3
import "../../fonts/MaterialDesign.js" as Md
import "../common" as Com

Item {
    id: dashBoard
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    anchors.right: parent.right
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
        anchors.verticalCenter: parent.verticalCenter
        anchors.top: topBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        spacing: 20
//        FontLoader {
//            id: iconFont
//            source: "../../fonts/MaterialIcons-Regular.ttf"
//        }
        Rectangle {
            id: rectangle
            Layout.fillWidth: true
            height: 200
            color: Material.color(Material.Red)
            Image{
                anchors.bottomMargin: 60
                anchors.leftMargin: parent.width>250? 80: 0
                anchors.rightMargin: parent.width>250? 80: 0
                anchors.fill: parent
                source:'../../icons/food2.png'
                anchors.centerIn: parent

            }

            Text {
                id: text1
                text: qsTr("Foods")
                font.pixelSize: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.wordSpacing: 0.2
                font.bold: true
                color: "#d9d8d8"
            }
            MouseArea {
                   anchors.fill: parent
                   onClicked: {
                        stackview.push( "../../components/pages/FoodService.qml" )
                    }
            }
        }
        Rectangle {
            id: rectangle1
            Layout.fillWidth: true
            height: 200
            color: Material.color(Material.Orange)
            Image{
                anchors.bottomMargin: 60
                anchors.leftMargin: parent.width>250? 80: 0
                anchors.rightMargin: parent.width>250? 80: 0
                anchors.fill: parent
                source:'../../icons/rooms.png'
                anchors.centerIn: parent

            }
            Text {
                id: text2
                color: "#262626"
                text: qsTr("Rooms")
                font.pixelSize: 20
                font.wordSpacing: 0.2
                font.bold: true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            MouseArea {
                   anchors.fill: parent
                   onClicked: {
                   stackview.push( "../../components/pages/RoomService.qml" )}
            }
        }
        Rectangle {
            id: rectangle2
            Layout.fillWidth: true
            height: 200
            color: "#a71bd1b6"
            Image{
                anchors.bottomMargin: 60
                anchors.leftMargin: parent.width>250? 80: 0
                anchors.rightMargin: parent.width>250? 80: 0
                anchors.fill: parent
                source:'../../icons/food.png'
                anchors.centerIn: parent

            }
            Text {
                id: text3
                color: "#d9d8d8"
                text: qsTr("Bills")
                font.pixelSize: 20
                font.wordSpacing: 0.2
                font.bold: true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            MouseArea {
                   anchors.fill: parent
                   onClicked: {  }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:0;width:0}D{i:2}D{i:1}D{i:5}D{i:6}D{i:7}D{i:4}D{i:9}D{i:10}D{i:11}D{i:8}
D{i:13}D{i:14}D{i:15}D{i:12}D{i:3}
}
##^##*/
