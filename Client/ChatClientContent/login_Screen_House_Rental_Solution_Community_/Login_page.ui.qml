import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

Rectangle {
    id: login_page
    width: 360
    height: 800
    color: "#ffffff"
    radius: 30
    property alias with_FriendText: with_Friend.text
    property alias passswordText: passwordText.text
    property alias talkieText: talkie.text
    property alias accountText: accountText.text
    property alias log_InText: log_In.text
    property alias loginText: login.text
    property alias forgot_Text: forgot_.text
    property alias loginButton: login_Button

    Text {
        id: login
        width: 89
        height: 38
        color: "#1e293b"
        text: qsTr("Login")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 137
        anchors.topMargin: 316
        font.letterSpacing: 1.266
        font.pixelSize: 32
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        wrapMode: Text.NoWrap
        font.weight: Font.ExtraBold
        font.family: "Roboto"
    }

    Shape {
        id: input_Stroke_
        width: 298
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 458
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: input_Stroke__ShapePath_0
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: input_Stroke__PathSvg_0
                path: "M 298 0.00002605198824312538 L 298 1.0000261068344116 L 0 1 L 8.742277657347586e-8 0 L 298 0.00002605198824312538 Z"
            }
            fillRule: ShapePath.WindingFill
            fillColor: "#000113"
        }
        antialiasing: true
    }

    Text {
        id: account
        width: 46
        height: 20
        color: "#000000"
        text: qsTr("Account")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 410
        font.pixelSize: 12
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        lineHeight: 20
        lineHeightMode: Text.FixedHeight
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Roboto"
    }

    Shape {
        id: input_Stroke_1
        width: 298
        height: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 521
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: input_Stroke__ShapePath_1
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: input_Stroke__PathSvg_1
                path: "M 298 0.00002605198824312538 L 298 1.0000261068344116 L 0 1 L 8.742277657347586e-8 0 L 298 0.00002605198824312538 Z"
            }
            fillRule: ShapePath.WindingFill
            fillColor: "#cbd5e1"
        }
        antialiasing: true
    }

    Text {
        id: passsword
        width: 71
        height: 20
        color: "#475569"
        text: qsTr("Passsword")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 473
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        lineHeight: 20
        lineHeightMode: Text.FixedHeight
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Roboto"
    }

    Text {
        id: forgot_
        width: 49
        height: 20
        color: "#000113"
        text: qsTr("Forgot?")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 281
        anchors.topMargin: 492
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        lineHeight: 20
        lineHeightMode: Text.FixedHeight
        wrapMode: Text.NoWrap
        font.weight: Font.Medium
        font.family: "Roboto"
    }

    Image {
        id: don_t_have_account_Create_now
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 81
        anchors.topMargin: 737
        source: "assets/don_t_have_account_Create_now.png"
    }

    Rectangle {
        id: login_Button_Rectangle
        width: 298
        height: 40
        color: "#000113"
        radius: 4
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 33
        anchors.topMargin: 546
        MouseArea {
            id: login_Button

            anchors.fill: parent
        }

        Text {
            id: log_In
            width: 40
            height: 20
            color: "#ffffff"
            text: qsTr("Log In")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            lineHeight: 20
            lineHeightMode: Text.FixedHeight
            wrapMode: Text.NoWrap
            z: 1
            anchors.centerIn: parent
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.weight: Font.Medium
            font.family: "Roboto"
            Layout.preferredWidth: 40
            Layout.preferredHeight: 20
        }
    }

    Image {
        id: subtract
        x: 0
        y: 0
        source: "assets/subtract.png"
    }

    Item {
        id: brand
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 96
        anchors.rightMargin: 131
        anchors.topMargin: 82
        anchors.bottomMargin: 676
        Item {
            id: group_1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 58
            Text {
                id: talkie
                width: 71
                height: 20
                color: "#000113"
                text: qsTr("Talkie")
                anchors.left: parent.left
                anchors.top: parent.top
                font.pixelSize: 24
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                lineHeight: 20
                lineHeightMode: Text.FixedHeight
                wrapMode: Text.NoWrap
                font.weight: Font.Bold
                font.family: "Rubik"
            }

            Text {
                id: with_Friend
                width: 76
                height: 17
                color: "#000113"
                text: qsTr("with Friend")
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 25
                font.pixelSize: 14
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
                font.family: "Inter"
            }
        }

        Rectangle {
            id: logo
            width: 42
            height: 42
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top
            Item {
                id: theTolet
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                Shape {
                    id: element
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    layer.samples: 16
                    layer.enabled: true
                    ShapePath {
                        id: vector_ShapePath_0
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_0
                            path: "M 40.91308175723011 18.362687684180326 L 23.645505396534496 1.0951166557629286 C 22.18534935830995 -0.3650388852543096 19.82284997520619 -0.3650388852543096 18.362693936981643 1.0951166557629286 L 1.0951170286684087 18.362687684180326 C -0.3650390095561362 19.822843225197563 -0.3650390095561362 22.18534180383117 1.0951170286684087 23.64549734484841 L 18.362693936981643 40.913067825648376 C 19.82284997520619 42.37322336666561 22.18534935830995 42.37322336666561 23.645505396534496 40.913067825648376 L 40.91308175723011 23.64549734484841 C 42.365034796462545 22.18534180383117 42.365034796462545 19.822843225197563 40.91308175723011 18.362687684180326 L 40.91308175723011 18.362687684180326 Z M 28.550972643963252 18.141203657568845 L 28.321286168789364 18.141203657568845 L 28.321286168789364 31.741979136965888 C 28.321286168789364 33.06268170859503 27.246675933521434 34.13728907454641 25.925972912171044 34.13728907454641 L 15.4833968554931 34.13728907454641 C 14.16269383414271 34.13728907454641 13.088084850572193 33.06268170859503 13.088084850572193 31.741979136965888 L 13.088084850572193 18.141203657568845 L 5.368944513591767 18.141203657568845 L 20.823631185536836 2.9408188854558537 L 36.2783166057845 18.141203657568845 L 28.550972643963252 18.141203657568845 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#000113"
                    }
                    antialiasing: true
                }

                Shape {
                    id: element1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 11
                    anchors.rightMargin: 11
                    anchors.topMargin: 12
                    anchors.bottomMargin: 9
                    layer.samples: 16
                    layer.enabled: true
                    ShapePath {
                        id: vector_ShapePath_1
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_1
                            path: "M 20.417572021484375 3.551952144174032 L 11.86991763972263 3.551952144174032 L 11.86991763972263 18.539062607165075 C 11.86991763972263 19.68750011380362 10.934762204349596 20.622655868530273 9.786325089899915 20.622655868530273 C 8.637887975450234 20.622655868530273 7.7027325400772 19.68750011380362 7.7027325400772 18.539062607165075 L 7.7027325400772 3.551952144174032 L 0 3.551952144174032 L 3.281248898427658 0 L 17.136323123056716 0 L 20.417572021484375 3.551952144174032 L 20.417572021484375 3.551952144174032 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#000113"
                    }
                    antialiasing: true
                }
            }
            clip: true
        }
    }

    TextEdit {
        id: accountText
        x: 33
        y: 426
        width: 296
        height: 33
        text: qsTr("")
        font.pixelSize: 20
    }

    TextEdit {
        id: passwordText
        x: 33
        y: 492
        width: 295
        height: 30
        text: qsTr("")
        font.pixelSize: 20
    }
}
