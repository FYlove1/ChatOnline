import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: date_Sent
    width: 694
    height: 28
    color: "transparent"
    property alias todayText: today.text

    RowLayout {
        id: date_Sent_instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Item {
            id: date_Sent_instance_QtQuick_Layouts_RowLayout_SpacerFrontal
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillWidth: true
        }

        Rectangle {
            id: date_Group
            x: 0
            y: 0
            width: 71
            height: 28
            color: "#993d70b8"
            radius: 12
            ColumnLayout {
                id: date_Group_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 12
                anchors.rightMargin: 12
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                spacing: 4
                Text {
                    id: today
                    x: 0
                    y: 0
                    width: 48
                    height: 20
                    color: "#ffffff"
                    text: qsTr("Today")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Inter"
                    Layout.preferredWidth: 48
                    Layout.preferredHeight: 20
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                }
            }
            Layout.preferredWidth: 71
            Layout.preferredHeight: 28
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Item {
            id: date_Sent_instance_QtQuick_Layouts_RowLayout_SpacerRear
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillWidth: true
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"af46d21c-91e1-530e-b67a-61c5899f27bd"}D{i:1;uuid:"af46d21c-91e1-530e-b67a-61c5899f27bd_HORIZONTAL"}
D{i:2;uuid:"af46d21c-91e1-530e-b67a-61c5899f27bd_HORIZONTAL_SpacerFrontal"}D{i:3;uuid:"58ce14da-b0cc-5f07-a28c-cf77ada63ca5"}
D{i:4;uuid:"58ce14da-b0cc-5f07-a28c-cf77ada63ca5_VERTICAL"}D{i:5;uuid:"a89b1e8a-420b-5558-af16-93b8c1390c2e"}
D{i:6;uuid:"af46d21c-91e1-530e-b67a-61c5899f27bd_HORIZONTAL_SpacerRear"}
}
##^##*/

