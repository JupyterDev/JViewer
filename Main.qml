import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 640
    height: 540
    visible: true
    title: qsTr("JViewer")
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        color: "#f8f9fa"
        border.color: "#e9ecef"
        border.width: 1

        Rectangle {
            width: 160
            height: parent.height
            color: "#ffffff"
            border.color: "#adb5bd"
            border.width: 1

            // HEADER
            Rectangle {
                id: header
                width: parent.width
                height: 40
                color: "transparent"
                border.color: "#adb5bd"
                border.width: 1

                Text {
                    text: "JViewer"
                    anchors.centerIn: parent
                    color: "#333"
                    font.pixelSize: 15
                    font.bold: true
                }
            }

            // BOTTOM (MENU AREA)
            Rectangle {
                anchors.top: header.bottom
                width: parent.width
                height: parent.height - header.height
                color: "transparent"

                property var menuItems: [
                    "New File",
                    "Load File",
                    "Save File",
                    "Settings",
                    "Exit"
                ]

                Column {
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 10

                    Repeater {
                        model: menuItems

                        Button {
                            text: modelData
                            width: 140
                        }
                    }
                }
            }
        }

    }
}
