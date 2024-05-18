.class Lcom/tapjoy/TJCVirtualGoodUtil$3;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoodUtil;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    const-string v1, "VirtualGoodUtil"

    const-string v2, "RETRY DETAIL CLICK"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v3, v1, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$3;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget v4, v4, Lcom/tapjoy/TJCVirtualGoodUtil;->detailIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-virtual {v2, v1}, Lcom/tapjoy/TJCVirtualGoodUtil;->retryDownloadVG(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETRY DETAIl EXCEPTION: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
