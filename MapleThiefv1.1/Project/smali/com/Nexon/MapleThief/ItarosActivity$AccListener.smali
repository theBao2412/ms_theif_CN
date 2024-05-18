.class Lcom/Nexon/MapleThief/ItarosActivity$AccListener;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/ItarosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$AccListener;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 1838
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$AccListener;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    iget-object v0, v0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeSensorEventAccelerometer(FFF)V

    .line 1846
    :cond_0
    return-void
.end method
