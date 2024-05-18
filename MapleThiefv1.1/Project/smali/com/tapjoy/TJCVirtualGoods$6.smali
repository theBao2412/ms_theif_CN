.class Lcom/tapjoy/TJCVirtualGoods$6;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showGetPurchasedItemsNetworkErrorDialog(Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$6;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$6;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->purchaseVirtualGood()V
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$22(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 1490
    return-void
.end method
