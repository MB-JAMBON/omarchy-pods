import QtQuick
import QtQuick.Layouts
import QtQuick3D
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import qs.Commons
import qs.Ui
import "Model.js" as Model

Item {
  id: root
  property var pods: null
  property bool animateModel: true
  property bool previewOnly: false
  property string previewModel: "pro"
  signal dismissed()
  readonly property int displayMs: animateModel ? 9800 : 5000
  readonly property int transitionMs: animateModel ? 250 : 0
  readonly property bool showMaxModel: previewOnly ? previewModel === "max" : pods && pods.isHeadset
  readonly property bool showProModel: previewOnly ? previewModel !== "max" : pods && pods.isProSeries
  readonly property bool showThreeDimensionalModel: showMaxModel || showProModel
  readonly property int animationEnd: showMaxModel ? 7800 : 8500
  readonly property int lowBatteryPercent: 20
  // Keeps the canopy weave readable against its own backing on a tinted finish.
  readonly property real weaveLighten: 1.12

  readonly property var targetScreen: Quickshell.screens.find(screen =>
    Hyprland.focusedMonitor && screen.name === Hyprland.focusedMonitor.name) || Quickshell.screens[0]

  function close() { hideTimer.stop(); exitAnimation.start() }

  function previewBattery(part) {
    if (part === "left") return { level: 95, charging: true }
    if (part === "right") return { level: 76, charging: false }
    if (part === "case") return { level: 18, charging: false }
    return { level: 82, charging: false }
  }

  component BatteryRing: ColumnLayout {
    id: batteryRing
    required property string label
    required property var battery
    readonly property int level: battery && battery.level !== undefined ? battery.level : Model.LEVEL_UNKNOWN
    readonly property bool charging: battery && battery.charging === true
    readonly property bool low: level !== Model.LEVEL_UNKNOWN && level <= root.lowBatteryPercent && !charging
    readonly property color indicatorColor: low ? Color.urgent : Color.accent

    spacing: Style.space(5)

    Item {
      Layout.alignment: Qt.AlignHCenter
      implicitWidth: Style.space(64)
      implicitHeight: Style.space(64)

      Canvas {
        id: batteryCanvas
        anchors.fill: parent
        property real fraction: Model.levelFraction(batteryRing.level)
        property color activeColor: batteryRing.indicatorColor
        property color trackColor: Util.alpha(Color.popups.text, 0.13)

        onFractionChanged: requestPaint()
        onActiveColorChanged: requestPaint()
        onTrackColorChanged: requestPaint()
        onWidthChanged: requestPaint()
        onHeightChanged: requestPaint()
        onPaint: {
          var context = getContext("2d")
          var lineWidth = Math.max(3, Style.space(5))
          var center = width / 2
          var radius = Math.max(1, center - lineWidth)
          var start = -Math.PI / 2

          context.reset()
          context.lineWidth = lineWidth
          context.lineCap = "round"
          context.strokeStyle = trackColor
          context.beginPath()
          context.arc(center, center, radius, 0, Math.PI * 2)
          context.stroke()

          if (fraction > 0) {
            context.strokeStyle = activeColor
            context.beginPath()
            context.arc(center, center, radius, start, start + Math.PI * 2 * fraction)
            context.stroke()
          }
        }
      }

      Text {
        anchors.centerIn: parent
        text: Model.levelText(batteryRing.level)
        color: batteryRing.low ? Color.urgent : Color.popups.text
        font.family: Style.font.family
        font.pixelSize: Style.font.bodySmall
        font.weight: Font.DemiBold
      }

      Rectangle {
        anchors { right: parent.right; bottom: parent.bottom }
        width: Style.space(20)
        height: width
        radius: width / 2
        visible: batteryRing.charging
        color: Color.popups.background
        border.width: Math.max(1, Style.space(1))
        border.color: Color.accent

        Text {
          anchors.centerIn: parent
          text: "\uf0e7"
          color: Color.accent
          font.family: Style.font.family
          font.pixelSize: Style.font.caption
        }
      }
    }

    Text {
      Layout.fillWidth: true
      horizontalAlignment: Text.AlignHCenter
      text: batteryRing.label
      color: batteryRing.low ? Color.urgent : Color.popups.text
      font.family: Style.font.family
      font.pixelSize: Style.font.bodySmall
    }
  }

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
          text: root.previewOnly
            ? (root.showMaxModel ? "AirPods Max · aperçu" : "AirPods Pro · aperçu")
            : root.pods && root.pods.deviceName ? root.pods.deviceName : "AirPods"
          textFormat: Text.PlainText
          color: Color.popups.text
          font.family: Style.font.family
          font.pixelSize: Style.font.heading
          horizontalAlignment: Text.AlignHCenter
          elide: Text.ElideRight
        }
        Text {
          Layout.fillWidth: true
          text: root.previewOnly ? "Prévisualisation de l’animation"
            : root.pods && root.pods.connected ? "Connectés à ce PC"
            : root.pods && root.pods.lidState === Model.LID_OPEN ? "Boîtier ouvert"
            : "AirPods détectés"
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
            visible: root.showThreeDimensionalModel
            environment: SceneEnvironment {
              backgroundMode: SceneEnvironment.Transparent
              antialiasingMode: SceneEnvironment.MSAA
              antialiasingQuality: SceneEnvironment.High
              lightProbe: Texture { source: "assets/airpods/studio.hdr" }
              probeExposure: root.showMaxModel ? 1.25 : 0.8
              tonemapMode: SceneEnvironment.TonemapModeAces
            }
            PerspectiveCamera {
              position: Qt.vector3d(0, root.showMaxModel ? 1.8 : 1.3, root.showMaxModel ? 34 : 15)
              eulerRotation.x: root.showMaxModel ? 0 : -4
              clipNear: 0.1
              clipFar: 100
              fieldOfView: 36
            }
            DirectionalLight {
              eulerRotation: Qt.vector3d(-30, -30, 0)
              brightness: root.showMaxModel ? 1.8 : 1
              ambientColor: root.showMaxModel ? "#999999" : "#555555"
            }
            Loader3D {
              id: modelLoader
              source: root.showMaxModel
                ? "assets/airpods-max/Air_pods_max_animated.qml"
                : "assets/airpods/Air_pods_pro_animated.qml"
              y: root.showMaxModel ? -1.4 : -0.6
              onLoaded: {
                if (root.showMaxModel) {
                  var finish = Model.maxFinish(root.pods ? root.pods.colorId : -1)
                  if (finish) {
                    item.shellColor = finish.shell
                    item.fabricColor = finish.fabric
                    item.canopyColor = finish.fabric
                    item.canopyWeaveColor = Qt.lighter(finish.fabric, weaveLighten)
                  }
                }
                item.animationFrame = root.animateModel ? 0 : root.animationEnd
                if (root.animateModel) modelAnimation.start()
              }
            }
            NumberAnimation {
              id: modelAnimation
              target: modelLoader.item
              property: "animationFrame"
              from: 0
              to: root.animationEnd
              duration: root.animationEnd
            }
          }
          AirPodsIcon {
            anchors.centerIn: parent
            visible: !root.showThreeDimensionalModel
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
            model: root.showMaxModel ? ["headset"] : ["left", "right", "case"]
            BatteryRing {
              required property string modelData
              Layout.fillWidth: true
              battery: root.previewOnly ? root.previewBattery(modelData)
                : !root.pods ? ({ level: Model.LEVEL_UNKNOWN, charging: false })
                : modelData === "left" ? root.pods.leftPod
                : modelData === "right" ? root.pods.rightPod
                : modelData === "headset" ? root.pods.headsetBattery : root.pods.caseBattery
              label: modelData === "left" ? "Gauche" : modelData === "right" ? "Droite"
                : modelData === "headset" ? "Casque" : "Boîtier"
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
