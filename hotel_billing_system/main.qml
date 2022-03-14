import QtQuick
import QtQuick.Window
import "components/common" as Com
import "components/pages" as Pages
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.3
import QtQuick.Layouts 1.3

Window {
    id: window
    width: 780
    height: 480
    minimumHeight: 500
    minimumWidth: 500
    visible: true
    title: qsTr("Responsive Layout")

    Rectangle {
        id: rectangle
        color: "#495163"
        anchors.fill: parent
        Loader {
            id: mainLoader
            anchors.fill: parent
            source: "components/common/StackViewPage.qml"


        }

    }







}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:2}D{i:1}
}
##^##*/
