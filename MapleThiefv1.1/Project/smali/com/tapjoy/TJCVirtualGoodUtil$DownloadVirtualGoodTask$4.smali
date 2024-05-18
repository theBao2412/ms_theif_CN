.class Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 509
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v0

    const-string v1, "No more space is available on Device."

    iput-object v1, v0, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    .line 515
    return-void
.end method
