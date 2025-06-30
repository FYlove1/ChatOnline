import QtQuick 2.15
import QtQuick.Controls
Item {
    id:root
    width: 200
    height: 700
    property alias otherUsersModel: other_users_ListView.model

    // 定义颜色属性便于统一管理
    property color normalColor: "#f0f0f0"      // 未选中时的浅灰色背景
    property color selectedColor: "#d0d0d0"    // 选中时的深灰色背景
    property color pressedColor: "#b0b0b0"     // 按下时的更深灰色
    // 属性跟踪
    property string currentUserId: ""

    // 信号通知
    signal userSelected(string userId)

    // 获取当前选中用户ID
    function getCurrentUserId() {
        return currentUserId
    }

    ListView {
        id: other_users_ListView
        anchors.fill: parent
        model: testListmodel
        currentIndex: -1  // 初始无选中项

        // // 添加高亮指示器
        highlight: Rectangle {
            color: selectedColor
            width: other_users_ListView.width
            height: 75
            z: 0  // 确保在底层之上
        }
        highlightFollowsCurrentItem: true


        delegate: Item {
            id: delegateItem
            width: other_users_ListView.width
            height: 75
            z: 1  // 确保在底层之上

            // // 背景矩形
            // Rectangle {
            //     id: background
            //     anchors.fill: parent
            //     color: mouseArea.pressed ? pressedColor : normalColor
            // }

            // 鼠标点击区域
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                onClicked: {
                    other_users_ListView.currentIndex = index
                }
            }

            Image {
                id: userAvatar
                source: model.avatar
                width: parent.height
                height: parent.height
                anchors.left: parent.left
            }

            Text {
                id: userId
                text: model.UserId
                font.pointSize: 15
                anchors {
                    left: userAvatar.right
                    right: parent.right
                    top: parent.top
                    bottom: parent.bottom
                    leftMargin: 15
                }
                horizontalAlignment: Text.AlignLeft  // 改为左对齐
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
        onCurrentIndexChanged: {
                    if (currentIndex >= 0 && currentIndex < model.count) {
                        var selectedId = model.get(currentIndex).UserId
                        root.currentUserId = selectedId
                        root.userSelected(selectedId)
                    } else {
                        root.currentUserId = ""
                    }
                }
    }
    ListModel{
        id:testListmodel

    }
}
