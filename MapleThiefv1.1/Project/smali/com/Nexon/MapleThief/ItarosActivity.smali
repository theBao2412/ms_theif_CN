.class public Lcom/Nexon/MapleThief/ItarosActivity;
.super Landroid/app/Activity;
.source "ItarosActivity.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoySpendPointsNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Nexon/MapleThief/ItarosActivity$AccListener;,
        Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;,
        Lcom/Nexon/MapleThief/ItarosActivity$OriListener;
    }
.end annotation


# static fields
.field private static final DIALOG_ARMERROR_BOX:I = 0x4

.field private static final DIALOG_ARMNOTINSTALL_BOX:I = 0x5

.field private static final DIALOG_BILLING_NOT_SUPPORTED_ID:I = 0xc7

.field private static final DIALOG_ERROR_BOX:I = 0x2

.field private static final DIALOG_EXIT_BOX:I = 0x3

.field private static final DIALOG_INITFAIL_BOX:I = 0x64

.field private static final DIALOG_INIT_BOX:I = 0x66

.field private static final DIALOG_INSTALL_FILES:I = 0x1

.field private static final DIALOG_LGTPAY_BOX:I = 0xc8

.field private static final DIALOG_LIMIT_DAY:I = 0x60

.field private static final DIALOG_LIMIT_MONTH:I = 0x61

.field private static final DIALOG_TAPJOY_REWARDOK:I = 0x309

.field private static final DIALOG_USIM_BOX:I = 0x65

.field public static final GOOGLE:I = 0x3

.field private static final HANDLER_INSTALL_FAILED:I = 0x2

.field private static final HANDLER_INSTALL_SUCCESS:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "BannerTypeJava"

.field private static final MAX_RANDOM_VALUE:I = 0x3e8

.field public static final OLLEH:I = 0x1

.field public static final OZSTORE:I = 0x2

.field public static final STORETYPE:I = 0x3

.field public static final TSTORE:I

.field public static rLevyResult:I


# instance fields
.field public OZStoreArmID:Ljava/lang/String;

.field public OllehAID:Ljava/lang/String;

.field public PID:Ljava/lang/String;

.field public PercentBar:Landroid/widget/ProgressBar;

.field public TstoreAID:Ljava/lang/String;

.field private adView:Lnet/daum/adam/publisher/AdView;

.field private admobView:Lcom/google/ads/AdView;

.field private firstLoading:Z

.field private gAppID:Ljava/lang/String;

.field private gIP:Ljava/lang/String;

.field private gPORT:I

.field private gPrice:I

.field private gSendPhoneNum:Ljava/lang/String;

.field private gTouchMoveNum:I

.field private gettingPoint:I

.field private handler:Landroid/os/Handler;

.field private mBillingService:Lcom/Nexon/MapleThief/BillingService;

.field mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

.field private mDungeonsPurchaseObserver:Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

.field private mHandler:Landroid/os/Handler;

.field mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private m_AccListener:Landroid/hardware/SensorEventListener;

.field private m_AccSensor:Landroid/hardware/Sensor;

.field m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

.field private m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

.field private m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

.field private m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

.field private m_NetworkManager:Lcom/Nexon/MapleThief/BNVNetworkManager;

.field private m_OriListener:Landroid/hardware/SensorEventListener;

.field private m_OriSensor:Landroid/hardware/Sensor;

.field private m_Power:Landroid/os/PowerManager;

.field private m_Random:Ljava/util/Random;

.field private m_SensorManager:Landroid/hardware/SensorManager;

.field private m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

.field private m_WakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_isAvailableSDCard:Z

