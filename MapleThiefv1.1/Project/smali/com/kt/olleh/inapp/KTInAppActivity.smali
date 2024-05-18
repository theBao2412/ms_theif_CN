.class public abstract Lcom/kt/olleh/inapp/KTInAppActivity;
.super Landroid/app/Activity;
.source "KTInAppActivity.java"

# interfaces
.implements Lcom/kt/olleh/inapp/ILibMode;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAuthen:Ljava/lang/String;

.field private mInApp:Lcom/kt/olleh/inapp/InApp;

.field private mLibMode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mPurchase:Lcom/kt/olleh/inapp/Purchase;

.field mService:Lcom/kt/olleh/inapp/IRemoteInapService;

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 41
    const-string v0, "KTInAppActivity"

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->TAG:Ljava/lang/String;

    .line 885
    new-instance v0, Lcom/kt/olleh/inapp/KTInAppActivity$1;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/KTInAppActivity$1;-><init>(Lcom/kt/olleh/inapp/KTInAppActivity;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/KTInAppActivity;)V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStop()V

    return-void
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 108
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "phoneNo":Ljava/lang/String;
    return-object v0
.end method

.method private getUserInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "userInfo":Ljava/lang/String;
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 157
    iget v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v3, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 175
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KTInAppActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserInfo.information = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_1
    :goto_1
    sget-object v2, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 183
    return-object v2

    .line 160
    :pswitch_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 161
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "phoneNo":Ljava/lang/String;
    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    goto :goto_0

    .line 165
    .end local v0    # "phoneNo":Ljava/lang/String;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_SoIP number not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_2
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KTInAppActivity"

    const-string v4, "ILibMode.mode_KPAD Show ID not exist"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "KTInAppActivity"

    const-string v4, "UserInfo.information = null"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "recipients"    # Ljava/lang/String;

    .prologue
    .line 200
    return-object p1
.end method

.method private notExistUserInfo()V
    .locals 3

    .prologue
    .line 247
    iget v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "CRAB2001"

    const-string v2, "ID or PhoneNumber \uc624\ub958"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStart()V
    .locals 3

    .prologue
    .line 873
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.olleh.inapp.IRemoteInapService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 875
    return-void
.end method

.method private onServiceStop()V
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 883
    return-void
.end method


# virtual methods
.method public getDIAllList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIAllList(Ljava/lang/String;II)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "page_size"    # I
    .param p3, "page"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 336
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 340
    :cond_2
    if-lez p2, :cond_3

    if-gtz p3, :cond_4

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIDownloadableList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 513
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 523
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIDownloadableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 428
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 438
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "recipients"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 407
    :cond_2
    if-nez p2, :cond_3

    .line 409
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIPurchaseList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIPurchaseList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIReceiveList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 456
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIReceiveList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIUsableList(Ljava/lang/String;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->getDIUsableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public init(Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 94
    const-string v0, "01"

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 97
    return-void
.end method

.method public initListener()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "KTInApp"

    const-string v1, "OnInAppListener \ubbf8\ub4f1\ub85d \uc624\ub958 \ubc1c\uc0dd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 56
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->setData(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, p0}, Lcom/kt/olleh/inapp/Purchase;->setContext(Landroid/content/Context;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 77
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-eqz v0, :cond_1

    .line 82
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 85
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 86
    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "applicationID"    # Ljava/lang/String;
    .param p2, "digitalID"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    new-instance v0, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 239
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/Purchase;->onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;I)V

    goto :goto_0
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/InApp;->requestCancel()V

    .line 862
    return-void
.end method

.method public requestCheckCoin()V
    .locals 4

    .prologue
    .line 837
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 839
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 854
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 849
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 853
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/kt/olleh/inapp/InApp;->requestCheckCoin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestCheckShowId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "show_id"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    :goto_0
    return-void

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/kt/olleh/inapp/InApp;->requestCheckShowId(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 752
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 767
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 760
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 725
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 733
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 737
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "buy_pwd"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 553
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "tr_id"    # Ljava/lang/String;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 616
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "buy_pwd"    # Ljava/lang/String;
    .param p5, "recipients"    # Ljava/lang/String;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 673
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "buy_pwd"    # Ljava/lang/String;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 586
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIReGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "buy_pwd"    # Ljava/lang/String;
    .param p5, "recipients"    # Ljava/lang/String;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 704
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIReGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIesBuy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    .line 632
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 647
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/kt/olleh/inapp/InApp;->requestDIesBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIgetFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "mime_type"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 785
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 793
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestDIgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public settingSoIPNumber()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStart()V

    .line 867
    return-void
.end method
