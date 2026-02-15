Raw (unabstracted) Raylib bindings for the [Cangjie Language.](https://cangjie-lang.cn/en)

In order to build projects with these, you must provide your own [Raylib](https://github.com/raysan5/raylib) binary & link it.

You can retrieve the Cangjie Compiler from [GitCode](https://gitcode.com/Cangjie/cangjie_compiler), [the Cangjie website](https://cangjie-lang.cn/en/download/1.0.5) or find a local mirror on GitHub.

Raylib functions must be (at the moment) called with an `unsafe { func() }` block, though these blocks are actually a scope that can be expanded to encompass multiple calls & assignments.

```cangjie
unsafe {
    example()
    
    another_example()
}

//or for inline calls

let WindowHeight = unsafe { GetWindowHeight() }
```

If this is suffocating to constantly perform, I'd recommend incrementally replacing components of Raylib with pure cangjie or wrapping as much of it as you can.