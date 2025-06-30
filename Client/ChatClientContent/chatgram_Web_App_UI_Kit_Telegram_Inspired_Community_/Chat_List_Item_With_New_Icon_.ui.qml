import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Item_With_New_Icon_
    width: 364
    height: 72
    color: "transparent"
    property alias jessica_DrewText: jessica_Drew.text
    property alias ok_see_you_laterText: ok_see_you_later.text
    property alias elementText: element.text
    property alias element1Text: element1.text

    RowLayout {
        id: chat_List_Item_With_New_Icon__instance_layout
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
            source: "assets/avatar_2.png"
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
                            id: jessica_Drew
                            x: 0
                            y: 0
                            width: 237
                            height: 20
                            color: "#011627"
                            text: qsTr("Jessica Drew")
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
                            text: qsTr("18:30")
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
                        spacing: 138
                        Text {
                            id: ok_see_you_later
                            x: 0
                            y: 0
                            width: 113
                            height: 18
                            color: "#707991"
                            text: qsTr("Ok, see you later")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 113
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
                                    text: qsTr("2")
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
    D{i:0;uuid:"d2903381-c595-521a-8a80-4bf935258c6d"}D{i:1;uuid:"d2903381-c595-521a-8a80-4bf935258c6d_HORIZONTAL"}
D{i:2;uuid:"935e3945-59e4-557f-8c14-89a465060a85"}D{i:3;uuid:"0324e946-4357-58d2-99a7-1307d7bb3f00"}
D{i:4;uuid:"0324e946-4357-58d2-99a7-1307d7bb3f00_VERTICAL"}D{i:5;uuid:"7b73c887-17eb-5440-8ff3-b4ebd8737524"}
D{i:6;uuid:"7b73c887-17eb-5440-8ff3-b4ebd8737524_HORIZONTAL"}D{i:7;uuid:"01da9ee3-200a-5695-abf7-68e11483669e"}
D{i:8;uuid:"41195ef3-6e79-5c5b-8772-bd46b2229477"}D{i:9;uuid:"f7f49ecd-af3b-531d-b45b-44757994bfdf"}
D{i:10;uuid:"f7f49ecd-af3b-531d-b45b-44757994bfdf_HORIZONTAL"}D{i:11;uuid:"d64a3b2f-6b7a-5954-9659-50d9f62117e9"}
D{i:12;uuid:"34a10aa9-bc99-54fd-a03c-43a2553ed40c"}D{i:13;uuid:"34a10aa9-bc99-54fd-a03c-43a2553ed40c_VERTICAL"}
D{i:14;uuid:"34a10aa9-bc99-54fd-a03c-43a2553ed40c_VERTICAL_SpacerFrontal"}D{i:15;uuid:"97147155-a8c3-59dc-8673-9bedc6ca02fd"}
D{i:16;uuid:"34a10aa9-bc99-54fd-a03c-43a2553ed40c_VERTICAL_SpacerRear"}
}
##^##*/

