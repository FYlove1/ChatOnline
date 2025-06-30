import QtQuick
import QtQuick.Controls
import ChatClient 1.0

Item {
    id: root
    width: Constants.width
    height: Math.max(avatar.height, messageBubble.height) // 自适应高度


    property alias message_Text: messageText.text
    property alias time_Text: timeText.text
    // 消息气泡容器
    Item {
        id: messageContainer
        anchors.right: avatar.left
        anchors.rightMargin: 10 // 气泡和头像之间的间距
        anchors.verticalCenter: parent.verticalCenter

        // 消息气泡背景
        Rectangle {
            id: messageBubble
            anchors.right: parent.right
            width: messageText.width + 30 // 文字左右留白
            height: messageText.height + 20 // 文字上下留白
            radius: 15 // 圆角气泡
            color: "#DCF8C6" // 浅绿色气泡（类似WhatsApp自己消息的颜色）

            // 三角形指向头像的小箭头
            Canvas {
                anchors {
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: -7
                }
                width: 10
                height: 15
                onPaint: {
                    var ctx = getContext("2d");
                    ctx.reset();
                    ctx.beginPath();
                    ctx.moveTo(0, height/2);
                    ctx.lineTo(width, 0);
                    ctx.lineTo(width, height);
                    ctx.closePath();
                    ctx.fillStyle = messageBubble.color;
                    ctx.fill();
                }
            }
        }

        // 消息文字
        Text {
            id: messageText
            anchors.centerIn: messageBubble
            width: Math.min(implicitWidth, Constants.width * 0.7) // 限制最大宽度
            // text: "Ceshixinxi"
            wrapMode: Text.Wrap // 自动换行
            padding: 10 // 内边距
            font.pixelSize: 14 // 字体大小
        }

        // 时间戳
        Text {
            id: timeText
            anchors {
                bottom: messageBubble.bottom
                right: messageBubble.right
                margins: 5
            }
            // text: "14:30"
            font.pixelSize: 10
            color: "#888888"
        }
    }

    // 头像
    Image {
        id: avatar
        anchors.right: parent.right
        anchors.rightMargin: 10 // 右边距
        anchors.verticalCenter: parent.verticalCenter
        width: 50 // 固定宽度
        height: 50 // 固定高度
        source: "../chatgram_Web_App_UI_Kit_Telegram_Inspired_Community_/assets/avatar.png"
        fillMode: Image.PreserveAspectFit

        // 圆形头像
        layer.enabled: true

    }
}
