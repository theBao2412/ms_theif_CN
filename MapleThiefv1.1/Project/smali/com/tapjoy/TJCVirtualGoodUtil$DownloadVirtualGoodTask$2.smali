.class Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 440
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil;->retryDownloadVG(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 441
    return-void
.end method
