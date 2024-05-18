.class Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 539
    new-instance v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;Z)V

    .line 541
    .local v0, "retryTask":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    const-string v2, "VirtualGoodUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RETRY DOWNLOAD VG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;
    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/VGStoreItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    .line 544
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 545
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 546
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    .line 547
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 549
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    .line 550
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 551
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v3, "Download Pending"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 553
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iput v5, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 557
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/VGStoreItem;

    move-result-object v1

    .line 559
    .local v1, "vgItem":Lcom/tapjoy/VGStoreItem;
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-virtual {v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 560
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-virtual {v2, v6}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 567
    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 571
    :cond_1
    new-array v2, v6, [Lcom/tapjoy/VGStoreItem;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 572
    return-void
.end method
