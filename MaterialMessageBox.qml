import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

ApplicationWindow {
    id: window
    Material.theme: Material.Dark
    Material.accent: Material.color(Material.Purple)
    visible: false
    minimumWidth: 250
    maximumWidth: 250
    minimumHeight: 150
    maximumHeight: 150

    signal accepted

    property string message: ""

    Button {
        id: btnOk
        text: "OK"

        x: (ApplicationWindow.width - 16) - btnOk.width
        y: (ApplicationWindow.height - 16) - btnOk.height

        highlighted: true
        Material.accent: Material.color(Material.Blue)
        onClicked: {
            accepted()
            window.close()
        }
    }

    Label {
        id: lblMsg
        width: ApplicationWindow.width - 20
        text: message
        x: 20
        y: 20
        wrapMode: Label.WordWrap
    }
}
