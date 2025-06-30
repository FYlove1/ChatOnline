import QtQuick
import QtQuick.Controls
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

Rectangle {
    id: chat_List_Chatgram_Bot_Item_
    width: 364
    height: 72
    color: "transparent"
    property alias element3Text: element3.text
    property alias chatgram_Web_was_updated_Text: chatgram_Web_was_updated_.text
    property alias chatgramText: chatgram.text
    property alias element2Text: element2.text

    RowLayout {
        id: chat_List_Chatgram_Bot_Item__instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 12
        anchors.bottomMargin: 12
        spacing: 16
        Rectangle {
            id: avatar
            x: 0
            y: 0
            width: 48
            height: 48
            color: "#8babd8"
            radius: 100
            Layout.preferredWidth: 48
            Layout.preferredHeight: 48
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }

        Rectangle {
            id: texts
            x: 0
            y: 0
            width: 268
            height: 46
            color: "transparent"
            ColumnLayout {
                id: texts_layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                spacing: 4
                Rectangle {
                    id: name
                    x: 0
                    y: 0
                    width: 268
                    height: 24
                    color: "transparent"
                    RowLayout {
                        id: name_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 0
                        Rectangle {
                            id: bot_name
                            x: 0
                            y: 0
                            width: 236
                            height: 24
                            color: "transparent"
                            RowLayout {
                                id: bot_name_layout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                spacing: 4
                                Text {
                                    id: chatgram
                                    x: 0
                                    y: 0
                                    width: 78
                                    height: 20
                                    color: "#011627"
                                    text: qsTr("Chatgram")
                                    font.pixelSize: 16
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    lineHeight: 20
                                    lineHeightMode: Text.FixedHeight
                                    wrapMode: Text.NoWrap
                                    font.weight: Font.DemiBold
                                    font.family: "Inter"
                                    Layout.preferredWidth: 78
                                    Layout.preferredHeight: 20
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                }

                                Rectangle {
                                    id: verified_bot
                                    x: 0
                                    y: 0
                                    width: 24
                                    height: 24
                                    color: "transparent"
                                    Shape {
                                        id: element
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.top: parent.top
                                        anchors.bottom: parent.bottom
                                        anchors.leftMargin: 3
                                        anchors.rightMargin: 3
                                        anchors.topMargin: 3
                                        anchors.bottomMargin: 3
                                        layer.samples: 16
                                        layer.enabled: true
                                        ShapePath {
                                            id: vector_ShapePath_0
                                            strokeWidth: 1
                                            strokeColor: "transparent"
                                            PathSvg {
                                                id: vector_PathSvg_0
                                                path: "M 9.363825798034668 0.03923051804304123 C 9.463825799524784 0.13923051953315735 9.563825987279415 0.13923033326864243 9.663825988769531 0.23923033475875854 C 10.363825976848602 0.8392303586006165 10.96382600069046 1.3392305374145508 11.663825988769531 1.9392305612564087 C 11.96382600069046 2.139230564236641 12.263825595378876 2.3392302989959717 12.563825607299805 2.3392302989959717 C 13.463825583457947 2.439230300486088 14.26382601261139 2.5392305850982666 15.163825988769531 2.5392305850982666 C 15.663825988769531 2.5392305850982666 15.763824842870235 2.6392303705215454 15.863824844360352 3.2392303943634033 C 15.963824845850468 4.139230370521545 15.963825605809689 5.039230048656464 16.063825607299805 5.839230060577393 C 16.063825607299805 6.239230066537857 16.263825222849846 6.539230048656464 16.463825225830078 6.839230060577393 C 17.063825249671936 7.539230048656464 17.563825964927673 8.13923054933548 18.16382598876953 8.83923053741455 C 18.46382600069046 9.239230543375015 18.46382600069046 9.339230716228485 18.16382598876953 9.639230728149414 C 17.66382598876953 10.239230751991272 17.063825607299805 10.93923032283783 16.563825607299805 11.539230346679688 C 16.263825595378876 11.839230358600616 16.063825607299805 12.23923110961914 16.063825607299805 12.73923110961914 C 15.963825605809689 13.53923112154007 15.863824844360352 14.439231097698212 15.863824844360352 15.23923110961914 C 15.863824844360352 15.639231115579605 15.663826376199722 15.739231489598751 15.263826370239258 15.839231491088867 C 14.463826358318329 15.839231491088867 13.663825392723083 15.939230345189571 12.763825416564941 16.039230346679688 C 12.263825416564941 16.039230346679688 11.763825803995132 16.23923033475876 11.363825798034668 16.539230346679688 C 10.76382577419281 17.039230346679688 10.063825249671936 17.639230728149414 9.463825225830078 18.139230728149414 C 9.16382521390915 18.439230740070343 8.96382600069046 18.439230740070343 8.663825988769531 18.139230728149414 C 7.96382600069046 17.539230704307556 7.263826489448547 16.939231514930725 6.6638264656066895 16.339231491088867 C 6.3638264536857605 16.139231488108635 6.063825905323029 15.939229965209961 5.7638258934021 15.939229965209961 C 4.8638259172439575 15.839229963719845 3.963825821876526 15.73923110961914 3.063825845718384 15.73923110961914 C 2.6638258397579193 15.73923110961914 2.5638259425759315 15.53923112154007 2.4638259410858154 15.23923110961914 C 2.4638259410858154 14.339231133460999 2.3638256564736366 13.539230704307556 2.2638256549835205 12.639230728149414 C 2.2638256549835205 12.23923072218895 2.0638260394334793 11.839230358600616 1.863826036453247 11.539230346679688 C 1.2638260126113892 10.93923032283783 0.763825923204422 10.239230334758759 0.263825923204422 9.539230346679688 C -0.13617408275604248 9.139230340719223 -0.03617408871650696 9.039230346679688 0.263825923204422 8.539230346679688 C 0.8638259470462799 7.93923032283783 1.3638259172439575 7.239230275154114 1.9638259410858154 6.639230251312256 C 2.2638259530067444 6.339230239391327 2.363826036453247 6.03923025727272 2.363826036453247 5.639230251312256 C 2.363826036453247 4.839230239391327 2.4638258442282677 4.039230465888977 2.563825845718384 3.139230489730835 C 2.563825845718384 2.639230489730835 2.663825750350952 2.5392305850982666 3.163825750350952 2.5392305850982666 C 4.063825726509094 2.4392305836081505 4.8638259172439575 2.439230300486088 5.7638258934021 2.3392302989959717 C 6.163825899362564 2.3392302989959717 6.463825881481171 2.139230564236641 6.7638258934021 1.9392305612564087 C 7.463825881481171 1.3392305374145508 8.163825809955597 0.7392303347587585 8.863825798034668 0.23923033475875854 C 8.963825799524784 0.039230331778526306 9.163825795054436 -0.06076948344707489 9.363825798034668 0.03923051804304123 L 9.363825798034668 0.03923051804304123 Z"
                                            }
                                            fillRule: ShapePath.WindingFill
                                            fillColor: "#1a9cff"
                                        }
                                        antialiasing: true
                                    }

                                    Shape {
                                        id: element1
                                        anchors.left: parent.left
                                        anchors.right: parent.right
                                        anchors.top: parent.top
                                        anchors.bottom: parent.bottom
                                        anchors.leftMargin: 8
                                        anchors.rightMargin: 8
                                        anchors.topMargin: 9
                                        anchors.bottomMargin: 8
                                        layer.samples: 16
                                        layer.enabled: true
                                        ShapePath {
                                            id: vector_ShapePath_1
                                            strokeWidth: 1
                                            strokeColor: "transparent"
                                            PathSvg {
                                                id: vector_PathSvg_1
                                                path: "M 8.715469360351562 0.7893394827842712 L 8.515470504760742 0.989339292049408 L 3.1154701709747314 6.389338970184326 C 3.0154701694846153 6.489338971674442 2.915469601750374 6.589338973164558 2.7154695987701416 6.389338970184326 L 0.11547005921602249 3.789339542388916 C -0.08452994376420975 3.5893395394086838 0.015470057725906372 3.4893389716744423 0.11547005921602249 3.389338970184326 C 0.31547006219625473 3.189338967204094 0.6154698580503464 2.789339542388916 0.8154698610305786 2.789339542388916 C 1.1154698729515076 2.789339542388916 1.315469667315483 3.189338967204094 1.5154696702957153 3.389338970184326 L 2.6154701709747314 4.489339351654053 C 2.8154701739549637 4.689339354634285 2.915470167994499 4.689339354634285 3.1154701709747314 4.489339351654053 L 7.415470123291016 0.18933910131454468 C 7.615470126271248 -0.010660901665687561 7.8154695481061935 -0.11066091060638428 8.015469551086426 0.18933910131454468 C 8.115469552576542 0.3893391042947769 8.3154701218009 0.48933909833431244 8.415470123291016 0.6893391013145447 C 8.615470126271248 0.6893391013145447 8.715469360351562 0.7893394827842712 8.715469360351562 0.7893394827842712 Z"
                                            }
                                            fillRule: ShapePath.WindingFill
                                            fillColor: "#ffffff"
                                        }
                                        antialiasing: true
                                    }
                                    clip: true
                                    Layout.preferredWidth: 24
                                    Layout.preferredHeight: 24
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                }

                                Item {
                                    id: bot_name_QtQuick_Layouts_RowLayout_SpacerRear
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillWidth: true
                                }
                            }
                            Layout.preferredHeight: 24
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Text {
                            id: element2
                            x: 0
                            y: 0
                            width: 33
                            height: 16
                            color: "#707991"
                            text: qsTr("19:48")
                            font.pixelSize: 12
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 16
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 33
                            Layout.preferredHeight: 16
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }
                    }
                    Layout.preferredHeight: 24
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }

                Rectangle {
                    id: message
                    x: 0
                    y: 0
                    width: 268
                    height: 18
                    color: "transparent"
                    RowLayout {
                        id: message_layout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        spacing: 58
                        Text {
                            id: chatgram_Web_was_updated_
                            x: 0
                            y: 0
                            width: 193
                            height: 18
                            color: "#707991"
                            text: qsTr("Chatgram Web was updated.")
                            font.pixelSize: 14
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignTop
                            lineHeight: 18
                            lineHeightMode: Text.FixedHeight
                            wrapMode: Text.NoWrap
                            font.weight: Font.Normal
                            font.family: "Inter"
                            Layout.preferredWidth: 193
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }

                        Rectangle {
                            id: new_message
                            x: 0
                            y: 0
                            width: 18
                            height: 18
                            color: "#78e378"
                            radius: 100
                            ColumnLayout {
                                id: new_message_layout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                spacing: 0
                                Item {
                                    id: new_message_QtQuick_Layouts_ColumnLayout_SpacerFrontal
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillHeight: true
                                }

                                Text {
                                    id: element3
                                    x: 0
                                    y: 0
                                    width: 17
                                    height: 16
                                    color: "#ffffff"
                                    text: qsTr("1")
                                    font.pixelSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignTop
                                    lineHeight: 16
                                    lineHeightMode: Text.FixedHeight
                                    wrapMode: Text.Wrap
                                    font.weight: Font.Normal
                                    font.family: "Inter"
                                    Layout.preferredWidth: 17
                                    Layout.preferredHeight: 16
                                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                                }

                                Item {
                                    id: new_message_QtQuick_Layouts_ColumnLayout_SpacerRear
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillHeight: true
                                }
                            }
                            Layout.preferredWidth: 18
                            Layout.preferredHeight: 18
                            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                        }
                    }
                    Layout.preferredHeight: 18
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                }
            }
            clip: true
            Layout.preferredHeight: 46
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"7cb12826-a032-5042-a44d-dcb21442b30b"}D{i:1;uuid:"7cb12826-a032-5042-a44d-dcb21442b30b_HORIZONTAL"}
D{i:2;uuid:"1056e886-7d50-534f-a082-209b4b8ac36e"}D{i:3;uuid:"f5f6a985-d8a1-5ca1-b025-ae873956ce2d"}
D{i:4;uuid:"f5f6a985-d8a1-5ca1-b025-ae873956ce2d_VERTICAL"}D{i:5;uuid:"46fc3d24-d712-53df-8885-8595daa4a9dd"}
D{i:6;uuid:"46fc3d24-d712-53df-8885-8595daa4a9dd_HORIZONTAL"}D{i:7;uuid:"118ec978-ead7-546e-b149-a78d572f1fce"}
D{i:8;uuid:"118ec978-ead7-546e-b149-a78d572f1fce_HORIZONTAL"}D{i:9;uuid:"cb8c72c4-14cf-5825-ad9f-561ac60c1260"}
D{i:10;uuid:"459114b4-929b-5794-aef0-2df4c35e0f7d"}D{i:11;uuid:"04128aec-0204-5295-850c-ed4c51987cd3"}
D{i:12;uuid:"04128aec-0204-5295-850c-ed4c51987cd3_ShapePath_0"}D{i:13;uuid:"04128aec-0204-5295-850c-ed4c51987cd3-PathSvg_0"}
D{i:14;uuid:"eece917b-91e9-5ad1-8fca-4162e4466100"}D{i:15;uuid:"eece917b-91e9-5ad1-8fca-4162e4466100_ShapePath_0"}
D{i:16;uuid:"eece917b-91e9-5ad1-8fca-4162e4466100-PathSvg_0"}D{i:17;uuid:"118ec978-ead7-546e-b149-a78d572f1fce_HORIZONTAL_SpacerRear"}
D{i:18;uuid:"edf88aa6-e4b9-54fb-a12f-899798e359da"}D{i:19;uuid:"0db589c9-3ec2-5a0c-ac23-bc6528df2f0e"}
D{i:20;uuid:"0db589c9-3ec2-5a0c-ac23-bc6528df2f0e_HORIZONTAL"}D{i:21;uuid:"69530746-b9b1-572b-9a3b-f712485d9044"}
D{i:22;uuid:"692f0002-8f52-539e-987f-d1681b33fbea"}D{i:23;uuid:"692f0002-8f52-539e-987f-d1681b33fbea_VERTICAL"}
D{i:24;uuid:"692f0002-8f52-539e-987f-d1681b33fbea_VERTICAL_SpacerFrontal"}D{i:25;uuid:"c4f6059a-b54b-5682-8aed-f6379e8ae264"}
D{i:26;uuid:"692f0002-8f52-539e-987f-d1681b33fbea_VERTICAL_SpacerRear"}
}
##^##*/

