.class Lcom/Nexon/MapleThief/BNVGLView;
.super Landroid/opengl/GLSurfaceView;
.source "BNVGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;,
        Lcom/Nexon/MapleThief/BNVGLView$ContextFactory;,
        Lcom/Nexon/MapleThief/BNVGLView$Renderer;
    }
.end annotation


# static fields
.field private static StartTime:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "OpenGL"

.field private static final USING_MY_THREAD:Z


# instance fields
.field private m_GLThread:Ljava/lang/Thread;

.field private m_isThreadEnd:Z

.field private m_isThreadPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 43
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0, v1}, Lcom/Nexon/MapleThief/BNVGLView;->init(ZII)V

    .line 45
    new-instance v0, Lcom/Nexon/MapleThief/BNVGLView$Renderer;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/BNVGLView$Renderer;-><init>(Lcom/Nexon/MapleThief/BNVGLView;)V

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/BNVGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 75
    return-void
.end method

.method static synthetic access$0()J
    .locals 2

    .prologue
    .line 37
    sget-wide v0, Lcom/Nexon/MapleThief/BNVGLView;->StartTime:J

    return-wide v0
.end method

.method static synthetic access$1(J)V
    .locals 0

    .prologue
    .line 37
    sput-wide p0, Lcom/Nexon/MapleThief/BNVGLView;->StartTime:J

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/Nexon/MapleThief/BNVGLView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 197
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 200
    return-void

    .line 198
    :cond_0
    const-string v1, "OpenGL"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init(ZII)V
    .locals 7
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/BNVGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 163
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/Nexon/MapleThief/BNVGLView;->StartTime:J

    .line 167
    new-instance v0, Lcom/Nexon/MapleThief/BNVGLView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/Nexon/MapleThief/BNVGLView$ContextFactory;-><init>(Lcom/Nexon/MapleThief/BNVGLView$ContextFactory;)V

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/BNVGLView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 174
    if-eqz p1, :cond_1

    .line 175
    new-instance v0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;-><init>(IIIIII)V

    .line 174
    :goto_0
    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/BNVGLView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 177
    return-void

    .line 176
    :cond_1
    new-instance v0, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/Nexon/MapleThief/BNVGLView$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/BNVGLView;->setRenderMode(I)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/BNVGLView;->setRenderMode(I)V

    .line 99
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 115
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLView Changed w : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 118
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 103
    const-string v0, "Debug_Android"

    const-string v1, "GLView Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 105
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 109
    const-string v0, "Debug_Android"

    const-string v1, "GLView Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 111
    return-void
.end method
