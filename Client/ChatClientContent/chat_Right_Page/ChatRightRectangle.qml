
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../chatgram_Web_App_UI_Kit_Telegram_Inspired_Community_"
Rectangle {
    id: root
    width: 900
    height: 800
    property alias currentListModel: listView.model
    property alias sendClickArea: input_Bar.clickArea
    property alias messageText: input_Bar.typingText
    property alias sendTextEdit: input_Bar.sendTextEdit

    Input_Bar {
        id: input_Bar
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter

    }

    ListView {
        id: listView
        width: 755
        clip: true
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 42
        anchors.bottomMargin: 138
        anchors.horizontalCenter: parent.horizontalCenter
        //contentItem: ListViewContentItem {}
        spacing:12

        model: ListModel {
            ListElement {
                isMine: true
                text: "Hello there!"
                avatar: "images/me.jpg"
                time: "14:30"
            }
        }

        delegate: Loader {
            width: parent.width
            sourceComponent: model.isMine ? messageMeComponent : messageOtherComponent

            // 将模型数据作为属性传递给组件
            property string msgText: model.text
            property string msgTime: model.time
            property string msgAvatar: model.avatar
        }

        Component {
            id: messageMeComponent
            Message_Me {
                width: parent.width
                // 使用Loader的属性而不是直接访问model
                message_Text: msgText
                time_Text: msgTime
                // 绑定其他需要的模型属性...
            }
        }

        Component {
            id: messageOtherComponent
            Message_Other {
                width: parent.width
                // 使用Loader的属性而不是直接访问model
                message_Text: msgText
                time_Text: msgTime
                // 绑定其他需要的模型属性...
            }
        }
    }
}
