package main

import "core:fmt"
import "vendor:raylib"

main :: proc() {
    fmt.println("Hello World!");
    using raylib;
    WINDOW_WIDTH :: 850
    WINDOW_HEIGHT :: 500
    CIRCLE_POS: Vector2 = {f32(WINDOW_WIDTH/3), f32(WINDOW_HEIGHT/3)}
    InitWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "Joe Mamaa")
    for !WindowShouldClose() {
        PollInputEvents()
        if (IsKeyDown(KeyboardKey.E)) {
            OpenURL("https://github.com/")
        }
        if (IsKeyDown(KeyboardKey.W) && CIRCLE_POS.y != 30) do CIRCLE_POS.y -= 1
        if (IsKeyDown(KeyboardKey.S) && CIRCLE_POS.y != WINDOW_HEIGHT - 30) do CIRCLE_POS.y += 1
        if (IsKeyDown(KeyboardKey.A) && CIRCLE_POS.x != 29) do CIRCLE_POS.x -= 1
        if (IsKeyDown(KeyboardKey.D) && CIRCLE_POS.x != WINDOW_WIDTH - 29) do CIRCLE_POS.x += 1
        BeginDrawing()
            ClearBackground(RAYWHITE)
            DrawCircleV(CIRCLE_POS, 30, ORANGE)
        EndDrawing()
    }
    CloseWindow()
}
