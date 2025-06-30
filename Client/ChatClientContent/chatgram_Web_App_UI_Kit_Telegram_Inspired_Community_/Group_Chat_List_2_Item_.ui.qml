import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: group_Chat_List_2_Item_
    width: 364
    height: 72
    color: "transparent"
    property alias tueText: tue.text
    property alias art_ClassText: art_Class.text
    property alias editorialText: editorial.text

    RowLayout {
        id: group_Chat_List_2_Item__instance_layout
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
            source: "assets/avatar_8.png"
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
                            id: art_Class
                            x: 0
                            y: 0
                            width: 248
                            height: 20
                            color: "#011627"
                            text: qsTr("Art Class")
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
                            id: tue
                            x: 0
                            y: 0
                            width: 22
                            height: 16
                            color: "#707991"
                            text: qsTr("Tue")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 22
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
                        spacing: 4
                        Image {
                            id: emily_
                            x: 1
                            y: 4
                            source: "assets/emily_.png"
                            Layout.preferredWidth: 37
                            Layout.preferredHeight: 14
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Image {
                            id: frame_1
                            x: 43
                            y: 0
                            source: "assets/frame_1.png"
                            clip: true
                            Layout.preferredWidth: 18
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: editorial
                            x: 0
                            y: 0
                            width: 55
                            height: 18
                            color: "#707991"
                            text: qsTr("Editorial")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 55
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
    D{i:0;uuid:"73aa02a6-820c-5c53-adf3-8c905bdc4528"}D{i:1;uuid:"73aa02a6-820c-5c53-adf3-8c905bdc4528_HORIZONTAL"}
D{i:2;uuid:"b07a1feb-306c-54d1-b4a2-fb9fb6c69694"}D{i:3;uuid:"9d4f413c-a420-537b-b2d2-6a806387c8da"}
D{i:4;uuid:"9d4f413c-a420-537b-b2d2-6a806387c8da_VERTICAL"}D{i:5;uuid:"bd3cd9fc-5dc0-5014-bbb0-e1c0d74c1d86"}
D{i:6;uuid:"bd3cd9fc-5dc0-5014-bbb0-e1c0d74c1d86_HORIZONTAL"}D{i:7;uuid:"ec445ab4-3e85-58cd-8378-eea42e154578"}
D{i:8;uuid:"b6f699e4-4c2b-571b-9c6e-4e17489ff77b"}D{i:9;uuid:"09d2d772-4f4b-547a-b60b-9bff1f4dea25"}
D{i:10;uuid:"09d2d772-4f4b-547a-b60b-9bff1f4dea25_HORIZONTAL"}D{i:11;uuid:"b0ce6bb5-58f7-571b-adbc-edfa6e1022ca"}
D{i:12;uuid:"f12e872d-717d-50ef-8b9f-44eb6be37194"}D{i:13;uuid:"163b0ea4-3977-577e-99e1-b42f9a398e5a"}
D{i:14;uuid:"09d2d772-4f4b-547a-b60b-9bff1f4dea25_HORIZONTAL_SpacerRear"}
}
##^##*/

