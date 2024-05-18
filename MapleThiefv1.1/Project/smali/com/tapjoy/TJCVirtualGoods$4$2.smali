.class Lcom/tapjoy/TJCVirtualGoods$4$2;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TJCVirtualGoods$4;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$4$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$4;

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$4$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$4;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$4;->access$0(Lcom/tapjoy/TJCVirtualGoods$4;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$4$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$4;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods$4;->access$0(Lcom/tapjoy/TJCVirtualGoods$4;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$31(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    .line 1451
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$4$2;->this$1:Lcom/tapjoy/TJCVirtualGoods$4;

    # getter for: Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods$4;->access$0(Lcom/tapjoy/TJCVirtualGoods$4;)Lcom/tapjoy/TJCVirtualGoods;

    move-result-object v0

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$32(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1453
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1454
    return-void
.end method