.field onKey:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    sput v0, Lcom/Nexon/MapleThief/ItarosActivity;->rLevyResult:I

    .line 168
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 190
    iput-boolean v1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_isAvailableSDCard:Z

    .line 208
    iput v1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gTouchMoveNum:I

    .line 212
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_Random:Ljava/util/Random;

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->PID:Ljava/lang/String;

    .line 232
    const-string v0, "OA00303854"

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->TstoreAID:Ljava/lang/String;

    .line 233
    const-string v0, "8100E664"

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->OllehAID:Ljava/lang/String;

    .line 234
    const-string v0, "AQ00102034"

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->OZStoreArmID:Ljava/lang/String;

    .line 253
    iput-boolean v1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->firstLoading:Z

    .line 256
    iput-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    .line 258
    iput-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    .line 361
    new-instance v0, Lcom/Nexon/MapleThief/ItarosActivity$1;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/ItarosActivity$1;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 454
    new-instance v0, Lcom/Nexon/MapleThief/ItarosActivity$2;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/ItarosActivity$2;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 849
    new-instance v0, Lcom/Nexon/MapleThief/ItarosActivity$3;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/ItarosActivity$3;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->handler:Landroid/os/Handler;

    .line 1593
    new-instance v0, Lcom/Nexon/MapleThief/ItarosActivity$4;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/ItarosActivity$4;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    .line 168
    return-void
.end method

