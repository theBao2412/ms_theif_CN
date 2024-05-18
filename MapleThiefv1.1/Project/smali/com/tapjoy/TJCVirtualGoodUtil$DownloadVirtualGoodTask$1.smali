.class Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$1;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$1;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 431
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$1;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 432
    return-void
.end method
