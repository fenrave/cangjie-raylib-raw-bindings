package cangjieraylib.defs

/**

	Due to constraints with macros & cangjie enums, it is far easier to represent C enums as structs, or some kind of object that can retain info.
	Ideally the compiler should pick up on these values being effectively "constant," and be pre-processed into their number, rather than some indirection to the struct value.

	Formatting is a little wonky because i changed from typecasting and just assigned the value directly to i32.

	These are also stored in a separate file to avoid leaking into the intellisense autocomplete.

*/


public struct __TraceLog_Enums {
	public let ALL: Int32 = 0
	public let TRACE: Int32 = 1
	public let DEBUG: Int32 = 2
	public let INFO: Int32 = 3
	public let WARNING: Int32 = 4
	public let ERROR: Int32 = 5
	public let FATAL: Int32 = 6
	public let NONE: Int32 = 7
}

public struct __Keyboard_Enum {
	public let NULL: Int32 = 0
	// Alphanumeric keys
	public let APOSTROPHE: Int32	  = 39
	public let COMMA: Int32		   = 44
	public let MINUS: Int32		   = 45
	public let PERIOD: Int32		  = 46
	public let SLASH: Int32		   = 47
	public let ZERO: Int32			= 48
	public let ONE: Int32			 = 49
	public let TWO: Int32			 = 50
	public let THREE: Int32		   = 51
	public let FOUR: Int32			= 52
	public let FIVE: Int32			= 53
	public let SIX: Int32			 = 54
	public let SEVEN: Int32		   = 55
	public let EIGHT: Int32		   = 56
	public let NINE: Int32			= 57
	public let SEMICOLON: Int32	   = 59
	public let EQUAL: Int32		   = 61
	public let A: Int32			   = 65
	public let B: Int32			   = 66
	public let C: Int32			   = 67
	public let D: Int32			   = 68
	public let E: Int32			   = 69
	public let F: Int32			   = 70
	public let G: Int32			   = 71
	public let H: Int32			   = 72
	public let I: Int32			   = 73
	public let J: Int32			   = 74
	public let K: Int32			   = 75
	public let L: Int32			   = 76
	public let M: Int32			   = 77
	public let N: Int32			   = 78
	public let O: Int32			   = 79
	public let P: Int32			   = 80
	public let Q: Int32			   = 81
	public let R: Int32			   = 82
	public let S: Int32			   = 83
	public let T: Int32			   = 84
	public let U: Int32			   = 85
	public let V: Int32			   = 86
	public let W: Int32			   = 87
	public let X: Int32			   = 88
	public let Y: Int32			   = 89
	public let Z: Int32			   = 90
	public let LEFT_BRACKET: Int32	= 91
	public let BACKSLASH: Int32	   = 92
	public let RIGHT_BRACKET: Int32   = 93
	public let GRAVE: Int32		   = 96
	// Function keys
	public let SPACE: Int32		   = 32
	public let ESCAPE: Int32		  = 256
	public let ENTER: Int32		   = 257
	public let TAB: Int32			 = 258
	public let BACKSPACE: Int32	   = 259
	public let INSERT: Int32		  = 260
	public let DELETE: Int32		  = 261
	public let RIGHT: Int32		   = 262
	public let LEFT: Int32			= 263
	public let DOWN: Int32			= 264
	public let UP: Int32			  = 265
	public let PAGE_UP: Int32		 = 266
	public let PAGE_DOWN: Int32	   = 267
	public let HOME: Int32			= 268
	public let END: Int32			 = 269
	public let CAPS_LOCK: Int32	   = 280
	public let SCROLL_LOCK: Int32	 = 281
	public let NUM_LOCK: Int32		= 282
	public let PRINT_SCREEN: Int32	= 283
	public let PAUSE: Int32		   = 284
	public let F1: Int32			  = 290
	public let F2: Int32			  = 291
	public let F3: Int32			  = 292
	public let F4: Int32			  = 293
	public let F5: Int32			  = 294
	public let F6: Int32			  = 295
	public let F7: Int32			  = 296
	public let F8: Int32			  = 297
	public let F9: Int32			  = 298
	public let F10: Int32			 = 299
	public let F11: Int32			 = 300
	public let F12: Int32			 = 301
	public let LEFT_SHIFT: Int32	  = 340
	public let LEFT_CONTROL: Int32	= 341
	public let LEFT_ALT: Int32		= 342
	public let LEFT_SUPER: Int32	  = 343
	public let RIGHT_SHIFT: Int32	 = 344
	public let RIGHT_CONTROL: Int32   = 345
	public let RIGHT_ALT: Int32	   = 346
	public let RIGHT_SUPER: Int32	 = 347
	public let KB_MENU: Int32		 = 348
	// Keypad keys
	public let KP_0: Int32			= 320
	public let KP_1: Int32			= 321
	public let KP_2: Int32			= 322
	public let KP_3: Int32			= 323
	public let KP_4: Int32			= 324
	public let KP_5: Int32			= 325
	public let KP_6: Int32			= 326
	public let KP_7: Int32			= 327
	public let KP_8: Int32			= 328
	public let KP_9: Int32			= 329
	public let KP_DECIMAL: Int32	  = 330
	public let KP_DIVIDE: Int32	   = 331
	public let KP_MULTIPLY: Int32	 = 332
	public let KP_SUBTRACT: Int32	 = 333
	public let KP_ADD: Int32		  = 334
	public let KP_ENTER: Int32		= 335
	public let KP_EQUAL: Int32		= 336
	// Android key buttons
	public let BACK: Int32			= 4
	public let MENU: Int32			= 5
	public let VOLUME_UP: Int32	   = 24
	public let VOLUME_DOWN: Int32	 = 25
}

