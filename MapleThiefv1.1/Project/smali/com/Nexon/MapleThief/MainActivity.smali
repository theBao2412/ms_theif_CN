.class public Lcom/Nexon/MapleThief/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field public TstoreAID:Ljava/lang/String;

.field private arm:Lcom/skt/arm/ArmManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "OA00303854"

    iput-object v0, p0, Lcom/Nexon/MapleThief/MainActivity;->TstoreAID:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public goNextAct()V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "strResourceRootPath":Ljava/lang/String;
    invoke-static {v1}, Lcom/Nexon/MapleThief/BNVInstaller;->CheckAlzza(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/Nexon/MapleThief/DunfightActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/MainActivity;->finish()V

    .line 59
    return-void

    .line 52
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/MainActivity;->goNextAct()V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 103
    return-void
.end method
