import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    property alias animationFrame: open_case__lift_earbuds__turn_timeline.currentFrame

    // Resources
    property url textureData: "maps/textureData.web"
    property url textureData13: "maps/textureData13.web"
    property url textureData15: "maps/textureData15.web"
    property url textureData17: "maps/textureData17.web"
    property url textureData55: "maps/textureData55.web"
    property url textureData22: "maps/textureData22.web"
    property url textureData24: "maps/textureData24.web"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData13
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData15
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData17
    }
    Texture {
        id: _6_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData55
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData22
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData24
    }
    PrincipledMaterial {
        id: boQGrOhWOpIpqeX_material
        objectName: "BoQGrOhWOpIpqeX"
        baseColor: "#fff9f9f9"
        metalness: 1
        roughness: 0.8500000238418579
        normalMap: _6_texture
        emissiveFactor: Qt.vector3d(0.15, 0.15, 0.15)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: fBoScOxbwtvrrnq_material
        objectName: "fBoScOxbwtvrrnq"
        baseColor: "#fff9f9f9"
        metalness: 1
        roughness: 0.8999999761581421
        normalMap: _6_texture
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: crgJNToMslxzjpd_material
        objectName: "crgJNToMslxzjpd"
        baseColor: "#ff6c5b21"
        metalness: 1
        roughness: 0.5009999871253967
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: knmBhJSZFTqEhNH_material
        objectName: "knmBhJSZFTqEhNH"
        baseColor: "#fff9f9f9"
        metalness: 1
        roughness: 0.8500000238418579
        normalMap: _6_texture
        emissiveFactor: Qt.vector3d(0.1, 0.1, 0.1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: iWbLdlvOQRAXGqc_material
        objectName: "iWbLdlvOQRAXGqc"
        baseColor: "#ffcbcbcb"
        roughness: 0.699999988079071
        emissiveFactor: Qt.vector3d(0.0551666, 1, 0)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: lQGMGvxQZTxRjEE_material
        objectName: "lQGMGvxQZTxRjEE"
        baseColor: "#ff191919"
        metalness: 0.30000001192092896
        roughness: 0.10000000149011612
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: cmGiKFayWYAPgnF_material
        objectName: "CmGiKFayWYAPgnF"
        baseColorMap: _0_texture
        metalnessMap: _1_texture
        roughnessMap: _1_texture
        metalness: 1
        roughness: 1
        normalMap: _2_texture
        emissiveMap: _3_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: awtzhuHRqcuHHac_material
        objectName: "AWTzhuHRqcuHHac"
        metalnessMap: _4_texture
        roughnessMap: _4_texture
        roughness: 1
        emissiveMap: _5_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: mhLOlkhyICoNjJz_material
        objectName: "mhLOlkhyICoNjJz"
        metalness: 1
        roughness: 0.10000000149011612
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: feFCeOVEGRNYmFP_material
        objectName: "feFCeOVEGRNYmFP"
        metalness: 1
        roughness: 0.20000000298023224
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: xrqxhVGHKWInIiz_material
        objectName: "XRQxhVGHKWInIiz"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: presentation_rotation
        objectName: "Presentation rotation"
        Node {
            id: sketchfab_model
            objectName: "Sketchfab_model"
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(1, 1, 1)
            Node {
                id: root
                objectName: "root"
                Node {
                    id: gltf_SceneRootNode
                    objectName: "GLTF_SceneRootNode"
                    rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: tracking_node_placeholder_4
                        objectName: "tracking_node_placeholder_4"
                        rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: left_earbud
                            objectName: "Left earbud"
                            position: Qt.vector3d(0, -0.6, 4.2)
                            Model {
                                id: object_10
                                objectName: "Object_10"
                                source: "meshes/object_4_mesh.mesh"
                                materials: [
                                    cmGiKFayWYAPgnF_material
                                ]
                            }
                            Model {
                                id: object_11
                                objectName: "Object_11"
                                source: "meshes/object_5_mesh.mesh"
                                materials: [
                                    awtzhuHRqcuHHac_material
                                ]
                            }
                            Model {
                                id: object_12
                                objectName: "Object_12"
                                source: "meshes/object_6_mesh.mesh"
                                materials: [
                                    mhLOlkhyICoNjJz_material
                                ]
                            }
                            Model {
                                id: object_13
                                objectName: "Object_13"
                                source: "meshes/object_7_mesh.mesh"
                                materials: [
                                    feFCeOVEGRNYmFP_material
                                ]
                            }
                            Model {
                                id: object_14
                                objectName: "Object_14"
                                source: "meshes/object_8_mesh.mesh"
                                materials: [
                                    lQGMGvxQZTxRjEE_material
                                ]
                            }
                            Model {
                                id: object_15
                                objectName: "Object_15"
                                source: "meshes/object_9_mesh.mesh"
                                materials: [
                                    xrqxhVGHKWInIiz_material
                                ]
                            }
                        }
                        Node {
                            id: right_earbud
                            objectName: "Right earbud"
                            position: Qt.vector3d(0, -0.6, 4.2)
                            Model {
                                id: object_17
                                objectName: "Object_17"
                                source: "meshes/object_10_mesh.mesh"
                                materials: [
                                    cmGiKFayWYAPgnF_material
                                ]
                            }
                            Model {
                                id: object_18
                                objectName: "Object_18"
                                source: "meshes/object_11_mesh.mesh"
                                materials: [
                                    awtzhuHRqcuHHac_material
                                ]
                            }
                            Model {
                                id: object_19
                                objectName: "Object_19"
                                source: "meshes/object_12_mesh.mesh"
                                materials: [
                                    mhLOlkhyICoNjJz_material
                                ]
                            }
                            Model {
                                id: object_20
                                objectName: "Object_20"
                                source: "meshes/object_13_mesh.mesh"
                                materials: [
                                    lQGMGvxQZTxRjEE_material
                                ]
                            }
                            Model {
                                id: object_21
                                objectName: "Object_21"
                                source: "meshes/object_14_mesh.mesh"
                                materials: [
                                    xrqxhVGHKWInIiz_material
                                ]
                            }
                            Model {
                                id: object_22
                                objectName: "Object_22"
                                source: "meshes/object_15_mesh.mesh"
                                materials: [
                                    feFCeOVEGRNYmFP_material
                                ]
                            }
                        }
                        Node {
                            id: case_body
                            objectName: "Case body"
                            Model {
                                id: object_24
                                objectName: "Object_24"
                                source: "meshes/object_16_mesh.mesh"
                                materials: [
                                    boQGrOhWOpIpqeX_material
                                ]
                            }
                            Model {
                                id: object_25
                                objectName: "Object_25"
                                source: "meshes/object_17_mesh.mesh"
                                materials: [
                                    fBoScOxbwtvrrnq_material
                                ]
                            }
                            Model {
                                id: object_26
                                objectName: "Object_26"
                                source: "meshes/object_18_mesh.mesh"
                                materials: [
                                    awtzhuHRqcuHHac_material
                                ]
                            }
                            Model {
                                id: object_27
                                objectName: "Object_27"
                                source: "meshes/object_19_mesh.mesh"
                                materials: [
                                    xrqxhVGHKWInIiz_material
                                ]
                            }
                            Model {
                                id: object_28
                                objectName: "Object_28"
                                source: "meshes/object_20_mesh.mesh"
                                materials: [
                                    crgJNToMslxzjpd_material
                                ]
                            }
                            Model {
                                id: object_29
                                objectName: "Object_29"
                                source: "meshes/object_21_mesh.mesh"
                                materials: [
                                    knmBhJSZFTqEhNH_material
                                ]
                            }
                            Model {
                                id: object_30
                                objectName: "Object_30"
                                source: "meshes/object_22_mesh.mesh"
                                materials: [
                                    iWbLdlvOQRAXGqc_material
                                ]
                            }
                        }
                        Node {
                            id: case_lid_hinge
                            objectName: "Case lid hinge"
                            position: Qt.vector3d(0, -1.332, 0.314)
                            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: case_lid
                                objectName: "Case lid"
                                position: Qt.vector3d(0, 1.332, -0.314)
                                Model {
                                    id: object_5
                                    objectName: "Object_5"
                                    source: "meshes/object_0_mesh.mesh"
                                    materials: [
                                        awtzhuHRqcuHHac_material
                                    ]
                                }
                                Model {
                                    id: object_6
                                    objectName: "Object_6"
                                    source: "meshes/object_1_mesh.mesh"
                                    materials: [
                                        fBoScOxbwtvrrnq_material
                                    ]
                                }
                                Model {
                                    id: object_7
                                    objectName: "Object_7"
                                    source: "meshes/object_2_mesh.mesh"
                                    materials: [
                                        xrqxhVGHKWInIiz_material
                                    ]
                                }
                                Model {
                                    id: object_8
                                    objectName: "Object_8"
                                    source: "meshes/object_3_mesh.mesh"
                                    materials: [
                                        boQGrOhWOpIpqeX_material
                                    ]
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: open_case__lift_earbuds__turn_timeline
        objectName: "Open case, lift earbuds, turn"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 8500
        currentFrame: 0
        enabled: true
        KeyframeGroup {
            target: right_earbud
            property: "position"
            keyframeSource: "animations/right_earbud_position_0.qad"
        }
        KeyframeGroup {
            target: presentation_rotation
            property: "rotation"
            keyframeSource: "animations/presentation_rotation_rotation_0.qad"
        }
        KeyframeGroup {
            target: left_earbud
            property: "position"
            keyframeSource: "animations/left_earbud_position_0.qad"
        }
        KeyframeGroup {
            target: case_lid_hinge
            property: "rotation"
            keyframeSource: "animations/case_lid_hinge_rotation_0.qad"
        }
    }
}
