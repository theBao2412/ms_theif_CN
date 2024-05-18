.class Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$3;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    .line 2210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$3;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$24(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2216
    return-void
.end method
