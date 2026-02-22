Raw (unabstracted) Raylib bindings for the [Cangjie Language.](https://cangjie-lang.cn/en)

## <sup>DISCLAIMER</sup>
Because all foreign functions are treated as "Internal," you must treat these bindings as a template & not just an importable library.

Ideally you cut and paste the chunks of functions you'll need and place them in the header of the cangjie file, from where you can then abstract/interopt with them. This may require redefining them if you can't work them into a static class interface.

For reference:

```cangjie
package example.class

foreign {
    func GetTime(): Float64
    func GetFrameTime(): Float32
}

public class rlTime {
    public static prop time: Float64 {
        get() { return unsafe { GetTime() } }
    }

    public static prop frameTime: Float32 {
        get() { return unsafe { GetFrameTime() } }
    }
}

//----------------------//

main(): Int64 {
    print(rlTime.time) --Returns OS time

    return 1
}

```
## Information
In order to build projects with these, you must provide your own [Raylib](https://github.com/raysan5/raylib) binary & link it.

You can retrieve the Cangjie Compiler from [GitCode](https://gitcode.com/Cangjie/cangjie_compiler), [the Cangjie website](https://cangjie-lang.cn/en/download/1.0.5) or find a local mirror on GitHub.

Raylib functions must be called with an `unsafe { func() }` block, though these blocks are actually a scope that can be expanded to encompass multiple calls & assignments.