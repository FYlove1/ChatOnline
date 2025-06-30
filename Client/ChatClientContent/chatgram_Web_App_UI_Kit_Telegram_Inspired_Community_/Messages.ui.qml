import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15

Rectangle {
    id: messages
    width: 694
    height: 314
    color: "#8babd8"
    radius: 16

    ColumnLayout {
        id: messages_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 24
        anchors.rightMargin: 24
        anchors.topMargin: 24
        anchors.bottomMargin: 24
        spacing: 24
        Date_Sent {
            id: date_Sent
            x: 0
            y: 0
            width: 646
            height: 28
            Layout.preferredHeight: 28
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Message_Other_User_ {
            id: message_Other_User__instance
            x: 0
            y: 0
            width: 646
            height: 70
            Layout.preferredHeight: 70
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Message_You_2_ {
            id: message_You_2__instance
            x: 0
            y: 0
            width: 646
            height: 48
            Layout.preferredHeight: 48
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }

        Message_You_ {
            id: message_You__instance
            x: 0
            y: 0
            width: 646
            height: 48
            Layout.preferredHeight: 48
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"3b3a032f-ed9a-5f36-aefe-959d7b77d15e"}D{i:1;uuid:"3b3a032f-ed9a-5f36-aefe-959d7b77d15e_VERTICAL"}
D{i:2;uuid:"b65deb7d-bb19-5709-908d-a754e6690e73"}D{i:3;uuid:"227a8de3-a02d-5b31-a19b-b680be324d8e_instance"}
D{i:4;uuid:"4048c460-731d-501e-a53f-8a1817303701_instance"}D{i:5;uuid:"a278c45c-1cd5-5f51-8948-e0bf30c9c3df_instance"}
}
##^##*/

