import QtQuick
import QtQuick.Controls
import "./login_Screen_House_Rental_Solution_Community_"
import MyNetWork 1.0
Page {
    width: 640
    height: 480
    visible: true
    title: qsTr("Chat Test Client")

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: 400

        // 连接服务器按钮
        Button {
            id: connectButton
            width: parent.width
            height: 50
            text: NetworkManager.isConnected ? "断开连接" : "连接服务器"
            enabled: true

            onClicked: {
                if (NetworkManager.isConnected) {
                    NetworkManager.disconnectFromServer()
                } else {
                    connectToServer()
                }
            }
        }

        // 登录按钮
        Button {
            id: loginButton
            width: parent.width
            height: 50
            text: NetworkManager.isLoggedIn ? "已登录" : "登录"
            enabled: NetworkManager.isConnected && !NetworkManager.isLoggedIn

            onClicked: {
                login()
            }
        }

        //账号和密码
        Row{

            width: parent.width
            spacing: 10
            Label{
                text: "Account"
            }

            TextEdit{
                id:accountTextEdit
                height: 30
                width: parent.width - 10
            }
            Label{
                text: "PassWord"
            }

            TextEdit{
                id:passwordTestEdit
                height: 30
                width: parent.width - 10
            }
        }

        // 消息输入框
        Row {
            width: parent.width
            spacing: 10

            TextField {
                id: messageInput
                width: parent.width - sendButton.width - 10
                height: 50
                placeholderText: "输入消息..."
                enabled: NetworkManager.isConnected && NetworkManager.isLoggedIn

                onAccepted: {
                    if (text.trim() !== "") {
                        sendMessage(text)
                        text = ""
                    }
                }
            }

            Button {
                id: sendButton
                width: 80
                height: 50
                text: "发送"
                enabled: NetworkManager.isConnected && NetworkManager.isLoggedIn && messageInput.text.trim() !== ""

                onClicked: {
                    if (messageInput.text.trim() !== "") {
                        sendMessage(messageInput.text)
                        messageInput.text = ""
                    }
                }
            }

            Button{
                id:getFriendList
                width: 80
                height: 50
                text: "获取用户列表"
                onClicked: {
                    NetworkManager.requestFriendList(NetworkManager.currentAccount)
                    console.log("Now , request friend list for Account :",NetworkManager.currentAccount )
                }
            }
        }



        // 自动发送控制
        Row {
            width: parent.width
            spacing: 10

            Button {
                id: autoSendButton
                width: 120
                height: 40
                text: NetworkManager.isAutoSendEnabled() ? "停止自动发送" : "开始自动发送"
                enabled: NetworkManager.isConnected && NetworkManager.isLoggedIn

                onClicked: {
                    if (NetworkManager.isAutoSendEnabled()) {
                        NetworkManager.stopAutoSend()
                    } else {
                        NetworkManager.startAutoSend("自动消息", 3) // 3秒间隔
                    }
                }
            }

            Button {
                width: 80
                height: 40
                text: "清除计数"

                onClicked: {
                    NetworkManager.clearMessageCount()
                }
            }
        }

        Label{
            text: "Target Account"
            height: 40

        }

        TextEdit{
            id:targetAccount
            width:parent.width / 2
            height: 40

        }

        // 状态显示
        Rectangle {
            width: parent.width
            height: 200
            color: "#f0f0f0"
            border.color: "#ccc"
            border.width: 1

            ScrollView {
                anchors.fill: parent
                anchors.margins: 5

                TextArea {
                    id: statusDisplay
                    readOnly: true
                    wrapMode: TextArea.Wrap
                    text: "准备连接..."

                    // 添加消息的函数
                    function addMessage(message) {
                        var timestamp = new Date().toLocaleTimeString()
                        text += "\n[" + timestamp + "] " + message
                        // 自动滚动到底部
                        cursorPosition = length
                    }
                }
            }
        }

        // 统计信息
        Text {
            width: parent.width
            text: "消息统计 - 总计: " + NetworkManager.messageCount +
                  " (已发送: " + NetworkManager.sentCount +
                  ", 已接收: " + NetworkManager.receivedCount + ")"
            font.pixelSize: 12
            color: "#666"
        }

        // 连接状态指示
        Row {
            spacing: 10

            Rectangle {
                width: 12
                height: 12
                radius: 6
                color: NetworkManager.isConnected ? "green" : "red"
            }
            Text {
                text: NetworkManager.isConnected ? "已连接" : "未连接"
                font.pixelSize: 12
            }

            Rectangle {
                width: 12
                height: 12
                radius: 6
                color: NetworkManager.isLoggedIn ? "blue" : "gray"
            }
            Text {
                text: NetworkManager.isLoggedIn ? ("已登录: " + NetworkManager.currentAccount) : "未登录"
                font.pixelSize: 12
            }
        }
    }

    // 信号连接和处理函数
    Component.onCompleted: {
        // 连接信号
        NetworkManager.connectResult.connect(onConnectResult)
        NetworkManager.loginResult.connect(onLoginResult)
        NetworkManager.messageReceived.connect(onMessageReceived)
        NetworkManager.systemMessage.connect(onSystemMessage)
        NetworkManager.errorMessage.connect(onErrorMessage)
        NetworkManager.messageSent.connect(onMessageSent)
        NetworkManager.friendListReceived.connect(onFriendListReceived)
    }

    function connectToServer() {
        statusDisplay.addMessage("正在连接到服务器...")
        NetworkManager.connectToServer("127.0.0.1", 8080)
    }

    function login() {
        statusDisplay.addMessage("正在登录...")
        NetworkManager.login(accountTextEdit.text, passwordTestEdit.text)
    }

    function sendMessage(msg) {
        NetworkManager.sendMessage(msg, targetAccount.text)
    }

    function onConnectResult(success, message) {
        console.log("Connect result:", success, message)
        if (success) {
            statusDisplay.addMessage("✓ 连接成功: " + message)
        } else {
            statusDisplay.addMessage("✗ 连接失败: " + message)
        }
    }

    function onLoginResult(success, message) {
        console.log("Login result:", success, message)
        if (success) {
            statusDisplay.addMessage("✓ 登录成功: " + message)
        } else {
            statusDisplay.addMessage("✗ 登录失败: " + message)
        }
    }

    function onMessageReceived(sender, content, timestamp) {
        console.log("Message from", sender, ":", content, "at", timestamp)
        statusDisplay.addMessage("📨 收到消息 [" + sender + "]: " + content)
    }

    function onSystemMessage(message) {
        statusDisplay.addMessage("ℹ 系统: " + message)
    }

    function onErrorMessage(error) {
        statusDisplay.addMessage("⚠ 错误: " + error)
    }

    function onMessageSent(success, message) {
        if (success) {
            statusDisplay.addMessage("✓ 消息发送成功")
        } else {
            statusDisplay.addMessage("✗ 消息发送失败: " + message)
        }
    }

    function onFriendListReceived(friendList){
        for (var i = 0; i < friendList.length; i++) {
            console.log("第 ",i,"个朋友 , 他的账号是 :",friendList[i])
        }
    }
}
