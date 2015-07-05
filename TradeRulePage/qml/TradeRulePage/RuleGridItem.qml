import QtQuick 2.0

Rectangle {
    width: 90
    height: 90

    border.color: "#DDDDDD"//fullWindow.colorIosGrayLine1
    border.width: 1

    property alias text: ruleText.text
    property alias size: ruleText.font.pixelSize

    radius: 25
    antialiasing: false//true
    smooth: false//true

    //1픽셀씩 쉬링크된 사각형을 그려서 테두리를 깔끔하게 합니다

    Rectangle {
        anchors.fill: parent
        anchors.margins: 1

        //color: "white"
        radius: parent.radius - 1
    }


    Text {
        id: ruleText

        anchors.centerIn: parent
        font.pixelSize: 13
        font.family: "맑은 고딕"
        font.letterSpacing: -2
        color: fullWindow.colorIosGrayFont1
        text: "5일선매매"
        renderType: Text.NativeRendering
    }

}
