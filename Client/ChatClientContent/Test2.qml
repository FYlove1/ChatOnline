import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import MyNetWork 1.0 // 注册的C++模块

ApplicationWindow {
    id: app
    width: 800
    height: 600
    visible: true
    title: "聊天应用 - 重构版"

    // 当前登录用户
    property string currentUserId: "user1"

    // 当前对话联系人
    property string currentContactId: "contact1"

    // 聊天模型缓存 (user -> contact -> model)
    property var chatModels: ({})

    // 获取或创建聊天模型
    function getChatModel(userId, contactId) {
        if (!chatModels[userId]) {
            chatModels[userId] = {}
        }

        if (!chatModels[userId][contactId]) {
            console.log("创建新模型:", userId, contactId)
            chatModels[userId][contactId] = Qt.createQmlObject(`
                                                               import QtQuick 2.15
                                                               ListModel {
                                                               dynamicRoles: true
                                                               }`, app)
            loadMessages(userId, contactId)
        }
        return chatModels[userId][contactId]
    }

    // 加载消息
    function loadMessages(userId, contactId) {
        var messages = ChatDataManager.loadMessages(userId, contactId)
        var model = getChatModel(userId, contactId)
        model.clear()
        for (var i = 0; i < messages.length; i++) {
            model.append(messages[i])
        }
    }

    // 保存当前聊天记录
    function saveCurrentMessages() {
        var messages = []
        var model = chatListView.model

        for (var i = 0; i < model.count; i++) {
            var item = model.get(i)
            messages.push({
                              "isMine": item.isMine,
                              "text": item.text,
                              "time": item.time
                          })
        }

        console.log("SavaMassage is : ", messages)
        ChatDataManager.saveMessages(currentUserId, currentContactId, messages)
    }

    // 添加真实消息
    function addMessage(text) {
        var model = chatListView.model
        var now = new Date()
        var timeStr = now.toLocaleTimeString(Qt.locale(), Locale.ShortFormat)

        model.append({
            "isMine": true,
            "text": text,
            "time": timeStr
        })

        // 自动回复
        Qt.callLater(function() {
            model.append({
                "isMine": false,
                "text": "已收到: " + text,
                "time": new Date().toLocaleTimeString(Qt.locale(), Locale.ShortFormat)
            })

            // 滚动到底部
            chatListView.positionViewAtEnd()
        })
    }

    // 切换用户
    function switchUser(userId) {
        // 保存当前聊天记录
        saveCurrentMessages()

        // 更新当前用户
        currentUserId = userId

        // 加载第一个联系人
        var contacts = ChatDataManager.getContactList(userId)
        if (contacts.length > 0) {
            currentContactId = contacts[0]
        } else {
            currentContactId = "new_contact"
        }

        // 更新模型
        chatListView.model = getChatModel(currentUserId, currentContactId)

        // 更新联系人列表
        contactListModel.clear()
        for (var i = 0; i < contacts.length; i++) {
            contactListModel.append({"contactId": contacts[i]})
        }
    }

    // 切换联系人
    function switchContact(contactId) {
        // 保存当前聊天记录
        saveCurrentMessages()

        // 更新当前联系人
        currentContactId = contactId

        // 更新模型
        chatListView.model = getChatModel(currentUserId, currentContactId)
    }

    // 添加新联系人
    function addNewContact() {
        var contactName = newContactDialog.contactName
        if (!contactName) return

        // 添加到联系人列表
        contactListModel.append({"contactId": contactName})
        currentContactId = contactName

        // 创建空聊天模型
        chatListView.model = getChatModel(currentUserId, contactName)

        // 关闭对话框
        newContactDialog.close()
    }

    // 初始化
    Component.onCompleted: {
        // 创建一些初始用户数据
        if (ChatDataManager.getUserList().length === 0) {
            ChatDataManager.saveMessages("user1", "contact1", [
                {"isMine": false, "text": "你好!", "time": "10:00"},
                {"isMine": false, "text": "最近怎么样?", "time": "10:01"},
                {"isMine": true, "text": "我很好，谢谢!", "time": "10:02"}
            ])

            ChatDataManager.saveMessages("user1", "contact2", [
                {"isMine": false, "text": "你好，这是第二个联系人!", "time": "11:00"}
            ])

            ChatDataManager.saveMessages("user2", "contact1", [
                {"isMine": false, "text": "这是用户2的聊天记录", "time": "12:00"}
            ])
        }

        // 切换到当前用户
        switchUser(currentUserId)
    }

    // 应用关闭时保存所有聊天记录
    Component.onDestruction: {
        for (var userId in chatModels) {
            for (var contactId in chatModels[userId]) {
                saveCurrentMessages()
            }
        }
    }

    // 主界面布局
    RowLayout {
        anchors.fill: parent
        spacing: 0

        // 左侧边栏
        ColumnLayout {
            Layout.preferredWidth: 200
            Layout.fillHeight: true
            spacing: 0

            // 用户选择栏
            ColumnLayout {
                Layout.fillWidth: true
                Layout.topMargin: 10

                Label {
                    text: "当前用户:"
                    font.bold: true
                    Layout.leftMargin: 10
                }

                Button {
                    text: "用户1"
                    Layout.fillWidth: true
                    highlighted: currentUserId === "user1"
                    onClicked: switchUser("user1")
                }

                Button {
                    text: "用户2"
                    Layout.fillWidth: true
                    highlighted: currentUserId === "user2"
                    onClicked: switchUser("user2")
                }

                Button {
                    text: "用户3"
                    Layout.fillWidth: true
                    highlighted: currentUserId === "user3"
                    onClicked: switchUser("user3")
                }
            }

            // 联系人列表
            ColumnLayout {
                Layout.fillWidth: true
                Layout.fillHeight: true

                RowLayout {
                    Layout.fillWidth: true
                    Layout.topMargin: 20

                    Label {
                        text: "联系人:"
                        font.bold: true
                        Layout.leftMargin: 10
                    }

                    Button {
                        text: "+"
                        Layout.preferredWidth: 40
                        onClicked: newContactDialog.open()
                    }
                }

                ListView {
                    id: contactListView
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    clip: true
                    model: ListModel { id: contactListModel }

                    delegate: Button {
                        width: parent.width
                        height: 40
                        text: contactId
                        highlighted: currentContactId === contactId
                        onClicked: switchContact(contactId)

                        background: Rectangle {
                            color: highlighted ? "#e0e0e0" : "transparent"
                        }
                    }
                }
            }
        }

        // 分隔线
        Rectangle {
            width: 1
            Layout.fillHeight: true
            color: "#cccccc"
        }

        // 主聊天区域
        ColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 0

            // 聊天标题栏
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "#f0f0f0"

                Label {
                    anchors.centerIn: parent
                    text: "与 " + currentContactId + " 的对话"
                    font.bold: true
                    font.pixelSize: 16
                }
            }

            // 聊天消息列表
            ListView {
                id: chatListView
                Layout.fillWidth: true
                Layout.fillHeight: true
                clip: true
                model: getChatModel(currentUserId, currentContactId)
                spacing: 10
                verticalLayoutDirection: ListView.BottomToTop

                delegate: Rectangle {
                    width: Math.min(messageText.implicitWidth + 40, parent.width * 0.8)
                    height: messageText.implicitHeight + 30
                    anchors.right: model.isMine ? parent.right : undefined
                    anchors.left: model.isMine ? undefined : parent.left
                    anchors.margins: 10
                    color: model.isMine ? "#dcf8c6" : "#ffffff"
                    radius: 10
                    border.width: 1
                    border.color: "#e0e0e0"

                    Column {
                        anchors.fill: parent
                        anchors.margins: 10

                        Text {
                            id: messageText
                            text: model.text
                            width: parent.width
                            wrapMode: Text.Wrap
                        }

                        Text {
                            text: model.time
                            color: "gray"
                            font.pixelSize: 10
                            anchors.right: parent.right
                        }
                    }
                }

                // 自动滚动到底部
                onCountChanged: {
                    positionViewAtEnd()
                }
            }

            // 消息输入区域
            RowLayout {
                Layout.fillWidth: true
                Layout.preferredHeight: 60
                Layout.margins: 10

                TextField {
                    id: messageInput
                    Layout.fillWidth: true
                    placeholderText: "输入消息..."
                    onAccepted: sendButton.clicked()
                }

                Button {
                    id: sendButton
                    text: "发送"
                    Layout.preferredWidth: 80
                    onClicked: {
                        if (messageInput.text.trim()) {
                            addMessage(messageInput.text)
                            messageInput.clear()
                        }
                    }
                }
            }
        }
    }

    // 添加新联系人对话框
    Dialog {
        id: newContactDialog
        title: "添加新联系人"
        anchors.centerIn: parent
        width: 300

        ColumnLayout {
            width: parent.width

            TextField {
                id: contactNameInput
                placeholderText: "联系人名称"
                Layout.fillWidth: true
            }

            RowLayout {
                Layout.alignment: Qt.AlignRight

                Button {
                    text: "取消"
                    onClicked: newContactDialog.close()
                }

                Button {
                    text: "确定"
                    onClicked: addNewContact()
                }
            }
        }

        property string contactName: contactNameInput.text
    }
}
