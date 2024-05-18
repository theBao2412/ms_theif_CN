.class public Lcom/skt/arm/ArmManager;
.super Ljava/lang/Object;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skt/arm/ArmManager$ArmConnection;
    }
.end annotation


# static fields
.field private static final ARM_SERVICE_PACKAGE:Ljava/lang/String; = "com.skt.skaf.OA00018282"

.field private static final TAG:Ljava/lang/String;

.field private static final TSTORE_PACKAGE:Ljava/lang/String; = "com.skt.skaf.A000Z00040"

.field private static mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

.field protected static mArmListener:Lcom/skt/arm/ArmListener;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/skt/arm/aidl/IArmService;


# instance fields
.field private final COMPONENT_ENABLED_STATE_DISABLED_USER:I

.field private final ERR_CODE_FAIL_BY_TOOLS:I

.field private final ERR_CODE_NEED_CHANGE_SETTINGS:I

.field private final ERR_CODE_NEED_DECLARE_USES_PERMSSION:I

.field private final ERR_CODE_NEED_TSTORE:I

.field private final ERR_CODE_NEED_UPDATE_ARM:I

.field private final ERR_CODE_NETWORK_DISCONNECT:I

.field private final ERR_CODE_NOT_FOUND_BY_TOOLS:I

.field private final ERR_CODE_UNKNOWN:I

.field private LIB_FILE_PATH:Ljava/lang/String;

.field private LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

.field asc:Lcom/skt/arm/ArmSeedCheck;

.field private mBoundService:Landroid/os/IBinder;

.field public nNetState:I

.field public nResAID:Ljava/lang/String;

.field public nResCode:I

.field public sAID:Ljava/lang/String;

.field public sMaskAID:Ljava/lang/String;

.field public sResMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    sput-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/skt/arm/ArmManager;->COMPONENT_ENABLED_STATE_DISABLED_USER:I

    .line 31
    const/16 v0, 0x14

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_UNKNOWN:I

    .line 32
    const/16 v0, 0x1e

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NETWORK_DISCONNECT:I

    .line 33
    const/16 v0, 0x28

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_TSTORE:I

    .line 34
    const/16 v0, 0x29

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_UPDATE_ARM:I

    .line 35
    const/16 v0, 0x2a

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_CHANGE_SETTINGS:I

    .line 36
    const/16 v0, 0x2b

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_DECLARE_USES_PERMSSION:I

    .line 38
    const/16 v0, 0x2712

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NOT_FOUND_BY_TOOLS:I

    .line 39
    const/16 v0, 0x2711

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_FAIL_BY_TOOLS:I

    .line 70
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ArmManager Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sput-object p1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libARMPlugin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libarmplugin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/skt/arm/ArmSeedCheck;

    invoke-direct {v0, p1}, Lcom/skt/arm/ArmSeedCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->asc:Lcom/skt/arm/ArmSeedCheck;

    .line 76
    return-void
.end method

.method private native ARMPluginGetMaskString()Ljava/lang/String;
.end method

.method private native ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native ARMPluginProcessResponse(I)I
.end method

.method private ARMServiceExecute(Ljava/lang/String;)I
    .locals 5
    .param p1, "MaskAID"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v1, -0x1

    .line 266
    .local v1, "nRet":I
    :try_start_0
    sget-object v2, Lcom/skt/arm/ArmManager;->mService:Lcom/skt/arm/aidl/IArmService;

    invoke-interface {v2, p1}, Lcom/skt/arm/aidl/IArmService;->executeArm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    sget-object v2, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "execute nRet = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ARMServiceLastVersionInstall(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x1e

    .line 400
    const-string v6, "Arm plug-in"

    const-string v7, "ARM \ub2e4\uc6b4\ub85c\ub4dc \uc2dc\uc791"

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v3, ""

    .line 404
    .local v3, "productID":Ljava/lang/String;
    :try_start_0
    const-string v6, "DP12002"

    invoke-static {v6}, Lcom/skt/arm/ArmSeedCheck;->getProductID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 406
    :cond_0
    const-string v6, "DP12010"

    invoke-static {v6}, Lcom/skt/arm/ArmSeedCheck;->getProductID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    if-eqz v3, :cond_1

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    :cond_1
    :goto_0
    return v5

    .line 412
    :cond_2
    const-string v6, "Arm plug-in"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "productID == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    const-string v5, "com.skt.skaf.A000Z00040"

    invoke-static {p1, v5}, Lcom/skt/arm/ArmUtil;->isInstalledCombinedTstore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 423
    const-string v5, "Arm plug-in"

    const-string v6, "isInstalledCombinedTstore(context) == true"

    invoke-static {v5, v6}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.skt.skaf.A000Z00040.COREAPP.UPGRADE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 429
    const-string v5, "PACKAGE"

    const-string v6, "com.skt.skaf.OA00018282"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v5, "PID"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    :goto_1
    const/16 v5, 0x29

    goto :goto_0

    .line 413
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    const-string v7, "getProductID() Exception."

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v5, "Arm plug-in"

    const-string v6, "isInstalledCombinedTstore(context) == false"

    invoke-static {v5, v6}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DL_UPGRADE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "strMsg":Ljava/lang/String;
    const-string v5, "Arm plug-in"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "false and productID == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.skt.skaf.Z0000OMPDL"

    const-string v6, "com.skt.skaf.Z0000OMPDL.Z0000OMPDL"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v0, "compName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v5, "com.skt.skaf.COL.URI"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 443
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 448
    .end local v0    # "compName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "strMsg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    const/16 v5, 0x14

    goto/16 :goto_0
