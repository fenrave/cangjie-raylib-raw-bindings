package cangjieraylib
//rcore
foreign {
	//-----------------------------\\
	//-----\\
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
	//-----//

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

	//-----------------------------\\
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
	func DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Unit
	func DrawTriangleFan(points: CPointer<Vector2>, pointCount: Int32, color: Color): Unit
	func DrawTriangleStrip(points: CPointer<Vector2>, pointCount: Int32, color: Color): Int32
	func DrawPoly(center: Vector2, sides: Int32, radius: Float32, rotation: Float32, color: Color): Unit
	func DrawPolyLines(center: Vector2, sides: Int32, radius: Float32, rotation: Float32, color: Color): Unit
	func DrawPolyLinesEx(center: Vector2, sides: Int32, radius: Float32, rotation: Float32, lineThick: Float32, color: Color): Unit
	//-----//

	//-----\\
	func DrawSplineLinear(points: CPointer<Vector2>, pointCount: Int32, thick: Float32, color: Color): Unit
	func DrawSplineBasis(points: CPointer<Vector2>, pointCount: Int32, thick: Float32, color: Color): Unit
	func DrawSplineCatmullRom(points: CPointer<Vector2>, pointCount: Int32, thick: Float32, color: Color): Unit
	func DrawSplineBezierQuadratic(points: CPointer<Vector2>, pointCount: Int32, thick: Float32, color: Color): Unit
	func DrawSplinceBezierCubic(points: CPointer<Vector2>, pointCount: Int32, thick: Float32, color: Color): Unit
	func DrawSplineSegmentLinear(p1: Vector2, p2: Vector2, thick: Float32, color: Color): Unit
	func DrawSplineSegmentBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float32, color: Color): Unit
	func DrawSplineSegmentCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float32, color: Color): Unit
	func DrawSplineSegmentBezierQuadratic(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float32, color: Color): Unit
	func DrawSplineSegmentBezierCubic(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: Float32, color: Color): Unit
	//-----//

	//-----\\
	func GetSplinePointLinear(startPos: Vector2, endPos: Vector2, t: Float32): Vector2
	func GetSplinePointBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: Float32): Vector2
	func GetSplinePointCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: Float32): Vector2
	func GetSplinePointBezierQuad(p1: Vector2, c2: Vector2, p3: Vector2, t: Float32): Vector2
	func GetSplinePointBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: Float32): Unit
	//-----//

	//-----\\
	func CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle): Bool
	func CheckCollisionCircles(center: Vector2, radius1: Float32, center2: Vector2, radius2: Float32): Bool
	func CheckCollisionCircleRec(center: Vector2, radius: Float32, rec: Rectangle): Bool
	func CheckCollisionCircleLine(center: Vector2, radius: Float32, p1: Vector2, p2: Vector2): Bool
	func CheckCollisionPointRec(point: Vector2, rec: Rectangle): Bool
	func CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: Float32): Bool
	func CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2): Bool
	func CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: Int32): Bool
	func CheckCollisionPointPoly(point: Vector2, points: CPointer<Vector2>, pointCount: Int32): Bool
	func CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: CPointer<Vector2>): Bool
	func GetCollisionRec(rec1: Rectangle, rec2: Rectangle): Rectangle
	//-----//
	//-----------------------------//


	//-----------------------------\\
	//-----\\
	func LoadImage(fileName: CString): Image
	func LoadImageRaw(fileName: CString, width: Int32, height: Int32, format: Int32, headerSize: Int32): Image
	func LoadImageAnim(fileName: CString, frames: CPointer<Int32>): Image
	func LoadImageAnimFromMemory(fileType: CString, fileData: CString, dataSize: Int32, frames: CPointer<Int32>): Image
	func LoadImageFromTexture(texture: Texture2D): Image
	func LoadImageFromScreen(): Image
	func IsImageValid(image: Image): Bool
	func UnloadImage(image: Image): Unit
	func ExportImage(image: Image, fileName: CString): Bool
	func ExportImageToMemory(image: Image, fileType: CString, fileSize: CPointer<Int32>): CString
	func ExportImageAsCode(image: Image, fileName: CString): Bool
	//-----//
	
	//-----\\
	func GenImageColor(width: Int32, height: Int32, color: Color): Image
	func GenImageGradientLinear(width: Int32, height: Int32, direction: Int32, start: Color, end: Color): Image
	func GenImageGradientRadial(width: Int32, height: Int32, density: Float32, inner: Color, outer: Color): Image
	func GenImageGradientSquare(width: Int32, height: Int32, density: Float32, inner: Color, outer: Color): Image
	func GenImageChecked(width: Int32, height: Int32, checksX: Int32, checksY: Int32, col1: Color, col2: Color): Image
	func GenImageWhiteNoise(width: Int32, height: Int32, factor: Float32): Image
	func GenImagePerlinNoise(width: Int32, height: Int32, offsetX: Int32, offsetY: Int32, scale: Float32): Image
	func GenImageCellular(width: Int32, height: Int32, tileSize: Int32): Image
	func GenImageText(width: Int32, height: Int32, text: CString): Image
	//-----//
	
	//-----\\
	func ImageCopy(image: Image): Image
	func ImageFromImage(image: Image, rec: Rectangle): Image
	func ImageFromChannel(image: Image, selectedChannel: Int32): Image
	func ImageText(text: CString, fontSize: Int32, color: Color): Image
	func ImageTextEx(font: Font, text: CString, fontSize: Float32, spacing: Float32, tint: Color): Image
	func ImageFormat(image: CPointer<Image>, newFormat: Int32): Unit
	func ImageToPOT(image: CPointer<Image>, fill: Color): Unit
	func ImageCrop(image: CPointer<Image>, crop: Rectangle): Unit
	func ImageAlphaCrop(image: CPointer<Image>, threshold: Float32): Unit
	func ImageAlphaClear(image: CPointer<Image>, color: Color, threshold: Float32): Unit
	func ImageAlphaPremultiply(image: CPointer<Image>): Unit
	func ImageBlurGaussian(image: CPointer<Image>, blurSize: Int32): Unit
	func ImageKernelConvolution(image: CPointer<Image>, kernel: CPointer<Float32>, kernelSize: Int32): Unit
	func ImageResize(image: CPointer<Image>, newWidth: Int32, newHeight: Int32): Unit
	func ImageResizeNN(image: CPointer<Image>, newWidth: Int32, newHeight: Int32): Unit
	func ImageResizeCanvas(image: CPointer<Image>, newWidth: Int32, newHeight: Int32, offsetX: Int32, offsetY: Int32, fill: Color): Unit
	func ImageMipmaps(image: CPointer<Image>): Unit
	func ImageDither(image: CPointer<Image>, rBpp: Int32, gBpp: Int32, bBpp: Int32, aBpp: Int32): Unit
	func ImageFlipVertical(image: CPointer<Image>): Unit
	func ImageFlipHorizontal(image: CPointer<Image>): Unit
	func ImageRotate(image: CPointer<Image>, degrees: Int32): Unit
	func ImageRotateCW(image: CPointer<Image>): Unit
	func ImageRotateCCW(image: CPointer<Image>): Unit
	func ImageColorTint(image: CPointer<Image>, color: Color): Unit
	func ImageColorInvert(image: CPointer<Image>): Unit
	func ImageColorGrayscale(image: CPointer<Image>): Unit
	func ImageColorContrast(image: CPointer<Image>, contrast: Float32): Unit
	func ImageColorBrightness(image: CPointer<Image>, brightness: Int32): Unit
	func ImageColorReplace(image: CPointer<Image>, color: Color, replace: Color): Unit
	func LoadImageColors(image: Image): CPointer<Color>
	func LoadImagePalette(image: Image, maxPaletteSize: Int32, colorCount: CPointer<Int32>): CPointer<Color>
	func UnloadImageColors(colors: CPointer<Color>): Unit
	func UnloadImagePalette(colors: CPointer<Color>): Unit
	func GetImageAlphaBorder(image: Image, threshold: Float32): Rectangle
	func GetImageColor(image: Image, x: Int32, y: Int32): Color
	//-----//

	//-----\\
	func ImageClearBackground(dst: CPointer<Image>, color: Color): Unit
	func ImageDrawPixel(dst: CPointer<Image>, posX: Int32, posY: Int32, color: Color): Unit
	func ImageDrawPixelV(dst: CPointer<Image>, posX: Int32, posY: Int32, color: Color): Unit
	func ImageDrawLine(dst: CPointer<Image>, centerX: Int32, centerY: Int32, radius: Int32, color: Color): Unit
	func ImageDrawLineV(dst: CPointer<Image>, start: Vector2, end: Vector2, color: Color): Unit
	func ImageDrawLineEx(dst: CPointer<Image>, start: Vector2, end: Vector2, thick: Int32, color: Color): Unit
	func ImageDrawCircle(dst: CPointer<Image>, centerX: Int32, centerY: Int32, radius: Int32, color: Color): Unit
	func ImageDrawCircleV(dst: CPointer<Image>, center: Vector2, radius: Int32, color: Color): Unit
	func ImageDrawCircleLines(dst: CPointer<Image>, centerX: Int32, centerY: Int32, radius: Int32, color: Color): Unit
	func ImageDrawCircleLinesV(dst: CPointer<Image>, center: Vector2, radius: Int32, color: Color): Unit
	func ImageDrawRectangle(dst: CPointer<Image>, posX: Int32, posY: Int32, width: Int32, height: Int32, color: Color): Unit
	func ImageDrawRectangleV(dst: CPointer<Image>, position: Vector2, size: Vector2, color: Color): Unit
	func ImageDrawRectangleRec(dst: CPointer<Image>, rec: Rectangle, color: Color): Unit
	func ImageDrawRectangleLines(dst: CPointer<Image>, rec: Rectangle, thick: Int32, color: Color): Unit
	func ImageDrawTriangle(dst: CPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Unit
	func ImageDrawTriangleEx(dst: CPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, c1: Color, c2: Color, c3: Color): Unit
	func ImageDrawTriangleLines(dst: CPointer<Image>, v1: Vector2, v2: Vector2, v3: Vector2, color: Color): Unit
	func ImageDrawTriangleFan(dst: CPointer<Image>, points: CPointer<Vector2>, pointCount: Int32, color: Color): Unit
	func ImageDrawTriangleStrip(dst: CPointer<Image>, points: CPointer<Vector2>, pointCount: Int32, color: Color): Unit
	func ImageDraw(dst: CPointer<Image>, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color): Unit
	func ImageDrawText(dst: CPointer<Image>, text: CString, posX: Int32, posY: Int32, fontSize: Int32, color: Color): Unit
	func ImageDrawTextEx(dst: CPointer<Image>, font: Font, text: CString, position: Vector2, fontSize: Float32, spacing: Float32, tint: Int32): Unit
	//-----//

	//-----\\
	func LoadTexture(fileName: CString): Texture2D
	func LoadTextureFromImage(image: Image): Texture2D
	func LoadTextureCubemap(image: Image, layout: Int32): TextureCubemap
	func LoadRenderTexture(width: Int32, height: Int32): RenderTexture2D
	func IsTextureValid(texture: Texture2D): Bool
	func UnloadTexture(texture: Texture2D): Unit
	func IsRenderTextureValid(target: RenderTexture2D): Bool
	func UnloadRenderTexture(target: RenderTexture2D): Bool
	func UpdateTexture(texture: Texture2D, pixels: CPointer<Unit>): Unit
	func UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: CPointer<Unit>): Unit
	//-----//

	//-----\\
	func GenTextureMipmaps(texture: CPointer<Texture2D>): Unit
	func SetTextureFilter(texture: Texture2D, filter: Int32): Unit
	func SetTextureWrap(texture: Texture2D, wrap: Int32): Unit
	//-----//

	//-----\\
	func DrawTexture(texture: Texture2D, posX: Int32, posY: Int32, tint: Color): Unit
	func DrawTextureV(texture: Texture2D, position: Vector2, tint: Color): Unit
	func DrawTextureEx(texture: Texture2D, position: Vector2, rotation: Float32, scale: Float32, tint: Color): Unit
	func DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color): Unit
	func DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: Float32, color: Color): Unit
	func DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: Float32, tint: Color): Unit
	//-----//

	//-----\\
	func ColorIsEqual(col1: Color, col2: Color): Bool
	func Fade(color: Color, alpha: Float32): Color
	func ColorToInt(color: Color): Int32
	func ColorNormalize(color: Color): Vector4
	func ColorFromNormalized(normalized: Vector4): Color
	func ColorToHSV(color: Color): Vector3
	func ColorFromHSV(hue: Float32, saturation: Float32, value: Float32): Color
	func ColorTint(color: Color, tint: Color): Color
	func ColorBrightness(color: Color, factor: Float32): Color
	func ColorContrast(color: Color, contrast: Float32): Color
	func ColorAlpha(color: Color, alpha: Float32): Color
	func ColorAlphaBlend(dst: Color, src: Color, tint: Color): Color
	func ColorLerp(color1: Color, color2: Color, factor: Float32): Color
	func GetColor(hexValue: UInt32): Color
	func GetPixelColor(srcPtr: CPointer<Unit>, format: Int32): Color
	func SetPixelColor(dstPtr: CPointer<Unit>, color: Color, format: Int32): Unit
	func GetPixelDataSize(width: Int32, height: Int32, format: Int32): Int32
	//-----//
	//-----------------------------//



	//-----------------------------\\
	//-----\\
	func GetFontDefault(): Font
	func LoadFont(fileName: CString): Font
	func LoadFontEx(fileName: CString, fontSize: Int32, codePoints: CPointer<Int32>, codepointCount: Int32): Font
	func LoadFontFromImage(image: Image, key: Color, firstChar: Int32): Font
	func LoadFontFromMemory(fileType: CString, fileData: CString, dataSize: Int32, fontSize: Int32, codepoints: CPointer<Int32>, codepointCount: Int32): Font
	func IsFontValid(font: Font): Bool
	func LoadFontData(fileData: CString, dataSize: Int32, fontSize: Int32, codepoints: CPointer<Int32>, codepointCount: Int32, Type: Int32, glyphCount: CPointer<Int32>): GlyphInfo
	func GenImageFontAtlas(glyphs: CPointer<GlyphInfo>, glyphRecs: CPointer<CPointer<Rectangle>>, glyphCount: Int32, fontSize: Int32, padding: Int32, packMethod: Int32): Image
	func UnloadFontData(glyphs: CPointer<GlyphInfo>, glyphCount: Int32): Unit
	func UnloadFont(font: Font): Unit
	func ExportFontAsCode(font: Font, fileName: CString): Bool
	//-----//

	//-----\\
	func DrawFPS(posX: Int32, posY: Int32): Unit
	func DrawText(text: CString, posX: Int32, posY: Int32, fontSize: Int32, color: Color): Unit
	func DrawTextEx(font: Font, text: CString, position: Vector2, fontSize: Float32, spacing: Float32, tint: Color): Unit
	func DrawTextPro(font: Font, text: CString, position: Vector2, origin: Vector2, rotation: Float32, fontSize: Float32, spacing: Float32, tint: Color): Unit
	func DrawTextCodepoint(font: Font, codepoint: Int32, position: Vector2, fontSize: Float32, tint: Color): Unit
	func DrawTextCodepoints(font: Font, codepoints: CPointer<Int32>, codepointCount: Int32, position: Vector2, fontSize: Float32, spacing: Float32, tint: Color): Unit
	//-----//

	//-----\\
	func SetTextLineSpacing(spacing: Int32): Unit
	func MeasureText(text: CString, fontSize: Int32): Int32
	func MeasureTextEx(font: Font, text: CString, fontSize: Float32, spacing: Float32): Vector2
	func GetGlyphIndex(font: Font, codepoint: Int32): Int32
	func GetGlyphInfo(font: Font, codepoint: Int32): GlyphInfo
	func GetGlyphAtlasRec(font: Font, codepoint: Int32): Rectangle
	//-----//

	//-----\\
	func LoadUTF8(codepoints: CPointer<Int32>, length: Int32): CString
	func UnloadUTF8(text: CString): Unit
	func LoadCodepoints(text: CString, count: CPointer<Int32>): CPointer<Int32>
	func UnloadCodepoints(codepoints: CPointer<Int32>): Unit
	func GetCodepointCount(text: CString): Int32
	func GetCodepoint(text: CString, codepointSize: CPointer<Int32>): Int32
	func GetCodepointNext(text: CString, codepointSize: CPointer<Int32>): Int32
	func GetCodepointPrevious(text: CString, codepointSize: CPointer<Int32>): Int32
	func CodepointToUTF8(codepoint: Int32, utf8Size: CPointer<Int32>): CString
	//-----//

	//-----\\
	func LoadTextLines(text: CString, count: CPointer<Int32>): CPointer<CString>
	func UnloadTextLines(text: CPointer<CString>, lineCount: Int32): Unit
	func TextCopy(dst: CString, src: CString): Int32
	func TextIsEqual(text1: CString, text2: CString): Bool
	func TextLength(text: CString): UInt32
	func TextFormat(text: CString, ...): CString
	func TextSubtext(text: CString, position: Int32, length: Int32): CString
	func TextRemoveSpaces(text: CString): CString
	func GetTextBetween(text: CString, begin: CString, end: CString): CString
	func TextReplace(text: CString, search: CString, replacement: CString): CString
	func TextReplaceBetween(text: CString, begin: CString, end: CString, replacement: CString): CString
	func TextInsert(text: CString, insert: CString, position: Int32): CString
	func TextJoin(textlist: CPointer<CString>, count: Int32, delimiter: CString): CString
	func TextSplit(text: CString, delimiter: Int8, count: CPointer<Int32>): CPointer<CString>
	func TextAppend(text: CString, append: CString, position: CPointer<Int32>): Unit
	func TextFindIndex(text: CString, search: CString): Int32
	func TextToUpper(text: CString): CString
	func TextToLower(text: CString): CString
	func TextToPascal(text: CString): CString
	func TextToSnake(text: CString): CString
	func TextToCamel(text: CString): CString
	func TextToInteger(test: CString): Int32
	func TextToFloat(text: CString): Float32
	//-----//
	//-----------------------------//


	//-----------------------------\\
	//-----\\
	func DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color): Unit
	func DrawPoint3D(position: Vector3, color: Color): Unit
	func DrawCircle3D(center: Vector3, radius: Float32, rotationAxis: Vector3, rotationAngle: Float32, color: Color): Unit
	func DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color): Unit
	func DrawTriangleStrip3D(points: CPointer<Vector3>, pointCount: Int32, color: Color): Unit
	func DrawCube(position: Vector3, width: Float32, height: Float32, length: Float32, color: Color): Unit
	func DrawCubeV(position: Vector3, size: Vector3, color: Color): Unit
	func DrawCubeWires(position: Vector3, width: Float32, height: Float32, length: Float32, color: Color): Unit
	func DrawCubeWiresV(position: Vector3, size: Vector3, color: Color): Unit
	func DrawSphere(centerPos: Vector3, radius: Float32, color: Color): Unit
	func DrawSphereEx(centerPos: Vector3, radius: Float32, rings: Int32, slices: Int32, color: Color): Unit
	func DrawSphereWires(centerPos: Vector3, radius: Float32, rings: Int32, slices: Int32, color: Color): Unit
	func DrawCylinder(position: Vector3, radiusTop: Float32, radiusBottom: Float32, height: Float32, slices: Int32, color: Color): Unit
	func DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: Float32, endRadius: Float32, sides: Int32, color: Color): Unit
	func DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: Float32, endRadius: Float32, sides: Int32, color: Color): Unit
	func DrawCapsule(startPos: Vector3, endPos: Vector3, radius: Float32, slices: Int32, rings: Int32, color: Color): Unit
	func DrawCapsuleWires(startPos: Vector3, endPos: Vector3, radius: Float32, slices: Int32, rings: Int32, color: Color): Unit
	func DrawPlane(centerPos: Vector3, size: Vector2, color: Color): Unit
	func DrawRay(ray: Ray, color: Color): Unit
	func DrawGrid(slices: Int32, spacing: Float32): Unit
	//-----//

	//-----\\
	func LoadModel(fileName: CString): Model
	func LoadModelFromMesh(mesh: Mesh): Model
	func IsModelValid(model: Model): Bool
	func UnloadModel(model: Model): Unit
	func GetModelBoundingBox(model: Model): BoundingBox
	//-----//

	//-----\\
	func DrawModel(model: Model, position: Vector3, scale: Float32, tint: Color): Unit
	func DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: Float32, scale: Vector3, tint: Color): Unit
	func DrawModelWires(model: Model, position: Vector3, scale: Float32, tint: Color): Unit
	func DrawModelWiresEx(model: Model, position: Vector3, rotationAxos: Vector3, rotationAngle: Float32, scale: Vector3, tint: Color): Unit
	func DrawModelPoints(model: Model, position: Vector3, scale: Float32, tint: Color): Unit
	func DrawModelPointsEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: Float32, scale: Vector3, tint: Color): Unit
	func DrawBoundingBox(box: BoundingBox, color: Color): Unit
	func DrawBillboard(camera: Camera2D, texture: Texture2D, position: Vector3, scale: Float32, tint: Color): Unit
	func DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: Vector2, tint: Color): Unit
	func DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: Float32, tint: Color): Unit
	//-----//

	//-----\\
	func UploadMesh(mesh: CPointer<Mesh>, dynamic: Bool): Unit
	func UpdateMeshBuffer(mesh: Mesh, index: Int32, data: CPointer<Unit>, dataSize: Int32, offset: Int32): Unit
	func UnloadMesh(mesh: Mesh): Unit
	func DrawMesh(mesh: Mesh, material: Material, transform: Matrix): Unit
	func DrawMeshInstanced(mesh: Mesh, material: Material, transforms: CPointer<Matrix>, instances: Int32): Unit
	func GetMeshBoundingBox(mesh: Mesh): BoundingBox
	func GetMeshTangents(mesh: CPointer<Mesh>): Unit
	func ExportMesh(mesh: Mesh, fileName: CString): Bool
	func ExportMeshAsCode(mesh: Mesh, fileName: CString): Bool
	//-----//

	//-----\\
	func GenMeshPoly(sides: Int32, radius: Float32): Mesh
	func GenMeshPlane(width: Float32, length: Float32, resX: Int32, resZ: Int32): Mesh
	func GenMeshCube(width: Float32, height: Float32, length: Float32): Mesh
	func GenMeshSphere(radius: Float32, rings: Int32, slices: Int32): Mesh
	func GenMeshHemiSphere(radius: Float32, rings: Int32, slices: Int32): Mesh
	func GenMeshCylinder(radius: Float32, height: Float32, slices: Int32): Mesh
	func GenMeshCone(radius: Float32, height: Float32, slices: Int32): Mesh
	func GenMeshTorus(radius: Float32, size: Float32, radSeg: Int32, sides: Int32): Mesh
	func GenMeshKnot(radius: Float32, size: Float32, radSeg: Int32, sides: Int32): Mesh
	func GenMeshHeightmap(heightmap: Image, size: Vector3): Mesh
	func GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3): Mesh
	//-----//

	//-----\\
	func LoadMaterials(fileName: CString, materialCount: CPointer<Int32>): Material
	func LoadMaterialDefault(): Material
	func IsMaterialValid(material: Material): Bool
	func UnloadMaterial(material: Material): Unit
	func SetMaterialTexture(material: CPointer<Material>, mapType: Int32, texture: Texture2D): Unit
	func SetModelMeshMaterial(model: CPointer<Model>, meshId: Int32, materialId: Int32): Unit
	//-----//

	//-----\\
	func LoadModelAnimations(fileName: CString, animCount: CPointer<Int32>): ModelAnimation
	func UpdateMdoelAnimation(model: Model, anim: ModelAnimation, frame: Int32): Unit
	func UpdateModelAnimationBones(model: Model, anin: ModelAnimation, frame: Int32): Unit
	func UnloadModelAnimation(anim: ModelAnimation): Unit
	func UnloadModelAnimations(animations: CPointer<ModelAnimation>, animCount: Int32): Unit
	func IsModelAnimationValid(model: Model, anim: ModelAnimation): Bool
	//-----//

	//-----\\
	func CheckCollisionSpheres(center1: Vector3, radius1: Float32, center2: Vector3, radius: Float32): Bool
	func CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox): Bool
	func CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: Float32): Bool
	func GetRayCollisionSphere(ray: Ray, center: Vector3, radius: Float32): RayCollision
	func GetRayCollisionBox(ray: Ray, box: BoundingBox): RayCollision
	func GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix): RayCollision
	func GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3): RayCollision
	func GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3): RayCollision
	//-----//
	//-----------------------------//

	//-----------------------------\\
	//-----\\
	func InitAudioDevice(): Unit
	func CloseAudioDevice(): Unit
	func IsAudioDeviceReady(): Bool
	func SetMasterVolume(volume: Float32): Unit
	func GetMasterVolume(): Float32
	//-----//
	
	//-----\\
	func LoadWave(fileName: CString): Wave
	func LoadWaveFromMemory(fileType: CString, fileData: CString, dataSize: Int32): Wave
	func IsWaveValid(wave: Wave): Bool
	func LoadSound(fileName: CString): Sound
	func LoadSoundFromWave(wave: Wave): Sound
	func LoadSoundAlias(source: Sound): Sound
	func IsSoundValid(sound: Sound): Bool
	func UpdateSound(sound: Sound, data: CPointer<Unit>, sampleCount: Int32): Unit
	func UnloadWave(wave: Wave): Unit
	func UnloadSound(sound: Sound): Unit
	func UnloadSoundAlias(alias: Sound): Unit
	func ExportWave(wave: Wave, fileName: CString): Bool
	func ExportWaveAsCode(wave: Wave, fileName: CString): Bool
	//-----//

	//-----\\
	func PlaySound(sound: Sound): Unit
	func StopSound(sound: Sound): Unit
	func PauseSound(sound: Sound): Unit
	func ResumeSound(sound: Sound): Unit
	func IsSoundPlaying(sound: Sound): Unit
	func SetSoundVolume(sound: Sound, volume: Float32): Unit
	func SetSoundPitch(sound: Sound, pitch: Float32): Unit
	func SetSoundPan(sound: Sound, pan: Float32): Unit
	func WaveCopy(wave: Wave): Wave
	func WaveCrop(wave: CPointer<Wave>, initFrame: Int32, finalFrame: Int32): Unit
	func WaveFormat(wave: CPointer<Wave>, sampleRate: Int32, sampleSize: Int32, channels: Int32): Unit
	func LoadWaveSamples(wave: Wave): CPointer<Float32>
	func UnloadWaveSamples(samples: CPointer<Float32>): Unit
	//-----//

	//-----\\
	func LoadMusicStream(fileName: CString): Music
	func LoadMusicStreamFromMemory(fileType: CString, data: CString, dataSize: Int32): Music
	func IsMusicValid(music: Music): Bool
	func UnloadMusicStream(music: Music): Unit
	func PlayMusicStream(music: Music): Unit
	func IsMusicStreamPlaying(music: Music): Bool
	func UpdateMusicStream(music: Music): Unit
	func StopMusicStream(music: Music): Unit
	func PauseMusicStream(music: Music): Unit
	func ResumeMusicStream(music: Music): Unit
	func SeekMusicStream(music: Music, position: Float32): Unit
	func SetMusicVolume(music: Music, volume: Float32): Unit
	func SetMusicPitch(music: Music, pitch: Float32): Unit
	func SetMusicPan(music: Music, pan: Float32): Unit
	func GetMusicTimeLength(music: Music): Float32
	func GetMusicTimePlayed(music: Music): Float32
	//-----//

	//-----\\
	func LoadAudioStream(sampleRate: UInt32, sampleSize: UInt32, channels: UInt32): AudioStream
	func IsAudioStreamValid(stream: AudioStream): Bool
	func UnloadAudioStream(stream: AudioStream): Unit
	func UpdateAudioStream(stream: AudioStream, data: CPointer<Unit>, frameCount: Int32): Unit
	func IsAudioStreamProcessed(stream: AudioStream): Bool
	func PlayAudioStream(stream: AudioStream): Unit
	func PauseAudioStream(stream: AudioStream): Unit
	func ResumeAudioStream(stream: AudioStream): Unit
	func IsAudioStreamPlaying(stream: AudioStream): Bool
	func StopAudioStream(stream: AudioStream): Unit
	func SetAudioStreamVolume(stream: AudioStream, volume: Float32): Unit
	func SetAudioStreamPitch(stream: AudioStream, pitch: Float32): Unit
	func SetAudioStreamPan(stream: AudioStream, pan: Float32): Unit
	func SetAudioStreamBufferSizeDefault(size: Int32): Unit
	func SetAudioStreamCallback(stream: AudioStream, callback: AudioCallback): Unit
	//-----//

	//-----\\
	func AttachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback): Unit
	func DetachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback): Unit
	func AttachAudioMixedProcessor(processor: AudioCallback): Unit
	func DetachAudioMixedProcessor(processor: AudioCallback): Unit
	//-----//
	//-----------------------------//
}
