.class Lcom/tapjoy/TJCVirtualGoodUtil$2;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    const-string v4, "VirtualGoodUtil"

    const-string v5, "retryClick"

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 267
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_row_index"

    const-string v6, "id"

    iget-object v7, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;
    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$1(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    .local v1, "indexTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "index":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 272
    .local v2, "indexValue":I
    const-string v4, "VirtualGoodUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "retry index: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v6, v4, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$2;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-virtual {v5, v4}, Lcom/tapjoy/TJCVirtualGoodUtil;->retryDownloadVG(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 275
    return-void
.end method