.method static synthetic access$0(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/KeyboardDialog;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/Nexon/MapleThief/ItarosActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/Nexon/MapleThief/ItarosActivity;)Lnet/daum/adam/publisher/AdView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1100
    invoke-direct {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->runAdmob()V

    return-void
.end method

.method static synthetic access$4(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVSoundPool;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    return-object v0
.end method

.method static synthetic access$5(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BNVMediaPlayer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/Nexon/MapleThief/ItarosActivity;I)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gettingPoint:I

    return-void
.end method

.method static synthetic access$7(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BillingService;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;

    return-object v0
.end method

.method private releaseService()V
    .locals 0

    .prologue
    .line 1180
    return-void
.end method

.method private runAdmob()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 1102
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    if-eqz v2, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/AdView;->destroy()V

    .line 1105
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    .line 1108
    :cond_0
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/Nexon/MapleThief/ItarosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1109
    .local v1, "rLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a1505147da0babb"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    .line 1112
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1114
    .local v0, "item_img_param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x8c

    invoke-virtual {v0, v2, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1115
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1117
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1119
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 1122
    return-void
.end method

.method private runArmService()Z
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public BGMLoadB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Load(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public BGMPlayB(Z)Z
    .locals 1
    .param p1, "isLoop"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Play(Z)Z

    move-result v0

    return v0
.end method

.method public BGMReleaseB()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Release()V

    return-void
.end method

.method public BGMStopB()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Stop()V

    return-void
.end method

.method public BGMVolumeB(F)V
    .locals 1
    .param p1, "fVolume"    # F

    .prologue
    .line 683
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->SetVolume(F)V

    return-void
.end method

.method public CallOtherProductPage()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method Create()V
    .locals 12

    .prologue
    const/16 v11, 0x1e0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 925
    invoke-static {}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost()Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    .line 926
    .local v0, "_cb":Lcom/chartboost/sdk/ChartBoost;
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/ChartBoost;->setContext(Landroid/content/Context;)V

    .line 927
    const-string v7, "50501fb316ba476461000043"

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    .line 928
    const-string v7, "4d8c7111f8cc0b8ad6f79b3916f857f58386ce87"

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->install()V

    .line 934
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->loadInterstitial()V

    .line 936
    new-instance v7, Lcom/Nexon/MapleThief/ItarosActivity$7;

    invoke-direct {v7, p0}, Lcom/Nexon/MapleThief/ItarosActivity$7;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v7}, Lcom/chartboost/sdk/ChartBoost;->setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V

    .line 955
    new-instance v7, Lcom/Nexon/MapleThief/BNVGLView;

    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/Nexon/MapleThief/BNVGLView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    .line 958
    const/high16 v7, 0x7f030000

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->setContentView(I)V

    .line 961
    const/high16 v7, 0x7f060000

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 963
    .local v4, "rLayout":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    invoke-virtual {v4, v7, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 966
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->firstLoading:Z

    .line 967
    new-instance v7, Lnet/daum/adam/publisher/AdView;

    invoke-direct {v7, p0}, Lnet/daum/adam/publisher/AdView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    .line 969
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    new-instance v8, Lcom/Nexon/MapleThief/ItarosActivity$8;

    invoke-direct {v8, p0}, Lcom/Nexon/MapleThief/ItarosActivity$8;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setOnAdClickedListener(Lnet/daum/adam/publisher/AdView$OnAdClickedListener;)V

    .line 976
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    new-instance v8, Lcom/Nexon/MapleThief/ItarosActivity$9;

    invoke-direct {v8, p0}, Lcom/Nexon/MapleThief/ItarosActivity$9;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setOnAdFailedListener(Lnet/daum/adam/publisher/AdView$OnAdFailedListener;)V

    .line 993
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    new-instance v8, Lcom/Nexon/MapleThief/ItarosActivity$10;

    invoke-direct {v8, p0}, Lcom/Nexon/MapleThief/ItarosActivity$10;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setOnAdLoadedListener(Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;)V

    .line 1002
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    new-instance v8, Lcom/Nexon/MapleThief/ItarosActivity$11;

    invoke-direct {v8, p0}, Lcom/Nexon/MapleThief/ItarosActivity$11;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setOnAdWillLoadListener(Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;)V

    .line 1010
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    new-instance v8, Lcom/Nexon/MapleThief/ItarosActivity$12;

    invoke-direct {v8, p0}, Lcom/Nexon/MapleThief/ItarosActivity$12;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setOnAdClosedListener(Lnet/daum/adam/publisher/AdView$OnAdClosedListener;)V

    .line 1018
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    const-string v8, "3a27Z1fT139bd7db5be"

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setClientId(Ljava/lang/String;)V

    .line 1021
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setRequestInterval(I)V

    .line 1023
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    sget-object v8, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_HORIZONTAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setAnimationType(Lnet/daum/adam/publisher/AdView$AnimationType;)V

    .line 1025
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lnet/daum/adam/publisher/AdView;->setVisibility(I)V

    .line 1029
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1031
    .local v3, "item_img_param":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 1032
    .local v1, "context":Landroid/content/Context;
    const-string v7, "window"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1033
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1035
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-lt v7, v11, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1037
    :cond_0
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v8, 0x320

    if-lt v7, v8, :cond_1

    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1043
    :cond_1
    const/16 v7, 0x8c

    invoke-virtual {v3, v7, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1044
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v7, v3}, Lnet/daum/adam/publisher/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    const-string v7, "vibrator"

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    invoke-static {v7}, Lcom/Nexon/MapleThief/NativeClass;->Init(Landroid/os/Vibrator;)V

    .line 1052
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1054
    .local v5, "strResourceRootPath":Ljava/lang/String;
    new-instance v8, Lcom/Nexon/MapleThief/BNVNetworkManager;

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    invoke-direct {v8, v7}, Lcom/Nexon/MapleThief/BNVNetworkManager;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v8, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_NetworkManager:Lcom/Nexon/MapleThief/BNVNetworkManager;

    .line 1056
    new-instance v7, Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/Nexon/MapleThief/BNVSoundPool;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    .line 1057
    new-instance v7, Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/Nexon/MapleThief/BNVMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    .line 1059
    new-instance v7, Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/Nexon/MapleThief/BNVMediaPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    .line 1061
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    iget-object v8, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-static {v7, v8}, Lcom/Nexon/MapleThief/NativeClass;->InitSound(Lcom/Nexon/MapleThief/BNVSoundPool;Lcom/Nexon/MapleThief/BNVMediaPlayer;)V

    .line 1062
    invoke-static {p0}, Lcom/Nexon/MapleThief/NativeClass;->InitActivity(Lcom/Nexon/MapleThief/ItarosActivity;)V

    .line 1065
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->OnNativeInitializeJNI()V

    .line 1068
    invoke-static {v5}, Lcom/Nexon/MapleThief/NativeClass;->OnNativePath(Ljava/lang/String;)V

    .line 1070
    const-string v7, "Debug_Android"

    const-string v8, "Activity Create"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-void
.end method

.method public Exit()V
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->finish()V

    .line 633
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->onDestroy()V

    .line 634
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 635
    return-void
.end method

.method public ExitPopup()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVSoundPool;->PauseAll()V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Pause()V

    .line 620
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    .line 622
    return-void
.end method

.method public GetDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public GetExternalMemorySize()J
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lcom/Nexon/MapleThief/BNVInstaller;->externalMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-static {}, Lcom/Nexon/MapleThief/BNVInstaller;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 642
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public GetInternalMemorySize()J
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Lcom/Nexon/MapleThief/BNVInstaller;->getAvailableInternalMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 652
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 653
    const/4 v2, 0x0

    .line 660
    :cond_0
    :goto_0
    return-object v2

    .line 654
    :cond_1
    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 655
    .local v0, "Mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "deviceid":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 658
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public IAPInit()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public Native_TapJoyShowOffer()V
    .locals 1

    .prologue
    .line 565
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 566
    return-void
.end method

.method public Native_TapjoyGetPoint()V
    .locals 1

    .prologue
    .line 570
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 571
    return-void
.end method

.method public Native_callWeb(Ljava/lang/String;)V
    .locals 2
    .param p1, "weburl"    # Ljava/lang/String;

    .prologue
    .line 584
    sput-object p1, Lcom/Nexon/MapleThief/Global;->WebUrl:Ljava/lang/String;

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/Nexon/MapleThief/CustomWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/ItarosActivity;->startActivity(Landroid/content/Intent;)V

    .line 587
    return-void
.end method

.method public Native_isOnlineWifi()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_NetworkManager:Lcom/Nexon/MapleThief/BNVNetworkManager;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVNetworkManager;->IsOnlineWifi()Z

    move-result v0

    return v0
.end method

.method public Native_sendSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendPhoneNum"    # Ljava/lang/String;

    .prologue
    .line 577
    return-void
.end method

.method public native OnNativeDestroyJNI()V
.end method

.method public native OnNativeInitializeJNI()V
.end method

.method public RunInKeyPad()V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Lcom/Nexon/MapleThief/KeyboardDialog;

    invoke-direct {v0, p0}, Lcom/Nexon/MapleThief/KeyboardDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

    .line 592
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

    new-instance v1, Lcom/Nexon/MapleThief/ItarosActivity$5;

    invoke-direct {v1, p0}, Lcom/Nexon/MapleThief/ItarosActivity$5;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 609
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

    const-string v1, "Keyboard Test"

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_KeyBoardDialog:Lcom/Nexon/MapleThief/KeyboardDialog;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/KeyboardDialog;->show()V

    .line 611
    return-void
.end method

.method public downToAdView()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x3d740000    # -70.0f

    .line 1091
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    .line 1092
    .local v9, "instrumentation":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1093
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "eventTime":J
    move v6, v5

    move v7, v4

    .line 1094
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1095
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1098
    return-void
.end method

.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 10
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 1945
    if-nez p2, :cond_0

    iget v6, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gettingPoint:I

    if-lez v6, :cond_0

    .line 1947
    iget v6, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gettingPoint:I

    invoke-static {v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeGetTapPointResult(I)V

    .line 1949
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    .line 1950
    .local v9, "instrumentation":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1951
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "eventTime":J
    move v6, v5

    move v7, v4

    .line 1952
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1953
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1956
    .end local v0    # "downTime":J
    .end local v2    # "eventTime":J
    .end local v8    # "event":Landroid/view/MotionEvent;
    .end local v9    # "instrumentation":Landroid/app/Instrumentation;
    :cond_0
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1961
    return-void
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 1
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 1932
    iput p2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gettingPoint:I

    .line 1933
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/tapjoy/TapjoyConnect;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 1935
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 1941
    return-void
.end method

.method public installOne()V
    .locals 4

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "strResourceRootPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/Nexon/MapleThief/BNVInstaller;->CheckResource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    :goto_0
    return-void

    .line 697
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/Nexon/MapleThief/ItarosActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/Nexon/MapleThief/ItarosActivity$6;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 713
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 879
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 880
    const/16 v4, 0x2306

    if-ne p1, v4, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->Create()V

    .line 883
    :cond_0
    const/16 v4, 0x1e6d

    if-ne p1, v4, :cond_1

    .line 885
    sget-boolean v4, Lcom/Nexon/MapleThief/Global;->b_check:Z

    if-eqz v4, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 889
    .local v3, "strResourceRootPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "prov.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    .local v2, "strFlagFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 893
    .local v1, "fout":Ljava/io/FileWriter;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(I)V

    .line 894
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    .end local v1    # "fout":Ljava/io/FileWriter;
    :goto_0
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->Create()V

    .line 911
    .end local v2    # "strFlagFile":Ljava/lang/String;
    .end local v3    # "strResourceRootPath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 895
    .restart local v2    # "strFlagFile":Ljava/lang/String;
    .restart local v3    # "strResourceRootPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "strFlagFile":Ljava/lang/String;
    .end local v3    # "strResourceRootPath":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->finish()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1620
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 728
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mHandler:Landroid/os/Handler;

    .line 729
    new-instance v7, Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

    iget-object v8, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mDungeonsPurchaseObserver:Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

    .line 730
    new-instance v7, Lcom/Nexon/MapleThief/BillingService;

    invoke-direct {v7}, Lcom/Nexon/MapleThief/BillingService;-><init>()V

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;

    .line 731
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;

    invoke-virtual {v7, p0}, Lcom/Nexon/MapleThief/BillingService;->setContext(Landroid/content/Context;)V

    .line 735
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mDungeonsPurchaseObserver:Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

    invoke-static {v7}, Lcom/Nexon/MapleThief/ResponseHandler;->register(Lcom/Nexon/MapleThief/PurchaseObserver;)V

    .line 736
    iget-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;

    invoke-virtual {v7}, Lcom/Nexon/MapleThief/BillingService;->checkBillingSupported()Z

    .line 742
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "1010df1b-376b-43ad-84bc-1e87c652f490"

    const-string v9, "TQT306LOTFWGXTFx9YuQ"

    invoke-static {v7, v8, v9}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :try_start_0
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 752
    .local v0, "Asset":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 755
    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 756
    .local v5, "off":J
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 757
    .local v3, "len":J
    invoke-static {v2, v5, v6, v3, v4}, Lcom/Nexon/MapleThief/NativeClass;->OnVFSInitialize(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v0    # "Asset":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "len":J
    .end local v5    # "off":J
    :goto_0
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->setContentView(I)V

    .line 773
    const v7, 0x7f060005

    invoke-virtual {p0, v7}, Lcom/Nexon/MapleThief/ItarosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/Nexon/MapleThief/ItarosActivity;->PercentBar:Landroid/widget/ProgressBar;

    .line 778
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->IAPInit()V

    .line 782
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->installOne()V

    .line 844
    return-void

    .line 761
    .restart local v0    # "Asset":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :try_start_1
    const-string v7, "Debug_Android"

    const-string v8, "Packing file failed to open"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->finish()V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 765
    .end local v0    # "Asset":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "Debug_Android"

    const-string v8, "Packing File is not exist..."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/16 v9, 0x21

    const/4 v8, -0x1

    const v6, 0x7f020008

    const/4 v7, 0x0

    .line 1304
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 1306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1307
    .local v0, "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1308
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1310
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1312
    const-string v5, "\uc778\uc99d \uc624\ub958"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1314
    const-string v5, "\uc778\uc99d \uc624\ub958\ub85c \uac8c\uc784\uc744 \uc2e4\ud589\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1315
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$13;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$13;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1588
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v5

    .line 1327
    :cond_0
    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 1329
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1330
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1331
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1335
    const-string v5, "Initialize"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1337
    const-string v5, "\ucd08\uae30\ud654 \uc2e4\ud328."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1338
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$14;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$14;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1348
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1350
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/16 v5, 0x65

    if-ne p1, v5, :cond_2

    .line 1352
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1353
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1354
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1356
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1358
    const-string v5, "Initialize"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1360
    const-string v5, "\ubd88\ubc95\ubcf5\uc81c \uac80\uc0ac\uc911 \uc624\ub958\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1361
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$15;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$15;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1371
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1373
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v5, 0x5

    if-ne p1, v5, :cond_3

    .line 1375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1377
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1379
    const-string v5, "\uc5f0\ub3d9 \uc124\uce58 \uc624\ub958"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1381
    const-string v5, "\uc5f0\ub3d9 \ud504\ub85c\uadf8\ub7a8\uc774 \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0 \uc5c5\uadf8\ub808\uc774\ub4dc\ub97c \uc218\ud589\ud574\uc8fc\uc138\uc694."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1382
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$16;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$16;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1391
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 1393
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_4

    .line 1395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1397
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1399
    const-string v5, "\uac8c\uc784 \uc124\uce58 \uc624\ub958"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1401
    sget-object v5, Lcom/Nexon/MapleThief/BNVInstaller;->m_strResultMessage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1402
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$17;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$17;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1415
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const/4 v5, 0x3

    if-ne p1, v5, :cond_5

    .line 1417
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1419
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1420
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1421
    const-string v5, "\uac8c\uc784 \uc885\ub8cc"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1422
    const-string v5, "\uac8c\uc784\uc744 \uc885\ub8cc\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1423
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$18;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$18;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1431
    const-string v5, "\ucde8\uc18c"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$19;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$19;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1442
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1445
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const/16 v5, 0x61

    if-ne p1, v5, :cond_6

    .line 1447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1448
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1449
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1451
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1453
    const-string v5, "\uc6d4\uad6c\ub9e4\ud55c\ub3c4"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1455
    const-string v5, "\uc6d4\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec\n\ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1456
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$20;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$20;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1462
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1464
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_6
    const/16 v5, 0x60

    if-ne p1, v5, :cond_7

    .line 1466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1467
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1468
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1470
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1472
    const-string v5, "\uc77c\uad6c\ub9e4\ud55c\ub3c4"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1474
    const-string v5, "\uc77c\uc77c \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec\n\ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1475
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$21;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$21;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1481
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1483
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_7
    const/16 v5, 0xc7

    if-ne p1, v5, :cond_8

    .line 1485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1486
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1487
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1489
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1491
    const-string v5, "\uad6c\ub9e4\ubd88\uac00"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1493
    const-string v5, "\uc798\ubabb\ub41c \uad6c\ub9e4\uc694\uccad\uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1494
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$22;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$22;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1501
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1503
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_8
    const/16 v5, 0x309

    if-ne p1, v5, :cond_9

    .line 1505
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1506
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1507
    iget-object v5, p0, Lcom/Nexon/MapleThief/ItarosActivity;->onKey:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1509
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1511
    const-string v5, "TapJoy \ucda9\uc804"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1513
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gettingPoint:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uba54\uc18c \ubb34\ub8cc \ucda9\uc804\uc5d0 \uc131\uacf5\ud558\uc600\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1514
    const-string v5, "\ud655\uc778"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$23;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$23;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1523
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1525
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    :cond_9
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_a

    .line 1528
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1530
    .restart local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1531
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1533
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "\uc544\uc774\ud15c \uad6c\ub9e4"

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1534
    .local v4, "sp":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1536
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v5, "\ubcf8 \uc544\uc774\ud15c\uc740 "

    invoke-direct {v1, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1537
    .local v1, "message1":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1540
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gPrice:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " \uc6d0\uc758 \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1541
    .local v2, "message2":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1542
    new-instance v3, Landroid/text/SpannableStringBuilder;

    const-string v5, "\uc815\ubcf4\uc774\uc6a9\ub8cc\uac00 \ubd80\uacfc\ub429\ub2c8\ub2e4.\n\uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1543
    .local v3, "message3":Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v7, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1547
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1548
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1552
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1553
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1555
    const-string v5, "\uad6c\ub9e4"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$24;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$24;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1574
    const-string v5, "\ucde8\uc18c"

    new-instance v6, Lcom/Nexon/MapleThief/ItarosActivity$25;

    invoke-direct {v6, p0}, Lcom/Nexon/MapleThief/ItarosActivity$25;-><init>(Lcom/Nexon/MapleThief/ItarosActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 1588
    .end local v0    # "DlgBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message1":Landroid/text/SpannableStringBuilder;
    .end local v2    # "message2":Landroid/text/SpannableStringBuilder;
    .end local v3    # "message3":Landroid/text/SpannableStringBuilder;
    .end local v4    # "sp":Landroid/text/SpannableStringBuilder;
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v0, :cond_0

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVSoundPool;->ReleaseAll()V

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    if-eqz v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Release()V

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    if-eqz v0, :cond_3

    .line 1224
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayerB:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Release()V

    .line 1227
    :cond_3
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/ItarosActivity;->OnNativeDestroyJNI()V

    .line 1228
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeDestroy()V

    .line 1230
    const-string v0, "Debug_Android"

    const-string v1, "Activity Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1235
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BillingService;->unbind()V

    .line 1236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1624
    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v1, :cond_0

    .line 1627
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1629
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1648
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1635
    :sswitch_0
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBackKeyPress()V

    goto :goto_0

    .line 1641
    :sswitch_1
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeMenuKeyPress()V

    goto :goto_0

    .line 1629
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1653
    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v1, :cond_0

    .line 1655
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1669
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1659
    :sswitch_0
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBackKeyRelease()V

    goto :goto_0

    .line 1664
    :sswitch_1
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeMenuKeyRelease()V

    goto :goto_0

    .line 1655
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1272
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    if-eqz v0, :cond_4

    .line 1274
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/AdView;->setVisibility(I)V

    .line 1282
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v0, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVGLView;->onPause()V

    .line 1285
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativePause()V

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVSoundPool;->PauseAll()V

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Pause()V

    .line 1295
    :cond_3
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->Pause()V

    .line 1297
    const-string v0, "Debug_Android"

    const-string v1, "Activity Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1300
    return-void

    .line 1277
    :cond_4
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVGLView;->onResume()V

    .line 1245
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeResume()V

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_SoundPool:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVSoundPool;->ResumeAll()V

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    if-eqz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_MediaPlayer:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Resume()V

    .line 1257
    :cond_2
    invoke-static {}, Lcom/Nexon/MapleThief/NativeClass;->Resume()V

    .line 1259
    const-string v0, "Debug_Android"

    const-string v1, "Activity Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1267
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1184
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1185
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mDungeonsPurchaseObserver:Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/Nexon/MapleThief/ResponseHandler;->register(Lcom/Nexon/MapleThief/PurchaseObserver;)V

    .line 1187
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1194
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1195
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity;->mDungeonsPurchaseObserver:Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;

    invoke-static {v0}, Lcom/Nexon/MapleThief/ResponseHandler;->unregister(Lcom/Nexon/MapleThief/PurchaseObserver;)V

    .line 1196
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v13, -0x3c

    const/16 v12, -0x46

    const/16 v11, -0x5a

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 1674
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->m_GLView:Lcom/Nexon/MapleThief/BNVGLView;

    if-eqz v9, :cond_0

    .line 1684
    const/4 v5, 0x0

    .line 1685
    .local v5, "nX":I
    const/4 v6, 0x0

    .line 1686
    .local v6, "nY":I
    const/4 v2, 0x0

    .line 1687
    .local v2, "nActionEvent":I
    const/4 v0, 0x0

    .line 1690
    .local v0, "isSkip":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-le v9, v8, :cond_3

    .line 1694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1695
    .local v1, "nAction":I
    and-int/lit16 v2, v1, 0xff

    .line 1696
    const v8, 0xff00

    and-int/2addr v8, v1

    shr-int/lit8 v3, v8, 0x8

    .line 1697
    .local v3, "nActionPointerID":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1699
    .local v4, "nPointerIndex":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_2

    .line 1701
    const/4 v0, 0x1

    .line 1811
    .end local v0    # "isSkip":Z
    .end local v1    # "nAction":I
    .end local v2    # "nActionEvent":I
    .end local v3    # "nActionPointerID":I
    .end local v4    # "nPointerIndex":I
    .end local v5    # "nX":I
    .end local v6    # "nY":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_1
    :goto_1
    return v8

    .line 1705
    .restart local v0    # "isSkip":Z
    .restart local v1    # "nAction":I
    .restart local v2    # "nActionEvent":I
    .restart local v3    # "nActionPointerID":I
    .restart local v4    # "nPointerIndex":I
    .restart local v5    # "nX":I
    .restart local v6    # "nY":I
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v5, v8

    .line 1706
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 1710
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1716
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8, v4, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchMove(IIII)V

    goto :goto_0

    .line 1712
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8, v4, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchPress(IIII)V

    goto :goto_0

    .line 1718
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-static {v8, v4, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchRelease(IIII)V

    goto :goto_0

    .line 1727
    .end local v1    # "nAction":I
    .end local v3    # "nActionPointerID":I
    .end local v4    # "nPointerIndex":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 1729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 1731
    const/16 v9, -0xa

    if-ne v5, v9, :cond_4

    const/16 v9, -0xa

    if-ne v6, v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_4

    .line 1733
    const/16 v9, 0xc8

    invoke-virtual {p0, v9}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    goto :goto_1

    .line 1747
    :cond_4
    if-ne v5, v13, :cond_6

    if-ne v6, v13, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 1750
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    if-eqz v9, :cond_5

    .line 1752
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lnet/daum/adam/publisher/AdView;->setVisibility(I)V

    goto :goto_1

    .line 1754
    :cond_5
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    if-eqz v9, :cond_1

    .line 1756
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/google/ads/AdView;->setVisibility(I)V

    goto :goto_1

    .line 1762
    :cond_6
    if-ne v5, v12, :cond_8

    if-ne v6, v12, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_8

    .line 1765
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    if-eqz v9, :cond_7

    .line 1767
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v9, v10}, Lnet/daum/adam/publisher/AdView;->setVisibility(I)V

    .line 1768
    iget-boolean v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->firstLoading:Z

    if-eqz v9, :cond_1

    .line 1770
    const/high16 v9, 0x7f060000

    invoke-virtual {p0, v9}, Lcom/Nexon/MapleThief/ItarosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1771
    .local v7, "rLayout":Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 1773
    iput-boolean v10, p0, Lcom/Nexon/MapleThief/ItarosActivity;->firstLoading:Z

    goto/16 :goto_1

    .line 1776
    .end local v7    # "rLayout":Landroid/widget/RelativeLayout;
    :cond_7
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    if-eqz v9, :cond_1

    .line 1778
    iget-object v9, p0, Lcom/Nexon/MapleThief/ItarosActivity;->admobView:Lcom/google/ads/AdView;

    invoke-virtual {v9, v10}, Lcom/google/ads/AdView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1784
    :cond_8
    if-ne v5, v11, :cond_9

    if-ne v6, v11, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_9

    .line 1787
    const/16 v9, 0x309

    invoke-virtual {p0, v9}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 1798
    :cond_9
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 1800
    :pswitch_4
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v8, v9, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchPress(IIII)V

    goto/16 :goto_0

    .line 1804
    :pswitch_5
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v8, v9, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchMove(IIII)V

    goto/16 :goto_0

    .line 1806
    :pswitch_6
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v8, v9, v5, v6}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeTouchRelease(IIII)V

    goto/16 :goto_0

    .line 1710
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1798
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1816
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method proviCreate()V
    .locals 2

    .prologue
    .line 915
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/Nexon/MapleThief/DunfightActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/ItarosActivity;->startActivity(Landroid/content/Intent;)V

    .line 918
    return-void
.end method

.method public tryBuyItem(Ljava/lang/String;I)V
    .locals 10
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "price"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x3ee00000    # -10.0f

    .line 440
    iput p2, p0, Lcom/Nexon/MapleThief/ItarosActivity;->gPrice:I

    .line 441
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity;->PID:Ljava/lang/String;

    .line 443
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    .line 444
    .local v9, "instrumentation":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 445
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "eventTime":J
    move v6, v5

    move v7, v4

    .line 446
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 447
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 450
    return-void
.end method

.method public upToAdView()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/high16 v5, -0x3d900000    # -60.0f

    .line 1078
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    .line 1079
    .local v9, "instrumentation":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1080
    .local v0, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, "eventTime":J
    move v6, v5

    move v7, v4

    .line 1081
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1082
    .local v8, "event":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1086
    return-void
.end method
