.class public abstract Lcom/kaf/device/IDeviceControl;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBatteryStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getExternalStorageVolumes()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMountedVolumeCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public vibrate([JI)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
