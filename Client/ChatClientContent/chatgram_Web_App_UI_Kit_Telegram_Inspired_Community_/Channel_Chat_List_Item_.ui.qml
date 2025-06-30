import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: channel_Chat_List_Item_
    width: 364
    height: 72
    color: "transparent"
    property alias channel_createdText: channel_created.text
    property alias announcementsText: announcements.text
    property alias elementText: element.text
    property alias aText: a.text

    RowLayout {
        id: channel_Chat_List_Item__instance_layout
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
            color: "#78e378"
            radius: 100
            ColumnLayout {
                id: avatar_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 0
                Item {
                    id: avatar_QtQuick_Layouts_ColumnLayout_SpacerFrontal
                    x: 0
                    y: 0
                    width: 1
                    height: 1
                    Layout.fillHeight: true
                }

                Text {
                    id: a
                    x: 0
                    y: 0
                    width: 13
                    height: 20
                    color: "#ffffff"
                    text: qsTr("A")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.DemiBold
                    font.family: "Inter"
                    Layout.preferredWidth: 13
                    Layout.preferredHeight: 20
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                Item {
                    id: avatar_QtQuick_Layouts_ColumnLayout_SpacerRear
                    x: 0
                    y: 0
                    width: 1
                    height: 1
                    Layout.fillHeight: true
                }
            }
            clip: true
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
                            id: announcements
                            x: 0
                            y: 0
                            width: 239
                            height: 20
                            color: "#011627"
                            text: qsTr("Announcements")
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
                            text: qsTr("16:15")
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
                            id: channel_created
                            x: 0
                            y: 0
                            width: 110
                            height: 18
                            color: "#707991"
                            text: qsTr("Channel created")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 110
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
    D{i:0;uuid:"608bb7a0-31b4-5d8d-9f9f-7651743a750a"}D{i:1;uuid:"608bb7a0-31b4-5d8d-9f9f-7651743a750a_HORIZONTAL"}
D{i:2;uuid:"fa388cb0-5130-580c-a89c-c2568400f749"}D{i:3;uuid:"fa388cb0-5130-580c-a89c-c2568400f749_VERTICAL"}
D{i:4;uuid:"fa388cb0-5130-580c-a89c-c2568400f749_VERTICAL_SpacerFrontal"}D{i:5;uuid:"3e907490-d42a-517b-941c-6a291ef55cc2"}
D{i:6;uuid:"fa388cb0-5130-580c-a89c-c2568400f749_VERTICAL_SpacerRear"}D{i:7;uuid:"7b3dcb2c-1dab-57b1-931c-c89ae3ee840e"}
D{i:8;uuid:"7b3dcb2c-1dab-57b1-931c-c89ae3ee840e_VERTICAL"}D{i:9;uuid:"cf990221-ba07-530a-bc51-4143545ec8ca"}
D{i:10;uuid:"cf990221-ba07-530a-bc51-4143545ec8ca_HORIZONTAL"}D{i:11;uuid:"1bac8042-63a2-58c5-8b16-6a98f8be11fb"}
D{i:12;uuid:"2a696c96-3f05-58c6-8336-5f29f3509d79"}D{i:13;uuid:"dc61e7e0-e7dd-59f0-afdc-0ff8b25854bd"}
D{i:14;uuid:"dc61e7e0-e7dd-59f0-afdc-0ff8b25854bd_HORIZONTAL"}D{i:15;uuid:"c7ffcec9-cef4-5816-933f-48bf6d4d37da"}
D{i:16;uuid:"dc61e7e0-e7dd-59f0-afdc-0ff8b25854bd_HORIZONTAL_SpacerRear"}
}
##^##*/

