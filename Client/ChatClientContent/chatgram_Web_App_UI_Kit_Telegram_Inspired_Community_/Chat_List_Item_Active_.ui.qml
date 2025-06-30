import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Item_Active_
    width: 364
    height: 72
    color: "#f5f5f5"
    property alias david_MooreText: david_Moore.text
    property alias you_i_don_t_remember_anything_Text: you_i_don_t_remember_anything_.text
    property alias elementText: element.text

    RowLayout {
        id: chat_List_Item_Active__instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 12
        anchors.bottomMargin: 12
        spacing: 16
        Image {
            id: avatar
            x: 16
            y: 12
            source: "assets/avatar_3.png"
            Layout.preferredWidth: 48
            Layout.preferredHeight: 48
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: texts
            x: 0
            y: 0
            width: 268
            height: 42
            color: "transparent"
            ColumnLayout {
                id: texts_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 4
                Rectangle {
                    id: name
                    x: 0
                    y: 0
                    width: 268
                    height: 20
                    color: "transparent"
                    RowLayout {
                        id: name_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 0
                        Text {
                            id: david_Moore
                            x: 0
                            y: 0
                            width: 239
                            height: 20
                            color: "#011627"
                            text: qsTr("David Moore")
                            font.pixelSize: 16
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 20
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.Wrap
                            font.weight: Font.DemiBold
                            font.family: "Inter"
                            Layout.preferredHeight: 20
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: element
                            x: 0
                            y: 0
                            width: 31
                            height: 16
                            color: "#707991"
                            text: qsTr("18:16")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 31
                            Layout.preferredHeight: 16
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }
                    }
                    Layout.preferredHeight: 20
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }

                Rectangle {
                    id: message
                    x: 0
                    y: 0
                    width: 268
                    height: 18
                    color: "transparent"
                    RowLayout {
                        id: message_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 0
                        Text {
                            id: you_i_don_t_remember_anything_
                            x: 0
                            y: 0
                            width: 225
                            height: 18
                            color: "#707991"
                            text: qsTr("You: i don't remember anything 😄 ")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 225
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
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
                    Layout.preferredHeight: 18
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
            }
            clip: true
            Layout.preferredHeight: 42
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"8d1583af-9fc9-5ec1-96b6-25bc329280fc"}D{i:1;uuid:"8d1583af-9fc9-5ec1-96b6-25bc329280fc_HORIZONTAL"}
D{i:2;uuid:"1af02498-319f-52aa-abe4-eacb0d87ab30"}D{i:3;uuid:"e3ccef8c-04a5-57ec-a889-27b62e8c7785"}
D{i:4;uuid:"e3ccef8c-04a5-57ec-a889-27b62e8c7785_VERTICAL"}D{i:5;uuid:"88504642-881d-5b8b-b3aa-a441c02b111d"}
D{i:6;uuid:"88504642-881d-5b8b-b3aa-a441c02b111d_HORIZONTAL"}D{i:7;uuid:"5835dbe0-8c50-5362-9280-7ee06c088e93"}
D{i:8;uuid:"d8a5ace2-20fe-517b-a408-13d69d534c9e"}D{i:9;uuid:"41e201ef-5809-5910-80d4-8642901ccf8c"}
D{i:10;uuid:"41e201ef-5809-5910-80d4-8642901ccf8c_HORIZONTAL"}D{i:11;uuid:"6d8f0d5a-e58c-5f5a-b659-e415d01ad07a"}
D{i:12;uuid:"41e201ef-5809-5910-80d4-8642901ccf8c_HORIZONTAL_SpacerRear"}
}
##^##*/

