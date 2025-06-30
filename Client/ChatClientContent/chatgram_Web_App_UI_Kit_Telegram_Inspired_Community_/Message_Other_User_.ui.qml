import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

Rectangle {
    id: message_Other_User_
    width: 646
    height: 70
    color: "transparent"
    property alias oMG_do_you_remember_what_you_did_last_night_at_the_work_night_ouText: oMG_do_you_remember_what_you_did_last_night_at_the_work_night_ou.text
    property alias element1Text: element1.text

    RowLayout {
        id: message_Other_User__instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Rectangle {
            id: message
            x: 0
            y: 0
            width: 402
            height: 70
            color: "#ffffff"
            radius: 12
            ColumnLayout {
                id: message_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 12
                anchors.rightMargin: 12
                anchors.topMargin: 4
                anchors.bottomMargin: 4
                spacing: 4
                Text {
                    id: oMG_do_you_remember_what_you_did_last_night_at_the_work_night_ou
                    x: 0
                    y: 0
                    width: 379
                    height: 40
                    color: "#011627"
                    text: qsTr("OMG 😲 do you remember what you did last night \nat the work night out?")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Inter"
                    Layout.preferredWidth: 379
                    Layout.preferredHeight: 40
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                }

                Rectangle {
                    id: time_Emoji_Icon_
                    x: 0
                    y: 0
                    width: 70
                    height: 18
                    color: "transparent"
                    RowLayout {
                        id: time_Emoji_Icon__layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 4
                        Rectangle {
                            id: heart_icon
                            x: 0
                            y: 0
                            width: 18
                            height: 18
                            color: "transparent"
                            Shape {
                                id: element
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.leftMargin: 0
                                anchors.rightMargin: 0
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
                                        path: "M 17.884998321533203 4.934000015258789 C 17.884998321533203 2.2090001106262207 15.675999879837036 0 12.951499938964844 0 C 11.297499895095825 0 9.838000118732452 0.8164998292922974 8.942500114440918 2.064499855041504 C 8.047000110149384 0.8164998292922974 6.587499976158142 0 4.934000015258789 0 C 2.2090001106262207 0 0 2.2084999084472656 0 4.934000015258789 C 0 5.320000022649765 0.049000002443790436 5.694000095129013 0.13300000131130219 6.054500102996826 C 0.818000003695488 10.310999870300293 5.550500154495239 14.801500082015991 8.942500114440918 16.034500122070312 C 12.33400011062622 14.801500082015991 17.066999435424805 10.310999870300293 17.750999450683594 6.054999828338623 C 17.835999451577663 5.69449982047081 17.884998321533203 5.320500016212463 17.884998321533203 4.934000015258789 L 17.884998321533203 4.934000015258789 Z"
                                    }
                                    fillRule: ShapePath.WindingFill
                                    fillColor: "#f71735"
                                }
                                antialiasing: true
                            }
                            clip: true
                            Layout.preferredWidth: 18
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: element1
                            x: 0
                            y: 0
                            width: 31
                            height: 16
                            color: "#011627"
                            text: qsTr("18:12")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 31
                            Layout.preferredHeight: 16
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Rectangle {
                            id: check_Icon
                            x: 0
                            y: 0
                            width: 14
                            height: 14
                            color: "transparent"
                            Shape {
                                id: element2
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                anchors.leftMargin: 2
                                anchors.rightMargin: 2
                                anchors.topMargin: 4
                                anchors.bottomMargin: 3
                                layer.samples: 16
                                layer.enabled: true
                                ShapePath {
                                    id: vector_ShapePath_1
                                    strokeWidth: 1
                                    strokeColor: "transparent"
                                    PathSvg {
                                        id: vector_PathSvg_1
                                        path: "M 3.201165328665501 6.167998934916292 L 0.9885817622306905 3.9554154493089775 C 0.8785638312891211 3.8491565752978865 0.7312125776973915 3.7903598809549752 0.5782644540828031 3.7916889588422964 C 0.42531633046821476 3.7930180367296176 0.2790091577958975 3.854366462131926 0.17085442213381083 3.9625211972422 C 0.06269968647172415 4.070675932352474 0.0013511294332571825 4.216983382433335 0.000022051539155088857 4.369931505267572 C -0.001307026354947005 4.522879628101809 0.057489660533596706 4.670230602786732 0.16374853508682746 4.780248533166983 L 2.788748784632323 7.405249117013323 C 2.898139936713167 7.514607237628387 3.046486229018528 7.576040744781494 3.201165328665501 7.576040744781494 C 3.355844428312474 7.576040744781494 3.5041907206178355 7.514607237628387 3.6135818726986795 7.405249117013323 L 10.030248639414589 0.9885818962643887 C 10.13650751396782 0.8785639658841378 10.195304208610715 0.7312127130442039 10.193975130716613 0.5782645902099667 C 10.19264605282251 0.4253164673757295 10.131297070797173 0.2790092954498808 10.023142335135086 0.17085456033960653 C 9.914987599473 0.06269982522933226 9.76868014864567 0.0013511293245002257 9.61573202503108 0.00002205143717917282 C 9.462783901416492 -0.0013070264501418801 9.315432925979776 0.05748993839529262 9.205414995038206 0.16374881240638378 L 3.201165328665501 6.167998934916292 Z"
                                    }
                                    fillRule: ShapePath.WindingFill
                                    fillColor: "#011627"
                                }
                                antialiasing: true
                            }
                            clip: true
                            Layout.preferredWidth: 14
                            Layout.preferredHeight: 14
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }
                    }
                    Layout.preferredWidth: 70
                    Layout.preferredHeight: 18
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                }
            }
            Layout.preferredWidth: 402
            Layout.preferredHeight: 70
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Item {
            id: message_Other_User__instance_QtQuick_Layouts_RowLayout_SpacerRear
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillWidth: true
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"227a8de3-a02d-5b31-a19b-b680be324d8e"}D{i:1;uuid:"227a8de3-a02d-5b31-a19b-b680be324d8e_HORIZONTAL"}
D{i:2;uuid:"94c39a3d-9450-5189-9a8c-9949501c738c"}D{i:3;uuid:"94c39a3d-9450-5189-9a8c-9949501c738c_VERTICAL"}
D{i:4;uuid:"eaaaf53c-3065-53ca-945e-551effa89fef"}D{i:5;uuid:"04887b5f-d36a-55d7-81cf-14c2e0d74e84"}
D{i:6;uuid:"04887b5f-d36a-55d7-81cf-14c2e0d74e84_HORIZONTAL"}D{i:7;uuid:"8552d6ba-63b2-5c67-aa3e-8972532514f6"}
D{i:8;uuid:"aafdb8fe-82c4-5175-8c67-9508da7a430f"}D{i:9;uuid:"aafdb8fe-82c4-5175-8c67-9508da7a430f_ShapePath_0"}
D{i:10;uuid:"aafdb8fe-82c4-5175-8c67-9508da7a430f-PathSvg_0"}D{i:11;uuid:"cea0c514-fb8b-56a3-8ee3-495f6c7d18f2"}
D{i:12;uuid:"49c655de-760f-5bc1-98c0-088f4259c501"}D{i:13;uuid:"f1c49806-ac0d-5021-bf0a-0206d0745ba9"}
D{i:14;uuid:"f1c49806-ac0d-5021-bf0a-0206d0745ba9_ShapePath_0"}D{i:15;uuid:"f1c49806-ac0d-5021-bf0a-0206d0745ba9-PathSvg_0"}
D{i:16;uuid:"227a8de3-a02d-5b31-a19b-b680be324d8e_HORIZONTAL_SpacerRear"}
}
##^##*/

