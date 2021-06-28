import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

RowLayout {
    signal quitApp()

    function stoptimer() {
        timer.stop()
    }

    function starttimer() {
        timerField.text = "Time left: 20"
        timer.sec = 0
        timer.restart()
    }

    Button {
        id: newgame
        text: "New game"
        onClicked: gameplay.newGame()
    }

    TextField {
        id: timerField

        readOnly: true
        selectByMouse: false
        Layout.fillWidth: true

        horizontalAlignment: TextInput.AlignHCenter
        text: "Time left: 20"

        Timer {
            id: timer
            interval: 1000
            running: true
            repeat: true
            property int sec: 0

            onTriggered: {
                timerField.text = "Time left: "
                if (timer.sec > 9) timerField.text += 0
                timerField.text += 19 - timer.sec
                timer.sec++
                if (timer.sec == 21) {
                    gameplay.endGame()
                }
            }
        }
    }

    TextField {
        id: score2
        Layout.fillWidth: true
        text: gameplay.score
    }

    Button {
        id: quit
        text: "Quit"
        onClicked: quitApp()
    }

    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["k"]
        onActivated: newGame()
    }
    Shortcut {
        context: Qt.ApplicationShortcut
        sequences: ["Esc"]
        onActivated: quitApp()
    }
}
