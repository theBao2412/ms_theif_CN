.class Lcom/Nexon/MapleThief/ItarosActivity$7;
.super Lcom/chartboost/sdk/ChartBoostDelegateBase;
.source "ItarosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->Create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$7;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 936
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartBoostDelegateBase;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    return v0
.end method
