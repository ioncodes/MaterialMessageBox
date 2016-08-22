import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0

ApplicationWindow {
    id: window
    Material.theme: Material.Dark
    Material.accent: Material.color(Material.Purple)
    visible: false

    signal accepted


    property string boxMessage: ""                            // msgBox Message
    property string boxTitle: ""                              // msgBox Title


    property string boxButtonAcceptLabel: "OK"                // msgBox 'Accept' Button Text

    property bool boxButtonAcceptHighlighted: true            // msgBox 'Accept' Button Highlighted

    property int boxWidth: 300                                // msgBox Width
    property int boxHeight: 150                               // msgBox Height

    property real boxButtonAcceptColor: Material.Blue         // msgBox 'Accept' Button Color (Material enum); automatic color fix


    minimumWidth: boxWidth
    maximumWidth: boxWidth
    minimumHeight: boxHeight
    maximumHeight: boxHeight

    title: boxTitle

    Button {
        id: btnOk
        text: boxButtonAcceptLabel

        x: (ApplicationWindow.width - 16) - btnOk.width
        y: (ApplicationWindow.height - 16) - btnOk.height

        highlighted: boxButtonAcceptHighlighted
        Material.accent: Material.color(boxButtonAcceptColor)
        onClicked: {
            accepted()
            window.close()
        }
    }

    Label {
        id: lblMsg
        width: ApplicationWindow.width - 20
        text: boxMessage
        x: 20
        y: 20
        wrapMode: Label.WordWrap
    }
}
