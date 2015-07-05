import QtQuick 2.0

Rectangle {
    //anchors.fill: parent
    //anchors.horizontalCenter: parent.horizontalCenter
    id: headRectPage
    anchors.top: parent.top

    property int mousex: 0
    property int mousey: 0

    /*
    Rectangle {
        z: 1
        id: rankDiscriptTooltip

        x: headRectPage.mousex + 10
        y: headRectPage.mousey + 10

        width: 200
        height: 400

        color: grey
        opacity: 0
    }
    */


    function showRank(flag1)
    {
        if(flag1)
            rankDiscriptTooltip.opacity = 1
        else
            rankDiscriptTooltip.opacity = 0
    }

    Row {
        //anchors.fill: parent
        //anchors.horizontalCenter: parent.horizontalCenter
        x: 50

        spacing: 10

        Item {
            id: tradeRankRect
            width : 100 //fullWindow.sizeHeadRect
            height: 100 //fullWindow.sizeHeadRect

            y: 10
            opacity: 0.5

            //color: "lightgrey"

            Rectangle {
                id: outLine
                anchors.fill: parent

                anchors.margins: 25

                //border.color: fullWindow.colorIosGrayFont1
                border.width: 1

                radius: 5


                Rectangle {
                    anchors.fill: parent
                    anchors.margins: 1
                    radius: parent.radius  - 2
                }


            }

            Text {
                id: text1
                anchors.centerIn: parent

                font.pixelSize: 31
                font.family: "맑은 고딕"
                font.letterSpacing: -2

                //color: fullWindow.colorIosGrayFont1

                text: "92"
            }
            Text {
                anchors.right: outLine.right
                anchors.rightMargin: 5
                anchors.bottom: text1.bottom


                font.pixelSize: 10
                font.family: "맑은 고딕"
                font.letterSpacing: -2

                //color: fullWindow.colorIosGrayFont1
                renderType: Text.NativeRendering

                text: "점"
            }

            MouseArea {

                anchors.fill: outLine
                //anchors.bottomMargin: 10
                //anchors.bottomMargin: 22
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onEntered: {
                    animRankHoverIn.start();
                    // 툴팁관련 파트
                    /*
                    headRectPage.mousex = mouseX;
                    headRectPage.mousey = mouseY;
                    showRank(true);
                    */

                    console.log("entered")
                }

                onExited: {
                    animRankHoverOut.start();

                    //showRank(false);

                    console.log("outted")
                }
            }
        }

        Rectangle{
            id: stockTitle

            y: 34
            width: 300
            height: parent.height

            Text {
                //anchors.centerIn: parent
                //anchors.verticalCenter: parent.verticalCenter

                font.pixelSize: 55
                font.family: "맑은 고딕"
                font.letterSpacing: -3

                //color: fullWindow.colorIosGrayFont1

                text: "삼진엘엔디"
            }
        }

        // 차트 간이 표시부를 정의합니다
        Rectangle{
            width: 400
            height: parent.height
            y: 10

            /*
            gradient: Gradient {
                GradientStop { position: 0.5; color: "transparent"}
                GradientStop { position: 1.0; color: "black"}
            }
            */



            Image {
                //anchors.fill : parent
                //anchors.left : stockTitle.right
                //anchors.leftMargin: 100
                //z: 0
                width: parent.width
                height: parent.height//100//headRectPage.height

                source : "../../images/chart1.png" //file://d:/___MyProjects/_UtyleeTrader/TradeRulePage/images/chart1.png"
                //scale: 1.5
                opacity: 0.5


            }

            // 그라데이션 효과

            // 그냥 화이트로 반절은 칠합니다
            Rectangle {
                id: dummyWhiteRect
                width: 200

                height: parent.height

                color: "white"
            }

            // 나머지에 대해 그라디언트 마스킹 이미지를 씌웁니다
            Image {
                //anchors.fill : parent
                //anchors.left : stockTitle.right
                //anchors.leftMargin: 100
                //z: 1
                anchors.left: dummyWhiteRect.right
                width: parent.width - dummyWhiteRect.width
                height: parent.height//100//headRectPage.height

                source : "../../images/gradientmask.png" //file://d:/___MyProjects/_UtyleeTrader/TradeRulePage/images/gradientmask.png"
                //opacity: 0.7


            }

            /*
            Rectangle {
                width: parent.height
                height: parent.width

                rotation: -90


                gradient: Gradient {

                    GradientStop { position: 0.0; color: "white"}
                    GradientStop { position: 0.5; color: "white"}
                    GradientStop { position: 1.0; color: "transparent"}
                }
            }
            */

        }


        SequentialAnimation {
            id: animRankHoverIn

            /*
            ParallelAnimation {
                NumberAnimation { target: tradeRankRect; property: "scale"; to: 1.5; duration: 40}
            }
            */
            ParallelAnimation {
                NumberAnimation { target: tradeRankRect; property: "scale"; to: 1.2; duration: 30}
                NumberAnimation { target: tradeRankRect; property: "opacity"; to: 1; duration: 30}
            }
        }

        SequentialAnimation {
            id: animRankHoverOut

            /*
            ParallelAnimation {
                NumberAnimation { target: tradeRankRect; property: "scale"; to: 0.6; duration: 70}
                //NumberAnimation { target: tradeRankRect; property: "opacity"; to: 0.5; duration: 50}
            }
            */
            ParallelAnimation {
                NumberAnimation { target: tradeRankRect; property: "scale"; to: 1; duration: 30}
                NumberAnimation { target: tradeRankRect; property: "opacity"; to: 0.5; duration: 30}
            }
        }


    }
}
