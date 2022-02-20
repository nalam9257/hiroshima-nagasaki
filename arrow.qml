import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
    id: root
    width: 360
    height: 360
     Image {
         source: "qrc:arrow.jpg"
         id: tomatorect
         width: 50
         height: 60

         anchors.centerIn: parent
         rotation: if (mouse_area1.angle < 0)
         mouse_area1.angle * 180 / Math.PI + 360
         else
         mouse_area1.angle * 180 / Math.PI
         smooth: true}
    Rectangle {

    }
    MouseArea {
    id: mouse_area1
    anchors.fill: parent
    property real truex: mouseX-root.width/2
    property real truey: root.height/2-mouseY
    property real angle: Math.atan2(truex, truey)
    }
    Text {
    id: rotation
    text: "Rotation: " + tomatorect.rotation
    anchors {
    horizontalCenter: parent.horizontalCenter
    bottom: parent.bottom
    bottomMargin: 20
    }
    }
    }
}
