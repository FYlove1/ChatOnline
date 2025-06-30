import QtQuick
import QtQuick.Controls
import "./login_Screen_House_Rental_Solution_Community_"
import MyNetWork 1.0
Page {
    width: loginPage.width
    height: loginPage.height
    Login_page{
        id:loginPage
        loginButton.onClicked: {
            NetworkManager.login(loginPage.accountText,loginPage.passswordText);

        }
        // Connections{
        //     target: NetworkManager
        //     function onLoginResult(success,message){

        //     }
        // }
    }
}
