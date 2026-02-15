package cangjieraylib

var rect = Rectangle(0.0,0.0, 500.0, 500.0)
var col = Color(255, 255, 100, 255)
var bcol = Color(0,0,0,0)
var cam = Camera2D(Vector2(0.0, 0.0), Vector2(0.0, 0.0), 0.0, 1.0)

main(): Int64 {

    unsafe {
        InitWindow(1000, 800, LibC.mallocCString("Hello"))
        SetTargetFPS(60)
        while (!WindowShouldClose()) {
            BeginDrawing()
            ClearBackground(bcol)

                BeginMode2D(cam)

                DrawRectangle(1, 1, 500, 500, col)

                EndMode2D()

            EndDrawing()
        }

        CloseWindow()
    }

    return 0
}