import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    //z: 0

    anchors.fill: parent



    Row {
        anchors.fill: parent

        // 왼쪽 여백
        Rectangle {
            id: leftSpace
            //anchors.fill: parent
            anchors.left: parent.left
            width: 20
            height: parent.height
            //color: "grey"
            color: fullWindow.colorIosGrayBack1
            opacity: 0.3
        }


        // 왼쪽 세퍼레이터
        Rectangle {
            id: leftSeparator
            anchors.left: leftSpace.right
            width: 1
            height: parent.height
            color: fullWindow.colorIosGrayLine1
            opacity: 0.3
        }

        // 컨텐츠 란
        Rectangle {
            id: contentRect
            anchors.left: leftSeparator.right
            width: mid1Rect.width - leftSpace.width - rightSpace.width - 2
            height: parent.height
            color: "white"

            Grid {

                anchors.fill: parent//centerIn: parent
                anchors.top: parent.top
                anchors.topMargin: 80
                anchors.left: parent.left
                anchors.leftMargin: 80
                //anchors.horizontalCenter: contentRect.horizontalCenter

                columns: 4
                columnSpacing: 120
                rowSpacing: 120

                RuleGridItem { text: "5일선매매"}

                RuleGridItem { text: "오전꼬리잡기"}

                RuleGridItem { text: "눌림목매매"}

                RuleGridItem { text: "오후장고가돌파"}

                RuleGridItem { text: "투매잡기"}

                RuleGridItem { text: "종가베팅"}

                RuleGridItem { text: "+"; size: 80}

            }




        }

        // Blur 이펙트 테스트: 잘되네여 ㅋ
        /*
        GaussianBlur {
            anchors.fill: contentRect
            source: contentRect
            radius: 20
            samples: 16
        }
        */

        // 오른쪽 세퍼레이터
        Rectangle {
            anchors.left: contentRect.right
            width: 1
            height: parent.height
            color: fullWindow.colorIosGrayLine1
            opacity: 0.3
        }

        // 오른쪽 여백
        Rectangle {
            id: rightSpace
            anchors.right: parent.right
            width: 20
            height: parent.height
            color: fullWindow.colorIosGrayBack1
            opacity: 0.3
        }


    }


}
