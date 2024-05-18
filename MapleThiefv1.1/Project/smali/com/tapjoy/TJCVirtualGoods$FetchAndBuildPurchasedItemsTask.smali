.class Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndBuildPurchasedItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;)V
    .locals 0

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "nothing"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    const-string v2, "Virtual Goods"

    const-string v3, "Fetching All Purchased Items"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :try_start_0
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemStart:I
    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$10(Lcom/tapjoy/TJCVirtualGoods;)I

    move-result v3

    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TJCVirtualGoodsConnection;->getAllPurchasedItemsFromServer(II)Ljava/lang/String;

    move-result-object v1

    .line 2040
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2041
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoodsData;->parseVGItemListResponse(Ljava/lang/String;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2047
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2043
    :catch_0
    move-exception v0

    .line 2045
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Virtual Goods"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 2015
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2016
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 2021
    return-void

    .line 2018
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2019
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2016
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2053
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$8(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2054
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->morePurchasedItem:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$11(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2057
    if-nez p1, :cond_1

    .line 2060
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemTable:Landroid/widget/TableLayout;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$12(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 2061
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2062
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodsData;->getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2064
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->virtualGoodUtil:Lcom/tapjoy/TJCVirtualGoodUtil;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$13(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoodUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 2066
    sput v4, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    .line 2067
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showCachedPurchasedItemsDialog()V
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$14(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 2068
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showPurchasedStoreItemTableView(ILandroid/content/Context;)V
    invoke-static {v1, v4, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$15(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2086
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2073
    .local v0, "start":I
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2075
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showPurchasedStoreItemTableView(ILandroid/content/Context;)V
    invoke-static {v1, v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$15(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2077
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2079
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$16(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/Boolean;)V

    .line 2080
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget v2, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->checkPurchasedVGForDownload(ILandroid/content/Context;)V
    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->access$17(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    .line 2083
    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$7(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v5, :cond_0

    .line 2084
    # getter for: Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$9()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$8(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 2027
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildPurchasedItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->purchasedItemProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$8(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2029
    # getter for: Lcom/tapjoy/TJCVirtualGoods;->yourItemNoData:Landroid/widget/TextView;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$9()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2030
    return-void
.end method