.end method

.method private GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 239
    const-string v0, ""

    .line 240
    .local v0, "strRet":Ljava/lang/String;
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " GetMakeChallenge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v1, -0x1

    iput v1, p0, Lcom/skt/arm/ArmManager;->nResCode:I

    .line 243
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/skt/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Load JNI LIBRARY[LIB_FILE_PATH]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/skt/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Load JNI LIBRARY[LIB_FILE_PATH_MARMALADE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private GetProcessResponse(I)I
    .locals 1
    .param p1, "MaskResult"    # I

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginProcessResponse(I)I

    move-result v0

    return v0
.end method

.method private ReturnService()V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmListener:Lcom/skt/arm/ArmListener;

    invoke-interface {v0}, Lcom/skt/arm/ArmListener;->onArmResult()V

    .line 224
    invoke-virtual {p0}, Lcom/skt/arm/ArmManager;->DisconnectService()V

    .line 225
    return-void
.end method

.method static synthetic access$0(Lcom/skt/arm/ArmManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/skt/arm/ArmManager;Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMServiceLastVersionInstall(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/skt/arm/ArmManager;IZZ)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0, p1, p2, p3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/skt/arm/ArmManager;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/skt/arm/aidl/IArmService;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/skt/arm/ArmManager;->mService:Lcom/skt/arm/aidl/IArmService;

    return-void
.end method

.method static synthetic access$4(Lcom/skt/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/skt/arm/ArmManager;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/skt/arm/ArmManager;I)I
    .locals 1

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->GetProcessResponse(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8()Lcom/skt/arm/ArmManager$ArmConnection;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    return-object v0
.end method

.method static synthetic access$9(Lcom/skt/arm/ArmManager;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/skt/arm/ArmManager;->ReturnService()V

    return-void
.end method

.method private existFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private procErrorMsg(IZZ)V
    .locals 7
    .param p1, "nErrCode"    # I
    .param p2, "isViewToast"    # Z
    .param p3, "isReturnAndDestroyThis"    # Z

    .prologue
    .line 470
    sget-object v2, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/skt/arm/ArmUtil;->getLanguageSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 472
    .local v6, "isKOLanguage":Z
    sparse-switch p1, :sswitch_data_0

    .line 533
    if-eqz v6, :cond_7

    .line 534
    const-string v2, "T store\uac00 \uc81c\ub300\ub85c \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. T store\ub97c \uc0ad\uc81c \ud6c4 \uc7ac\uc124\uce58 \ud558\uc2e0 \ub2e4\uc74c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    .line 550
    :goto_0
    sget-object v2, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sResMsg["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz p3, :cond_0

    .line 554
    new-instance v1, Lcom/skt/arm/ArmManager$2;

    invoke-direct {v1, p0}, Lcom/skt/arm/ArmManager$2;-><init>(Lcom/skt/arm/ArmManager;)V

    .line 559
    .local v1, "myTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 560
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 562
    invoke-direct {p0}, Lcom/skt/arm/ArmManager;->ReturnService()V

    .line 565
    .end local v0    # "timer":Ljava/util/Timer;
    .end local v1    # "myTask":Ljava/util/TimerTask;
    :cond_0
    return-void

    .line 474
    :sswitch_0
    if-eqz v6, :cond_1

    .line 475
    const-string v2, "T store\uac00 \uc81c\ub300\ub85c \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. T store\ub97c \uc0ad\uc81c \ud6c4 \uc7ac\uc124\uce58 \ud558\uc2e0 \ub2e4\uc74c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 479
    :cond_1
    const-string v2, "The \'T store\' application is not installed properly. After deleting and reinstalling it, run this application again.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 485
    :sswitch_1
    if-eqz v6, :cond_2

    .line 486
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c\uc5d0 \uc5f0\uacb0\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc811\uc18d \uc0c1\ud0dc\ub97c \ud655\uc778 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624.(30)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 488
    :cond_2
    const-string v2, "Your phone is disconnected to the network. Check the status of network connection and try again after connected to the network.(30)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 493
    :sswitch_2
    if-eqz v6, :cond_3

    .line 494
    const-string v2, "T store\uac00 \uc124\uce58\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. T store \uc124\uce58 \ud6c4 \ub2e4\uc2dc \uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(40)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 497
    :cond_3
    const-string v2, "The \'T store\' application is not installed. After installing it, run this application again.(40)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 503
    :sswitch_3
    if-eqz v6, :cond_4

    .line 504
    const-string v2, "T store ARM \uc5c5\ub370\uc774\ud2b8\uac00 \ud544\uc694\ud569\ub2c8\ub2e4. \uc124\uce58 \uc644\ub8cc \ud6c4 \ub2e4\uc2dc \uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4..(41)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 507
    :cond_4
    const-string v2, "Your \'T store ARM\' application needs to be updated to upper version to run this applicatioin. Please update it and then run this application again.(41)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 514
    :sswitch_4
    if-eqz v6, :cond_5

    .line 515
    const-string v2, "T store ARM\uc774 \'\uc0ac\uc6a9\uc548\ud568\' \uc124\uc815\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4. \ud574\ub2f9 \uae30\ub2a5\uc744 \'\uc0ac\uc6a9\' \uc124\uc815\uc73c\ub85c \ubcc0\uacbd \ud6c4 \ub2e4\uc2dc \uc2e4\ud589\ud574 \uc8fc\uc2ed\uc2dc\uc624.(42)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 518
    :cond_5
    const-string v2, "Your \'T store ARM\' set \'Disable\'. Check application detail infomation and set \'Enable\' please.(42)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 523
    :sswitch_5
    if-eqz v6, :cond_6

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud574\ub2f9 \ud37c\ubbf8\uc158\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc73c\ubbc0\ub85c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc885\ub8cc\ud569\ub2c8\ub2e4 \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/skt/arm/ArmUtil;->getNotPermissionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 528
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Your Application Needs Permissions \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/skt/arm/ArmUtil;->getNotPermissionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 537
    :cond_7
    const-string v2, "The \'T store\' application is not installed properly. After deleting and reinstalling it, run this application again.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public ARM_Plugin_ExecuteARM(Ljava/lang/String;)V
    .locals 9
    .param p1, "AppID"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/16 v8, 0x14

    const/4 v7, 0x1

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "bRet":Z
    iput v8, p0, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 92
    :try_start_0
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/skt/arm/ArmUtil;->getServiceState(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 95
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/skt/arm/ArmUtil;->ShowAppDetailPage(Landroid/content/Context;)V

    .line 96
    const/16 v4, 0x2a

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-direct {p0, v8, v7, v7}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/skt/arm/ArmUtil;->getPermissionCheck(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    const/16 v4, 0x2b

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 116
    :catch_1
    move-exception v1

    .line 117
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    invoke-direct {p0, v8, v7, v7}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v5, "com.skt.skaf.OA00018282"

    invoke-static {v4, v5}, Lcom/skt/arm/ArmUtil;->checkNeedUpdateARMService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 128
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v5, "com.skt.skaf.OA00018282"

    invoke-static {v4, v5}, Lcom/skt/arm/ArmUtil;->getApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "strArmVersion":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    :cond_3
    const/4 v4, 0x3

    iput v4, p0, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 135
    :cond_4
    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v5, "com.skt.skaf.A000Z00040"

    invoke-static {v4, v5}, Lcom/skt/arm/ArmUtil;->checkTStoreInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/skt/arm/ArmManager$1;

    invoke-direct {v4, p0, v2}, Lcom/skt/arm/ArmManager$1;-><init>(Lcom/skt/arm/ArmManager;Landroid/os/Handler;)V

    .line 154
    invoke-virtual {v4}, Lcom/skt/arm/ArmManager$1;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 164
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "strArmVersion":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 165
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    invoke-direct {p0, v8, v7, v7}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "strArmVersion":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x28

    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_3
    invoke-direct {p0, v4, v5, v6}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 173
    .end local v3    # "strArmVersion":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager;->ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z

    move-result v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0, v8, v7, v7}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0
.end method

.method public ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z
    .locals 6
    .param p1, "AppID"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v3, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ARMPlugin ConnectService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 188
    .local v0, "bRet":Z
    :try_start_0
    sget-object v3, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Lcom/skt/arm/ArmManager$ArmConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/skt/arm/ArmManager$ArmConnection;-><init>(Lcom/skt/arm/ArmManager;Lcom/skt/arm/ArmManager$ArmConnection;)V

    sput-object v3, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 192
    :cond_0
    sget-object v3, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 195
    iput-object p1, p0, Lcom/skt/arm/ArmManager;->sAID:Ljava/lang/String;

    .line 198
    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v4, "com.skt.skaf.OA00018282"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmUtil;->ARMServiceCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/skt/arm/aidl/IArmService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "PackageName"

    sget-object v4, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "putExtra PackageName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    .line 206
    sget-object v4, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    const/4 v5, 0x1

    .line 205
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 209
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bindService Result["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public DisconnectService()V
    .locals 3

    .prologue
    .line 230
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ARMPlugin DisconnectService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    sput-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 235
    :cond_0
    return-void
.end method

.method public setArmListener(Lcom/skt/arm/ArmListener;)V
    .locals 0
    .param p1, "l"    # Lcom/skt/arm/ArmListener;

    .prologue
    .line 283
    sput-object p1, Lcom/skt/arm/ArmManager;->mArmListener:Lcom/skt/arm/ArmListener;

    .line 284
    return-void
.end method
