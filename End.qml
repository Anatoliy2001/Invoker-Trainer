import QtQuick 2.0
import QtQuick.Layouts 1.12

Rectangle {
    anchors.centerIn: parent
    height: 525
    width: 600
    gradient: Gradient {
        GradientStop {position: 0.0; color: "blue" }
        GradientStop {position: 1.0; color: "black" }
    }
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 125
        Text {
            font.bold: true
            font.pointSize: 40
            color: "orange"
            text: "Score: " + gameplay.score
        }
        Rectangle {
            height: 100
            width: 200
            color: "orange"
            border.color: "black"
            border.width: 5
            Text {
                anchors.centerIn: parent
                font.bold: true
                font.pointSize: 25
                color: "blue"
                text: "New game"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    clEnd.visible = false
                    cl.visible = true
                    gameplay.newGame()
                }
            }
        }
    }
}
