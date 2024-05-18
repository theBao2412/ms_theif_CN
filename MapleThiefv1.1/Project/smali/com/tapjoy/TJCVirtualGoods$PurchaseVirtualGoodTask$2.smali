.class Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$2;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->purchaseVirtualGood()V
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$22(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 2179
    return-void
.end method
