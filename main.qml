import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
Window {
    id: w
    minimumHeight: cl.height
    maximumHeight: cl.height
    height: cl.height
    minimumWidth: 600
    maximumWidth: 600
    width: 600
    visible: true
    title: qsTr("Invoker")

    ColumnLayout {
        id: cl
        anchors.centerIn: w.contentItem
        spacing: 2
        visible: true
        RowLayout {
            spacing: 3
            Gameplay {
                id: gameplay
            }
            Info {
                id: info
            }
        }

        Toolbar {
            id: toolbar
            onQuitApp: Qt.quit()

        }
    }

    End {
        id: clEnd
        anchors.centerIn: w.contentItem
        visible: false
    }
}

