import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: passwPage
    objectName: "passwPage"
    allowedOrientations: Orientation.All

    Column {
        width: parent.width
        spacing: Theme.paddingLarge
        PageHeader {
            id: pheader
            title: qsTr("Установите пароль и запомните его")
        }

        TextField {
            id: txtFieldPassw

            placeholderText: qsTr("введите пароль")
        }

        Button {
            id: btn1
            anchors.horizontalCenter: parent.horizontalCenter
            preferredWidth: Theme.buttonWidthMedium
            text: qsTr("Сохранить")
            enabled: txtFieldPassw.text.length >= 6

            onClicked: {
                 passwordManager.saveEncryptionKey(txtFieldPassw.text)
                 pageStack.push(Qt.resolvedUrl("MainPage.qml"))
            }
        }

    }


}

