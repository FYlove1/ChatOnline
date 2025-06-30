import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chats
    width: 1280
    height: 720
    color: "#8babd8"

    RowLayout {
        id: chats_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Image {
            id: bg_print
            x: 0
            y: 0
            source: "assets/bg_print_1.png"
            clip: true
            Layout.preferredWidth: 1280
            Layout.preferredHeight: 720
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Item {
            id: chats_QtQuick_Layouts_RowLayout_SpacerRear
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillWidth: true
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"c3cbf450-7dd2-544b-85e4-1335d3bc71be"}D{i:1;uuid:"c3cbf450-7dd2-544b-85e4-1335d3bc71be_HORIZONTAL"}
D{i:2;uuid:"d1a6590b-0581-5616-a998-b3476100acef"}D{i:3;uuid:"c3cbf450-7dd2-544b-85e4-1335d3bc71be_HORIZONTAL_SpacerRear"}
}
##^##*/

