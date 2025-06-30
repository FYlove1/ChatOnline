import QtQuick
import QtQuick.Controls
import MyNetWork 1.0
// 非可视组件，仅提供功能方法
QtObject {
    id: manager
    
    // 属性声明
    property string currentUserId: "user1"
    property string currentContactId: "contact1"
    
    // 聊天模型缓存 (user -> contact -> model)
    property var chatModels: ({})
    
    // 信号声明
    signal modelChanged(var model)
    signal userChanged(string userId)
    signal contactChanged(string contactId)
    signal messageAdded(string text, bool isMine, string time)
    
    // 获取或创建聊天模型
    function getModel(userId, contactId) {
        if (userId) currentUserId = userId
        if (contactId) currentContactId = contactId
        
        return getChatModel(currentUserId, currentContactId)
    }
    
    // 获取或创建聊天模型
    function getChatModel(userId, contactId) {
        if (!chatModels[userId]) {
            chatModels[userId] = {}
            console.log("创建用户模型容器:", userId)
        }

        if (!chatModels[userId][contactId]) {
            console.log("创建新模型:", userId, contactId)
            var model = Qt.createQmlObject('import QtQuick; ListModel {}', manager)
            chatModels[userId][contactId] = model
            loadMessages(userId, contactId)
        }
        
        modelChanged(chatModels[userId][contactId])
        return chatModels[userId][contactId]
    }

    // 加载消息
    function loadMessages(userId, contactId) {
        var messages = ChatDataManager.loadMessages(userId, contactId)
        var model = getChatModel(userId, contactId)
        model.clear()
        
        for (var i = 0; i < messages.length; i++) {
            var msg = messages[i]
            model.append({
                "isMine": msg.isMine === "true", // 确保布尔值正确转换
                "text": msg.text,
                "time": msg.time
            })
        }
        
        return model
    }

    // 保存当前聊天记录
    function saveCurrentMessages() {
        var messages = []
        var model = chatModels[currentUserId][currentContactId]
        
        if (!model) return false
        
        for (var i = 0; i < model.count; i++) {
            var item = model.get(i)
            messages.push({
                "isMine": String(item.isMine), // 转换为字符串以避免JSON序列化问题
                "text": item.text || "",
                "time": item.time || ""
            })
        }

        console.log("SavaMassage is : ", messages)
        return ChatDataManager.saveMessages(currentUserId, currentContactId, messages)
    }

    // 添加消息
    function addMessage(text, isMine) {
        if (!text) return
        
        var model = getChatModel(currentUserId, currentContactId)
        var now = new Date()
        var timeStr = now.toLocaleTimeString(Qt.locale(), Locale.ShortFormat)

        model.append({
            "isMine": isMine,
            "text": text,
            "time": timeStr
        })
        
        messageAdded(text, isMine, timeStr)
        saveCurrentMessages() // 自动保存
        
        return true
    }

    function addMessageForOther(text,sender){
        if (!text) return
        var model = getChatModel(currentUserId, sender)
        var now = new Date()
        var timeStr = now.toLocaleTimeString(Qt.locale(), Locale.ShortFormat)

        model.append({
            "isMine": false,
            "text": text,
            "time": timeStr
        })

        messageAdded(text, false, timeStr)
        saveCurrentMessages() // 自动保存

        return true
    }

    // 切换用户
    function switchUser(userId) {
        if (!userId || userId === currentUserId) return
        
        // 保存当前聊天记录
        saveCurrentMessages()

        // 更新当前用户
        currentUserId = userId
        userChanged(userId)

        // 加载第一个联系人
        var contacts = ChatDataManager.getContactList(userId)
        if (contacts.length > 0) {
            switchContact(contacts[0])
        } else {
            switchContact("new_contact") // 默认联系人
        }
        
        return contacts
    }

    // 切换联系人
    function switchContact(contactId) {
        if (!contactId) return
        
        // 保存当前聊天记录
        saveCurrentMessages()

        // 更新当前联系人
        currentContactId = contactId
        contactChanged(contactId)

        // 更新模型
        var model = getChatModel(currentUserId, currentContactId)
        modelChanged(model)
        
        return model
    }

    // 添加新联系人
    function addNewContact(contactName) {
        if (!contactName) return false
        
        // 保存当前记录
        saveCurrentMessages()
        
        // 切换到新联系人
        switchContact(contactName)
        
        return true
    }
    
    // 获取联系人列表
    function getContactList() {
        return ChatDataManager.getContactList(currentUserId)
    }
    
    // 初始化
    Component.onCompleted: {
        // 如果没有用户，创建默认用户
        var users = ChatDataManager.getUserList()
        if (users.length === 0) {
            // 此处可以添加默认用户数据
        }
    }
    
    // 应用关闭时保存所有聊天记录
    Component.onDestruction: {
        saveCurrentMessages()
    }
}
