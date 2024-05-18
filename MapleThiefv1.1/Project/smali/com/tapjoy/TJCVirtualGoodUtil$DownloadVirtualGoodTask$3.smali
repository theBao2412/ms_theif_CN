.class Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$3;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$3;->this$1:Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 480
    return-void
.end method
