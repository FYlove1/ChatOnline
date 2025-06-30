import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: group_Chat_List_Item_
    width: 364
    height: 72
    color: "transparent"
    property alias elementText: element.text
    property alias office_ChatText: office_Chat.text

    RowLayout {
        id: group_Chat_List_Item__instance_layout
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
            source: "assets/avatar_6.png"
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
                            id: office_Chat
                            x: 0
                            y: 0
                            width: 238
                            height: 20
                            color: "#011627"
                            text: qsTr("Office Chat")
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
                            width: 32
                            height: 16
                            color: "#707991"
                            text: qsTr("17:08")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 32
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
                        Image {
                            id: lewis_All_done_mate_
                            x: 1
                            y: 1
                            source: "assets/lewis_All_done_mate_.png"
                            Layout.preferredWidth: 154
                            Layout.preferredHeight: 14
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
    D{i:0;uuid:"9e9947c4-6fd5-5d36-bb3b-69b692526e03"}D{i:1;uuid:"9e9947c4-6fd5-5d36-bb3b-69b692526e03_HORIZONTAL"}
D{i:2;uuid:"86f5aff0-df71-5fe0-9419-f3caf2e9a952"}D{i:3;uuid:"0eea5a15-a0f7-53b7-b6aa-cb23e85816b0"}
D{i:4;uuid:"0eea5a15-a0f7-53b7-b6aa-cb23e85816b0_VERTICAL"}D{i:5;uuid:"dd031add-c253-5e85-be93-19967df09d8f"}
D{i:6;uuid:"dd031add-c253-5e85-be93-19967df09d8f_HORIZONTAL"}D{i:7;uuid:"6dfddd00-7123-5114-981b-9464da92eab5"}
D{i:8;uuid:"853038e9-4f5c-5244-b7a2-79d0048debae"}D{i:9;uuid:"c1d5d343-ec18-53b6-8849-a0ef1d396b98"}
D{i:10;uuid:"c1d5d343-ec18-53b6-8849-a0ef1d396b98_HORIZONTAL"}D{i:11;uuid:"0055a7c7-a5f7-56b0-a5e5-d57d70763532"}
D{i:12;uuid:"c1d5d343-ec18-53b6-8849-a0ef1d396b98_HORIZONTAL_SpacerRear"}
}
##^##*/

