.class public abstract Lcom/kaf/sys/IProperty;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellID()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFwVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsAccountInfoForHDS()Lcom/kaf/sys/AccountInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsTestServer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHdsTestServerForHDS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getICCID([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getIMSI([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getKafVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLAC()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMDN([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSISDN([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPUID([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinStatus(I[B[I)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwBuildtimeInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimAuth([B[B[B[I)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getUsimModelName([B[II)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getWibroAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1

    new-instance v0, Lcom/kaf/sys/AccountInfo;

    invoke-direct {v0}, Lcom/kaf/sys/AccountInfo;-><init>()V

    return-object v0
.end method

.method public getWibroMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHdsTestServer(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setShowAccountInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setWibroAccountInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ucaClose(B)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public ucaOpen([B[I)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public ucaTransmit([BI[B[I)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public updateWibroMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateWifiMacAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyPin(ILjava/lang/String;[B[I)J
    .locals 2

    const-wide/16 v0, 0xa

    return-wide v0
.end method
