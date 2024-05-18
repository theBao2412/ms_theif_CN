.class public Lcom/chartboost/sdk/CBDefaultViewController;
.super Ljava/lang/Object;
.source "CBDefaultViewController.java"


# static fields
.field private static sharedController:Lcom/chartboost/sdk/CBDefaultViewController;


# instance fields
.field private context:Landroid/content/Context;

.field private viewIsVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/CBDefaultViewController;->sharedController:Lcom/chartboost/sdk/CBDefaultViewController;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayChartBoostView(Lcom/chartboost/sdk/CBView;)V
    .locals 2
    .param p1, "chartBoostView"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 32
    new-instance v0, Lcom/chartboost/sdk/CBViewDialog;

    iget-object v1, p0, Lcom/chartboost/sdk/CBDefaultViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/CBViewDialog;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView;)V

    .line 33
    .local v0, "dialog":Lcom/chartboost/sdk/CBViewDialog;
    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/CBView;->setDialog(Lcom/chartboost/sdk/CBViewDialog;)V

    .line 34
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBViewDialog;->show()V

    .line 35
    return-void
.end method

.method public static declared-synchronized getSharedController()Lcom/chartboost/sdk/CBDefaultViewController;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/chartboost/sdk/CBDefaultViewController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/CBDefaultViewController;->sharedController:Lcom/chartboost/sdk/CBDefaultViewController;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/chartboost/sdk/CBDefaultViewController;

    invoke-direct {v0}, Lcom/chartboost/sdk/CBDefaultViewController;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/CBDefaultViewController;->sharedController:Lcom/chartboost/sdk/CBDefaultViewController;

    .line 19
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/CBDefaultViewController;->sharedController:Lcom/chartboost/sdk/CBDefaultViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dismissInterstitial(Lcom/chartboost/sdk/CBView;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBView;->getDialog()Lcom/chartboost/sdk/CBViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBViewDialog;->cancel()V

    .line 40
    return-void
.end method

.method public dismissLoadingView()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public dismissMoreAppsView(Lcom/chartboost/sdk/CBView;)V
    .locals 1
    .param p1, "moreAppsView"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBView;->getDialog()Lcom/chartboost/sdk/CBViewDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/CBViewDialog;->cancel()V

    .line 44
    return-void
.end method

.method public displayInterstitial(Lcom/chartboost/sdk/CBView;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBDefaultViewController;->displayChartBoostView(Lcom/chartboost/sdk/CBView;)V

    .line 24
    return-void
.end method

.method public displayLoadingView()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public displayMoreAppsView(Lcom/chartboost/sdk/CBView;)V
    .locals 0
    .param p1, "moreAppsView"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBDefaultViewController;->displayChartBoostView(Lcom/chartboost/sdk/CBView;)V

    .line 28
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/CBDefaultViewController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public isViewIsVisible()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/chartboost/sdk/CBDefaultViewController;->viewIsVisible:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/CBDefaultViewController;->context:Landroid/content/Context;

    .line 75
    return-void
.end method
