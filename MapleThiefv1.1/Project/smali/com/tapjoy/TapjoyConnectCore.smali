.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$ConnectThread;,
        Lcom/tapjoy/TapjoyConnectCore$PPAThread;,
        Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;
    }
.end annotation


# static fields
.field public static final TAPJOY_CONNECT:Ljava/lang/String; = "TapjoyConnect"

.field private static androidID:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static carrierCountryCode:Ljava/lang/String;

.field private static carrierName:Ljava/lang/String;

.field private static clientPackage:Ljava/lang/String;

.field private static connectFlags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static connectionType:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static currencyMultiplier:F

.field private static deviceCountryCode:Ljava/lang/String;

.field private static deviceID:Ljava/lang/String;

.field private static deviceLanguage:Ljava/lang/String;

.field private static deviceManufacturer:Ljava/lang/String;

.field private static deviceModel:Ljava/lang/String;

.field private static deviceOSVersion:Ljava/lang/String;

.field private static deviceScreenDensity:Ljava/lang/String;

.field private static deviceScreenLayoutSize:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static libraryVersion:Ljava/lang/String;

.field private static macAddress:Ljava/lang/String;

.field private static matchingPackageNames:Ljava/lang/String;

.field private static mobileCountryCode:Ljava/lang/String;

.field private static mobileNetworkCode:Ljava/lang/String;

.field private static paidAppActionID:Ljava/lang/String;

.field private static platformName:Ljava/lang/String;

.field private static plugin:Ljava/lang/String;

.field private static referralURL:Ljava/lang/String;

.field private static sdkType:Ljava/lang/String;

.field private static secretKey:Ljava/lang/String;

.field private static serialID:Ljava/lang/String;

.field private static sha1MacAddress:Ljava/lang/String;

.field private static sha2DeviceID:Ljava/lang/String;

.field private static storeName:Ljava/lang/String;

.field private static tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

.field private static userID:Ljava/lang/String;

.field private static videoEnabled:Z

.field private static videoIDs:Ljava/lang/String;


# instance fields
.field private elapsed_time:J

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 44
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 45
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 63
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 69
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 73
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    .line 79
    const-string v0, "native"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 90
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 94
    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 142
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 145
    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->init()V

    .line 147
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TapjoyConnectCore;)J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyConnectCore;J)V
    .locals 0

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Lcom/tapjoy/TapjoyURLConnection;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 723
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->handlePayPerActionResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "amount"    # I
    .param p3, "guid"    # Ljava/lang/String;

    .prologue
    .line 1029
    const-string v1, ""

    .line 1035
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1042
    :goto_0
    return-object v1

    .line 1037
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAwardPointsVerifier ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 929
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectionType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 939
    const-string v2, ""

    .line 945
    .local v2, "type":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 948
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 950
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 957
    const-string v2, "mobile"

    .line 961
    :goto_0
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connectivity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connection_type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_1
    return-object v2

    .line 954
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :sswitch_0
    const-string v2, "wifi"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    goto :goto_0

    .line 965
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 967
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getConnectionType error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 950
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 990
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getEventVerifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "eventData"    # Ljava/lang/String;

    .prologue
    .line 1055
    const-string v1, ""

    .line 1061
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1068
    :goto_0
    return-object v1

    .line 1063
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEventVerifier ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 1437
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1439
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1442
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getGenericURLParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    const-string v0, ""

    .line 197
    .local v0, "urlParams":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getLocalTapPointsTotal()I
    .locals 5

    .prologue
    .line 1251
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1253
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "last_tap_points"

    const/16 v3, -0x270f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1254
    .local v1, "total":I
    return v1
.end method

