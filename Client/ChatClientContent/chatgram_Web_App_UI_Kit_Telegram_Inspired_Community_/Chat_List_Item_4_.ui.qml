import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Item_4_
    width: 364
    height: 72
    color: "transparent"
    property alias little_SisterText: little_Sister.text
    property alias wedText: wed.text

    RowLayout {
        id: chat_List_Item_4__instance_layout
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
            source: "assets/avatar_7.png"
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
                            id: little_Sister
                            x: 0
                            y: 0
                            width: 243
                            height: 20
                            color: "#011627"
                            text: qsTr("Little Sister")
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
                            id: wed
                            x: 0
                            y: 0
                            width: 27
                            height: 16
                            color: "#707991"
                            text: qsTr("Wed")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 27
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
                            id: tell_mom_i_will_be_home_for_tea_
                            x: 1
                            y: 1
                            source: "assets/tell_mom_i_will_be_home_for_tea_.png"
                            Layout.preferredWidth: 218
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
    D{i:0;uuid:"34fa4730-ffc0-50e5-a3ff-52ce6e44b03c"}D{i:1;uuid:"34fa4730-ffc0-50e5-a3ff-52ce6e44b03c_HORIZONTAL"}
D{i:2;uuid:"0d8afc9a-095f-5443-a599-4e5f7f62221a"}D{i:3;uuid:"0a42718d-5c9f-5cd4-b4ff-af9c7ad7bcd3"}
D{i:4;uuid:"0a42718d-5c9f-5cd4-b4ff-af9c7ad7bcd3_VERTICAL"}D{i:5;uuid:"ddda7db4-c24e-53e2-87fe-c53a1f574fde"}
D{i:6;uuid:"ddda7db4-c24e-53e2-87fe-c53a1f574fde_HORIZONTAL"}D{i:7;uuid:"3d590dff-0dbb-5f47-9492-00165664afd9"}
D{i:8;uuid:"de692f11-274a-5e29-a654-62be8c7be15b"}D{i:9;uuid:"8990989d-cd1f-551f-bd96-51617a1015b6"}
D{i:10;uuid:"8990989d-cd1f-551f-bd96-51617a1015b6_HORIZONTAL"}D{i:11;uuid:"604817b7-fa90-5195-91ca-191b47e38111"}
D{i:12;uuid:"8990989d-cd1f-551f-bd96-51617a1015b6_HORIZONTAL_SpacerRear"}
}
##^##*/

