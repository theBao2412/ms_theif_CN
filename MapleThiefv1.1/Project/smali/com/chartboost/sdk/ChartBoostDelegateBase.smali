.class public abstract Lcom/chartboost/sdk/ChartBoostDelegateBase;
.super Ljava/lang/Object;
.source "ChartBoostDelegateBase.java"

# interfaces
.implements Lcom/chartboost/sdk/ChartBoostDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didClickInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 40
    return-void
.end method

.method public didClickMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 68
    return-void
.end method

.method public didCloseInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 33
    return-void
.end method

.method public didCloseMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 61
    return-void
.end method

.method public didDismissInterstitial(Landroid/view/View;)V
    .locals 0
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 26
    return-void
.end method

.method public didDismissMoreApps(Landroid/view/View;)V
    .locals 0
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method

.method public shouldDisplayInterstitial(Landroid/view/View;)Z
    .locals 1
    .param p1, "interstitialView"    # Landroid/view/View;

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Landroid/view/View;)Z
    .locals 1
    .param p1, "moreAppsView"    # Landroid/view/View;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