.method public static getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J
    .param p2, "packageNames"    # Ljava/lang/String;

    .prologue
    .line 1081
    const-string v1, ""

    .line 1087
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1094
    :goto_0
    return-object v1

    .line 1089
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVerifier ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getParamsWithoutAppID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    const-string v0, ""

    .line 219
    .local v0, "urlParams":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "android_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v1, "sha_2_udid"

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sha2_udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sha1_mac_address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "serial_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "device_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "device_manufacturer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "device_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "os_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "language_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "app_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "library_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "platform="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "display_multiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "carrier_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_2
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "carrier_country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_3
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mobile_country_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_4
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "mobile_network_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_5
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_layout_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_6
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "connection_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->connectionType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_7
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "plugin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_8
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sdk_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_9
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "store_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_a
    return-object v0

    .line 228
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "udid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getURLParams()Ljava/lang/String;
    .locals 8

    .prologue
    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "urlParams":Ljava/lang/String;
    const-string v3, ""

    .line 175
    .local v3, "verifier":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 176
    .local v0, "time":J
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "timestamp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "verifier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    return-object v2
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public static getVerifier(J)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # J

    .prologue
    .line 1003
    const-string v1, ""

    .line 1009
    .local v1, "verifier":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1016
    :goto_0
    return-object v1

    .line 1011
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TapjoyConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVerifier ERROR: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoParams()Ljava/lang/String;
    .locals 4

    .prologue
    .line 901
    const-string v0, ""

    .line 904
    .local v0, "params":Ljava/lang/String;
    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    if-eqz v1, :cond_1

    .line 908
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video_offer_ids="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 917
    :cond_0
    :goto_0
    const-string v1, "TapjoyConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return-object v0

    .line 914
    :cond_1
    const-string v0, "hide_videos=true"

    goto :goto_0
.end method