public struct __ConfigFlag_Enums {
	public let VSYNC_HINT: Int32			   = 0x00000040
	public let FULLSCREEN_MODE: Int32		  = 0x00000002
	public let WINDOW_RESIZABLE: Int32		 = 0x00000004
	public let WINDOW_UNDECORATED: Int32	   = 0x00000008
	public let WINDOW_HIDDEN: Int32			= 0x00000080
	public let WINDOW_MINIMIZED: Int32		 = 0x00000200
	public let WINDOW_MAXIMIZED: Int32		 = 0x00000400
	public let WINDOW_UNFOCUSED: Int32		 = 0x00000800
	public let WINDOW_TOPMOST: Int32		   = 0x00001000
	public let WINDOW_ALWAYS_RUN: Int32		= 0x00000100
	public let WINDOW_TRANSPARENT: Int32	   = 0x00000010
	public let WINDOW_HIGHDPI: Int32		   = 0x00002000
	public let WINDOW_MOUSE_PASSTHROUGH: Int32 = 0x00004000
	public let BORDERLESS_WINDOWED_MODE: Int32 = 0x00008000
	public let MSAA_4X_HINT: Int32			 = 0x00000020
	public let INTERLACED_HINT: Int32		  = 0x00010000
}

public struct __MouseCursor_Enums {
	public let DEFAULT			= 0_i32
	public let ARROW			= 1_i32
	public let IBEAM			= 2_i32
	public let CROSSHAIR		= 3_i32
	public let POINTING_HAND	= 4_i32
	public let RESIZE_EW		= 5_i32
	public let RESIZE_NS		= 6_i32
	public let RESIZE_NWSE		= 7_i32
	public let RESIZE_NESW		= 8_i32
	public let RESIZE_ALL		= 9_i32
	public let NOT_ALLOWED		= 10_i32
}

public struct __GamepadButton_Enums {
	public let UNKNOWN		  = 0_i32
	public let LEFT_FACE_UP	 = 1_i32
	public let LEFT_FACE_RIGHT  = 2_i32
	public let LEFT_FACE_DOWN   = 3_i32
	public let LEFT_FACE_LEFT   = 4_i32
	public let RIGHT_FACE_UP	= 5_i32
	public let RIGHT_FACE_RIGHT = 6_i32
	public let RIGHT_FACE_DOWN  = 7_i32
	public let RIGHT_FACE_LEFT  = 8_i32
	public let LEFT_TRIGGER_1   = 9_i32
	public let LEFT_TRIGGER_2   = 10_i32
	public let RIGHT_TRIGGER_1  = 11_i32
	public let RIGHT_TRIGGER_2  = 12_i32
	public let MIDDLE_LEFT	  = 13_i32
	public let MIDDLE		   = 14_i32
	public let MIDDLE_RIGHT	 = 15_i32
	public let LEFT_THUMB	   = 16_i32
	public let RIGHT_THUMB	  = 17_i32
}

