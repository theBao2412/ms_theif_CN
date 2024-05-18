.class Lcom/Nexon/MapleThief/ItarosActivity$6;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->installOne()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;

.field private final synthetic val$strResourceRootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    iput-object p2, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->val$strResourceRootPath:Ljava/lang/String;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 700
    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v1}, Lcom/Nexon/MapleThief/ItarosActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->val$strResourceRootPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    iget-object v3, v3, Lcom/Nexon/MapleThief/ItarosActivity;->PercentBar:Landroid/widget/ProgressBar;

    invoke-static {v1, v2, v3}, Lcom/Nexon/MapleThief/BNVInstaller;->InstallResource(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/widget/ProgressBar;)Z

    move-result v0

    .line 703
    .local v0, "isResult":Z
    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/Nexon/MapleThief/ItarosActivity;->access$1(Lcom/Nexon/MapleThief/ItarosActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity$6;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/Nexon/MapleThief/ItarosActivity;->access$1(Lcom/Nexon/MapleThief/ItarosActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