.method private static handleConnectResponse(Ljava/lang/String;)Z
    .locals 13
    .param p0, "response"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 726
    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 728
    .local v5, "document":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_2

    .line 730
    const-string v8, "PackageNames"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, "nodeValue":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 735
    move-object v4, v7

    .line 736
    .local v4, "data":Ljava/lang/String;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 738
    .local v0, "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 739
    .local v3, "current":I
    const/4 v6, -0x1

    .line 743
    .local v6, "index":I
    :goto_0
    const/16 v8, 0x2c

    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 746
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 749
    const-string v8, "TapjoyConnect"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parse: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 763
    const-string v8, ""

    sput-object v8, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 765
    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 766
    .local v2, "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 790
    .end local v0    # "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "current":I
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_1
    const-string v8, "Success"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v7

    .line 793
    if-eqz v7, :cond_2

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 804
    .end local v7    # "nodeValue":Ljava/lang/String;
    :cond_2
    return v12

    .line 757
    .restart local v0    # "allPackageNames":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v3    # "current":I
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v6    # "index":I
    .restart local v7    # "nodeValue":Ljava/lang/String;
    :cond_3
    const-string v8, "TapjoyConnect"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parse: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v3, v6, 0x1

    .line 741
    goto/16 :goto_0

    .line 766
    .restart local v2    # "applications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 769
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_0

    .line 776
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 778
    const-string v9, "TapjoyConnect"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MATCH: installed packageName: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 782
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    .line 784
    :cond_5
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/tapjoy/TapjoyConnectCore;->matchingPackageNames:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private handlePayPerActionResponse(Ljava/lang/String;)Z
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 818
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 820
    const-string v2, "Success"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "nodeValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 825
    const-string v2, "TapjoyConnect"

    const-string v3, "Successfully sent completed Pay-Per-Action to Tapjoy server."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v2, 0x1

    .line 834
    .end local v1    # "nodeValue":Ljava/lang/String;
    :goto_0
    return v2

    .line 830
    .restart local v1    # "nodeValue":Ljava/lang/String;
    :cond_0
    const-string v2, "TapjoyConnect"

    const-string v3, "Completed Pay-Per-Action call failed."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .end local v1    # "nodeValue":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 35

    .prologue
    .line 333
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 338
    .local v18, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-nez v29, :cond_0

    .line 339
    new-instance v29, Ljava/util/Hashtable;

    invoke-direct/range {v29 .. v29}, Ljava/util/Hashtable;-><init>()V

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 341
    :cond_0
    if-eqz v18, :cond_1

    .line 343
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x80

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 346
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_10

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v29, v0

    if-eqz v29, :cond_10

    .line 348
    sget-object v30, Lcom/tapjoy/TapjoyConnectFlag;->FLAG_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v31

    if-lt v0, v1, :cond_e

    .line 364
    const-string v29, "TapjoyConnect"

    const-string v30, "Metadata successfully loaded"

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    :try_start_1
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "android_id"

    invoke-static/range {v29 .. v30}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    .line 383
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 384
    .local v20, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v29, v0

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->appVersion:Ljava/lang/String;

    .line 387
    const-string v29, "android"

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    .line 388
    const-string v29, "android"

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->platformName:Ljava/lang/String;

    .line 391
    sget-object v29, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    .line 392
    sget-object v29, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    .line 395
    sget-object v29, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    .line 398
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    .line 399
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    .line 402
    const-string v29, "8.3.0"

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    .line 404
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v30, "tjcPrefrences"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v22

    .line 408
    .local v22, "settings":Landroid/content/SharedPreferences;
    :try_start_2
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v30, "phone"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    .line 410
    .local v24, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v24, :cond_3

    .line 412
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 414
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    .line 415
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    .line 420
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 422
    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x3

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    .line 423
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x3

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    .line 427
    :cond_3
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceID: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v14, 0x0

    .line 434
    .local v14, "invalidDeviceID":Z
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v29, :cond_11

    .line 436
    const-string v29, "TapjoyConnect"

    const-string v30, "Device id is null."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v14, 0x1

    .line 457
    :goto_2
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "ANDROID SDK VERSION: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v29, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x9

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_5

    .line 464
    const-string v29, "TapjoyConnect"

    const-string v30, "TRYING TO GET SERIAL OF 2.3+ DEVICE..."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v12, Lcom/tapjoy/TapjoyHardwareUtil;

    invoke-direct {v12}, Lcom/tapjoy/TapjoyHardwareUtil;-><init>()V

    .line 469
    .local v12, "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    invoke-virtual {v12}, Lcom/tapjoy/TapjoyHardwareUtil;->getSerial()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    .line 472
    if-eqz v14, :cond_4

    .line 474
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 477
    :cond_4
    const-string v29, "TapjoyConnect"

    const-string v30, "===================="

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "SERIAL: deviceID: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v29, "TapjoyConnect"

    const-string v30, "===================="

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    if-nez v29, :cond_14

    .line 486
    const-string v29, "TapjoyConnect"

    const-string v30, "SERIAL: Device id is null."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v14, 0x1

    .line 511
    .end local v12    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    :cond_5
    :goto_3
    if-eqz v14, :cond_6

    .line 513
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 514
    .local v4, "buff":Ljava/lang/StringBuffer;
    const-string v29, "EMULATOR"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v29, "emulatorDeviceId"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, "deviceId":Ljava/lang/String;
    if-eqz v7, :cond_17

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_17

    .line 520
    sput-object v7, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 550
    .end local v4    # "buff":Ljava/lang/StringBuffer;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v14    # "invalidDeviceID":Z
    .end local v24    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    :goto_4
    :try_start_3
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_7

    .line 551
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 554
    :cond_7
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 562
    :try_start_4
    sget-object v29, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_8

    .line 564
    new-instance v8, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 566
    .local v8, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenDensity()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    .line 567
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 578
    .end local v8    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_8
    :goto_5
    :try_start_5
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v30, "wifi"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/wifi/WifiManager;

    .line 580
    .local v28, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v28, :cond_9

    .line 582
    invoke-virtual/range {v28 .. v28}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v27

    .line 584
    .local v27, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v27, :cond_9

    .line 586
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 588
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    if-eqz v29, :cond_9

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_9

    .line 590
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    .line 591
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 602
    .end local v27    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v28    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_9
    :goto_6
    :try_start_6
    const-string v29, "store_name"

    invoke-static/range {v29 .. v29}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_a

    const-string v29, "store_name"

    invoke-static/range {v29 .. v29}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_a

    .line 604
    const-string v29, "store_name"

    invoke-static/range {v29 .. v29}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    .line 607
    new-instance v23, Ljava/util/ArrayList;

    sget-object v29, Lcom/tapjoy/TapjoyConnectFlag;->STORE_ARRAY:[Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    .local v23, "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 612
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Warning -- undefined STORE_NAME: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v23    # "supportedStores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    const-string v29, "InstallReferral"

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 618
    .local v25, "tempReferralURL":Ljava/lang/String;
    if-eqz v25, :cond_b

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 619
    sput-object v25, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    .line 622
    :cond_b
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    .line 624
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "APP_ID = ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "ANDROID_ID: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->androidID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "CLIENT_PACKAGE = ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->clientPackage:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceID: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "sha2DeviceID: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->sha2DeviceID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "serial_id: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->serialID:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "mac_address: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->macAddress:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "sha1_mac_address: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->sha1MacAddress:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceName: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceModel:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceManufacturer: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceManufacturer:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceType: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceType:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "libraryVersion: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->libraryVersion:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "deviceOSVersion: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "COUNTRY_CODE: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "LANGUAGE_CODE: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceLanguage:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "density: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "screen_layout: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "carrier_name: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->carrierName:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "carrier_country_code: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->carrierCountryCode:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "mobile_country_code: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "mobile_network_code: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "store_name: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->storeName:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "referralURL: ["

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v31, Lcom/tapjoy/TapjoyConnectCore;->referralURL:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    if-eqz v29, :cond_d

    .line 656
    const-string v29, "TapjoyConnect"

    const-string v30, "Connect Flags:"

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v29, "TapjoyConnect"

    const-string v30, "--------------------"

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    invoke-virtual/range {v29 .. v29}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 660
    .local v11, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 662
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_c
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v29

    if-nez v29, :cond_19

    .line 680
    .end local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    .end local v25    # "tempReferralURL":Ljava/lang/String;
    :cond_d
    :goto_8
    return-void

    .line 348
    .restart local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_e
    :try_start_7
    aget-object v17, v30, v29

    .line 350
    .local v17, "key":Ljava/lang/String;
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "tapjoy."

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 352
    .local v19, "obj":Ljava/lang/Object;
    if-eqz v19, :cond_f

    .line 354
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    .line 356
    .local v26, "value":Ljava/lang/String;
    if-eqz v26, :cond_f

    .line 358
    const-string v32, "TapjoyConnect"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "Found manifest flag: "

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v32, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .end local v26    # "value":Ljava/lang/String;
    :cond_f
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 368
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "obj":Ljava/lang/Object;
    :cond_10
    const-string v29, "TapjoyConnect"

    const-string v30, "No metadata present."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 372
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    .line 374
    .local v9, "e":Ljava/lang/Exception;
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Error reading manifest meta-data: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 443
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v14    # "invalidDeviceID":Z
    .restart local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "settings":Landroid/content/SharedPreferences;
    .restart local v24    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_11
    :try_start_8
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_12

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v30, "000000000000000"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_12

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 445
    :cond_12
    const-string v29, "TapjoyConnect"

    const-string v30, "Device id is empty or an emulator."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 454
    :cond_13
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 543
    .end local v14    # "invalidDeviceID":Z
    .end local v24    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v9

    .line 545
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Error getting deviceID. e: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/16 v29, 0x0

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 676
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v22    # "settings":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v9

    .line 678
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Error initializing Tapjoy parameters.  e="

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 493
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    .restart local v14    # "invalidDeviceID":Z
    .restart local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v22    # "settings":Landroid/content/SharedPreferences;
    .restart local v24    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_14
    :try_start_a
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-eqz v29, :cond_15

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v30, "000000000000000"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_15

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v30, "0"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_15

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    const-string v30, "unknown"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 495
    :cond_15
    const-string v29, "TapjoyConnect"

    const-string v30, "SERIAL: Device id is empty or an emulator."

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 504
    :cond_16
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 505
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 525
    .end local v12    # "hardware":Lcom/tapjoy/TapjoyHardwareUtil;
    .restart local v4    # "buff":Ljava/lang/StringBuffer;
    .restart local v7    # "deviceId":Ljava/lang/String;
    :cond_17
    const-string v6, "1234567890abcdefghijklmnopqrstuvw"

    .line 527
    .local v6, "constantChars":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v13, v0, :cond_18

    .line 534
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 537
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 538
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v29, "emulatorDeviceId"

    sget-object v30, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_4

    .line 529
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_18
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v29

    const-wide/high16 v31, 0x4059000000000000L    # 100.0

    mul-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v21, v0

    .line 530
    .local v21, "randomChar":I
    rem-int/lit8 v5, v21, 0x1e

    .line 531
    .local v5, "ch":I
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 527
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 570
    .end local v4    # "buff":Ljava/lang/StringBuffer;
    .end local v5    # "ch":I
    .end local v6    # "constantChars":Ljava/lang/String;
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "invalidDeviceID":Z
    .end local v21    # "randomChar":I
    .end local v24    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_3
    move-exception v9

    .line 572
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_b
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Error getting screen density/dimensions/layout: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 596
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 598
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v29, "TapjoyConnect"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Error getting device mac address: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 664
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v25    # "tempReferralURL":Ljava/lang/String;
    :cond_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 665
    .local v15, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v30, "TapjoyConnect"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v29, "key: "

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v31, ", value: "

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    const-string v30, "sha_2_udid"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    const-string v30, "connect"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_c

    .line 670
    const-string v29, "TapjoyConnect"

    const-string v30, "WARNING -- only the Connect/Advertiser SDK can support sha_2_udid"

    invoke-static/range {v29 .. v30}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v29, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    const-string v30, "sha_2_udid"

    invoke-virtual/range {v29 .. v30}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_7
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 117
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "app_ID"    # Ljava/lang/String;
    .param p2, "secret_Key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, "flags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->appID:Ljava/lang/String;

    .line 130
    sput-object p2, Lcom/tapjoy/TapjoyConnectCore;->secretKey:Ljava/lang/String;

    .line 131
    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->connectFlags:Ljava/util/Hashtable;

    .line 132
    new-instance v0, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 133
    return-void
.end method

.method public static saveTapPointsTotal(I)V
    .locals 5
    .param p0, "total"    # I

    .prologue
    .line 1235
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1238
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1239
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_tap_points"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    return-void
.end method

.method public static setDebugDeviceID(Ljava/lang/String;)V
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1218
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    .line 1220
    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1223
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "emulatorDeviceId"

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->deviceID:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1226
    return-void
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1104
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->plugin:Ljava/lang/String;

    .line 1105
    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1114
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->sdkType:Ljava/lang/String;

    .line 1115
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 1126
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->userID:Ljava/lang/String;

    .line 1128
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$1;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyConnectCore$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1159
    return-void
.end method

.method public static setVideoEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 1178
    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->videoEnabled:Z

    .line 1179
    return-void
.end method

.method public static setVideoIDs(Ljava/lang/String;)V
    .locals 0
    .param p0, "ids"    # Ljava/lang/String;

    .prologue
    .line 1168
    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->videoIDs:Ljava/lang/String;

    .line 1169
    return-void
.end method


# virtual methods
.method public actionComplete(Ljava/lang/String;)V
    .locals 7
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 1269
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "actionComplete: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "actionURLParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getParamsWithoutAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    const-string v3, "sha_2_udid"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "sha_2_udid"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1279
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&publisher_user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 1287
    .local v1, "time":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "verifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->getVerifier(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    const-string v3, "TapjoyConnect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PPA URL parameters: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tapjoy/TapjoyConnectCore$PPAThread;

    invoke-direct {v4, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$PPAThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1293
    return-void
.end method

.method public callConnect()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public enablePaidAppWithActionID(Ljava/lang/String;)V
    .locals 7
    .param p1, "paidAppPayPerActionID"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    .line 1307
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "enablePaidAppWithActionID: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    .line 1311
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->context:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1314
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "tapjoy_elapsed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v6, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    .line 1316
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "paidApp elapsed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-wide v0, p0, Lcom/tapjoy/TapjoyConnectCore;->elapsed_time:J

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    .line 1322
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1324
    const-string v0, "TapjoyConnect"

    const-string v1, "Calling PPA actionComplete..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->paidAppActionID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    .line 1334
    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;-><init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TapjoyConnectCore$PaidAppTimerTask;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public getCurrencyMultiplier()F
    .locals 1

    .prologue
    .line 1426
    sget v0, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 843
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyConnectCore:Lcom/tapjoy/TapjoyConnectCore;

    .line 844
    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 846
    const-string v0, "TapjoyConnect"

    const-string v1, "Releasing core static instance."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method public setCurrencyMultiplier(F)V
    .locals 3
    .param p1, "multiplier"    # F

    .prologue
    .line 1415
    const-string v0, "TapjoyConnect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVirtualCurrencyMultiplier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    sput p1, Lcom/tapjoy/TapjoyConnectCore;->currencyMultiplier:F

    .line 1417
    return-void
.end method
