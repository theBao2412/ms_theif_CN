.class Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$4;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    .line 2217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v0, 0x1

    .line 2222
    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->offersFromVG:Z

    .line 2223
    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->vgFromOffers:Z

    .line 2224
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 2226
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$4;->this$1:Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showOffers()V
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$25(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 2227
    return-void
.end method
