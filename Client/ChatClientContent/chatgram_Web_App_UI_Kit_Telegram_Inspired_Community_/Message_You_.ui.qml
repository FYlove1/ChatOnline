import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

Rectangle {
    id: message_You_
    width: 646
    height: 48
    color: "transparent"
    property alias elementText: element.text
    property alias i_don_t_remember_anything_Text: i_don_t_remember_anything_.text

    RowLayout {
        id: message_You__instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        spacing: 0
        Item {
            id: message_You__instance_QtQuick_Layouts_RowLayout_SpacerFrontal
            x: 0
            y: 0
            width: 1
            height: 1
            Layout.fillWidth: true
        }

        Rectangle {
            id: message
            x: 0
            y: 0
            width: 243
            height: 48
            color: "#78e378"
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
                    id: i_don_t_remember_anything_
                    x: 0
                    y: 0
                    width: 220
                    height: 20
                    color: "#011627"
                    text: qsTr("i don't remember anything 😄")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 20
                    lineHeightMode: Text.FixedHeight
                    wrapMode: Text.NoWrap
                    font.weight: Font.Normal
                    font.family: "Inter"
                    Layout.preferredWidth: 220
                    Layout.preferredHeight: 20
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                }

                Rectangle {
                    id: element2
                    x: 0
                    y: 0
                    width: 48
                    height: 16
                    color: "transparent"
                    RowLayout {
                        id: time_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 4
                        Text {
                            id: element
                            x: 0
                            y: 0
                            width: 31
                            height: 16
                            color: "#ffffff"
                            text: qsTr("18:16")
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
                                id: element1
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
                                    id: vector_ShapePath_0
                                    strokeWidth: 1
                                    strokeColor: "transparent"
                                    PathSvg {
                                        id: vector_PathSvg_0
                                        path: "M 3.201165328665501 6.167998934916292 L 0.9885817622306905 3.9554154493089775 C 0.8785638312891211 3.8491565752978865 0.7312125776973915 3.7903598809549752 0.5782644540828031 3.7916889588422964 C 0.42531633046821476 3.7930180367296176 0.2790091577958975 3.854366462131926 0.17085442213381083 3.9625211972422 C 0.06269968647172415 4.070675932352474 0.0013511294332571825 4.216983382433335 0.000022051539155088857 4.369931505267572 C -0.001307026354947005 4.522879628101809 0.057489660533596706 4.670230602786732 0.16374853508682746 4.780248533166983 L 2.788748784632323 7.405249117013323 C 2.898139936713167 7.514607237628387 3.046486229018528 7.576040744781494 3.201165328665501 7.576040744781494 C 3.355844428312474 7.576040744781494 3.5041907206178355 7.514607237628387 3.6135818726986795 7.405249117013323 L 10.030248639414589 0.9885818962643887 C 10.13650751396782 0.8785639658841378 10.195304208610715 0.7312127130442039 10.193975130716613 0.5782645902099667 C 10.19264605282251 0.4253164673757295 10.131297070797173 0.2790092954498808 10.023142335135086 0.17085456033960653 C 9.914987599473 0.06269982522933226 9.76868014864567 0.0013511293245002257 9.61573202503108 0.00002205143717917282 C 9.462783901416492 -0.0013070264501418801 9.315432925979776 0.05748993839529262 9.205414995038206 0.16374881240638378 L 3.201165328665501 6.167998934916292 Z"
                                    }
                                    fillRule: ShapePath.WindingFill
                                    fillColor: "#ffffff"
                                }
                                antialiasing: true
                            }
                            clip: true
                            Layout.preferredWidth: 14
                            Layout.preferredHeight: 14
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }
                    }
                    Layout.preferredWidth: 48
                    Layout.preferredHeight: 16
                    Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                }
            }
            Layout.preferredWidth: 243
            Layout.preferredHeight: 48
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"a278c45c-1cd5-5f51-8948-e0bf30c9c3df"}D{i:1;uuid:"a278c45c-1cd5-5f51-8948-e0bf30c9c3df_HORIZONTAL"}
D{i:2;uuid:"a278c45c-1cd5-5f51-8948-e0bf30c9c3df_HORIZONTAL_SpacerFrontal"}D{i:3;uuid:"d5d3d517-2f2e-5a99-ba08-2c9a7f79ed0d"}
D{i:4;uuid:"d5d3d517-2f2e-5a99-ba08-2c9a7f79ed0d_VERTICAL"}D{i:5;uuid:"37a8b76d-702a-56bc-8732-aa504c6c6102"}
D{i:6;uuid:"215a892b-2dd1-5424-a80d-235f00b4ee6b"}D{i:7;uuid:"215a892b-2dd1-5424-a80d-235f00b4ee6b_HORIZONTAL"}
D{i:8;uuid:"9b1c46a3-9bb6-5b8e-bebd-aa4f19fdf22a"}D{i:9;uuid:"044702b1-7666-5bf3-8e57-731bcda81fe8"}
D{i:10;uuid:"a59a2181-2a67-5ac3-a3a0-9e17fec4f499"}D{i:11;uuid:"a59a2181-2a67-5ac3-a3a0-9e17fec4f499_ShapePath_0"}
D{i:12;uuid:"a59a2181-2a67-5ac3-a3a0-9e17fec4f499-PathSvg_0"}
}
##^##*/

