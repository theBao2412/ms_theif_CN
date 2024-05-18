.class Lcom/tapjoy/TJCVirtualGoods$1$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$1$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$1;

    .line 1313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$1$1;->this$1:Lcom/tapjoy/TJCVirtualGoods$1;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$1;->access$0(Lcom/tapjoy/TJCVirtualGoods$1;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->purchaseVirtualGood()V
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$22(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 1318
    return-void
.end method
