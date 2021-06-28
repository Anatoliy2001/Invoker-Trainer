import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {

    height: 500
    width: 400
    color: "black"

    property var panel: ["black", "black", "black"]
    property var sum: 0
    property int sum2: 17
    property int score: 0

    function endGame() {
        toolbar.stoptimer()
        cl.visible = false
        clEnd.visible = true
    }

    function newGame() {
        check()
        score = 0
        toolbar.starttimer()
        panel = ["black", "black", "black"]
        c1.color = "black"
        c2.color = "black"
        c3.color = "black"
    }

    function newelement(button) {
        panel = colors.panel(button, panel)
        c1.color = panel[0]
        c2.color = panel[1]
        c3.color = panel[2]
    }

    function check() {
        for (var i = 0; i < 3; i++) {
            if (panel[i] == "blue") sum++
            if (panel[i] == "violet") sum += 7
            if (panel[i] == "orange") sum += 9
        }
        if (sum.toString() == sum2) score++
        sum = 0
        var grad = random.newgrad()
        gr1.color = grad[0]
        gr2.color = grad[1]
        sum2 = grad[2]
    }

    Circle {
        x: 49; y: 100
        width: 70
        height: 70
        color: "blue"
        MouseArea {
            anchors.fill: parent

            onClicked: newelement("q")
        }
    }

    Circle {
        x: 165; y: 100
        width: 70
        height: 70
        color: "violet"
        MouseArea {
            anchors.fill: parent

            onClicked: newelement("w")
        }
    }

    Circle {
        x: 283; y: 100
        width: 70
        height: 70
        color: "orange"
        MouseArea {
            anchors.fill: parent

            onClicked: newelement("e")
        }
    }

    Rectangle {
        x: 155
        y: 215
        height: 90
        width: 90
        gradient: Gradient {
                         GradientStop {id: gr1; position: 0.0; color: "white" }
                         GradientStop {id: gr2; position: 1.0; color: "white" }
        }
    }

    Rectangle {
        id: rc
        x: 125
        y: 334
        height: 50
        width: 150
        color: "black"
        border.color: "white"
        border.width: 2

        RowLayout {
            anchors.centerIn: parent
            spacing: 10
            Circle {
                id: c1
                x: -63
                y: -14
                color: "black"
            }
            Circle {
                id: c2
                x: -15
                y: -14
                color: "black"
            }
            Circle {
                id: c3
                x: 31
                y: -14
                color: "black"
            }
        }
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["q"]
        onActivated: newelement("q")
    }
    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["w"]
        onActivated: newelement("w")
    }
    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["e"]
        onActivated: newelement("e")
    }
    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["space"]
        onActivated: check()
    }

}
