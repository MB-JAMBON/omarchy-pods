import QtQuick
import QtQuick.Layouts
import QtQuick3D
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import qs.Commons
import qs.Ui
import "Model.js" as Model
import "assets/airpods" as Assets

Item {
  id: root
  property var pods: null
  property bool animateModel: true
  property bool previewOnly: false
  signal dismissed()
  readonly property int displayMs: animateModel ? 9800 : 5000
  readonly property int transitionMs: animateModel ? 250 : 0

  readonly property var targetScreen: Quickshell.screens.find(screen =>
    Hyprland.focusedMonitor && screen.name === Hyprland.focusedMonitor.name) || Quickshell.screens[0]

  function close() { hideTimer.stop(); exitAnimation.start() }

  PanelWindow {
    id: window
    screen: root.targetScreen
    visible: true
    color: "transparent"
    anchors { bottom: true }
    margins.bottom: Style.space(32)
    implicitWidth: Style.space(380)
    implicitHeight: Style.space(430)
    exclusionMode: ExclusionMode.Ignore
    WlrLayershell.namespace: "omarchy-airpods-connection"
    WlrLayershell.layer: WlrLayer.Overlay
    WlrLayershell.keyboardFocus: WlrKeyboardFocus.None

    BorderSurface {
      id: card
      anchors.fill: parent
      color: Color.popups.background
      radius: Style.cornerRadius
      borderSpec: Border.surfaceSpec("popups", "border", Color.popups.border, Math.max(1, Style.space(1)))
      opacity: 0

      ColumnLayout {
        anchors.fill: parent
        anchors.margins: Style.space(24)
        spacing: Style.space(8)

        Text {
          Layout.fillWidth: true
          Layout.rightMargin: Style.space(16)
          text: root.previewOnly ? "AirPods Pro · aperçu" : root.pods && root.pods.deviceName ? root.pods.deviceName : "AirPods"
          textFormat: Text.PlainText
          color: Color.popups.text
          font.family: Style.font.family
          font.pixelSize: Style.font.heading
          horizontalAlignment: Text.AlignHCenter
          elide: Text.ElideRight
        }
        Text {
          Layout.fillWidth: true
          text: root.previewOnly ? "Prévisualisation de l’animation" : "Connectés à ce PC"
          color: Color.accent
          font.family: Style.font.family
          font.pixelSize: Style.font.bodySmall
          horizontalAlignment: Text.AlignHCenter
        }

        Item {
          Layout.fillWidth: true
          Layout.fillHeight: true
          View3D {
            anchors.fill: parent
            visible: root.previewOnly || (root.pods && root.pods.isProSeries)
            environment: SceneEnvironment {
              backgroundMode: SceneEnvironment.Transparent
              antialiasingMode: SceneEnvironment.MSAA
              antialiasingQuality: SceneEnvironment.High
              lightProbe: Texture { source: "assets/airpods/studio.hdr" }
              probeExposure: 0.8
              tonemapMode: SceneEnvironment.TonemapModeAces
            }
            PerspectiveCamera {
              position: Qt.vector3d(0, 1.3, 15)
              eulerRotation.x: -4
              clipNear: 0.1
              clipFar: 100
              fieldOfView: 36
            }
            DirectionalLight {
              eulerRotation: Qt.vector3d(-30, -30, 0)
              brightness: 1
              ambientColor: "#555555"
            }
            Assets.Air_pods_pro_animated {
              id: airpods
              y: -0.6
              animationFrame: root.animateModel ? 0 : 3100
            }
            NumberAnimation {
              target: airpods
              property: "animationFrame"
              from: 0
              to: 8500
              duration: 8500
              running: root.animateModel
            }
          }
          AirPodsIcon {
            anchors.centerIn: parent
            visible: !root.previewOnly && root.pods && !root.pods.isProSeries
            variant: root.pods && root.pods.isHeadset ? "max" : "buds"
            iconSize: Style.space(100)
            color: Color.popups.text
          }
        }

        Rectangle { Layout.fillWidth: true; implicitHeight: 1; color: Color.popups.text; opacity: 0.15 }
        RowLayout {
          Layout.fillWidth: true
          spacing: Style.space(14)
          Repeater {
            model: !root.previewOnly && root.pods && root.pods.isHeadset ? ["headset"] : ["left", "right", "case"]
            ColumnLayout {
              required property string modelData
              Layout.fillWidth: true
              readonly property var battery: root.previewOnly || !root.pods ? ({ level: -1, charging: false })
                : modelData === "left" ? root.pods.leftPod
                : modelData === "right" ? root.pods.rightPod
                : modelData === "headset" ? root.pods.headsetBattery : root.pods.caseBattery
              spacing: Style.space(6)
              Text {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                text: Model.levelText(parent.battery.level)
                color: Color.popups.text
                font.family: Style.font.family
                font.pixelSize: Style.font.heading
              }
              Text {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                text: parent.modelData === "left" ? "Gauche" : parent.modelData === "right" ? "Droite"
                  : parent.modelData === "headset" ? "Casque" : "Boîtier"
                color: Color.popups.text
                font.family: Style.font.family
                font.pixelSize: Style.font.bodySmall
              }
              Text {
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
                text: parent.battery.charging ? "En charge" : ""
                color: Color.accent
                font.family: Style.font.family
                font.pixelSize: Style.font.caption
              }
            }
          }
        }
      }
      Text {
        anchors { right: parent.right; top: parent.top; margins: Style.space(10) }
        text: "×"
        color: Color.popups.text
        font.pixelSize: Style.font.heading
        MouseArea {
          anchors.fill: parent
          anchors.margins: -Style.space(6)
          cursorShape: Qt.PointingHandCursor
          onClicked: root.close()
        }
      }
    }
  }
  NumberAnimation { target: card; property: "opacity"; from: 0; to: 1; duration: root.transitionMs; running: true }
  NumberAnimation {
    id: exitAnimation
    target: card
    property: "opacity"
    to: 0
    duration: root.transitionMs
    onFinished: root.dismissed()
  }
  Timer { id: hideTimer; interval: root.displayMs; running: true; onTriggered: root.close() }
}
