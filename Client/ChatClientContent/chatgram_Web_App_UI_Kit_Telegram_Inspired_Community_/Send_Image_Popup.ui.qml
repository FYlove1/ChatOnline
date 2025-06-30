import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: send_Image_Popup
    width: 420
    height: 468
    color: "#ffffff"
    radius: 16
    property alias captionText: caption.text

    ColumnLayout {
        id: send_Image_Popup_instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Image {
            id: element
            x: 0
            y: 0
            source: "assets/element.png"
            Layout.preferredHeight: 52
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Rectangle {
            id: image1
            x: 0
            y: 0
            width: 420
            height: 332
            color: "#ffffff"
            RowLayout {
                id: image_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                anchors.topMargin: 8
                spacing: 16
                Image {
                    id: image
                    x: 16
                    y: 8
                    source: "assets/image.png"
                    clip: true
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }
            }
            Layout.preferredHeight: 332
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Rectangle {
            id: input
            x: 0
            y: 0
            width: 420
            height: 84
            color: "#ffffff"
            RowLayout {
                id: input_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 16
                anchors.rightMargin: 16
                anchors.topMargin: 16
                anchors.bottomMargin: 16
                spacing: 16
                Rectangle {
                    id: caption_Input
                    x: 0
                    y: 0
                    width: 388
                    height: 52
                    color: "transparent"
                    radius: 16
                    border.color: "#d9dce0"
                    border.width: 1
                    RowLayout {
                        id: caption_Input_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 16
                        anchors.rightMargin: 16
                        anchors.topMargin: 8
                        anchors.bottomMargin: 8
                        spacing: 16
                        Text {
                            id: caption
                            x: 0
                            y: 0
                            width: 60
                            height: 20
                            color: "#707991"
                            text: qsTr("Caption")
                            font.pixelSize: 16
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 20
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 60
                            Layout.preferredHeight: 20
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Item {
                            id: caption_Input_QtQuick_Layouts_RowLayout_SpacerRear
                            x: 0
                            y: 0
                            width: 1
                            height: 1
                            Layout.fillWidth: true
                        }
                    }
                    Layout.preferredHeight: 52
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                }
            }
            Layout.preferredHeight: 84
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"2b55a99c-97fd-503c-932d-777f8bfbc457"}D{i:1;uuid:"2b55a99c-97fd-503c-932d-777f8bfbc457_VERTICAL"}
D{i:2;uuid:"70ec0676-88a2-5e6a-b2b6-f5ce13b20951"}D{i:3;uuid:"cbb2cf68-1084-517b-9b7c-1e7d712ceda9"}
D{i:4;uuid:"cbb2cf68-1084-517b-9b7c-1e7d712ceda9_HORIZONTAL"}D{i:5;uuid:"fddfda01-88a8-5461-8570-53a8fd545374"}
D{i:6;uuid:"706accd4-6fae-582f-ac51-055b30026398"}D{i:7;uuid:"706accd4-6fae-582f-ac51-055b30026398_HORIZONTAL"}
D{i:8;uuid:"a50deac4-a3b7-5a44-ba93-af1c68e1facb"}D{i:9;uuid:"a50deac4-a3b7-5a44-ba93-af1c68e1facb_HORIZONTAL"}
D{i:10;uuid:"3a012eb3-350b-5c48-81e5-eb33abb8b05f"}D{i:11;uuid:"a50deac4-a3b7-5a44-ba93-af1c68e1facb_HORIZONTAL_SpacerRear"}
}
##^##*/

