import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 400
    height: 300
    visible: true
    title: "Qt + QML + tox"

    Rectangle {
        anchors.fill: parent
        color: "#2e3440"

        Text {
            anchors.centerIn: parent
            text: "Hello from QML"
            color: "white"
            font.pixelSize: 24
        }
    }
}
