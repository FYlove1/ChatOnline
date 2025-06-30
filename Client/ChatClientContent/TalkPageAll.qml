import QtQuick
import QtQuick.Controls
import ChatClient 1.0
import MyNetWork
import "./chat_Right_Page"
import "./Chat_Left_Page"
Page {
    id: root
    width: 1200
    height: 800

    Button{
        id:getFriendList
        width: 100
        height: 60
        onClicked: {
            NetworkManager.requestFriendList(NetworkManager.currentAccount)
            updateFriendListFromCpp()
        }
        anchors.left: parent.top
        anchors.top: parent.top
        z:10
    }

    ChatRightRectangle{
        id:rightPart
        x: 500
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        Component.onCompleted: {
            rightPart.currentListModel = userModelManager.getModel("UserTest",leftPart.currentUserId)
        }

        Connections{
            target: leftPart
            onUserSelected: function(userId) {
                console.log("用户选中:", userId)
               rightPart.currentListModel = userModelManager.switchContact(userId)
            }
        }

        sendClickArea.onClicked: {
            userModelManager.addMessage(rightPart.messageText,true)
            NetworkManager.sendMessage(rightPart.messageText,userModelManager.currentContactId)
            sendTextEdit.clear();
        }

    }

    //开始获取用户聊天信息
    //用于切换不同用户的对话listmodel
    UserModelManager{
        id:userModelManager

    }

    Chat_Left_ListView{
        id:leftPart
        x: 10
        width: 332
        height: 700
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: rightPart.left

        Connections {
            target: NetworkManager
            function onFriendListChanged() {
                updateFriendListFromCpp()
            }
        }

        onCurrentUserIdChanged: {
            userModelManager.switchContact(leftPart.currentUserId)
        }
    }

    Row{

    }



    Component.onCompleted: {
        // 连接信号
        //NetworkManager.connectResult.connect(onConnectResult)
        //NetworkManager.loginResult.connect(onLoginResult)
        NetworkManager.messageReceived.connect(onMessageReceived)
        NetworkManager.systemMessage.connect(onSystemMessage)
        NetworkManager.errorMessage.connect(onErrorMessage)
        NetworkManager.messageSent.connect(onMessageSent)
        NetworkManager.friendListReceived.connect(onFriendListReceived)
        getCurrentFriendList()

    }


    //接收消息
    function onMessageReceived(sender, content, timestamp) {
        console.log("Message from", sender, ":", content, "at", timestamp)
        userModelManager.addMessageForOther(content,sender)
    }

    function onSystemMessage(message) {
        console.log("ℹ 系统: " + message)
    }

    function onFriendListReceived(friendList){


        console.log("Received friend list with", friendList.length, "friends")
        // 更新界面或模型
        friendListModel.clear()
        for (var i = 0; i < friendList.length; i++) {
            leftPart.otherUsersModel.append({"UserId": friendList[i]})
            console.log("Reciview is " , friendList[i])
        }
    }
    function onErrorMessage(message){
        console.log("ErrorMessage is ",message)
    }

    function getCurrentFriendList(){
        friendListModel.clear()
        NetworkManager.requestFriendList(NetworkManager.currentAccount)
    }

    function updateFriendListFromCpp() {
        var friendList = NetworkManager.friendList
        console.log(friendList,NetworkManager.friendList)

        // 准备模型数据
        var modelData = []
        for (var i = 0; i < friendList.length; i++) {
            modelData.push({"UserId": friendList[i]})
        }

        // 一次性设置整个模型
        leftPart.otherUsersModel.clear()
        for (var j = 0; j < modelData.length; j++) {
            leftPart.otherUsersModel.append(modelData[j])
        }
    }

}
