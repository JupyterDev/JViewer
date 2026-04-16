import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JViewer")

    Text {
        id: helloText
        text: "Hello, World!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
}
