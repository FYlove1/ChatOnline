import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: main_Colors
    width: 624
    height: 144
    color: "#ffffff"
    radius: 16

    RowLayout {
        id: main_Colors_instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        anchors.topMargin: 24
        anchors.bottomMargin: 24
        spacing: 24
        Rectangle {
            id: iceBerg_Blue
            x: 0
            y: 0
            width: 96
            height: 96
            color: "#8babd8"
            radius: 8
            clip: true
            Layout.preferredWidth: 96
            Layout.preferredHeight: 96
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: light_Green
            x: 0
            y: 0
            width: 96
            height: 96
            color: "#78e378"
            radius: 8
            clip: true
            Layout.preferredWidth: 96
            Layout.preferredHeight: 96
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: red
            x: 0
            y: 0
            width: 96
            height: 96
            color: "#f71735"
            radius: 8
            clip: true
            Layout.preferredWidth: 96
            Layout.preferredHeight: 96
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: rich_Black
            x: 0
            y: 0
            width: 96
            height: 96
            color: "#011627"
            radius: 8
            clip: true
            Layout.preferredWidth: 96
            Layout.preferredHeight: 96
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: navy_Grey
            x: 0
            y: 0
            width: 96
            height: 96
            color: "#707991"
            radius: 8
            clip: true
            Layout.preferredWidth: 96
            Layout.preferredHeight: 96
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"80cc16fa-96fd-5b98-9afb-76477933b1cd"}D{i:1;uuid:"80cc16fa-96fd-5b98-9afb-76477933b1cd_HORIZONTAL"}
D{i:2;uuid:"ca538842-35e8-5edb-a3d6-22454a366f15"}D{i:3;uuid:"d43ffa82-3f2a-5d1c-a468-fb4da74461ae"}
D{i:4;uuid:"34d2dccb-3cc1-55f0-936c-0b2023b9c210"}D{i:5;uuid:"1709e35a-e019-50e1-b30b-5d67c9416429"}
D{i:6;uuid:"857372e4-ebe9-5d29-a911-15db1971d281"}
}
##^##*/

