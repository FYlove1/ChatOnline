import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

Rectangle {
    id: login_Dark
    width: 360
    height: 800
    color: "#000113"
    radius: 30
    property alias facebookText: facebook.text
    property alias googleText: google.text
    property alias passswordText: passsword.text
    property alias raziul_cse_gmail_comText: raziul_cse_gmail_com.text
    property alias the_ToletText: the_Tolet.text
    property alias log_InText: log_In.text
    property alias emailText: email.text
    property alias or_continue_withText: or_continue_with.text
    property alias loginText: login.text
    property alias forgot_Text: forgot_.text
    property alias find_Your_HouseText: find_Your_House.text
    property alias login_Button_Area: login_Button_ClicketArea

    Shape {
        id: line_2_Stroke_
        width: 1
        height: 24
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 171
        anchors.topMargin: 428
        layer.samples: 16
        layer.enabled: true
        ShapePath {
            id: line_2_Stroke__ShapePath_0
            strokeWidth: 1
            strokeColor: "transparent"
            PathSvg {
                id: line_2_Stroke__PathSvg_0
                path: "M 1 24 L 0 24 L 0 0 L 1 0 L 1 24 Z"
            }
            fillRule: ShapePath.WindingFill
            fillColor: "#ffffff"
        }
        antialiasing: true
    }

    Text {
        id: login
        width: 89
        height: 38
        color: "#ffffff"
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
        anchors.topMargin: 459
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
            fillColor: "#ffffff"
        }
        antialiasing: true
    }

    Text {
        id: raziul_cse_gmail_com
        width: 139
        height: 20
        color: "#cccccc"
        text: qsTr("raziul.cse@gmail.com")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 430
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
        id: email
        width: 31
        height: 20
        color: "#ffffff"
        text: qsTr("Email")
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
            fillColor: "#64748b"
        }
        antialiasing: true
    }

    Text {
        id: passsword
        width: 71
        height: 20
        color: "#94a3b8"
        text: qsTr("Passsword")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 492
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
        color: "#ffffff"
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
        source: "assets/don_t_have_account_Create_now_1.png"
    }

    Rectangle {
        id: login_Button
        width: 298
        height: 40
        color: "#334155"
        radius: 4
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 546
        MouseArea {
            id: login_Button_ClicketArea
            anchors.fill: parent
        }
        RowLayout {
            id: login_Button_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            spacing: Infinity
            Text {
                id: log_In
                x: 0
                y: 0
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
                font.weight: Font.Medium
                font.family: "Roboto"
                Layout.preferredWidth: 40
                Layout.preferredHeight: 20
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
    }

    Text {
        id: or_continue_with
        width: 103
        height: 20
        color: "#94a3b8"
        text: qsTr("Or continue with")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 129
        anchors.topMargin: 628
        font.pixelSize: 14
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignTop
        lineHeight: 20
        lineHeightMode: Text.FixedHeight
        wrapMode: Text.NoWrap
        font.weight: Font.Normal
        font.family: "Roboto"
    }

    Rectangle {
        id: google_auth
        width: 141
        height: 40
        color: "transparent"
        radius: 4
        border.color: "#334155"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 31
        anchors.topMargin: 664
        RowLayout {
            id: google_auth_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 36
            anchors.rightMargin: 36
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            spacing: Infinity
            Item {
                id: group_5
                x: 0
                y: 0
                width: 69
                height: 20
                Rectangle {
                    id: flat_color_icons_google
                    width: 16
                    height: 16
                    color: "transparent"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 2
                    Shape {
                        id: element
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 1
                        anchors.rightMargin: 1
                        anchors.topMargin: 1
                        anchors.bottomMargin: 1
                        layer.samples: 16
                        layer.enabled: true
                        ShapePath {
                            id: vector_ShapePath_0
                            strokeWidth: 1
                            strokeColor: "transparent"
                            PathSvg {
                                id: vector_PathSvg_0
                                path: "M 13.203667316611607 5.3610003166675595 L 12.6666672706604 5.3610003166675595 L 12.6666672706604 5.333333587646484 L 6.6666669845581055 5.333333587646484 L 6.6666669845581055 8.000000381469725 L 10.434334298817339 8.000000381469725 C 9.884667589728059 9.552333810440699 8.40766708410581 10.666667175292968 6.6666669845581055 10.666667175292968 C 4.457666927544278 10.666667175292968 2.666666793823242 8.875667041571933 2.666666793823242 6.6666669845581055 C 2.666666793823242 4.457666927544278 4.457666927544278 2.666666793823242 6.6666669845581055 2.666666793823242 C 7.686333704932531 2.666666793823242 8.614000572236385 3.0513333345095246 9.320333925263093 3.6796666946252112 L 11.206000544516245 1.7940000753720595 C 10.015333812173207 0.6843333570639287 8.422667110252382 0 6.6666669845581055 0 C 2.9850001169045757 0 0 2.9850001169045757 0 6.6666669845581055 C 0 10.348333852211635 2.9850001169045757 13.333333969116211 6.6666669845581055 13.333333969116211 C 10.348333852211635 13.333333969116211 13.333333969116211 10.348333852211635 13.333333969116211 6.6666669845581055 C 13.333333969116211 6.2196669762770345 13.287333982976277 5.783333656787875 13.203667316611607 5.3610003166675595 Z"
                            }
                            fillRule: ShapePath.WindingFill
                            fillColor: "#ffc107"
                        }
                        antialiasing: true
                    }

                    Shape {
                        id: element1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 2
                        anchors.rightMargin: 3
                        anchors.topMargin: 1
                        anchors.bottomMargin: 10
                        layer.samples: 16
                        layer.enabled: true
                        ShapePath {
                            id: vector_ShapePath_1
                            strokeWidth: 1
                            strokeColor: "transparent"
                            PathSvg {
                                id: vector_PathSvg_1
                                path: "M 0 3.5636663328978777 L 2.1903333408709416 5.169999599456787 C 2.78300004268581 3.7026664179882456 4.218333660226284 2.6666664207158473 5.898000440652765 2.6666664207158473 C 6.917667174517978 2.6666664207158473 7.845334054095408 3.0513329075814086 8.55166741646732 3.679666179783666 L 10.437334060668945 1.7939998243640611 C 9.24666731257269 0.6843332613152449 7.654000589579951 0 5.898000440652765 0 C 3.337333564599111 0 1.1166667028984911 1.4456664977267408 0 3.5636663328978777 Z"
                            }
                            fillRule: ShapePath.WindingFill
                            fillColor: "#ff3d00"
                        }
                        antialiasing: true
                    }

                    Shape {
                        id: element2
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 2
                        anchors.rightMargin: 4
                        anchors.topMargin: 9
                        anchors.bottomMargin: 1
                        layer.samples: 16
                        layer.enabled: true
                        ShapePath {
                            id: vector_ShapePath_2
                            strokeWidth: 1
                            strokeColor: "transparent"
                            PathSvg {
                                id: vector_PathSvg_2
                                path: "M 5.934997925756642 5.315333366394043 C 7.6569972575387215 5.315333366394043 9.221663511399509 4.656332850780159 10.4046630859375 3.5846661486310967 L 8.341330331071717 1.8386663900748625 C 7.649511791100812 2.3647963825546454 6.804149835134017 2.6493553617499837 5.934997925756642 2.64866654024339 C 4.200998514450853 2.64866654024339 2.7286656230134074 1.5430001545881473 2.1739991482619185 0 L 0 1.67499933723638 C 1.103332909741123 3.8339995451956836 3.3439989545405466 5.315333366394043 5.934997925756642 5.315333366394043 Z"
                            }
                            fillRule: ShapePath.WindingFill
                            fillColor: "#4caf50"
                        }
                        antialiasing: true
                    }

                    Shape {
                        id: element3
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 8
                        anchors.rightMargin: 1
                        anchors.topMargin: 7
                        anchors.bottomMargin: 3
                        layer.samples: 16
                        layer.enabled: true
                        ShapePath {
                            id: vector_ShapePath_3
                            strokeWidth: 1
                            strokeColor: "transparent"
                            PathSvg {
                                id: vector_PathSvg_3
                                path: "M 6.537000332053503 0.027666727001145416 L 6.000000286102295 0.027666727001145416 L 6.000000286102295 0 L 0 0 L 0 2.6666665991316347 L 3.767667314259233 2.6666665991316347 C 3.5047359150919473 3.4054712386749237 3.031118775897914 4.051058785839717 2.4053333157857195 4.523666267271205 L 2.406333402299879 4.522999966832351 L 4.469667012039826 6.268999576747912 C 4.323667007223771 6.401666240690493 6.6666669845581055 4.666666548480361 6.6666669845581055 1.3333332995658174 C 6.6666669845581055 0.8863333239199258 6.620666998418172 0.450000036287178 6.537000332053503 0.027666727001145416 Z"
                            }
                            fillRule: ShapePath.WindingFill
                            fillColor: "#1976d2"
                        }
                        antialiasing: true
                    }
                    clip: true
                }

                Text {
                    id: google
                    width: 46
                    height: 20
                    color: "#94a3b8"
                    text: qsTr("Google")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 24
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Roboto"
                }
                Layout.preferredWidth: 69
                Layout.preferredHeight: 20
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
    }

    Rectangle {
        id: facebook_auth
        width: 141
        height: 40
        color: "transparent"
        radius: 4
        border.color: "#334155"
        border.width: 1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 188
        anchors.topMargin: 664
        RowLayout {
            id: facebook_auth_layout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 36
            anchors.rightMargin: 36
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            spacing: Infinity
            Item {
                id: group_6
                x: 0
                y: 0
                width: 85
                height: 20
                Rectangle {
                    id: frame
                    width: 16
                    height: 16
                    color: "transparent"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 2
                    Image {
                        id: element4
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "assets/element4.png"
                    }

                    Shape {
                        id: element5
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 5
                        anchors.rightMargin: 4
                        anchors.topMargin: 3
                        anchors.bottomMargin: 0
                        layer.samples: 16
                        layer.enabled: true
                        ShapePath {
                            id: vector_ShapePath_4
                            strokeWidth: 1.11111
                            strokeColor: "transparent"
                            PathSvg {
                                id: vector_PathSvg_4
                                path: "M 6.444444394880725 7.1111123972925645 L 6.799999608617532 4.888889773138638 L 4.666666630775698 4.888889773138638 L 4.666666630775698 3.33333393623089 C 4.666666630775698 2.7111116120641734 4.8888891691802625 2.2222226241539262 5.86666696063079 2.2222226241539262 L 6.888888835906982 2.2222226241539262 L 6.888888835906982 0.17777785231784696 C 6.311111083765611 0.088888946027142 5.688888823943326 0 5.111111071801955 0 C 3.2888889059798263 0 1.9999999846181562 1.1111113120769631 1.9999999846181562 3.111111673815497 L 1.9999999846181562 4.888889773138638 L 0 4.888889773138638 L 0 7.1111123972925645 L 1.9999999846181562 7.1111123972925645 L 1.9999999846181562 12.7555582017278 C 2.444444425644413 12.844447108018505 2.88888886667067 12.888891220092773 3.3333333076969267 12.888891220092773 C 3.7777777487231834 12.888891220092773 4.2222221897494405 12.844447108018505 4.666666630775698 12.7555582017278 L 4.666666630775698 7.1111123972925645 L 6.444444394880725 7.1111123972925645 Z"
                            }
                            fillRule: ShapePath.WindingFill
                            fillColor: "#ffffff"
                        }
                        antialiasing: true
                    }
                    clip: true
                }

                Text {
                    id: facebook
                    width: 62
                    height: 20
                    color: "#94a3b8"
                    text: qsTr("Facebook")
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.leftMargin: 24
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Roboto"
                }
                Layout.preferredWidth: 85
                Layout.preferredHeight: 20
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            }
        }
    }

    Image {
        id: subtract
        x: 0
        y: -127
        source: "assets/subtract_1.png"
    }

    Item {
        id: brand
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 96
        anchors.rightMargin: 96
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
                id: the_Tolet
                width: 111
                height: 20
                color: "#ffffff"
                text: qsTr("The Tolet")
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
                id: find_Your_House
                width: 111
                height: 17
                color: "#ffffff"
                text: qsTr("Find Your House")
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
                    id: element6
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    layer.samples: 16
                    layer.enabled: true
                    ShapePath {
                        id: vector_ShapePath_5
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_5
                            path: "M 40.91308175723011 18.362687684180326 L 23.645505396534496 1.0951166557629286 C 22.18534935830995 -0.3650388852543096 19.82284997520619 -0.3650388852543096 18.362693936981643 1.0951166557629286 L 1.0951170286684087 18.362687684180326 C -0.3650390095561362 19.822843225197563 -0.3650390095561362 22.18534180383117 1.0951170286684087 23.64549734484841 L 18.362693936981643 40.913067825648376 C 19.82284997520619 42.37322336666561 22.18534935830995 42.37322336666561 23.645505396534496 40.913067825648376 L 40.91308175723011 23.64549734484841 C 42.365034796462545 22.18534180383117 42.365034796462545 19.822843225197563 40.91308175723011 18.362687684180326 L 40.91308175723011 18.362687684180326 Z M 28.550972643963252 18.141203657568845 L 28.321286168789364 18.141203657568845 L 28.321286168789364 31.741979136965888 C 28.321286168789364 33.06268170859503 27.246675933521434 34.13728907454641 25.925972912171044 34.13728907454641 L 15.4833968554931 34.13728907454641 C 14.16269383414271 34.13728907454641 13.088084850572193 33.06268170859503 13.088084850572193 31.741979136965888 L 13.088084850572193 18.141203657568845 L 5.368944513591767 18.141203657568845 L 20.823631185536836 2.9408188854558537 L 36.2783166057845 18.141203657568845 L 28.550972643963252 18.141203657568845 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#ffffff"
                    }
                    antialiasing: true
                }

                Shape {
                    id: element7
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
                        id: vector_ShapePath_6
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_6
                            path: "M 20.417572021484375 3.551952144174032 L 11.86991763972263 3.551952144174032 L 11.86991763972263 18.539062607165075 C 11.86991763972263 19.68750011380362 10.934762204349596 20.622655868530273 9.786325089899915 20.622655868530273 C 8.637887975450234 20.622655868530273 7.7027325400772 19.68750011380362 7.7027325400772 18.539062607165075 L 7.7027325400772 3.551952144174032 L 0 3.551952144174032 L 3.281248898427658 0 L 17.136323123056716 0 L 20.417572021484375 3.551952144174032 L 20.417572021484375 3.551952144174032 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#ffffff"
                    }
                    antialiasing: true
                }
            }
            clip: true
        }
    }
}
