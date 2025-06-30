import QtQuick
import QtQuick.Controls
import QtQuick.Layouts 1.15
import QtQuick.Shapes 1.15

Rectangle {
    id: top_Bar
    width: 916
    height: 56
    color: "#ffffff"
    property alias david_MooreText: david_Moore.text
    property alias last_seen_5_mins_agoText: last_seen_5_mins_ago.text

    RowLayout {
        id: top_Bar_instance_layout
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 8
        anchors.bottomMargin: 8
        spacing: 8
        Rectangle {
            id: other_User_
            x: 0
            y: 0
            width: 740
            height: 40
            color: "#ffffff"
            RowLayout {
                id: other_User__layout
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                spacing: 16
                Image {
                    id: avatar
                    x: 0
                    y: 0
                    source: "assets/avatar.png"
                    Layout.preferredWidth: 40
                    Layout.preferredHeight: 40
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                }

                Rectangle {
                    id: texts
                    x: 0
                    y: 0
                    width: 684
                    height: 42
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
                            width: 684
                            height: 20
                            color: "transparent"
                            RowLayout {
                                id: name_layout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                spacing: 0
                                Text {
                                    id: david_Moore
                                    x: 0
                                    y: 0
                                    width: 685
                                    height: 20
                                    color: "#011627"
                                    text: qsTr("David Moore")
                                    font.pixelSize: 16
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    lineHeight: 20
                                    lineHeightMode: Text.FixedHeight
                                    wrapMode: Text.Wrap
                                    font.weight: Font.DemiBold
                                    font.family: "Inter"
                                    Layout.preferredHeight: 20
                                    Layout.fillWidth: true
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                }
                            }
                            Layout.preferredHeight: 20
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        }

                        Rectangle {
                            id: last_Seen
                            x: 0
                            y: 0
                            width: 684
                            height: 18
                            color: "transparent"
                            RowLayout {
                                id: last_Seen_layout
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.top: parent.top
                                anchors.bottom: parent.bottom
                                spacing: 0
                                Text {
                                    id: last_seen_5_mins_ago
                                    x: 0
                                    y: 0
                                    width: 137
                                    height: 18
                                    color: "#707991"
                                    text: qsTr("last seen 5 mins ago")
                                    font.pixelSize: 14
                                    horizontalAlignment: Text.AlignLeft
                                    verticalAlignment: Text.AlignTop
                                    lineHeight: 18
                                    lineHeightMode: Text.FixedHeight
                                    wrapMode: Text.NoWrap
                                    font.weight: Font.Normal
                                    font.family: "Inter"
                                    Layout.preferredWidth: 137
                                    Layout.preferredHeight: 18
                                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                                }

                                Item {
                                    id: last_Seen_QtQuick_Layouts_RowLayout_SpacerRear
                                    x: 0
                                    y: 0
                                    width: 1
                                    height: 1
                                    Layout.fillWidth: true
                                }
                            }
                            Layout.preferredHeight: 18
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                        }
                    }
                    clip: true
                    Layout.preferredHeight: 42
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                }
            }
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: search_Messages
            x: 0
            y: 0
            width: 40
            height: 40
            color: "transparent"
            radius: 100
            Rectangle {
                id: search_icon
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 8
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
                            path: "M 7.499605178833008 6.075376646208497e-9 C 8.89758312702179 -0.00005625286944699326 10.267751574516296 0.3906135559082031 11.455488204956055 1.1279222965240479 C 12.643224835395813 1.8652310371398926 13.601248741149902 2.919828414916992 14.221446990966797 4.172703742980957 C 14.841645240783691 5.425579071044922 15.099328964948654 6.826858878135681 14.96541976928711 8.218408584594727 C 14.831510573625565 9.609958291053772 14.311338782310486 10.936384558677673 13.463604927062988 12.04800033569336 L 18.206605911254883 16.792999267578125 C 18.385953828692436 16.97295704483986 18.49007865600288 17.214434295892715 18.497833251953125 17.4683837890625 C 18.50558784790337 17.722333282232285 18.416389495134354 17.969712913036346 18.248355865478516 18.1602783203125 C 18.080322235822678 18.350843727588654 17.84605297446251 18.470304504036903 17.593130111694336 18.49439811706543 C 17.340207248926163 18.518491730093956 17.087595969438553 18.44541271030903 16.88660430908203 18.290000915527344 L 16.792604446411133 18.207000732421875 L 12.047605514526367 13.46399974822998 C 11.100606143474579 14.186095356941223 9.995265007019043 14.672300338745117 8.823046684265137 14.882381439208984 C 7.6508283615112305 15.092462539672852 6.445433974266052 15.02038049697876 5.306605339050293 14.672100067138672 C 4.167776703834534 14.323819637298584 3.1282553672790527 13.709353268146515 2.2740588188171387 12.879547119140625 C 1.4198622703552246 12.049740970134735 0.7755488157272339 11.028451919555664 0.39443278312683105 9.900187492370605 C 0.013316750526428223 8.771923065185547 -0.09364441782236099 7.569121479988098 0.08239985257387161 6.391310691833496 C 0.2584441229701042 5.213499903678894 0.7124324440956116 4.094541847705841 1.406799077987671 3.1270270347595215 C 2.1011657118797302 2.159512221813202 3.015947103500366 1.3712568283081055 4.075448513031006 0.8274860382080078 C 5.1349499225616455 0.28371524810791016 6.30871057510376 0.00006285502599645554 7.499605178833008 6.075376646208497e-9 L 7.499605178833008 6.075376646208497e-9 Z M 7.499605178833008 2 C 6.040914535522461 2.000000000000001 4.641968011856079 2.579462766647339 3.610517978668213 3.610912799835205 C 2.5790679454803467 4.642362833023071 1.9996051788330087 6.041309356689453 1.9996051788330078 7.5 C 1.9996051788330087 8.958690643310547 2.5790679454803467 10.357637643814087 3.610517978668213 11.389087677001953 C 4.641968011856079 12.42053771018982 6.040914535522461 13 7.499605178833008 13 C 8.958295822143555 13 10.357242822647095 12.42053771018982 11.388692855834961 11.389087677001953 C 12.420142889022827 10.357637643814087 12.999605178833008 8.958690643310547 12.999605178833008 7.5 C 12.999605178833008 6.041309356689453 12.420142889022827 4.642362833023071 11.388692855834961 3.610912799835205 C 10.357242822647095 2.579462766647339 8.958295822143555 2.000000000000001 7.499605178833008 2 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#707991"
                    }
                    antialiasing: true
                }
                clip: true
            }
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: call_Icon
            x: 0
            y: 0
            width: 40
            height: 40
            color: "transparent"
            radius: 100
            Rectangle {
                id: call_icon
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                Shape {
                    id: element1
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    anchors.topMargin: 2
                    anchors.bottomMargin: 2
                    layer.samples: 16
                    layer.enabled: true
                    ShapePath {
                        id: vector_ShapePath_1
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_1
                            path: "M 2.3631954193115234 0.43880966305732727 L 3.439195156097412 0.09480979293584824 C 4.449195146560669 -0.22719020396471024 5.526195615530014 0.29380977153778076 5.959195613861084 1.311809778213501 L 6.818195819854736 3.3398098945617676 C 7.19219583272934 4.222809910774231 6.985195875167847 5.261809706687927 6.304195880889893 5.907809734344482 L 4.410195827484131 7.705810070037842 C 4.526195824146271 8.78181004524231 4.88819545507431 9.840810537338257 5.494195461273193 10.882810592651367 C 6.069979190826416 11.891021013259888 6.842223286628723 12.773439407348633 7.765195369720459 13.47780990600586 L 10.04019546508789 12.71781063079834 C 10.903195440769196 12.430810630321503 11.842194437980652 12.761809766292572 12.370194435119629 13.538809776306152 L 13.603194236755371 15.348811149597168 C 14.218194246292114 16.25281113386154 14.108194828033447 17.498808681964874 13.345194816589355 18.264808654785156 L 12.527195930480957 19.0858097076416 C 11.71319591999054 19.90280967950821 10.55019497871399 20.199809581041336 9.475194931030273 19.86380958557129 C 6.936194896697998 19.071809589862823 4.602195739746094 16.720810174942017 2.472195625305176 12.810810089111328 C 0.33919572830200195 8.894810199737549 -0.4138043373823166 5.570809602737427 0.21419568359851837 2.8428096771240234 C 0.4781956821680069 1.6948096752166748 1.295195460319519 0.7798096537590027 2.3631954193115234 0.43880966305732727 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#707991"
                    }
                    antialiasing: true
                }
                clip: true
            }
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }

        Rectangle {
            id: more_Icon
            x: 0
            y: 0
            width: 40
            height: 40
            color: "transparent"
            radius: 100
            Rectangle {
                id: more_icon
                color: "transparent"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.topMargin: 8
                anchors.bottomMargin: 8
                Shape {
                    id: element2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.topMargin: 4
                    anchors.bottomMargin: 4
                    layer.samples: 16
                    layer.enabled: true
                    ShapePath {
                        id: vector_ShapePath_2
                        strokeWidth: 1
                        strokeColor: "transparent"
                        PathSvg {
                            id: vector_PathSvg_2
                            path: "M 2 4 C 1.4695670008659363 3.999999999999999 0.9608595669269562 3.7892864048480988 0.5857868194580078 3.4142136573791504 C 0.21071407198905945 3.039140909910202 0 2.5304329991340637 0 2 C 0 1.4695670008659363 0.21071407198905945 0.960859090089798 0.5857868194580078 0.5857863426208496 C 0.9608595669269562 0.21071359515190125 1.4695670008659363 8.881784197001252e-16 2 0 C 2.5304329991340637 8.881784197001252e-16 3.039140433073044 0.21071359515190125 3.414213180541992 0.5857863426208496 C 3.7892859280109406 0.960859090089798 4 1.4695670008659363 4 2 C 4 2.5304329991340637 3.7892859280109406 3.039140909910202 3.414213180541992 3.4142136573791504 C 3.039140433073044 3.7892864048480988 2.5304329991340637 3.999999999999999 2 4 Z M 2 10 C 1.4695670008659363 10 0.9608595669269562 9.78928592801094 0.5857868194580078 9.414213180541992 C 0.21071407198905945 9.039140433073044 0 8.530432999134064 0 8 C 0 7.469567000865936 0.21071407198905945 6.960859566926956 0.5857868194580078 6.585786819458008 C 0.9608595669269562 6.2107140719890594 1.4695670008659363 5.999999999999998 2 6 C 2.5304329991340637 5.999999999999998 3.039140433073044 6.2107140719890594 3.414213180541992 6.585786819458008 C 3.7892859280109406 6.960859566926956 4 7.469567000865936 4 8 C 4 8.530432999134064 3.7892859280109406 9.039140433073044 3.414213180541992 9.414213180541992 C 3.039140433073044 9.78928592801094 2.5304329991340637 10 2 10 Z M 0 14 C 0 14.530432999134064 0.21071407198905945 15.039140433073044 0.5857868194580078 15.414213180541992 C 0.9608595669269562 15.78928592801094 1.4695670008659363 16 2 16 C 2.5304329991340637 16 3.039140433073044 15.78928592801094 3.414213180541992 15.414213180541992 C 3.7892859280109406 15.039140433073044 4 14.530432999134064 4 14 C 4 13.469567000865936 3.7892859280109406 12.960859566926956 3.414213180541992 12.585786819458008 C 3.039140433073044 12.21071407198906 2.5304329991340637 11.999999999999998 2 12 C 1.4695670008659363 11.999999999999998 0.9608595669269562 12.21071407198906 0.5857868194580078 12.585786819458008 C 0.21071407198905945 12.960859566926956 0 13.469567000865936 0 14 Z"
                        }
                        fillRule: ShapePath.WindingFill
                        fillColor: "#707991"
                    }
                    antialiasing: true
                }
                clip: true
            }
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        }
    }
}

