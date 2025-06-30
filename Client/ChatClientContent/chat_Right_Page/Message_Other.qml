import QtQuick
import QtQuick.Controls
import ChatClient 1.0

Item {
    id: root
    width: Constants.width
    height: Math.max(avatar.height, messageBubble.height) // 自适应高度
    property alias message_Text: messageText.text
    property alias time_Text: timeText.text

    // 头像（靠左）
    Image {
        id: avatar
        anchors.left: parent.left
        anchors.leftMargin: 10 // 左边距
        anchors.verticalCenter: parent.verticalCenter
        width: 50 // 固定宽度
        height: 50 // 固定高度
        source: "../chatgram_Web_App_UI_Kit_Telegram_Inspired_Community_/assets/avatar.png"
        fillMode: Image.PreserveAspectFit

        // 圆形头像
        layer.enabled: true

    }

    // 消息气泡容器（靠右）
    Item {
        id: messageContainer
        anchors.left: avatar.right
        anchors.leftMargin: 10 // 气泡和头像之间的间距
        anchors.verticalCenter: parent.verticalCenter
        width: Math.min(Constants.width * 0.7, messageBubble.width) // 限制最大宽度

        // 消息气泡背景（调整为靠左）
        Rectangle {
            id: messageBubble
            anchors.left: parent.left
            width: messageText.width + 30 // 文字左右留白
            height: messageText.height + 20 // 文字上下留白
            radius: 15 // 圆角气泡
            color: "#FFFFFF" // 白色气泡（对方消息颜色）
            border.color: "#E0E0E0" // 添加浅灰色边框

            // 三角形指向头像的小箭头（调整为左侧）
            Canvas {
                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: -7
                }
                width: 10
                height: 15
                onPaint: {
                    var ctx = getContext("2d");
                    ctx.reset();
                    ctx.beginPath();
                    ctx.moveTo(width, height/2); // 从右侧开始
                    ctx.lineTo(0, 0); // 向左上
                    ctx.lineTo(0, height); // 向左下
                    ctx.closePath();
                    ctx.fillStyle = messageBubble.color;
                    ctx.fill();
                    ctx.strokeStyle = messageBubble.border.color;
                    ctx.lineWidth = 1;
                    ctx.stroke();
                }
            }
        }

        // 消息文字
        Text {
            id: messageText
            anchors.centerIn: messageBubble
            width: Math.min(implicitWidth, Constants.width * 0.7) // 限制最大宽度

            wrapMode: Text.Wrap // 自动换行
            padding: 10 // 内边距
            font.pixelSize: 14 // 字体大小
        }

        // 时间戳（调整为左下角）
        Text {
            id: timeText
            anchors {
                bottom: messageBubble.bottom
                left: messageBubble.left
                margins: 5
            }

            font.pixelSize: 10
            color: "#888888"
        }
    }
}