public struct __GamepadAxis_Enums {
	public let LEFT_X		= 0_i32
	public let LEFT_Y		= 1_i32
	public let RIGHT_X	   = 2_i32
	public let RIGHT_Y	   = 3_i32
	public let LEFT_TRIGGER  = 4_i32
	public let RIGHT_TRIGGER = 5_i32
}

public struct __MaterialMapIndex_Enums {
	public let ALBEDO		= 0_i32
	public let METALNESS	= 1_i32
	public let NORMAL		= 2_i32
	public let ROUGHNESS	= 3_i32
	public let OCCLUSION	= 4_i32
	public let EMISSION		= 5_i32
	public let HEIGHT		= 6_i32
	public let CUBEMAP		= 7_i32
	public let IRRADIANCE	= 8_i32
	public let PREFILTER	= 9_i32
	public let BRDF			= 10_i32
}

public struct __ShaderLocationIndex_Enums {
	public let VERTEX_POSITION		  = 0_i32
	public let VERTEX_TEXCOORD01		= 1_i32
	public let VERTEX_TEXCOORD02		= 2_i32
	public let VERTEX_NORMAL			= 3_i32
	public let VERTEX_TANGENT		   = 4_i32
	public let VERTEX_COLOR			 = 5_i32
	public let MATRIX_MVP			   = 6_i32
	public let MATRIX_VIEW			  = 7_i32
	public let MATRIX_PROJECTION		= 8_i32
	public let MATRIX_MODEL			 = 9_i32
	public let MATRIX_NORMAL			= 10_i32
	public let VECTOR_VIEW			  = 11_i32
	public let COLOR_DIFFUSE			= 12_i32
	public let COLOR_SPECULAR		   = 13_i32
	public let COLOR_AMBIENT			= 14_i32
	public let MAP_ALBEDO			   = 15_i32
	public let MAP_METALNESS			= 16_i32
	public let MAP_NORMAL			   = 17_i32
	public let MAP_ROUGHNESS			= 18_i32
	public let MAP_OCCLUSION			= 19_i32
	public let MAP_EMISSION			 = 20_i32
	public let MAP_HEIGHT			   = 21_i32
	public let MAP_CUBEMAP			  	= 22_i32
	public let MAP_IRRADIANCE		   	= 23_i32
	public let MAP_PREFILTER			= 24_i32
	public let MAP_BRDF				 	= 25_i32
	public let VERTEX_BONEIDS		  	= 26_i32
	public let VERTEX_BONEWEIGHTS	   	= 27_i32
	public let BONE_MATRICES			= 28_i32
	public let VERTEX_INSTANCE_TX		= 29_i32
}

public struct __ShaderUniformDataType_Enums {
	public let FLOAT			= 0_i32
	public let VEC2				= 1_i32
	public let VEC3				= 2_i32
	public let VEC4				= 3_i32
	public let INT				= 4_i32
	public let IVEC2			= 5_i32
	public let IVEC3			= 6_i32
	public let IVEC4			= 7_i32
	public let UINT				= 8_i32
	public let UIVEC2			= 9_i32
	public let UIVEC3			= 10_i32
	public let UIVEC4			= 11_i32
	public let SAMPLER2D		= 12_i32
}

public struct __ShaderAttributeDataType_Enums {
	public let FLOAT			= 0_i32
	public let VEC2				= 1_i32
	public let VEC3				= 2_i32
	public let VEC4				= 3_i32
}

