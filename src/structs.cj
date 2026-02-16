package cangjieraylib

@C struct Color {
    var r: UInt8 = 0
    var g: UInt8 = 0
    var b: UInt8 = 0
    var a: UInt8 = 255

    init(R: UInt8, G: UInt8, B: UInt8, A: UInt8) {
        r = R
        g = G
        b = B
        a = A
    }
}

@C struct Rectangle {
    var x: Float32 = 0.0
    var y: Float32 = 0.0
    var width: Float32 = 0.0
    var height: Float32 = 0.0

    init(X: Float32, Y: Float32, Width: Float32, Height: Float32) {
        x = X
        y = Y
        width = Width
        height = Height
    }
}

@C struct Vector2 {
    var x: Float32 = 0.0
    var y: Float32 = 0.0

    init(X: Float32, Y: Float32) {
        x = X
        y = Y
    }
}

@C struct Vector3 {
    var x: Float32 = 0.0
    var y: Float32 = 0.0
    var z: Float32 = 0.0
    init(X: Float32, Y: Float32, Z: Float32) {
        x = X
        y = Y
        z = Z
    }
}

@C struct Matrix {
    var m0: Float32
    var m1: Float32
    var m2: Float32
    var m3: Float32
    var m4: Float32
    var m5: Float32
    var m6: Float32
    var m7: Float32
    var m8: Float32
    var m9: Float32
    var m10: Float32
    var m11: Float32
    var m12: Float32
    var m13: Float32
    var m14: Float32
    var m15: Float32

    init(
        M0: Float32, M1: Float32, M2: Float32,
        M3: Float32, M4: Float32, M5: Float32,
        M6: Float32, M7: Float32, M8: Float32,
        M9: Float32, M10: Float32, M11: Float32,
        M12: Float32, M13: Float32, M14: Float32,
        M15: Float32) {
        m0 = M0 ; m1 = M1 ; m2 = M2
        m3 = M3 ; m4 = M4 ; m5 = M5
        m6 = M6 ; m7 = M7 ; m8 = M8
        m9 = M9 ; m10 = M10 ; m11 = M11
        m12 = M12 ; m13 = M13 ; m14 = M14
        m15 = M15

    }
}

@C struct Ray {
    var position: Vector3 = Vector3(0.0,0.0,0.0)
    var direction: Vector3 = Vector3(0.0,0.0,0.0)
    init(p: Vector3, d: Vector3) {
        position = p
        direction = d
    }
}

@C struct RayCollision {
    var hit: Bool = false
    var distance: Float32 = 0.0
    var point: Vector3 = Vector3(0.0,0.0,0.0)
    var normal: Vector3 = Vector3(0.0,0.0,0.0)
}

@C struct Camera2D {
    var offset: Vector2 = Vector2(0.0, 0.0)
    var target: Vector2 = Vector2(0.0, 0.0)
    var rotation: Float32 = 0.0
    var zoom: Float32 = 0.0

    init(Offset: Vector2, Target: Vector2, Rotation: Float32, Zoom: Float32) {
        offset = Offset
        target = Target
        rotation = Rotation
        zoom = Zoom
    }
}

@C struct Camera3D {
    var position: Vector3 = Vector3(0.0,0.0,0.0)
    var target = Vector3(0.0,0.0,0.0)
    var up = Vector3(0.0,0.0,0.0)
    var fovy: Float32 = 0.0
    var projection: Int32 = 0

    init(P: Vector3, T: Vector3, U: Vector3, F: Float32, PR: Int32) {
        position = P
        target = T
        up = U
        fovy = F
        projection = PR
    }
}

@C struct Image {
    var data: CPointer<Unit> = CPointer<Unit>()
    var width: Int32 = 0
    var height: Int32 = 0
    var mipmaps: Int32 = 0
    var format: Int32 = 0
}

@C struct Texture {
    var id: UInt32 = 0
    var width: Int32 = 0
    var height: Int32 = 0
    var mipmaps: Int32 = 0
    var format: Int32 = 0
}

@C struct RenderTexture {
    var id: UInt32 = 0
    var texture: Texture = Texture()
    var depth: Texture = Texture()
}

@C struct RenderTexture2D {
    var id: UInt32 = 0
    var texture: Texture = Texture()
    var depth: Texture = Texture()
}

@C struct Shader {
    var id: UInt32 = 0
    var locs: CPointer<Int32> = CPointer<Int32>()
}

@C struct VrDeviceInfo {
    var hResolution: Int32 = 0
    var vResolution: Int32 = 0
    var hScreenSize: Float32 = 0.0
    var vScreenSize: Float32 = 0.0
    var eyeToScreenDistance = 0.0
    var lensSeparationDistance = 0.0
    var interpupillaryDistance = 0.0
    var lensDistortionValues = VArray<Float32, $4>(repeat: unsafe { zeroValue<Float32>() })
    var chromaAbcorrection = VArray<Float32, $4>(repeat: unsafe { zeroValue<Float32>() })
}

@C struct VrStereoConfig {
    var projection = VArray<Matrix, $2>(repeat: unsafe { zeroValue<Matrix>() })
    var viewOffset = VArray<Matrix, $2>(repeat: unsafe { zeroValue<Matrix>() })
    var leftLensCenter = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
    var rightLensCenter = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
    var leftScreenCenter = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
    var rightScreenCenter = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
    var scale = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
    var scaleIn = VArray<Float32, $2>(repeat: unsafe { zeroValue<Float32>() })
}

@C struct FilePathList {
    var count: UInt32 = 0
    var paths: CPointer<CString> = unsafe { zeroValue<CPointer<CString>>() }
}

@C struct AutomationEvent {
    var frame: UInt32 = 0
    //uppercased because 'type' is a reserved keyword
    var Type: UInt32 = 0
    var params = VArray<Int32, $4>(repeat: unsafe { zeroValue<Int32>() })
}

@C struct AutomationEventList {
    var capacity: UInt32 = 0
    var count: UInt32 = 0
    var events = CPointer<AutomationEventList>()
}