.class Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;
.super Ljava/lang/Object;
.source "BNVGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/BNVGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 217
    sput v3, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 219
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 220
    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 221
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 222
    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    .line 223
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 224
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 218
    sput-object v0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->s_configAttribs2:[I

    .line 202
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mValue:[I

    .line 205
    iput p1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mRedSize:I

    .line 206
    iput p2, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mGreenSize:I

    .line 207
    iput p3, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mBlueSize:I

    .line 208
    iput p4, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mAlphaSize:I

    .line 209
    iput p5, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mDepthSize:I

    .line 210
    iput p6, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mStencilSize:I

    .line 211
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 286
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 301
    const/16 v6, 0x21

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 336
    .local v1, "attributes":[I
    const/16 v6, 0x21

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 337
    const-string v7, "EGL_BUFFER_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    .line 338
    const-string v7, "EGL_ALPHA_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    .line 339
    const-string v7, "EGL_BLUE_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    .line 340
    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    .line 341
    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    .line 342
    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    .line 343
    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    .line 344
    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    .line 345
    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    .line 346
    const-string v7, "EGL_LEVEL"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    .line 347
    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    .line 348
    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    .line 349
    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    .line 350
    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    .line 351
    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    .line 352
    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    .line 353
    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    .line 354
    const-string v7, "EGL_SAMPLES"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    .line 355
    const-string v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    .line 356
    const-string v7, "EGL_SURFACE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    .line 357
    const-string v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    .line 358
    const-string v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    .line 359
    const-string v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    .line 360
    const-string v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x18

    .line 361
    const-string v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v4, v6

    const/16 v6, 0x19

    .line 362
    const-string v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v4, v6

    const/16 v6, 0x1a

    .line 363
    const-string v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1b

    .line 364
    const-string v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1c

    .line 365
    const-string v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1d

    .line 366
    const-string v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1e

    .line 367
    const-string v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x1f

    .line 368
    const-string v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x20

    .line 369
    const-string v7, "EGL_CONFORMANT"

    aput-object v7, v4, v6

    .line 371
    .local v4, "names":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 372
    .local v5, "value":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_0

    .line 382
    return-void

    .line 373
    :cond_0
    aget v0, v1, v2

    .line 374
    .local v0, "attribute":I
    aget-object v3, v4, v2

    .line 375
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, p2, p3, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 376
    const-string v6, "OpenGL"

    const-string v7, "  %s: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_1
    const-string v6, "OpenGL"

    const-string v7, "  %s: failed\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 301
    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 291
    array-length v1, p3

    .line 292
    .local v1, "numConfigs":I
    const-string v2, "OpenGL"

    const-string v3, "%d configurations"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 297
    return-void

    .line 294
    :cond_0
    const-string v2, "OpenGL"

    const-string v3, "Configuration %d:\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    aget-object v2, p3, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 231
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 232
    .local v5, "num_config":[I
    sget-object v2, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 234
    aget v4, v5, v4

    .line 236
    .local v4, "numConfigs":I
    if-gtz v4, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 242
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 249
    invoke-virtual {p0, p1, p2, v3}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 254
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_0

    .line 277
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 254
    :cond_0
    aget-object v4, p3, v13

    .line 256
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 255
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 258
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 257
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 261
    .local v12, "s":I
    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mDepthSize:I

    if-lt v9, v1, :cond_1

    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mStencilSize:I

    if-ge v12, v1, :cond_2

    .line 254
    :cond_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 266
    :cond_2
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 265
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 268
    .local v11, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 267
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 270
    .local v10, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 269
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 272
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 271
    invoke-direct/range {v1 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 274
    .local v7, "a":I
    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mRedSize:I

    if-ne v11, v1, :cond_1

    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mGreenSize:I

    if-ne v10, v1, :cond_1

    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mBlueSize:I

    if-ne v8, v1, :cond_1

    iget v1, p0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_1

    goto :goto_1
.end method