/*##^##
Designer {
    D{i:0;uuid:"d6a485e4-7195-565f-b954-b68fb5441eb3"}D{i:1;uuid:"d6a485e4-7195-565f-b954-b68fb5441eb3_HORIZONTAL"}
D{i:2;uuid:"e1e9d632-9992-5157-b0e4-28ac097a1b90"}D{i:3;uuid:"e1e9d632-9992-5157-b0e4-28ac097a1b90_HORIZONTAL"}
D{i:4;uuid:"dea1ad59-12fd-5cc5-b6d0-334b3dd24838"}D{i:5;uuid:"d4cc036a-5cbe-54df-a9fc-f88c88ba0ee7"}
D{i:6;uuid:"d4cc036a-5cbe-54df-a9fc-f88c88ba0ee7_VERTICAL"}D{i:7;uuid:"87a8a675-6c3c-56a3-964d-43ce17418de5"}
D{i:8;uuid:"87a8a675-6c3c-56a3-964d-43ce17418de5_HORIZONTAL"}D{i:9;uuid:"5940d340-ef9c-5712-b94b-7593c97852a0"}
D{i:10;uuid:"e245cdbb-5450-5b68-8899-9065de7d838f"}D{i:11;uuid:"e245cdbb-5450-5b68-8899-9065de7d838f_HORIZONTAL"}
D{i:12;uuid:"e62e8cc6-e146-51e0-9d97-2093672b0cd6"}D{i:13;uuid:"e245cdbb-5450-5b68-8899-9065de7d838f_HORIZONTAL_SpacerRear"}
D{i:14;uuid:"8fafbfeb-8846-530c-baac-d809a3d1461d"}D{i:15;uuid:"c20b72cd-88eb-5266-851d-e2876decdbe9"}
D{i:16;uuid:"e01a681d-b88b-5791-8888-5939ccee6840"}D{i:17;uuid:"e01a681d-b88b-5791-8888-5939ccee6840_ShapePath_0"}
D{i:18;uuid:"e01a681d-b88b-5791-8888-5939ccee6840-PathSvg_0"}D{i:19;uuid:"e0f8ccdb-788b-5526-b895-810492c3ff7b"}
D{i:20;uuid:"29fc46d1-0da5-5b10-95c0-5a361e05bb46"}D{i:21;uuid:"c8becfad-a78f-5078-b019-de9d93f68e6b"}
D{i:22;uuid:"c8becfad-a78f-5078-b019-de9d93f68e6b_ShapePath_0"}D{i:23;uuid:"c8becfad-a78f-5078-b019-de9d93f68e6b-PathSvg_0"}
D{i:24;uuid:"551bbfb0-336b-5e97-91cd-bb4860b660b7"}D{i:25;uuid:"26cbb1a9-479d-57d8-8b91-752ca2a3ee60"}
D{i:26;uuid:"f641e04a-34a0-52db-98f4-4c92b8b0164c"}D{i:27;uuid:"f641e04a-34a0-52db-98f4-4c92b8b0164c_ShapePath_0"}
D{i:28;uuid:"f641e04a-34a0-52db-98f4-4c92b8b0164c-PathSvg_0"}
}
##^##*/

