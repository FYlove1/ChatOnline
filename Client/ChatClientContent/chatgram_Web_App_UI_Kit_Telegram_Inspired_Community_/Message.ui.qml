import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: message
    width: 1280
    height: 720
    color: "#8babd8"

    RowLayout {
        id: message_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Image {
            id: bg_print
            x: 0
            y: 0
            source: "assets/bg_print.png"
            clip: true
            Layout.preferredWidth: 1280
            Layout.preferredHeight: 720
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Item {
            id: message_QtQuick_Layouts_RowLayout_SpacerRear
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
    D{i:0;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d"}D{i:1;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d_HORIZONTAL"}
D{i:2;uuid:"a164412a-ffef-5b3a-a1b4-0f4e53046362"}D{i:3;uuid:"bc7b0c70-7356-5722-bcbc-a9e32975173d_HORIZONTAL_SpacerRear"}
}
##^##*/

