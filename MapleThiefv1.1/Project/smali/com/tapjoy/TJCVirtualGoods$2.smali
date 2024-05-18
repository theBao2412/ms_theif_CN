.class Lcom/tapjoy/TJCVirtualGoods$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field private final synthetic val$storeItem:Lcom/tapjoy/VGStoreItem;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$2;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoods$2;->val$storeItem:Lcom/tapjoy/VGStoreItem;

    .line 1400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$2;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$2;->val$storeItem:Lcom/tapjoy/VGStoreItem;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->startDownloadingPurchasedVG(Lcom/tapjoy/VGStoreItem;)V
    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$35(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    .line 1405
    return-void
.end method
