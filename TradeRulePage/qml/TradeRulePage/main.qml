import QtQuick 2.0

Rectangle {
    id: fullWindow
    width: 1024
    height: 768

    property color colorIosGrayBack1:   "#F7F7F7"
    property color colorIosGrayBack2:   "#EFEFF4"
    property color colorIosGrayLine1:   "#A7A7AA"
    property color colorIosGrayFont1:   "#929292"

    property color colorIosRed:         "#FF3B30"
    property color colorIosBlue:        "#007AFF"
    property color colorIosGreen:       "#4CD964"

    property int sizeHeadRect: 100
    property int sizeMid1Rect: fullWindow.height - sizeHeadRect - sizeFootRect
    property int sizeFootRect: 70

    // 툴팁을 위해 작성중
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

    Column {
        anchors.fill: parent

        Rectangle {
            id: headRect

            //anchors.fill: parent
            width: parent.width
            height: sizeHeadRect

            HeadRect {}
            //color: colorIosGrayBack1
        }

        Rectangle {
            width: parent.width
            height: 1
            color: fullWindow.colorIosGrayLine1
        }

        Rectangle {
            id: mid1Rect
            width: parent.width
            height: sizeMid1Rect

            Mid1Rect {}
            //anchors.top: topRect.bottom
        }

        Rectangle {
            width: parent.width
            height: 1
            color: fullWindow.colorIosGrayLine1
        }

        Rectangle {
            id: footRect
            width: parent.width
            height: sizeFootRect
            color: colorIosGrayBack1
        }
           // anchors.top: rect2Rect.bottom
        }

}
