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
    //-----\\
    func ClearBackground(color: Color): Unit
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
    //-----//

    //-----\\
    func GetScreenToWorldRay(position: Vector2, camera: Camera3D): Ray
    func GetScreenToWorldRayEx(position: Vector2, camera: Camera3D, width: Int32, height: Int32): Ray
    func GetWorldToScreen(position: Vector3, camera: Camera3D): Vector2
    func GetWorldToScreenEx(position: Vector3, camera: Camera3D, width: Int32, height: Int32): Vector2
    func GetWorldToScreen2d(position: Vector2, camera: Camera2D): Vector2
    func GetScreenToWorld2d(position: Vector2, camera: Camera2D): Vector2
    func GetCameraMatrix(camera: Camera3D): Matrix
    func GetCameraMatrix2D(camera: Camera2D): Matrix
    //-----//

    //-----\\
    func SetTargetFPS(fps: Int32): Unit
    func GetFrameTime(): Float32
    func GetTime(): Float64
    func GetFPS(): Int32
    //-----//

    //-----\\
    func SwapScreenBuffer(): Unit
    func PollInputEvents(): Unit
    func WaitTime(seconds: Float64): Unit
    func SetRandomSeed(seed: UInt32): Unit
    func GetRandomValue(min: Int32, max: Int32): Int32
    func LoadRandomSequence(count: UInt32, min: Int32, max: Int32): CPointer<Int32>
    func UnloadRandomSequence(sequence: CPointer<Int32>): Unit
    //-----//

    //-----\\
    func TakeScreenshot(filename: CString): Unit
    func SetConfigFlags(flags: UInt32): Unit
    func OpenURL(url: CString): Unit
    //-----//
    
    //-----\\
    func SetTraceLogLevel(logLevel: Int32): Unit
    func TraceLog(logLevel: Int32, text: CString, ...): Unit
    func SetTraceLogCallback(callback: CPointer<Unit>): Unit
    //-----//
    //-----------------------------//

    //-----------------------------\\
    //-----\\
    func MemAlloc(size: UInt32): CPointer<Unit>
    func MemRealloc(ptr: CPointer<Unit>, size: UInt32): CPointer<Unit>
    func MemFree(ptr: CPointer<Unit>): Unit
    //-----//

    //-----\\
    func LoadFileData(fileName: CString, dataSize: CPointer<Int32>): CString
    func UnloadFileData(data: CString): Unit
    func SaveFileData(filename: CString, data: CPointer<Unit>, dataSize: Int32): Bool
    func ExportDataAsCode(data: CString, dataSize: Int32, fileName: CString): Bool
    func LoadFileText(fileName: CString): CString
    func UnloadFileText(text: CString): Unit
    func SaveFileText(fileName: CString, text: CString): Bool
    //-----//

    //-----\\
    func SetLoadFileDataCallback(callback: CPointer<Unit>): Unit
    func SetSaveFileDataCallback(callback: CPointer<Unit>): Unit
    func SetLoadFileTextCallback(callback: CPointer<Unit>): Unit
    func SetSaveFileTextCallback(callback: CPointer<Unit>): Unit
    //-----//

    //-----\\
    func FileRename(fileName: CString, fileRename: CString): Int32
    func FileRemove(fileName: CString): Int32
    func FileCopy(srcPath: CString, dstPath: CString): Int32
    func FileMove(srcPath: CString, dstPath: CString): Int32
    func FileTextReplace(fileName: CString, search: CString, replacement: CString): Int32
    func FileTextFindIndex(fileName: CString, search: CString): Int32
    func FileExists(fileName: CString): Bool
    func DirectoryExists(dirPath: CString): Bool
    func IsFileExtension(fileName: CString, ext: CString): Bool
    func GetFileLength(fileName: CString): Int32
    func GetFileModTime(fileName: CString): Int64
    func GetFileExtension(fileName: CString): CString
    func GetFileName(filePath: CString): CString
    func GetFileNameWithoutExt(filePath: CString): CString
    func GetDirectoryPath(filePath: CString): CString
    func GetPrevDirectoryPath(dirPath: CString): CString
    func GetWorkingDirectory(): CString
    func GetApplicationDirectory(): CString
    func MakeDirectory(dirPath: CString): Int32
    func ChangeDirectory(dirPath: CString): Bool
    func IsPathFile(path: CString): Bool
    func IsFileNameValid(fileName: CString): Bool
    func LoadDirectoryFiles(dirPath: CString): FilePathList
    func LoadDirectoryFilesEx(basePath: CString, filter: CString, scanSubdirs: Bool): FilePathList
    func UnloadDirectoryFiles(files: FilePathList): Unit
    func LoadDroppedFiles(): FilePathList
    func UnloadDroppedFiles(files: FilePathList): Unit
    func GetDirectoryFileCount(dirPath: CString): UInt32
    func GetDirectoryFileCountEx(dirPath: CString, filter: CString, scanSubdirs: Bool): UInt32
    //-----//

    //-----\\
    func CompressData(data: CString, dataSize: Int32, compDataSize: CPointer<Int32>): CString
    func DecompressData(compData: CString, compDataSize: Int32, dataSize: CPointer<Int32>): CString
    func EncodeDataBase64(data: CString, dataSize: Int32, outputSize: CPointer<Int32>): CString
    func DecodeDataBase64(text: CString, outputSize: CPointer<Int32>): CString
    func ComputeCRC32(data: CString, dataSize: Int32): UInt32
    func ComputeMD5(data: CString, dataSize: Int32): CPointer<UInt32>
    func ComputerSHA1(data: CString, dataSize: Int32): CPointer<UInt32>
    func ComputerSHA256(data: CString, dataSize: Int32): CPointer<UInt32>
    //-----//

    //-----\\
    func LoadAutomationEventList(filename: CString): AutomationEventList
    func UnloadAutomationEventList(list: AutomationEventList): Unit
    func ExportAutomationEventList(list: AutomationEventList, fileName: CString): Bool
    func SetAutomationEventList(list: CPointer<AutomationEventList>): Unit
    func SetAutomationEventBaseFrame(frame: Int32): Unit
    func StartAutomationEventRecording(): Unit
    func StopAutomationEventRecording(): Unit
    func PlayAutomationEvent(event: AutomationEvent): Unit
    //-----//
    //-----------------------------//


    //-----------------------------\\
    //-----\\
    func IsKeyPressed(key: Int32): Bool
    func IsKeyPressedRepeat(key: Int32): Bool
    func IsKeyDown(key: Int32): Bool
    func IsKeyReleased(key: Int32): Bool
    func IsKeyUp(key: Int32): Bool
    func GetKeyPressed(): Int32
    func GetCharPressed(): Int32
    func GetKeyName(key: Int32): CString
    func SetExitKey(key: Int32): Unit
    //-----//

    //-----\\
    func IsGamepadAvailable(gamepad: Int32): Bool
    func GetGamepadName(gamepad: Int32): CString
    func IsGamePadButtonPressed(gamepad: Int32, button: Int32): Bool
    func IsGamepadButtonDown(gamepad: Int32, button: Int32): Bool
    func IsGamepadButtonReleased(gamepad: Int32, button: Int32): Bool
    func IsGamepadButtonUp(gamepad: Int32, button: Int32): Bool
    func GetGamepadButtonPressed(): Int32
    func GetGamepadAxisCount(gamepad: Int32): Int32
    func GetGamepadAxisMovement(gamepad: Int32, axis: Int32): Float32
    func SetGamepadMappings(mappings: CString): Int32
    func SetGamepadVibration(gamepad: Int32, leftMotor: Float32, rightMotor: Float32, duration: Float32): Unit
    //-----//

    //-----\\
    func IsMouseButtonPressed(button: Int32): Bool
    func IsMouseButtonDown(button: Int32): Bool
    func IsMouseButtonReleased(button: Int32): Bool
    func IsMouseButtonUp(button: Int32): Bool
    func GetMouseX(): Int32
    func GetMouseY(): Int32
    func GetMousePosition(): Vector2
    func GetMouseDelta(): Vector2
    func SetMousePosition(x: Int32, y: Int32): Unit
    func SetMouseOffset(offsetX: Int32, offsetY: Int32): Unit
    func SetMouseScale(scaleX: Float32, scaleY: Float32): Unit
    func GetMouseWheelMove(): Float32
    func GetMouseWheelMoveV(): Vector2
    func SetMouseCursor(cursor: Int32): Unit
    //-----//

    //-----\\
    func GetTouchX(): Int32
    func GettouchY(): Int32
    func GetTouchPosition(index: Int32): Vector2
    func GetTouchPointId(index: Int32): Int32
    func GetTouchPointCount(): Int32
    //-----//

    //-----\\
    func SetGesturesEnabled(flags: UInt32): Unit
    func IsGestureDetected(gesture: UInt32): Bool
    func GetGestureDetected(): Int32
    func GetGestureHoldDuration(): Float32
    func GetGestureDragVector(): Vector2
    func GetGestureDragAngle(): Float32
    func GetGesturePinchAngle(): Float32
    //-----//


    //-----\\
    func UpdateCamera(camera: CPointer<Camera3D>, mode: Int32): Unit
    func UpdateCameraPro(camera: CPointer<Camera3D>, movement: Vector3, rotation: Vector3, zoom: Float32): Unit
    //-----//
    //-----------------------------//

    //-----\\
    func SetShapesTexture(texture: Texture2D, source: Rectangle): Unit
    func GetShapesTexture(): Texture2D
    func GetShapesTextureRectangle(): Rectangle
    //-----//

    //-----\\
    func DrawPixel(posX: Int32, posY: Int32, color: Color): Unit
    func DrawPixelV(position: Vector2, color: Color): Unit
    func DrawLine(startPosX: Int32, startPosY: Int32, endPosX: Int32, endPosY: Int32, color: Color): Unit
    func DrawLineV(startPos: Vector2, endPos: Vector2, color: Color): Unit
    func DrawLineEx(startPos: Vector2, endPos: Vector2, thick: Float32, color: Color): Unit
    func DrawLineStrip(points: CPointer<Vector2>, pointCount: Int32, color: Color): Unit
    func DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: Float32, color: Color): Unit
    func DrawLineDashed(startPos: Vector2, endPos: Vector2, dashSize: Int32, spaceSize: Int32, color: Color): Unit
    func DrawCircle(centerX: Int32, centerY: Int32, radius: Float32, color: Color): Unit
    func DrawCircleSector(center: Vector2, radius: Float32, startAngle: Float32, endAngle: Float32, segments: Int32, color: Color): Unit
    func DrawCircleSectorLines(center: Vector2, radius: Float32, startAngle: Float32, endAngle: Float32, segments: Int32, color: Color): Unit
    func DrawCircleGradient(centerX: Int32, centerY: Int32, radius: Float32, inner: Color, outer: Color): Unit
    func DrawCircleV(center: Vector2, radius: Float32, color: Color): Unit
    func DrawCircleLines(centerX: Int32, centerY: Int32, radius: Float32, color: Color): Unit
    func DrawEllipse(centerX: Int32, centerY: Int32, radiusH: Float32, radiusV: Float32, color: Color): Unit
    func DrawEllipseV(center: Vector2, radiusH: Float32, radiusV: Float32, color: Color): Unit
    func DrawEllipseLines(centerX: Int32, centerY: Int32, radiusH: Float32, radiusV: Float32, color: Color): Unit
    func DrawEllipseLinesV(center: Vector2, radiusH: Float32, radiusV: Float32, color: Color): Unit
    func DrawRing(center: Vector2, innerRadius: Float32, outerRadius: Float32, startAngle: Float32, endAngle: Float32, segments: Int32, color: Color): Unit
    func DrawRingLines(center: Vector2, innerRadius: Float32, outerRadius: Float32, startAngle: Float32, endAngle: Float32, segments: Int32, color: Color): Unit
    func DrawRectangle(posX: Int32, posY: Int32, width: Int32, height: Int32, color: Color): Unit
    func DrawRectangleV(position: Vector2, Size: Vector2, color: Color): Unit
    func DrawRectangleRec(rec: Rectangle, color: Color): Unit
    func DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: Float32, color: Color): Unit
    func DrawRectangleGradientV(posX: Int32, posY: Int32, width: Int32, height: Int32, top: Color, bottom: Color): Unit
    func DrawRectangleGradientH(posX: Int32, posY: Int32, width: Int32, height: Int32, right: Color, left: Color): Unit
    func DrawRectangleGradientEx(rec: Rectangle, topLeft: Color, bottomLeft: Color, bottomRight: Color, topRight: Color): Unit
    func DrawRectangleLines(posX: Int32, posY: Int32, width: Int32, height: Int32, color: Color): Unit
    func DrawRectangleRounded(rec: Rectangle, roundness: Float32, segments: Int32, color: Color): Unit
    func DrawRectangleRoundedLines(rec: Rectangle, lineThick: Float32, color: Color): Unit
    func DrawRectangleRoundedLinesEx(rec: Rectangle, roundness: Float32, segments: Int32, lineThick: Float32, color: Color): Unit
    func DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Unit
    //-----//

    //-----\\
    //-----//
    //-----\\
    //-----//
    //-----------------------------\\
    //-----------------------------//
}
