import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Item_3_
    width: 364
    height: 72
    color: "transparent"
    property alias emily_DorsonText: emily_Dorson.text
    property alias elementText: element.text

    RowLayout {
        id: chat_List_Item_3__instance_layout
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
            source: "assets/avatar_5.png"
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
                            id: emily_Dorson
                            x: 0
                            y: 0
                            width: 238
                            height: 20
                            color: "#011627"
                            text: qsTr("Emily Dorson")
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
                            text: qsTr("17:42")
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
                            id: table_for_four_5PM_Be_there_
                            x: 1
                            y: 3
                            source: "assets/table_for_four_5PM_Be_there_.png"
                            Layout.preferredWidth: 192
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
    D{i:0;uuid:"39d04be3-6c44-531a-8d51-b26acf854088"}D{i:1;uuid:"39d04be3-6c44-531a-8d51-b26acf854088_HORIZONTAL"}
D{i:2;uuid:"54e0ec73-7a05-5e4f-a698-74f5085e0fa6"}D{i:3;uuid:"c3d17568-313e-5027-b016-5b059ae22eca"}
D{i:4;uuid:"c3d17568-313e-5027-b016-5b059ae22eca_VERTICAL"}D{i:5;uuid:"6940a440-2a59-5b40-b52c-20ea4330a825"}
D{i:6;uuid:"6940a440-2a59-5b40-b52c-20ea4330a825_HORIZONTAL"}D{i:7;uuid:"bb739c34-affb-513b-b5ba-69c5fd6775a1"}
D{i:8;uuid:"1c9b1b16-a5c0-5e6b-9b07-81708d778d77"}D{i:9;uuid:"eafc07ec-d449-5c18-b9a7-ffd03a2d41f1"}
D{i:10;uuid:"eafc07ec-d449-5c18-b9a7-ffd03a2d41f1_HORIZONTAL"}D{i:11;uuid:"55714a13-6098-5e01-8efc-db9188e3550e"}
D{i:12;uuid:"eafc07ec-d449-5c18-b9a7-ffd03a2d41f1_HORIZONTAL_SpacerRear"}
}
##^##*/

