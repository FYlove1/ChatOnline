import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Chatgram_Bot_Item_
    width: 364
    height: 72
    color: "transparent"
    property alias chatgram_Web_was_updated_Text: chatgram_Web_was_updated_.text
    property alias chatgramText: chatgram.text
    property alias elementText: element.text
    property alias element1Text: element1.text

    RowLayout {
        id: chat_List_Chatgram_Bot_Item__instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 12
        anchors.bottomMargin: 12
        spacing: 16
        Rectangle {
            id: avatar
            x: 0
            y: 0
            width: 48
            height: 48
            color: "#8babd8"
            radius: 100
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
                            id: chatgram
                            x: 0
                            y: 0
                            width: 237
                            height: 20
                            color: "#011627"
                            text: qsTr("Chatgram")
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
                            width: 33
                            height: 16
                            color: "#707991"
                            text: qsTr("19:48")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 33
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
                        spacing: 58
                        Text {
                            id: chatgram_Web_was_updated_
                            x: 0
                            y: 0
                            width: 193
                            height: 18
                            color: "#707991"
                            text: qsTr("Chatgram Web was updated.")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 193
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Rectangle {
                            id: new_message
                            x: 0
                            y: 0
                            width: 18
                            height: 18
                            color: "#78e378"
                            radius: 100
                            ColumnLayout {
                                id: new_message_layout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                spacing: 0
                                Item {
                                    id: new_message_QtQuick_Layouts_ColumnLayout_SpacerFrontal
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillHeight: true
                                }

                                Text {
                                    id: element1
                                    x: 0
                                    y: 0
                                    width: 17
                                    height: 16
                                    color: "#ffffff"
                                    text: qsTr("1")
                                    font.pixelSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignTop
                                    lineHeight: 16
                                    lineHeightMode: Text.FixedHeight
                                    wrapMode: Text.Wrap
                                    font.weight: Font.Normal
                                    font.family: "Inter"
                                    Layout.preferredWidth: 17
                                    Layout.preferredHeight: 16
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                }

                                Item {
                                    id: new_message_QtQuick_Layouts_ColumnLayout_SpacerRear
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillHeight: true
                                }
                            }
                            Layout.preferredWidth: 18
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
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
    D{i:0;uuid:"70fe9270-fd09-5326-9c37-79cf0aa7de84"}D{i:1;uuid:"70fe9270-fd09-5326-9c37-79cf0aa7de84_HORIZONTAL"}
D{i:2;uuid:"3408af7a-8aaf-519d-8ff8-40b3b51ca709"}D{i:3;uuid:"cd66f932-1f62-5545-aaa0-5335c0f07025"}
D{i:4;uuid:"cd66f932-1f62-5545-aaa0-5335c0f07025_VERTICAL"}D{i:5;uuid:"e085808d-b255-51d6-a4ab-59dc332b63de"}
D{i:6;uuid:"e085808d-b255-51d6-a4ab-59dc332b63de_HORIZONTAL"}D{i:7;uuid:"3ea52906-67eb-5398-a759-1fdd171a9036"}
D{i:8;uuid:"1dd1c2a8-10be-5596-b1a4-944e71b9fc5e"}D{i:9;uuid:"fff925ba-c83e-551e-9781-d2cfd93c834f"}
D{i:10;uuid:"fff925ba-c83e-551e-9781-d2cfd93c834f_HORIZONTAL"}D{i:11;uuid:"85cf66eb-b4e0-5ab3-bfb2-08eadd653757"}
D{i:12;uuid:"be77db92-015a-58c8-bbab-174bd2252c70"}D{i:13;uuid:"be77db92-015a-58c8-bbab-174bd2252c70_VERTICAL"}
D{i:14;uuid:"be77db92-015a-58c8-bbab-174bd2252c70_VERTICAL_SpacerFrontal"}D{i:15;uuid:"042ca004-4205-5fae-bf19-56fcbb24cb32"}
D{i:16;uuid:"be77db92-015a-58c8-bbab-174bd2252c70_VERTICAL_SpacerRear"}
}
##^##*/

