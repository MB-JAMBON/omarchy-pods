import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    property alias animationFrame: reveal_earcups_and_turn_timeline.currentFrame

    // Resources
    property url textureData: "maps/textureData.web"
    property url textureData13: "maps/textureData13.web"
    property url textureData67: "maps/textureData67.web"
    property url textureData15: "maps/textureData15.web"
    property url textureData33: "maps/textureData33.web"
    property url textureData69: "maps/textureData69.web"
    property url textureData31: "maps/textureData31.web"
    property url textureData120: "maps/textureData120.web"
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData67
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData33
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData31
    }
    Texture {
        id: _7_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData120
    }
    Texture {
        id: _6_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData69
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData15
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData13
    }
    PrincipledMaterial {
        id: dpauuenuPBdCvhC_material
        objectName: "DpauuenuPBdCvhC"
        baseColor: "#ff000000"
        roughness: 1
        emissiveFactor: Qt.vector3d(0.0279413, 0.0279413, 0.0279413)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: kuwCKTokDcQQstJ_material
        objectName: "KUwCKTokDcQQstJ"
        baseColor: "#ff000000"
        roughness: 1
        emissiveFactor: Qt.vector3d(0.361785, 0.361785, 0.361785)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sWOePsJdVncBmYM_material
        objectName: "sWOePsJdVncBmYM"
        baseColor: "#ff797a7b"
        roughness: 0.858578622341156
        emissiveFactor: Qt.vector3d(0.0733333, 0.0733333, 0.0733333)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: oeMmmEEWkMBwwgR_material
        objectName: "OeMmmEEWkMBwwgR"
        baseColor: "#ff000000"
        roughness: 1
        emissiveMap: _7_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: xnHBntWOhvrYYYt_material
        objectName: "XnHBntWOhvrYYYt"
        baseColorMap: _0_texture
        roughness: 1
        emissiveMap: _1_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: lreQKsjeIoeplRB_material
        objectName: "LReQKsjeIoeplRB"
        baseColor: "#ff000000"
        roughness: 0.8999999761581421
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: fZEVSQIaNKfmlij_material
        objectName: "fZEVSQIaNKfmlij"
        baseColorMap: _2_texture
        roughness: 0.8318207263946533
        emissiveMap: _3_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: rs_Material_material
        objectName: "RS_Material"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: diaLtZsVVXWBwMe_material
        objectName: "DiaLtZsVVXWBwMe"
        baseColorMap: _4_texture
        metalnessMap: _5_texture
        roughnessMap: _5_texture
        metalness: 1
        roughness: 1
        emissiveMap: _6_texture
        emissiveFactor: Qt.vector3d(1, 1, 1)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: deFxnmzQHJkzqmx_material
        objectName: "DeFxnmzQHJkzqmx"
        baseColor: "#ff000000"
        roughness: 1
        emissiveFactor: Qt.vector3d(0.294964, 0.294964, 0.294964)
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: cufifJQVFGKEXjK_material
        objectName: "CufifJQVFGKEXjK"
        baseColor: "#ffc7dded"
        metalness: 1
        roughness: 0.5243171453475952
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: airPods_Max_presentation
        objectName: "AirPods Max presentation"
        position: Qt.vector3d(0, -0.9, 0)
        rotation: Qt.quaternion(0.984808, 0, -0.173648, 0)
        scale: Qt.vector3d(0.86, 0.86, 0.86)
        Node {
            id: sketchfab_model
            objectName: "Sketchfab_model"
            rotation: Qt.quaternion(0.707107, -0.707107, -5.68557e-17, 5.68557e-17)
            scale: Qt.vector3d(1, 1, 1)
            Node {
                id: model_fbx
                objectName: "Model.fbx"
                rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
                scale: Qt.vector3d(1, 1, 1)
                Node {
                    id: object_2
                    objectName: "Object_2"
                    Node {
                        id: rootNode
                        objectName: "RootNode"
                        Node {
                            id: tracking_node_placeholder
                            objectName: "tracking_node_placeholder"
                            position: Qt.vector3d(0, -1.08606, -0.81075)
                            rotation: Qt.quaternion(0.993373, -0.114937, 0, 0)
                            Node {
                                id: hdlvMBnubFjcHjl
                                objectName: "HDlvMBnubFjcHjl"
                                position: Qt.vector3d(1.35, 0, 0)
                                Node {
                                    id: lTnuLeUWbsqYabK
                                    objectName: "lTnuLeUWbsqYabK"
                                    Model {
                                        id: lTnuLeUWbsqYabK_XnHBntWOhvrYYYt_0
                                        objectName: "lTnuLeUWbsqYabK_XnHBntWOhvrYYYt_0"
                                        source: "meshes/lTnuLeUWbsqYabK_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ztsTJQOSDQpaCqx
                                    objectName: "ztsTJQOSDQpaCqx"
                                    Model {
                                        id: ztsTJQOSDQpaCqx_XnHBntWOhvrYYYt_0
                                        objectName: "ztsTJQOSDQpaCqx_XnHBntWOhvrYYYt_0"
                                        source: "meshes/ztsTJQOSDQpaCqx_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vUggOWIGuweEaQG
                                    objectName: "vUggOWIGuweEaQG"
                                    Model {
                                        id: vUggOWIGuweEaQG_LReQKsjeIoeplRB_0
                                        objectName: "vUggOWIGuweEaQG_LReQKsjeIoeplRB_0"
                                        source: "meshes/vUggOWIGuweEaQG_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: pDptyCBmZfpvSFI
                                    objectName: "pDptyCBmZfpvSFI"
                                    Model {
                                        id: pDptyCBmZfpvSFI_XnHBntWOhvrYYYt_0
                                        objectName: "pDptyCBmZfpvSFI_XnHBntWOhvrYYYt_0"
                                        source: "meshes/pDptyCBmZfpvSFI_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: pndaALJHbSHKuWS
                                    objectName: "PNdaALJHbSHKuWS"
                                    Model {
                                        id: pndaALJHbSHKuWS_fZEVSQIaNKfmlij_0
                                        objectName: "PNdaALJHbSHKuWS_fZEVSQIaNKfmlij_0"
                                        source: "meshes/pndaALJHbSHKuWS_fZEVSQIaNKfmlij_0_mesh.mesh"
                                        materials: [
                                            fZEVSQIaNKfmlij_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ixlizhrjNnvbBLh
                                    objectName: "ixlizhrjNnvbBLh"
                                    Model {
                                        id: ixlizhrjNnvbBLh_LReQKsjeIoeplRB_0
                                        objectName: "ixlizhrjNnvbBLh_LReQKsjeIoeplRB_0"
                                        source: "meshes/ixlizhrjNnvbBLh_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gafUqoAOBLWoHia
                                    objectName: "gafUqoAOBLWoHia"
                                    Model {
                                        id: gafUqoAOBLWoHia_LReQKsjeIoeplRB_0
                                        objectName: "gafUqoAOBLWoHia_LReQKsjeIoeplRB_0"
                                        source: "meshes/gafUqoAOBLWoHia_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: sYukhlwqwHfYqZA
                                    objectName: "sYukhlwqwHfYqZA"
                                    Model {
                                        id: sYukhlwqwHfYqZA_oCppDZKIKMUCOIr_0
                                        objectName: "sYukhlwqwHfYqZA_oCppDZKIKMUCOIr_0"
                                        source: "meshes/sYukhlwqwHfYqZA_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: lFGKQhiRxTRIDBu
                                    objectName: "lFGKQhiRxTRIDBu"
                                    Model {
                                        id: lFGKQhiRxTRIDBu_DfWBrMpdEKIbPfT_0
                                        objectName: "lFGKQhiRxTRIDBu_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/lFGKQhiRxTRIDBu_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: uibVDttVytpgGAO
                                    objectName: "UIbVDttVytpgGAO"
                                    Model {
                                        id: uibVDttVytpgGAO_LReQKsjeIoeplRB_0
                                        objectName: "UIbVDttVytpgGAO_LReQKsjeIoeplRB_0"
                                        source: "meshes/uibVDttVytpgGAO_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: juHOxdrOCIBfkqg
                                    objectName: "JuHOxdrOCIBfkqg"
                                    Model {
                                        id: juHOxdrOCIBfkqg_ZezcrAosYheapOP_0
                                        objectName: "JuHOxdrOCIBfkqg_ZezcrAosYheapOP_0"
                                        source: "meshes/juHOxdrOCIBfkqg_ZezcrAosYheapOP_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: guOrsbHYNYiOqHL
                                    objectName: "GuOrsbHYNYiOqHL"
                                    Model {
                                        id: guOrsbHYNYiOqHL_LReQKsjeIoeplRB_0
                                        objectName: "GuOrsbHYNYiOqHL_LReQKsjeIoeplRB_0"
                                        source: "meshes/guOrsbHYNYiOqHL_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: wbwYZDiLyCYMKku
                                    objectName: "wbwYZDiLyCYMKku"
                                    Node {
                                        id: zhebfJYAXlhlSle
                                        objectName: "ZHebfJYAXlhlSle"
                                        Model {
                                            id: zhebfJYAXlhlSle_LReQKsjeIoeplRB_0
                                            objectName: "ZHebfJYAXlhlSle_LReQKsjeIoeplRB_0"
                                            source: "meshes/zhebfJYAXlhlSle_LReQKsjeIoeplRB_0_mesh.mesh"
                                            materials: [
                                                lreQKsjeIoeplRB_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: uOFrDWWaceJqwov
                                        objectName: "uOFrDWWaceJqwov"
                                        Model {
                                            id: uOFrDWWaceJqwov_DiaLtZsVVXWBwMe_0
                                            objectName: "uOFrDWWaceJqwov_DiaLtZsVVXWBwMe_0"
                                            source: "meshes/uOFrDWWaceJqwov_DiaLtZsVVXWBwMe_0_mesh.mesh"
                                            materials: [
                                                diaLtZsVVXWBwMe_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: tovohyqeZChyzGL
                                        objectName: "TOVOhyqeZChyzGL"
                                        Model {
                                            id: tovohyqeZChyzGL_mDIaGANesCZtEcg_0
                                            objectName: "TOVOhyqeZChyzGL_mDIaGANesCZtEcg_0"
                                            source: "meshes/tovohyqeZChyzGL_mDIaGANesCZtEcg_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: djdgBRevlkSEKnL
                                        objectName: "DJDgBRevlkSEKnL"
                                        Model {
                                            id: djdgBRevlkSEKnL_uQPcqYIOgkdSBwb_0
                                            objectName: "DJDgBRevlkSEKnL_uQPcqYIOgkdSBwb_0"
                                            source: "meshes/djdgBRevlkSEKnL_uQPcqYIOgkdSBwb_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                }
                                Node {
                                    id: sYTnpMcquiOFLQg
                                    objectName: "sYTnpMcquiOFLQg"
                                    Model {
                                        id: sYTnpMcquiOFLQg_IONYLTjXhCrWCDx_0
                                        objectName: "sYTnpMcquiOFLQg_IONYLTjXhCrWCDx_0"
                                        source: "meshes/sYTnpMcquiOFLQg_IONYLTjXhCrWCDx_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bNqDgYRYIQLzdBY
                                    objectName: "bNqDgYRYIQLzdBY"
                                    Model {
                                        id: bNqDgYRYIQLzdBY_oCppDZKIKMUCOIr_0
                                        objectName: "bNqDgYRYIQLzdBY_oCppDZKIKMUCOIr_0"
                                        source: "meshes/bNqDgYRYIQLzdBY_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: yjjlvkvFbWdQUdf
                                    objectName: "YJJLvkvFbWdQUdf"
                                    Model {
                                        id: yjjlvkvFbWdQUdf_oCppDZKIKMUCOIr_0
                                        objectName: "YJJLvkvFbWdQUdf_oCppDZKIKMUCOIr_0"
                                        source: "meshes/yjjlvkvFbWdQUdf_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: tysMfDiJPxNujsZ
                                    objectName: "TysMfDiJPxNujsZ"
                                    Model {
                                        id: tysMfDiJPxNujsZ_oCppDZKIKMUCOIr_0
                                        objectName: "TysMfDiJPxNujsZ_oCppDZKIKMUCOIr_0"
                                        source: "meshes/tysMfDiJPxNujsZ_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: xiPhiAhstHJZhhW
                                    objectName: "XiPhiAhstHJZhhW"
                                    Model {
                                        id: xiPhiAhstHJZhhW_KUwCKTokDcQQstJ_0
                                        objectName: "XiPhiAhstHJZhhW_KUwCKTokDcQQstJ_0"
                                        source: "meshes/xiPhiAhstHJZhhW_KUwCKTokDcQQstJ_0_mesh.mesh"
                                        materials: [
                                            kuwCKTokDcQQstJ_material
                                        ]
                                    }
                                }
                            }
                            Node {
                                id: lCjRjhpvLBQGQzN
                                objectName: "lCjRjhpvLBQGQzN"
                                position: Qt.vector3d(-1.35, 0, 0)
                                Node {
                                    id: ojHXuzefPxTXPxm
                                    objectName: "ojHXuzefPxTXPxm"
                                    Model {
                                        id: ojHXuzefPxTXPxm_oCppDZKIKMUCOIr_0
                                        objectName: "ojHXuzefPxTXPxm_oCppDZKIKMUCOIr_0"
                                        source: "meshes/ojHXuzefPxTXPxm_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jdAjiSnyuDQkgzB
                                    objectName: "JdAjiSnyuDQkgzB"
                                    Model {
                                        id: jdAjiSnyuDQkgzB_LReQKsjeIoeplRB_0
                                        objectName: "JdAjiSnyuDQkgzB_LReQKsjeIoeplRB_0"
                                        source: "meshes/jdAjiSnyuDQkgzB_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gwzdGrmVilVeqvJ
                                    objectName: "gwzdGrmVilVeqvJ"
                                    Model {
                                        id: gwzdGrmVilVeqvJ_DfWBrMpdEKIbPfT_0
                                        objectName: "gwzdGrmVilVeqvJ_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/gwzdGrmVilVeqvJ_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: alKkbNxYSoLInGi
                                    objectName: "alKkbNxYSoLInGi"
                                    Model {
                                        id: alKkbNxYSoLInGi_XnHBntWOhvrYYYt_0
                                        objectName: "alKkbNxYSoLInGi_XnHBntWOhvrYYYt_0"
                                        source: "meshes/alKkbNxYSoLInGi_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: eCeBBpFGKsspUio
                                    objectName: "eCeBBpFGKsspUio"
                                    Model {
                                        id: eCeBBpFGKsspUio_sWOePsJdVncBmYM_0
                                        objectName: "eCeBBpFGKsspUio_sWOePsJdVncBmYM_0"
                                        source: "meshes/eCeBBpFGKsspUio_sWOePsJdVncBmYM_0_mesh.mesh"
                                        materials: [
                                            sWOePsJdVncBmYM_material
                                        ]
                                    }
                                }
                                Node {
                                    id: mqgbrefhzoOiDYP
                                    objectName: "MQGBREFHzoOiDYP"
                                    Model {
                                        id: mqgbrefhzoOiDYP_XnHBntWOhvrYYYt_0
                                        objectName: "MQGBREFHzoOiDYP_XnHBntWOhvrYYYt_0"
                                        source: "meshes/mqgbrefhzoOiDYP_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: fkqgqCMgZKJtDvS
                                    objectName: "FKQgqCMgZKJtDvS"
                                    Model {
                                        id: fkqgqCMgZKJtDvS_XnHBntWOhvrYYYt_0
                                        objectName: "FKQgqCMgZKJtDvS_XnHBntWOhvrYYYt_0"
                                        source: "meshes/fkqgqCMgZKJtDvS_XnHBntWOhvrYYYt_0_mesh.mesh"
                                        materials: [
                                            xnHBntWOhvrYYYt_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qvkyuxLuHiwiZGe
                                    objectName: "QVkyuxLuHiwiZGe"
                                    Model {
                                        id: qvkyuxLuHiwiZGe_OeMmmEEWkMBwwgR_0
                                        objectName: "QVkyuxLuHiwiZGe_OeMmmEEWkMBwwgR_0"
                                        source: "meshes/qvkyuxLuHiwiZGe_OeMmmEEWkMBwwgR_0_mesh.mesh"
                                        materials: [
                                            oeMmmEEWkMBwwgR_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gpIZMYatWxvENVp
                                    objectName: "gpIZMYatWxvENVp"
                                    Model {
                                        id: gpIZMYatWxvENVp_oCppDZKIKMUCOIr_0
                                        objectName: "gpIZMYatWxvENVp_oCppDZKIKMUCOIr_0"
                                        source: "meshes/gpIZMYatWxvENVp_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vqcTGGUCEsJdEcK
                                    objectName: "VqcTGGUCEsJdEcK"
                                    Model {
                                        id: vqcTGGUCEsJdEcK_oCppDZKIKMUCOIr_0
                                        objectName: "VqcTGGUCEsJdEcK_oCppDZKIKMUCOIr_0"
                                        source: "meshes/vqcTGGUCEsJdEcK_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: yxcqKPNMhjoJQBG
                                    objectName: "YxcqKPNMhjoJQBG"
                                    Model {
                                        id: yxcqKPNMhjoJQBG_LReQKsjeIoeplRB_0
                                        objectName: "YxcqKPNMhjoJQBG_LReQKsjeIoeplRB_0"
                                        source: "meshes/yxcqKPNMhjoJQBG_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jcEwajpVDhOMtML
                                    objectName: "jcEwajpVDhOMtML"
                                    Model {
                                        id: jcEwajpVDhOMtML_LReQKsjeIoeplRB_0
                                        objectName: "jcEwajpVDhOMtML_LReQKsjeIoeplRB_0"
                                        source: "meshes/jcEwajpVDhOMtML_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vvBBebXmdepjDnf
                                    objectName: "VvBBebXmdepjDnf"
                                    Model {
                                        id: vvBBebXmdepjDnf_oCppDZKIKMUCOIr_0
                                        objectName: "VvBBebXmdepjDnf_oCppDZKIKMUCOIr_0"
                                        source: "meshes/vvBBebXmdepjDnf_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gVmEcFWSqIiYHdK
                                    objectName: "gVmEcFWSqIiYHdK"
                                    Model {
                                        id: gVmEcFWSqIiYHdK_LReQKsjeIoeplRB_0
                                        objectName: "gVmEcFWSqIiYHdK_LReQKsjeIoeplRB_0"
                                        source: "meshes/gVmEcFWSqIiYHdK_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ymaGKZDKmTWUQJE
                                    objectName: "YmaGKZDKmTWUQJE"
                                    Model {
                                        id: ymaGKZDKmTWUQJE_CufifJQVFGKEXjK_0
                                        objectName: "YmaGKZDKmTWUQJE_CufifJQVFGKEXjK_0"
                                        source: "meshes/ymaGKZDKmTWUQJE_CufifJQVFGKEXjK_0_mesh.mesh"
                                        materials: [
                                            cufifJQVFGKEXjK_material
                                        ]
                                    }
                                }
                                Node {
                                    id: nvYiwOnRCOTerrH
                                    objectName: "nvYiwOnRCOTerrH"
                                    Node {
                                        id: iheFvQmczHPaDUY
                                        objectName: "IheFvQmczHPaDUY"
                                        Model {
                                            id: iheFvQmczHPaDUY_cwsfKXBbkFsOnav_0
                                            objectName: "IheFvQmczHPaDUY_cwsfKXBbkFsOnav_0"
                                            source: "meshes/iheFvQmczHPaDUY_cwsfKXBbkFsOnav_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: fzpyptjpUzbYCJW
                                        objectName: "FZPYptjpUzbYCJW"
                                        Model {
                                            id: fzpyptjpUzbYCJW_YUCdXwpedNgTRoK_0
                                            objectName: "FZPYptjpUzbYCJW_YUCdXwpedNgTRoK_0"
                                            source: "meshes/fzpyptjpUzbYCJW_YUCdXwpedNgTRoK_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: oYQXYDGBLPAZwXV
                                        objectName: "oYQXYDGBLPAZwXV"
                                        Model {
                                            id: oYQXYDGBLPAZwXV_cwsfKXBbkFsOnav_0
                                            objectName: "oYQXYDGBLPAZwXV_cwsfKXBbkFsOnav_0"
                                            source: "meshes/oYQXYDGBLPAZwXV_cwsfKXBbkFsOnav_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                }
                                Node {
                                    id: zdaqqruPTSEMflO
                                    objectName: "ZdaqqruPTSEMflO"
                                    Model {
                                        id: zdaqqruPTSEMflO_ZezcrAosYheapOP_0
                                        objectName: "ZdaqqruPTSEMflO_ZezcrAosYheapOP_0"
                                        source: "meshes/zdaqqruPTSEMflO_ZezcrAosYheapOP_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ylhUKxLCAExLSOu
                                    objectName: "YlhUKxLCAExLSOu"
                                    Model {
                                        id: ylhUKxLCAExLSOu_LReQKsjeIoeplRB_0
                                        objectName: "YlhUKxLCAExLSOu_LReQKsjeIoeplRB_0"
                                        source: "meshes/ylhUKxLCAExLSOu_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vxWjUSyKHideyqx
                                    objectName: "vxWjUSyKHideyqx"
                                    Model {
                                        id: vxWjUSyKHideyqx_LReQKsjeIoeplRB_0
                                        objectName: "vxWjUSyKHideyqx_LReQKsjeIoeplRB_0"
                                        source: "meshes/vxWjUSyKHideyqx_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: umkkhrqMelWVpma
                                    objectName: "umkkhrqMelWVpma"
                                    Node {
                                        id: wwrkmzHxzWAcgcu
                                        objectName: "WWRKmzHxzWAcgcu"
                                        Model {
                                            id: wwrkmzHxzWAcgcu_uQPcqYIOgkdSBwb_0
                                            objectName: "WWRKmzHxzWAcgcu_uQPcqYIOgkdSBwb_0"
                                            source: "meshes/wwrkmzHxzWAcgcu_uQPcqYIOgkdSBwb_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: huobRxKxKEkuwXX
                                        objectName: "HUObRxKxKEkuwXX"
                                        Model {
                                            id: huobRxKxKEkuwXX_LReQKsjeIoeplRB_0
                                            objectName: "HUObRxKxKEkuwXX_LReQKsjeIoeplRB_0"
                                            source: "meshes/huobRxKxKEkuwXX_LReQKsjeIoeplRB_0_mesh.mesh"
                                            materials: [
                                                lreQKsjeIoeplRB_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: lswgFSweioaiCgt
                                        objectName: "LSwgFSweioaiCgt"
                                        Model {
                                            id: lswgFSweioaiCgt_DiaLtZsVVXWBwMe_0
                                            objectName: "LSwgFSweioaiCgt_DiaLtZsVVXWBwMe_0"
                                            source: "meshes/lswgFSweioaiCgt_DiaLtZsVVXWBwMe_0_mesh.mesh"
                                            materials: [
                                                diaLtZsVVXWBwMe_material
                                            ]
                                        }
                                    }
                                    Node {
                                        id: ygRsyUXVGXLGGRO
                                        objectName: "YgRsyUXVGXLGGRO"
                                        Model {
                                            id: ygRsyUXVGXLGGRO_mDIaGANesCZtEcg_0
                                            objectName: "YgRsyUXVGXLGGRO_mDIaGANesCZtEcg_0"
                                            source: "meshes/ygRsyUXVGXLGGRO_mDIaGANesCZtEcg_0_mesh.mesh"
                                            materials: [
                                                rs_Material_material
                                            ]
                                        }
                                    }
                                }
                                Node {
                                    id: wdmISGpfbmqrdOh
                                    objectName: "WDmISGpfbmqrdOh"
                                    Model {
                                        id: wdmISGpfbmqrdOh_IONYLTjXhCrWCDx_0
                                        objectName: "WDmISGpfbmqrdOh_IONYLTjXhCrWCDx_0"
                                        source: "meshes/wdmISGpfbmqrdOh_IONYLTjXhCrWCDx_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bnozvcaFckcMAnz
                                    objectName: "BNOZVCaFckcMAnz"
                                    Model {
                                        id: bnozvcaFckcMAnz_oCppDZKIKMUCOIr_0
                                        objectName: "BNOZVCaFckcMAnz_oCppDZKIKMUCOIr_0"
                                        source: "meshes/bnozvcaFckcMAnz_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qbwpfjgDXACFEcq
                                    objectName: "QBWPFJgDXACFEcq"
                                    Model {
                                        id: qbwpfjgDXACFEcq_oCppDZKIKMUCOIr_0
                                        objectName: "QBWPFJgDXACFEcq_oCppDZKIKMUCOIr_0"
                                        source: "meshes/qbwpfjgDXACFEcq_oCppDZKIKMUCOIr_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: hEXWYGWOWnPqIRF
                                    objectName: "hEXWYGWOWnPqIRF"
                                    Model {
                                        id: hEXWYGWOWnPqIRF_qWGsZNwHsrOyMRI_0
                                        objectName: "hEXWYGWOWnPqIRF_qWGsZNwHsrOyMRI_0"
                                        source: "meshes/hEXWYGWOWnPqIRF_qWGsZNwHsrOyMRI_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ncPdoNqGtAiMQVv
                                    objectName: "ncPdoNqGtAiMQVv"
                                    Model {
                                        id: ncPdoNqGtAiMQVv_qWGsZNwHsrOyMRI_0
                                        objectName: "ncPdoNqGtAiMQVv_qWGsZNwHsrOyMRI_0"
                                        source: "meshes/ncPdoNqGtAiMQVv_qWGsZNwHsrOyMRI_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: talFewCsHyBKHdk
                                    objectName: "TalFewCsHyBKHdk"
                                    Model {
                                        id: talFewCsHyBKHdk_LReQKsjeIoeplRB_0
                                        objectName: "TalFewCsHyBKHdk_LReQKsjeIoeplRB_0"
                                        source: "meshes/talFewCsHyBKHdk_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                            }
                            Node {
                                id: cgZpsSHwSRSGFBQ
                                objectName: "CgZpsSHwSRSGFBQ"
                                Node {
                                    id: wwtYjswGShSaNES
                                    objectName: "WWtYjswGShSaNES"
                                    Model {
                                        id: wwtYjswGShSaNES_FwxSMPpHOYcEPUc_0
                                        objectName: "WWtYjswGShSaNES_FwxSMPpHOYcEPUc_0"
                                        source: "meshes/wwtYjswGShSaNES_FwxSMPpHOYcEPUc_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: zczOLIfJLVLCTmq
                                    objectName: "ZCzOLIfJLVLCTmq"
                                    Model {
                                        id: zczOLIfJLVLCTmq_DfWBrMpdEKIbPfT_0
                                        objectName: "ZCzOLIfJLVLCTmq_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/zczOLIfJLVLCTmq_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: aSARwLWLSntroVH
                                    objectName: "aSARwLWLSntroVH"
                                    Model {
                                        id: aSARwLWLSntroVH_DfWBrMpdEKIbPfT_0
                                        objectName: "aSARwLWLSntroVH_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/aSARwLWLSntroVH_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: huxnidMrQhpdTeJ
                                    objectName: "HUXnidMrQhpdTeJ"
                                    Model {
                                        id: huxnidMrQhpdTeJ_LReQKsjeIoeplRB_0
                                        objectName: "HUXnidMrQhpdTeJ_LReQKsjeIoeplRB_0"
                                        source: "meshes/huxnidMrQhpdTeJ_LReQKsjeIoeplRB_0_mesh.mesh"
                                        materials: [
                                            lreQKsjeIoeplRB_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bdtqfXuervxClkp
                                    objectName: "BDTqfXuervxClkp"
                                    Model {
                                        id: bdtqfXuervxClkp_DfWBrMpdEKIbPfT_0
                                        objectName: "BDTqfXuervxClkp_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/bdtqfXuervxClkp_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rJKpymJrWTPixuz
                                    objectName: "rJKpymJrWTPixuz"
                                    Model {
                                        id: rJKpymJrWTPixuz_DfWBrMpdEKIbPfT_0
                                        objectName: "rJKpymJrWTPixuz_DfWBrMpdEKIbPfT_0"
                                        source: "meshes/rJKpymJrWTPixuz_DfWBrMpdEKIbPfT_0_mesh.mesh"
                                        materials: [
                                            rs_Material_material
                                        ]
                                    }
                                }
                            }
                            Node {
                                id: emnmuKqMFIbbGFH
                                objectName: "EmnmuKqMFIbbGFH"
                                Node {
                                    id: pNIYAjBHRIkIwbT
                                    objectName: "pNIYAjBHRIkIwbT"
                                    Model {
                                        id: pNIYAjBHRIkIwbT_DeFxnmzQHJkzqmx_0
                                        objectName: "pNIYAjBHRIkIwbT_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/pNIYAjBHRIkIwbT_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: voeEgOkhUluWgqm
                                    objectName: "VOeEgOkhUluWgqm"
                                    Model {
                                        id: voeEgOkhUluWgqm_DeFxnmzQHJkzqmx_0
                                        objectName: "VOeEgOkhUluWgqm_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/voeEgOkhUluWgqm_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: xogmpBtLLLlicvn
                                    objectName: "xogmpBtLLLlicvn"
                                    Model {
                                        id: xogmpBtLLLlicvn_DeFxnmzQHJkzqmx_0
                                        objectName: "xogmpBtLLLlicvn_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/xogmpBtLLLlicvn_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: aexPvRSHRbARooZ
                                    objectName: "AExPvRSHRbARooZ"
                                    Model {
                                        id: aexPvRSHRbARooZ_DeFxnmzQHJkzqmx_0
                                        objectName: "AExPvRSHRbARooZ_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/aexPvRSHRbARooZ_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rBIgTCwhtMeNcqH
                                    objectName: "rBIgTCwhtMeNcqH"
                                    Model {
                                        id: rBIgTCwhtMeNcqH_DeFxnmzQHJkzqmx_0
                                        objectName: "rBIgTCwhtMeNcqH_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/rBIgTCwhtMeNcqH_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: kemKhhTxndBajRQ
                                    objectName: "kemKhhTxndBajRQ"
                                    Model {
                                        id: kemKhhTxndBajRQ_DeFxnmzQHJkzqmx_0
                                        objectName: "kemKhhTxndBajRQ_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/kemKhhTxndBajRQ_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qmlASDlBbGlBjKd
                                    objectName: "QMlASDlBbGlBjKd"
                                    Model {
                                        id: qmlASDlBbGlBjKd_DeFxnmzQHJkzqmx_0
                                        objectName: "QMlASDlBbGlBjKd_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/qmlASDlBbGlBjKd_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: omIOoxyjHVAgCwd
                                    objectName: "omIOoxyjHVAgCwd"
                                    Model {
                                        id: omIOoxyjHVAgCwd_DeFxnmzQHJkzqmx_0
                                        objectName: "omIOoxyjHVAgCwd_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/omIOoxyjHVAgCwd_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: yqgyWWROkLbNpvf
                                    objectName: "YQGyWWROkLbNpvf"
                                    Model {
                                        id: yqgyWWROkLbNpvf_DeFxnmzQHJkzqmx_0
                                        objectName: "YQGyWWROkLbNpvf_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/yqgyWWROkLbNpvf_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: dJYDKHROvKIRXMk
                                    objectName: "dJYDKHROvKIRXMk"
                                    Model {
                                        id: dJYDKHROvKIRXMk_DeFxnmzQHJkzqmx_0
                                        objectName: "dJYDKHROvKIRXMk_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/dJYDKHROvKIRXMk_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vsstYIqGpuwnJBg
                                    objectName: "VSStYIqGpuwnJBg"
                                    Model {
                                        id: vsstYIqGpuwnJBg_DeFxnmzQHJkzqmx_0
                                        objectName: "VSStYIqGpuwnJBg_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/vsstYIqGpuwnJBg_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jwShklvLLTDdCAI
                                    objectName: "jwShklvLLTDdCAI"
                                    Model {
                                        id: jwShklvLLTDdCAI_DeFxnmzQHJkzqmx_0
                                        objectName: "jwShklvLLTDdCAI_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/jwShklvLLTDdCAI_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: lgbUfIFLIxVPoCL
                                    objectName: "LgbUfIFLIxVPoCL"
                                    Model {
                                        id: lgbUfIFLIxVPoCL_DeFxnmzQHJkzqmx_0
                                        objectName: "LgbUfIFLIxVPoCL_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/lgbUfIFLIxVPoCL_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gMgUmXNOUeiwuoI
                                    objectName: "gMgUmXNOUeiwuoI"
                                    Model {
                                        id: gMgUmXNOUeiwuoI_DeFxnmzQHJkzqmx_0
                                        objectName: "gMgUmXNOUeiwuoI_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/gMgUmXNOUeiwuoI_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: mBgwZFkSMypaDyl
                                    objectName: "mBgwZFkSMypaDyl"
                                    Model {
                                        id: mBgwZFkSMypaDyl_DeFxnmzQHJkzqmx_0
                                        objectName: "mBgwZFkSMypaDyl_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/mBgwZFkSMypaDyl_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: hzUqVQHudfVUauF
                                    objectName: "HzUqVQHudfVUauF"
                                    Model {
                                        id: hzUqVQHudfVUauF_DeFxnmzQHJkzqmx_0
                                        objectName: "HzUqVQHudfVUauF_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/hzUqVQHudfVUauF_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: segCWEJfnxuKkzk
                                    objectName: "SegCWEJfnxuKkzk"
                                    Model {
                                        id: segCWEJfnxuKkzk_DeFxnmzQHJkzqmx_0
                                        objectName: "SegCWEJfnxuKkzk_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/segCWEJfnxuKkzk_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jRJjxZOtTsQbSuu
                                    objectName: "jRJjxZOtTsQbSuu"
                                    Model {
                                        id: jRJjxZOtTsQbSuu_DeFxnmzQHJkzqmx_0
                                        objectName: "jRJjxZOtTsQbSuu_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/jRJjxZOtTsQbSuu_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: dWVsTKQATkxMJvh
                                    objectName: "dWVsTKQATkxMJvh"
                                    Model {
                                        id: dWVsTKQATkxMJvh_DeFxnmzQHJkzqmx_0
                                        objectName: "dWVsTKQATkxMJvh_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/dWVsTKQATkxMJvh_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: tVoaxYLIiushHRS
                                    objectName: "tVoaxYLIiushHRS"
                                    Model {
                                        id: tVoaxYLIiushHRS_DeFxnmzQHJkzqmx_0
                                        objectName: "tVoaxYLIiushHRS_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/tVoaxYLIiushHRS_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rcZihwaOPMfBFwl
                                    objectName: "RcZihwaOPMfBFwl"
                                    Model {
                                        id: rcZihwaOPMfBFwl_DeFxnmzQHJkzqmx_0
                                        objectName: "RcZihwaOPMfBFwl_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/rcZihwaOPMfBFwl_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: kxMpWDAZNWdFJNx
                                    objectName: "KxMpWDAZNWdFJNx"
                                    Model {
                                        id: kxMpWDAZNWdFJNx_DeFxnmzQHJkzqmx_0
                                        objectName: "KxMpWDAZNWdFJNx_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/kxMpWDAZNWdFJNx_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: dsEAurJeOHuJQLC
                                    objectName: "dsEAurJeOHuJQLC"
                                    Model {
                                        id: dsEAurJeOHuJQLC_DeFxnmzQHJkzqmx_0
                                        objectName: "dsEAurJeOHuJQLC_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/dsEAurJeOHuJQLC_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ufhipqJwMNnFsZt
                                    objectName: "UFHIpqJwMNnFsZt"
                                    Model {
                                        id: ufhipqJwMNnFsZt_DeFxnmzQHJkzqmx_0
                                        objectName: "UFHIpqJwMNnFsZt_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/ufhipqJwMNnFsZt_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: cWlNpfYLnFwwXft
                                    objectName: "cWlNpfYLnFwwXft"
                                    Model {
                                        id: cWlNpfYLnFwwXft_DeFxnmzQHJkzqmx_0
                                        objectName: "cWlNpfYLnFwwXft_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/cWlNpfYLnFwwXft_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: oHgXLqiLxIvjlMi
                                    objectName: "oHgXLqiLxIvjlMi"
                                    Model {
                                        id: oHgXLqiLxIvjlMi_DeFxnmzQHJkzqmx_0
                                        objectName: "oHgXLqiLxIvjlMi_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/oHgXLqiLxIvjlMi_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qsvhRmCYEGgXuHz
                                    objectName: "QSVhRmCYEGgXuHz"
                                    Model {
                                        id: qsvhRmCYEGgXuHz_DeFxnmzQHJkzqmx_0
                                        objectName: "QSVhRmCYEGgXuHz_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/qsvhRmCYEGgXuHz_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: deMJCGARTktfsGS
                                    objectName: "DeMJCGARTktfsGS"
                                    Model {
                                        id: deMJCGARTktfsGS_DeFxnmzQHJkzqmx_0
                                        objectName: "DeMJCGARTktfsGS_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/deMJCGARTktfsGS_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: leBWcpfkCoqrikZ
                                    objectName: "LeBWcpfkCoqrikZ"
                                    Model {
                                        id: leBWcpfkCoqrikZ_DeFxnmzQHJkzqmx_0
                                        objectName: "LeBWcpfkCoqrikZ_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/leBWcpfkCoqrikZ_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: mhJbZgxlEaocfRZ
                                    objectName: "mhJbZgxlEaocfRZ"
                                    Model {
                                        id: mhJbZgxlEaocfRZ_DeFxnmzQHJkzqmx_0
                                        objectName: "mhJbZgxlEaocfRZ_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/mhJbZgxlEaocfRZ_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: mlizUWDqqFZEQce
                                    objectName: "MLizUWDqqFZEQce"
                                    Model {
                                        id: mlizUWDqqFZEQce_DeFxnmzQHJkzqmx_0
                                        objectName: "MLizUWDqqFZEQce_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/mlizUWDqqFZEQce_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: brwRamAorpIRLYF
                                    objectName: "brwRamAorpIRLYF"
                                    Model {
                                        id: brwRamAorpIRLYF_DeFxnmzQHJkzqmx_0
                                        objectName: "brwRamAorpIRLYF_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/brwRamAorpIRLYF_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: uaMVNfBruUSWuEZ
                                    objectName: "uaMVNfBruUSWuEZ"
                                    Model {
                                        id: uaMVNfBruUSWuEZ_DeFxnmzQHJkzqmx_0
                                        objectName: "uaMVNfBruUSWuEZ_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/uaMVNfBruUSWuEZ_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ehrTEQSrTAiBpJU
                                    objectName: "ehrTEQSrTAiBpJU"
                                    Model {
                                        id: ehrTEQSrTAiBpJU_DeFxnmzQHJkzqmx_0
                                        objectName: "ehrTEQSrTAiBpJU_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/ehrTEQSrTAiBpJU_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: nCpdKeTXpzYYgYA
                                    objectName: "nCpdKeTXpzYYgYA"
                                    Model {
                                        id: nCpdKeTXpzYYgYA_DeFxnmzQHJkzqmx_0
                                        objectName: "nCpdKeTXpzYYgYA_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/nCpdKeTXpzYYgYA_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: pwASzSKcxjMnxlv
                                    objectName: "PwASzSKcxjMnxlv"
                                    Model {
                                        id: pwASzSKcxjMnxlv_DeFxnmzQHJkzqmx_0
                                        objectName: "PwASzSKcxjMnxlv_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/pwASzSKcxjMnxlv_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: fcaiTSobqMOCzNc
                                    objectName: "FCaiTSobqMOCzNc"
                                    Model {
                                        id: fcaiTSobqMOCzNc_DeFxnmzQHJkzqmx_0
                                        objectName: "FCaiTSobqMOCzNc_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/fcaiTSobqMOCzNc_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: joHNgLHaYQqeVSj
                                    objectName: "joHNgLHaYQqeVSj"
                                    Model {
                                        id: joHNgLHaYQqeVSj_DeFxnmzQHJkzqmx_0
                                        objectName: "joHNgLHaYQqeVSj_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/joHNgLHaYQqeVSj_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: xXvhHbBcLUCgjlC
                                    objectName: "xXvhHbBcLUCgjlC"
                                    Model {
                                        id: xXvhHbBcLUCgjlC_DeFxnmzQHJkzqmx_0
                                        objectName: "xXvhHbBcLUCgjlC_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/xXvhHbBcLUCgjlC_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vbNUAvucSatQBrM
                                    objectName: "vbNUAvucSatQBrM"
                                    Model {
                                        id: vbNUAvucSatQBrM_DeFxnmzQHJkzqmx_0
                                        objectName: "vbNUAvucSatQBrM_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/vbNUAvucSatQBrM_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: whcBwXiJgfpXvdY
                                    objectName: "WHcBwXiJgfpXvdY"
                                    Model {
                                        id: whcBwXiJgfpXvdY_DeFxnmzQHJkzqmx_0
                                        objectName: "WHcBwXiJgfpXvdY_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/whcBwXiJgfpXvdY_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: kwKLYZbvmwPvGuF
                                    objectName: "KwKLYZbvmwPvGuF"
                                    Model {
                                        id: kwKLYZbvmwPvGuF_DeFxnmzQHJkzqmx_0
                                        objectName: "KwKLYZbvmwPvGuF_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/kwKLYZbvmwPvGuF_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: arYvmvKvYDQhBwf
                                    objectName: "ArYvmvKvYDQhBwf"
                                    Model {
                                        id: arYvmvKvYDQhBwf_DpauuenuPBdCvhC_0
                                        objectName: "ArYvmvKvYDQhBwf_DpauuenuPBdCvhC_0"
                                        source: "meshes/arYvmvKvYDQhBwf_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: wkVqzKazmyDACOx
                                    objectName: "WkVqzKazmyDACOx"
                                    Model {
                                        id: wkVqzKazmyDACOx_DpauuenuPBdCvhC_0
                                        objectName: "WkVqzKazmyDACOx_DpauuenuPBdCvhC_0"
                                        source: "meshes/wkVqzKazmyDACOx_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: sLWAIYNCFQCZkjD
                                    objectName: "sLWAIYNCFQCZkjD"
                                    Model {
                                        id: sLWAIYNCFQCZkjD_DpauuenuPBdCvhC_0
                                        objectName: "sLWAIYNCFQCZkjD_DpauuenuPBdCvhC_0"
                                        source: "meshes/sLWAIYNCFQCZkjD_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rnakIbslOJRBcQg
                                    objectName: "RNAkIbslOJRBcQg"
                                    Model {
                                        id: rnakIbslOJRBcQg_DpauuenuPBdCvhC_0
                                        objectName: "RNAkIbslOJRBcQg_DpauuenuPBdCvhC_0"
                                        source: "meshes/rnakIbslOJRBcQg_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: tTWSneCKpQJzedX
                                    objectName: "tTWSneCKpQJzedX"
                                    Model {
                                        id: tTWSneCKpQJzedX_DpauuenuPBdCvhC_0
                                        objectName: "tTWSneCKpQJzedX_DpauuenuPBdCvhC_0"
                                        source: "meshes/tTWSneCKpQJzedX_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: almdznItHKmYCZq
                                    objectName: "ALmdznItHKmYCZq"
                                    Model {
                                        id: almdznItHKmYCZq_DpauuenuPBdCvhC_0
                                        objectName: "ALmdznItHKmYCZq_DpauuenuPBdCvhC_0"
                                        source: "meshes/almdznItHKmYCZq_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: aanwpKMFljrFwQj
                                    objectName: "AANWpKMFljrFwQj"
                                    Model {
                                        id: aanwpKMFljrFwQj_DpauuenuPBdCvhC_0
                                        objectName: "AANWpKMFljrFwQj_DpauuenuPBdCvhC_0"
                                        source: "meshes/aanwpKMFljrFwQj_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: iispkjbxNzugBMy
                                    objectName: "IISpkjbxNzugBMy"
                                    Model {
                                        id: iispkjbxNzugBMy_DpauuenuPBdCvhC_0
                                        objectName: "IISpkjbxNzugBMy_DpauuenuPBdCvhC_0"
                                        source: "meshes/iispkjbxNzugBMy_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: mZSrWDmbsPJXIUK
                                    objectName: "mZSrWDmbsPJXIUK"
                                    Model {
                                        id: mZSrWDmbsPJXIUK_DpauuenuPBdCvhC_0
                                        objectName: "mZSrWDmbsPJXIUK_DpauuenuPBdCvhC_0"
                                        source: "meshes/mZSrWDmbsPJXIUK_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: uqZceyTxpFpBjOl
                                    objectName: "uqZceyTxpFpBjOl"
                                    Model {
                                        id: uqZceyTxpFpBjOl_DpauuenuPBdCvhC_0
                                        objectName: "uqZceyTxpFpBjOl_DpauuenuPBdCvhC_0"
                                        source: "meshes/uqZceyTxpFpBjOl_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: zZBZhVkiuzIszEd
                                    objectName: "zZBZhVkiuzIszEd"
                                    Model {
                                        id: zZBZhVkiuzIszEd_DpauuenuPBdCvhC_0
                                        objectName: "zZBZhVkiuzIszEd_DpauuenuPBdCvhC_0"
                                        source: "meshes/zZBZhVkiuzIszEd_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: kwzXkJhfyCIebjc
                                    objectName: "KWzXkJhfyCIebjc"
                                    Model {
                                        id: kwzXkJhfyCIebjc_DpauuenuPBdCvhC_0
                                        objectName: "KWzXkJhfyCIebjc_DpauuenuPBdCvhC_0"
                                        source: "meshes/kwzXkJhfyCIebjc_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ogGJEFmyeWwVFWA
                                    objectName: "ogGJEFmyeWwVFWA"
                                    Model {
                                        id: ogGJEFmyeWwVFWA_DpauuenuPBdCvhC_0
                                        objectName: "ogGJEFmyeWwVFWA_DpauuenuPBdCvhC_0"
                                        source: "meshes/ogGJEFmyeWwVFWA_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: gmwiIteKcyyqiHb
                                    objectName: "GmwiIteKcyyqiHb"
                                    Model {
                                        id: gmwiIteKcyyqiHb_DpauuenuPBdCvhC_0
                                        objectName: "GmwiIteKcyyqiHb_DpauuenuPBdCvhC_0"
                                        source: "meshes/gmwiIteKcyyqiHb_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jznQjtFHovaenCt
                                    objectName: "JZnQjtFHovaenCt"
                                    Model {
                                        id: jznQjtFHovaenCt_DpauuenuPBdCvhC_0
                                        objectName: "JZnQjtFHovaenCt_DpauuenuPBdCvhC_0"
                                        source: "meshes/jznQjtFHovaenCt_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: tgjsWENaOVFzMUR
                                    objectName: "tgjsWENaOVFzMUR"
                                    Model {
                                        id: tgjsWENaOVFzMUR_DpauuenuPBdCvhC_0
                                        objectName: "tgjsWENaOVFzMUR_DpauuenuPBdCvhC_0"
                                        source: "meshes/tgjsWENaOVFzMUR_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: fMNNayPWWhqOiyT
                                    objectName: "fMNNayPWWhqOiyT"
                                    Model {
                                        id: fMNNayPWWhqOiyT_DpauuenuPBdCvhC_0
                                        objectName: "fMNNayPWWhqOiyT_DpauuenuPBdCvhC_0"
                                        source: "meshes/fMNNayPWWhqOiyT_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bggxvJrTeaAcugr
                                    objectName: "bggxvJrTeaAcugr"
                                    Model {
                                        id: bggxvJrTeaAcugr_DpauuenuPBdCvhC_0
                                        objectName: "bggxvJrTeaAcugr_DpauuenuPBdCvhC_0"
                                        source: "meshes/bggxvJrTeaAcugr_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: hcpEZyfITWMJcqF
                                    objectName: "hcpEZyfITWMJcqF"
                                    Model {
                                        id: hcpEZyfITWMJcqF_DpauuenuPBdCvhC_0
                                        objectName: "hcpEZyfITWMJcqF_DpauuenuPBdCvhC_0"
                                        source: "meshes/hcpEZyfITWMJcqF_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bcljywAcjXLByFP
                                    objectName: "BcljywAcjXLByFP"
                                    Model {
                                        id: bcljywAcjXLByFP_DpauuenuPBdCvhC_0
                                        objectName: "BcljywAcjXLByFP_DpauuenuPBdCvhC_0"
                                        source: "meshes/bcljywAcjXLByFP_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qrBbfljoKrrfRli
                                    objectName: "qrBbfljoKrrfRli"
                                    Model {
                                        id: qrBbfljoKrrfRli_DpauuenuPBdCvhC_0
                                        objectName: "qrBbfljoKrrfRli_DpauuenuPBdCvhC_0"
                                        source: "meshes/qrBbfljoKrrfRli_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bebverdnjLcDjCE
                                    objectName: "BEBVERDNjLcDjCE"
                                    Model {
                                        id: bebverdnjLcDjCE_DpauuenuPBdCvhC_0
                                        objectName: "BEBVERDNjLcDjCE_DpauuenuPBdCvhC_0"
                                        source: "meshes/bebverdnjLcDjCE_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: iZMlOLrYxzbBaRI
                                    objectName: "iZMlOLrYxzbBaRI"
                                    Model {
                                        id: iZMlOLrYxzbBaRI_DpauuenuPBdCvhC_0
                                        objectName: "iZMlOLrYxzbBaRI_DpauuenuPBdCvhC_0"
                                        source: "meshes/iZMlOLrYxzbBaRI_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: goRTETkIXoCqUNJ
                                    objectName: "goRTETkIXoCqUNJ"
                                    Model {
                                        id: goRTETkIXoCqUNJ_DpauuenuPBdCvhC_0
                                        objectName: "goRTETkIXoCqUNJ_DpauuenuPBdCvhC_0"
                                        source: "meshes/goRTETkIXoCqUNJ_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: nmaukmitLROZGzJ
                                    objectName: "NMAUkmitLROZGzJ"
                                    Model {
                                        id: nmaukmitLROZGzJ_DpauuenuPBdCvhC_0
                                        objectName: "NMAUkmitLROZGzJ_DpauuenuPBdCvhC_0"
                                        source: "meshes/nmaukmitLROZGzJ_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: sbnuJffVIvRGfzd
                                    objectName: "SBNuJffVIvRGfzd"
                                    Model {
                                        id: sbnuJffVIvRGfzd_DpauuenuPBdCvhC_0
                                        objectName: "SBNuJffVIvRGfzd_DpauuenuPBdCvhC_0"
                                        source: "meshes/sbnuJffVIvRGfzd_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: inwmoyPSQMgAiQp
                                    objectName: "INwmoyPSQMgAiQp"
                                    Model {
                                        id: inwmoyPSQMgAiQp_DpauuenuPBdCvhC_0
                                        objectName: "INwmoyPSQMgAiQp_DpauuenuPBdCvhC_0"
                                        source: "meshes/inwmoyPSQMgAiQp_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ziovXFhotMcIRxW
                                    objectName: "ZiovXFhotMcIRxW"
                                    Model {
                                        id: ziovXFhotMcIRxW_DpauuenuPBdCvhC_0
                                        objectName: "ZiovXFhotMcIRxW_DpauuenuPBdCvhC_0"
                                        source: "meshes/ziovXFhotMcIRxW_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: egpwcroniMFzNCb
                                    objectName: "EGPWCROniMFzNCb"
                                    Model {
                                        id: egpwcroniMFzNCb_DpauuenuPBdCvhC_0
                                        objectName: "EGPWCROniMFzNCb_DpauuenuPBdCvhC_0"
                                        source: "meshes/egpwcroniMFzNCb_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: awSkdPKgkrMWurt
                                    objectName: "awSkdPKgkrMWurt"
                                    Model {
                                        id: awSkdPKgkrMWurt_DpauuenuPBdCvhC_0
                                        objectName: "awSkdPKgkrMWurt_DpauuenuPBdCvhC_0"
                                        source: "meshes/awSkdPKgkrMWurt_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: ceyfeTtaOTpcIsi
                                    objectName: "CEYFeTtaOTpcIsi"
                                    Model {
                                        id: ceyfeTtaOTpcIsi_DpauuenuPBdCvhC_0
                                        objectName: "CEYFeTtaOTpcIsi_DpauuenuPBdCvhC_0"
                                        source: "meshes/ceyfeTtaOTpcIsi_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: hGKxBVkDysssjSS
                                    objectName: "hGKxBVkDysssjSS"
                                    Model {
                                        id: hGKxBVkDysssjSS_DpauuenuPBdCvhC_0
                                        objectName: "hGKxBVkDysssjSS_DpauuenuPBdCvhC_0"
                                        source: "meshes/hGKxBVkDysssjSS_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: tukLDqVQZBNZLHf
                                    objectName: "TUkLDqVQZBNZLHf"
                                    Model {
                                        id: tukLDqVQZBNZLHf_DpauuenuPBdCvhC_0
                                        objectName: "TUkLDqVQZBNZLHf_DpauuenuPBdCvhC_0"
                                        source: "meshes/tukLDqVQZBNZLHf_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: lVeqxZJFLYxYyRU
                                    objectName: "lVeqxZJFLYxYyRU"
                                    Model {
                                        id: lVeqxZJFLYxYyRU_DpauuenuPBdCvhC_0
                                        objectName: "lVeqxZJFLYxYyRU_DpauuenuPBdCvhC_0"
                                        source: "meshes/lVeqxZJFLYxYyRU_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jhVooabbzljGugO
                                    objectName: "jhVooabbzljGugO"
                                    Model {
                                        id: jhVooabbzljGugO_DpauuenuPBdCvhC_0
                                        objectName: "jhVooabbzljGugO_DpauuenuPBdCvhC_0"
                                        source: "meshes/jhVooabbzljGugO_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qylpmMoYEFEsuIs
                                    objectName: "QYLPmMoYEFEsuIs"
                                    Model {
                                        id: qylpmMoYEFEsuIs_DpauuenuPBdCvhC_0
                                        objectName: "QYLPmMoYEFEsuIs_DpauuenuPBdCvhC_0"
                                        source: "meshes/qylpmMoYEFEsuIs_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: zvfWqYnEnYVsdSE
                                    objectName: "ZVfWqYnEnYVsdSE"
                                    Model {
                                        id: zvfWqYnEnYVsdSE_DpauuenuPBdCvhC_0
                                        objectName: "ZVfWqYnEnYVsdSE_DpauuenuPBdCvhC_0"
                                        source: "meshes/zvfWqYnEnYVsdSE_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: aPKDWRkvRKaDKFW
                                    objectName: "aPKDWRkvRKaDKFW"
                                    Model {
                                        id: aPKDWRkvRKaDKFW_DpauuenuPBdCvhC_0
                                        objectName: "aPKDWRkvRKaDKFW_DpauuenuPBdCvhC_0"
                                        source: "meshes/aPKDWRkvRKaDKFW_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: bCFfSSawcPefwRX
                                    objectName: "bCFfSSawcPefwRX"
                                    Model {
                                        id: bCFfSSawcPefwRX_DpauuenuPBdCvhC_0
                                        objectName: "bCFfSSawcPefwRX_DpauuenuPBdCvhC_0"
                                        source: "meshes/bCFfSSawcPefwRX_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: cecpPiPSPxnrXlv
                                    objectName: "CECpPiPSPxnrXlv"
                                    Model {
                                        id: cecpPiPSPxnrXlv_DpauuenuPBdCvhC_0
                                        objectName: "CECpPiPSPxnrXlv_DpauuenuPBdCvhC_0"
                                        source: "meshes/cecpPiPSPxnrXlv_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rhoOAsPwBvFYgwN
                                    objectName: "RhoOAsPwBvFYgwN"
                                    Model {
                                        id: rhoOAsPwBvFYgwN_DpauuenuPBdCvhC_0
                                        objectName: "RhoOAsPwBvFYgwN_DpauuenuPBdCvhC_0"
                                        source: "meshes/rhoOAsPwBvFYgwN_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: iyMZhgmsmttfsOo
                                    objectName: "IyMZhgmsmttfsOo"
                                    Model {
                                        id: iyMZhgmsmttfsOo_DpauuenuPBdCvhC_0
                                        objectName: "IyMZhgmsmttfsOo_DpauuenuPBdCvhC_0"
                                        source: "meshes/iyMZhgmsmttfsOo_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: yhmqbhxBsxbOTdA
                                    objectName: "YHmqbhxBsxbOTdA"
                                    Model {
                                        id: yhmqbhxBsxbOTdA_DpauuenuPBdCvhC_0
                                        objectName: "YHmqbhxBsxbOTdA_DpauuenuPBdCvhC_0"
                                        source: "meshes/yhmqbhxBsxbOTdA_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: nSsAEQcBOLAofnp
                                    objectName: "nSsAEQcBOLAofnp"
                                    Model {
                                        id: nSsAEQcBOLAofnp_DpauuenuPBdCvhC_0
                                        objectName: "nSsAEQcBOLAofnp_DpauuenuPBdCvhC_0"
                                        source: "meshes/nSsAEQcBOLAofnp_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: xlgaAwbyhcynehD
                                    objectName: "XLgaAwbyhcynehD"
                                    Model {
                                        id: xlgaAwbyhcynehD_DpauuenuPBdCvhC_0
                                        objectName: "XLgaAwbyhcynehD_DpauuenuPBdCvhC_0"
                                        source: "meshes/xlgaAwbyhcynehD_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: zqjKpnVlSqSGWOO
                                    objectName: "ZqjKpnVlSqSGWOO"
                                    Model {
                                        id: zqjKpnVlSqSGWOO_DpauuenuPBdCvhC_0
                                        objectName: "ZqjKpnVlSqSGWOO_DpauuenuPBdCvhC_0"
                                        source: "meshes/zqjKpnVlSqSGWOO_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: wuqoXBSjgermYOB
                                    objectName: "WUQoXBSjgermYOB"
                                    Model {
                                        id: wuqoXBSjgermYOB_DpauuenuPBdCvhC_0
                                        objectName: "WUQoXBSjgermYOB_DpauuenuPBdCvhC_0"
                                        source: "meshes/wuqoXBSjgermYOB_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: qrnLmfmFpCxADQd
                                    objectName: "qrnLmfmFpCxADQd"
                                    Model {
                                        id: qrnLmfmFpCxADQd_DpauuenuPBdCvhC_0
                                        objectName: "qrnLmfmFpCxADQd_DpauuenuPBdCvhC_0"
                                        source: "meshes/qrnLmfmFpCxADQd_DpauuenuPBdCvhC_0_mesh.mesh"
                                        materials: [
                                            dpauuenuPBdCvhC_material
                                        ]
                                    }
                                }
                                Node {
                                    id: izewiGrRDgsVvmc
                                    objectName: "IZEWiGrRDgsVvmc"
                                    Model {
                                        id: izewiGrRDgsVvmc_DeFxnmzQHJkzqmx_0
                                        objectName: "IZEWiGrRDgsVvmc_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/izewiGrRDgsVvmc_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: oepohNTjpWWVqKY
                                    objectName: "OEPohNTjpWWVqKY"
                                    Model {
                                        id: oepohNTjpWWVqKY_DeFxnmzQHJkzqmx_0
                                        objectName: "OEPohNTjpWWVqKY_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/oepohNTjpWWVqKY_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: jdwqohpqTcCgqCz
                                    objectName: "JDwqohpqTcCgqCz"
                                    Model {
                                        id: jdwqohpqTcCgqCz_DeFxnmzQHJkzqmx_0
                                        objectName: "JDwqohpqTcCgqCz_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/jdwqohpqTcCgqCz_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: vnbROTwfOOzQIko
                                    objectName: "VnbROTwfOOzQIko"
                                    Model {
                                        id: vnbROTwfOOzQIko_DeFxnmzQHJkzqmx_0
                                        objectName: "VnbROTwfOOzQIko_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/vnbROTwfOOzQIko_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: rwcaWAEYgvPqGiU
                                    objectName: "RWCaWAEYgvPqGiU"
                                    Model {
                                        id: rwcaWAEYgvPqGiU_DeFxnmzQHJkzqmx_0
                                        objectName: "RWCaWAEYgvPqGiU_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/rwcaWAEYgvPqGiU_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
                                }
                                Node {
                                    id: hBjqUFlSIGcNuMS
                                    objectName: "hBjqUFlSIGcNuMS"
                                    Model {
                                        id: hBjqUFlSIGcNuMS_DeFxnmzQHJkzqmx_0
                                        objectName: "hBjqUFlSIGcNuMS_DeFxnmzQHJkzqmx_0"
                                        source: "meshes/hBjqUFlSIGcNuMS_DeFxnmzQHJkzqmx_0_mesh.mesh"
                                        materials: [
                                            deFxnmzQHJkzqmx_material
                                        ]
                                    }
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
        id: reveal_earcups_and_turn_timeline
        objectName: "Reveal earcups and turn"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 7800
        currentFrame: 0
        enabled: true
        KeyframeGroup {
            target: airPods_Max_presentation
            property: "position"
            keyframeSource: "animations/airPods_Max_presentation_position_0.qad"
        }
        KeyframeGroup {
            target: airPods_Max_presentation
            property: "rotation"
            keyframeSource: "animations/airPods_Max_presentation_rotation_0.qad"
        }
        KeyframeGroup {
            target: airPods_Max_presentation
            property: "scale"
            keyframeSource: "animations/airPods_Max_presentation_scale_0.qad"
        }
        KeyframeGroup {
            target: lCjRjhpvLBQGQzN
            property: "position"
            keyframeSource: "animations/lCjRjhpvLBQGQzN_position_0.qad"
        }
        KeyframeGroup {
            target: hdlvMBnubFjcHjl
            property: "position"
            keyframeSource: "animations/hdlvMBnubFjcHjl_position_0.qad"
        }
    }
}
