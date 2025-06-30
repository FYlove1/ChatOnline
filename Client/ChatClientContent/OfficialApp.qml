import QtQuick
import QtQuick.Controls
import ChatClient
import "./login_Screen_House_Rental_Solution_Community_"
import MyNetWork 1.0
import QtQuick.Layouts
Window {
    id: mainWindow

    visible: true
    title: "页面切换演示"
    // width:1000
    // height:800
    width: 360
    height: 800

    // 定义页面路径列表
    property var pageList: [
        "LoginPageAll.qml",
        "TalkPageAll.qml",
    ]

    // 当前页面索引
    property int currentPageIndex: 0

    // 修复1: 添加当前页面路径属性
    property string currentPagePath: pageList[currentPageIndex]



    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        // 页面加载器
        Loader {
            id: pageLoader
            Layout.fillWidth: true
            Layout.fillHeight: true
            // 修复2: 绑定到当前页面路径属性
            source: currentPagePath

            // 页面切换动画
            Behavior on opacity {
                NumberAnimation { duration: 300 }
            }
            onSourceChanged: {
                console.log("current is", source);
            }

            // 修复3: 添加状态处理
            onStatusChanged: {
                if (status === Loader.Ready) {
                    console.log("页面加载完成:", source);
                } else if (status === Loader.Error) {
                    console.error("页面加载失败:", source);
                }
            }
        }
    }

    // 修复6: 使用属性绑定确保页面更新
    onCurrentPageIndexChanged: {
        console.log("页面索引变化:", currentPageIndex);
        currentPagePath = pageList[currentPageIndex];
    }

    // 初始加载登录页面
    Component.onCompleted: {
        console.log("应用启动，加载初始页面");
        currentPagePath = pageList[0];
        //直接进行 连接尝试 先连接一下信号
        NetworkManager.connectResult.connect(onConnectResult)
        NetworkManager.loginResult.connect(onLoginResult)

        //这里调用端口和地址先无需指定, 因为C++端是固定的
        NetworkManager.connectToServer("11111",8080)

    }
    function onConnectResult(success, message) {
        console.log("Connect result:", success, message)
        if (success) {

        } else {

        }
    }

    function onLoginResult(success, message) {
        console.log("Login result:", success, message)
        if (success) {
            //添加获取用户列表的方法 , 用于之后聊天
            currentPageIndex = 1
            mainWindow.width = 1000
            mainWindow.height =800
        } else {
        }
    }
}