public struct __PixelFormat_Enums {
	public let UNCOMPRESSED_GRAYSCALE 		= 0_i32
	public let UNCOMPRESSED_GRAY_ALPHA		= 1_i32
	public let UNCOMPRESSED_R5G6B5			= 2_i32
	public let UNCOMPRESSED_R8G8B8			= 3_i32
	public let UNCOMPRESSED_R5G5B5A1		= 4_i32
	public let UNCOMPRESSED_R4G4B4A4		= 5_i32
	public let UNCOMPRESSED_R8G8B8A8		= 6_i32
	public let UNCOMPRESSED_R32				= 7_i32
	public let UNCOMPRESSED_R32G32B32		= 8_i32
	public let UNCOMPRESSED_R32G32B32A32	= 9_i32
	public let UNCOMPRESSED_R16				= 10_i32
	public let UNCOMPRESSED_R16G16B16		= 11_i32
	public let UNCOMPRESSED_R16G16B16A16	= 12_i32
	public let COMPRESSED_DXT1_RGB			= 13_i32
	public let COMPRESSED_DXT1_RGBA			= 14_i32
	public let COMPRESSED_DXT3_RGBA			= 15_i32
	public let COMPRESSED_DXT5_RGBA			= 16_i32
	public let COMPRESSED_ETC1_RGB			= 17_i32
	public let COMPRESSED_ETC2_RGB			= 18_i32
	public let COMPRESSED_ETC2_EAC_RGBA		= 19_i32
	public let COMPRESSED_PVRT_RGB			= 20_i32
	public let COMPRESSED_PVRT_RGBA			= 21_i32
	public let COMPRESSED_ASTC_4x4_RGBA		= 22_i32
	public let COMPRESSED_ASTC_8x8_RGBA		= 23_i32
}

public struct __TextureFilter_Enums {
	public let POINT  			= 0_i32
	public let BILINEAR 		= 1_i32
	public let TRILINEAR 		= 2_i32
	public let ANISOTROPIC_4X 	= 3_i32
	public let ANISOTROPIC_8X 	= 4_i32
	public let ANISOTROPIC_16X 	= 5_i32
}

public struct __TextureWrap_Enums {
	public let REPEAT			= 0_i32
	public let CLAMP			= 1_i32
	public let MIRROR_REPEAT	= 2_i32
	public let MIRROR_CLAMP		= 3_i32
}

public struct __CubemapLayout_Enums {
	public let AUTO_DETECT 			= 0_i32
	public let LINE_VERTICAL		= 0_i32
	public let LINE_HORIZONTAL		= 0_i32
	public let CROSS_THREE_BY_FOUR	= 0_i32
	public let CROSS_FOUR_BY_THREE	= 0_i32
}

public struct __FontType_Enums {
	public let DEFAULT	= 0_i32
	public let BITMAP	= 1_i32
	public let SDF		= 2_i32
}

public struct __BlendMode_Enums {
	public let ALPHA				= 0_i32
	public let ADDITIVE				= 1_i32
	public let MULTIPLIED			= 2_i32
	public let ADD_COLORS			= 3_i32
	public let SUBTRACT_COLORS		= 4_i32
	public let ALPHA_PREMULTIPLY	= 5_i32
	public let CUSTOM				= 6_i32
	public let CUSTOM_SEPARATE		= 7_i32
}

public struct __Gesture_Enums {
	public let NONE        = 0_i32
	public let TAP         = 1_i32
	public let DOUBLETAP   = 2_i32
	public let HOLD        = 4_i32
	public let DRAG        = 8_i32
	public let SWIPE_RIGHT = 16_i32
	public let SWIPE_LEFT  = 32_i32
	public let SWIPE_UP    = 64_i32
	public let SWIPE_DOWN  = 128_i32
	public let PINCH_IN    = 256_i32
	public let PINCH_OUT   = 512_i32
}

public struct __CameraMode_Enums {
	public let CUSTOM		= 0_i32
	public let FREE			= 1_i32
	public let ORBITAL		= 2_i32
	public let FIRST_PERSON	= 3_i32
	public let THIRD_PERSON	= 4_i32
}

public struct __CameraProjection_Enums {
	public let PERSPECTIVE	= 0_i32
	public let ORTHOGRAPHIC	= 1_i32
}

public struct __NPatchLayout {
	public let NINE_PATCH 				= 0_i32
	public let THREE_PATCH_VERTICAL		= 1_i32
	public let THREE_PATCH_HORIZONTAL	= 2_i32
}