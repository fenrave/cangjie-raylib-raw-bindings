package cangjieraylib
//rcore
foreign {
    //-----------------------------\\
    func InitWindow(width: Int32, height: Int32, title: CString): Unit
    func CloseWindow(): Unit
    func WindowShouldClose(): Bool
    func IsWindowReady(): Bool
    func IsWindowFullScreen(): Bool
    func IsWindowHidden(): Bool
    func IsWindowMinimized(): Bool
    func IsWindowMaximized(): Bool
    func IsWindowFocused(): Bool
    func IsWindowResized(): Bool
    func IsWindowState(flag: Int32): Bool
    func SetWindowState(flag: Int32): Unit
    func ClearWindowState(flag: Int32): Unit
    func ToggleFullscreen(): Unit
    func ToggleBorderlessWindowed(): Unit
    func MaximizeWindow(): Unit
    func MinimizeWindow(): Unit
    func RestoreWindow(): Unit

    //-----\\
    func SetWindowIcon(image: Image): Unit
    func SetWindowIcons(image: CPointer<Image>, count: Int32): Unit
    func SetWindowTitle(title: CString): Unit
    // V currently does not work on wayland linux, but will sometime in mid 2026
    func SetWindowPosition(x: Int32, y: Int32): Unit
    func SetWindowMonitor(monitor: Int32): Unit
    func SetWindowMinSize(width: Int32, height: Int32): Unit
    func SetWindowMaxSize(width: Int32, height: Int32): Unit
    func SetWindowSize(width: Int32, height: Int32): Unit
    func SetWindowOpacity(opacity: Float32): Unit
    func SetWindowFocused(): Unit
    func GetWindowHandle(): CPointer<Unit>
    func GetScreenWidth(): Int32
    func GetScreenHeight(): Int32
    func GetRenderWidth(): Int32
    func GetRenderHeight(): Int32
    func GetMonitorCount(): Int32
    func GetCurrentMonitor(): Int32
    func GetMonitorPosition(monitor: Int32): Vector2
    func GetMonitorWidth(monitor: Int32): Int32
    func GetMonitorHeight(monitor: Int32): Int32
    func GetMonitorPhysicalWidth(monitor: Int32): Int32
    func GetMonitorPhysicalHeight(monitor: Int32): Int32
    func GetMonitorRefreshRate(monitor: Int32): Int32
    func GetWindowPosition(): Vector2
    func GetWindowScaleDPI(): Vector2
    func GetMonitorName(monitor: Int32): CString
    //-----//

    //-----\\
    func SetClipboardText(text: CString): Unit
    func GetClipboardText(): CString
    func GetClipboardImage(): Image
    func EnableEventWaiting(): Unit
    func DisableEventWaiting(): Unit
    func ShowCursor(): Unit
    func HideCursor(): Unit
    func EnableCursor(): Unit
    func DisableCursor(): Unit
    func IsCursorHidden(): Bool
    func IsCursorOnScreen(): Bool
    //-----//

    //----------------------------//
    
    //----------------------------\\
    func DrawRectangleRec(rectangle: Rectangle, color: Color): Unit
    func DrawRectangle(x: Int32, y: Int32, width: Int32, height: Int32, color: Color): Unit
    
    //-----\\
    func BeginDrawing(): Unit
    func EndDrawing(): Unit
    func BeginMode2D(camera: Camera2D): Unit
    func EndMode2D(): Unit
    func BeginMode3D(camera: Camera3D): Unit
    func EndMode3D(): Unit
    func BeginTextureMode(target: RenderTexture): Unit
    func EndTextureMode(): Unit
    func BeginShaderMode(shader: Shader): Unit
    func EndShaderMode(): Unit
    func BeginBlendMode(mode: Int32): Unit
    func EndBlendMode(): Unit
    func BeginScissorMode(x: Int32, y: Int32, width: Int32, height: Int32): Unit
    func EndScissorMode(): Unit
    func BeginVrStereoMode(config: VrStereoConfig): Unit
    func EndVrStereoMode(): Unit
    //-----//

    //-----\\
    func LoadVrStereoConfig(device: VrDeviceInfo): VrStereoConfig
    func UnloadVrStereoConfig(config: VrStereoConfig): Unit
    func LoadShader(vsFileName: CString, fsFileName: CString): Shader
    func LoadShaderFromMemory(vsCode: CString, fsCode: CString): Shader
    //-----//
    
    //-----\\
    func IsShaderValid(shader: Shader): Bool
    func GetShaderLocation(Shader: Shader, uniformName: CString): Int32
    func GetShaderLocationAttrib(shader: Shader, attribName: CString): Int32
    func SetShaderValue(shader: Shader, locIndex: Int32, value: CPointer<Unit>, uniformType: Int32): Unit
    func SetShaderValueV(shader: Shader, locIndex: Int32, value: CPointer<Unit>, uniformType: Int32, count: Int32): Unit
    func SetShaderValueMatrix(shader: Shader, locIndex: Int32, mat: Matrix): Unit
    func SetShaderValueTexture(shader: Shader, locIndex: Int32, texture: Texture): Unit
    func UnloadShader(shader: Shader): Unit
    func GetScreenToWorldRay(position: Vector2, camera: Camera3D): Ray
    func GetScreenToWorldRayEx(position: Vector2, camera: Camera3D, width: Int32, height: Int32): Ray
    func GetWorldToScreen(position: Vector3, camera: Camera3D): Vector2
    func GetWorldToScreenEx(position: Vector3, camera: Camera3D, width: Int32, height: Int32): Vector2
    func GetWorldToScreen2d(position: Vector2, camera: Camera2D): Vector2
    func GetScreenToWorld2d(position: Vector2, camera: Camera2D): Vector2
    func GetCameraMatrix(camera: Camera3D): Matrix
    func GetCameraMatrix2D(camera: Camera2D): Matrix
    //-----//

    func SetTargetFPS(fps: Int32): Unit
    func GetFrameTime(): Float32


    func ClearBackground(color: Color): Unit
    //-----------------------------//
    
    //-----------------------------\\
    //-----------------------------//
}
