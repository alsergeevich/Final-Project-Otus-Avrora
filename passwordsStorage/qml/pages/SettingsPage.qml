import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    objectName: "mainPage"
    allowedOrientations: Orientation.All
    PageHeader {
        id: pheader
        title: qsTr("Страница для удаления базы")
    }

    IconButton {
        id: btn
        anchors.centerIn: parent
        icon.source: "qrc:/image/danger.png"
        icon.scale: 2
        onClicked: {
            console.log("Killed database")
            passwordManager.dropTable();
            pageStack.push(Qt.resolvedUrl("DialogPagePasswordSet.qml"))
        }
    }

}
