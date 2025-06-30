import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Item_2_
    width: 364
    height: 72
    color: "transparent"
    property alias greg_JamesText: greg_James.text
    property alias elementText: element.text

    RowLayout {
        id: chat_List_Item_2__instance_layout
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
            source: "assets/avatar_4.png"
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
                            id: greg_James
                            x: 0
                            y: 0
                            width: 237
                            height: 20
                            color: "#011627"
                            text: qsTr("Greg James")
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
                            text: qsTr("18:02")
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
                        spacing: 0
                        Image {
                            id: i_got_a_job_at_SpaceX_
                            x: 1
                            y: 1
                            source: "assets/i_got_a_job_at_SpaceX_.png"
                            Layout.preferredWidth: 172
                            Layout.preferredHeight: 17
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
    D{i:0;uuid:"d30e7aa0-84f7-5df4-987b-81bf4cf85ab4"}D{i:1;uuid:"d30e7aa0-84f7-5df4-987b-81bf4cf85ab4_HORIZONTAL"}
D{i:2;uuid:"4f49ecc8-a09a-564c-975e-82555e2cdba3"}D{i:3;uuid:"4c7e53cc-9bf8-5b28-a305-8a5b8f2ee3b7"}
D{i:4;uuid:"4c7e53cc-9bf8-5b28-a305-8a5b8f2ee3b7_VERTICAL"}D{i:5;uuid:"b317ccba-b451-5c4b-bdb6-50b94efdf91b"}
D{i:6;uuid:"b317ccba-b451-5c4b-bdb6-50b94efdf91b_HORIZONTAL"}D{i:7;uuid:"da1002fc-1e95-582f-a08f-8f470f5825cf"}
D{i:8;uuid:"4e8993f5-bb45-527b-8232-ea65928d2974"}D{i:9;uuid:"a54a6fd9-09ff-5823-a61e-4f14ba6853d6"}
D{i:10;uuid:"a54a6fd9-09ff-5823-a61e-4f14ba6853d6_HORIZONTAL"}D{i:11;uuid:"34552707-f611-5681-ba00-396d0908cfb4"}
D{i:12;uuid:"a54a6fd9-09ff-5823-a61e-4f14ba6853d6_HORIZONTAL_SpacerRear"}
}
##^##*/

