import QtQuick 2.15
import QtQuick.Layouts 1.1

Rectangle {
    id: banner
    height: 80
    color: "#000000"

    GridLayout {
        anchors.fill: parent
        rows: 1
        columns: 3

        Rectangle {
            Layout.leftMargin: 10
            Layout.topMargin: 20
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

            Image {
                id: arrow
                source: "./images/icon-left-arrow.png"
                visible: root.currentIndex == 1 ? true : false

                MouseArea {
                    anchors.fill: parent
                    onClicked: root.currentIndex = 0;
                }
            }
        }

        Text {
            id: stocText
            color: "#ffffff"
            font.family: "Abel"
            font.pointSize: 40
            text: "Stoc"
            Layout.alignment: Qt.AlignRight
            Layout.leftMargin: parent.width / 2.5
        }

        Text {
            id: qtText
            color: "#5caa15"
            font.family: "Abel"
            font.pointSize: 40
            text: "Qt"
            Layout.fillWidth: true
        }
    }
}
