import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: element
    width: 364
    height: 720
    color: "#ffffff"

    ColumnLayout {
        id: left_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 8
        Search_Bar {
            id: search_Bar
            x: 0
            y: 0
            width: 364
            height: 56
            Layout.preferredHeight: 56
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Chats_List_1 {
            id: chats_List
            x: 0
            y: 0
            width: 364
            height: 656
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"38faaa28-7939-5dfe-8df6-89c21310a944"}D{i:1;uuid:"38faaa28-7939-5dfe-8df6-89c21310a944_VERTICAL"}
D{i:2;uuid:"bc8f573e-4064-5772-89d3-aad6b3518818"}D{i:3;uuid:"f792c8d7-dcda-52b9-9ec6-5d46ba7976db"}
}
##^##*/

