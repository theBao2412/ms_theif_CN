.class Lcom/Nexon/MapleThief/BNVGLView$Renderer;
.super Ljava/lang/Object;
.source "BNVGLView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/BNVGLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/BNVGLView;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/BNVGLView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVGLView$Renderer;->this$0:Lcom/Nexon/MapleThief/BNVGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    .local v2, "EndTime":J
    # getter for: Lcom/Nexon/MapleThief/BNVGLView;->StartTime:J
    invoke-static {}, Lcom/Nexon/MapleThief/BNVGLView;->access$0()J

    move-result-wide v5

    sub-long v0, v2, v5

    .line 125
    .local v0, "Delta":J
    sget v5, Lcom/Nexon/MapleThief/NativeClass;->FPS:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 129
    :try_start_0
    sget v5, Lcom/Nexon/MapleThief/NativeClass;->FPS:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/Nexon/MapleThief/BNVGLView;->access$1(J)V

    .line 137
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeFrame()V

    .line 138
    return-void

    .line 131
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 141
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLView Renderer Changed w : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p2, p3}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeSize(II)V

    .line 144
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "arg1"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 147
    const-string v0, "Debug_Android"

    const-string v1, "GLView Renderer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeInitialize()V

    .line 150
    return-void
.end method
