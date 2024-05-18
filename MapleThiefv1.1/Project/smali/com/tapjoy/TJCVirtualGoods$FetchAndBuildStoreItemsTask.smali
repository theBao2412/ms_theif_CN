.class Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndBuildStoreItemsTask"
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
    .line 1894
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V
    .locals 0

    .prologue
    .line 1894
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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
    .line 1917
    const-string v2, "Virtual Goods"

    const-string v3, "Fetching All Store Items"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :try_start_0
    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemStart:I
    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->access$3(Lcom/tapjoy/TJCVirtualGoods;)I

    move-result v3

    const/16 v4, 0x19

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TJCVirtualGoodsConnection;->getAllStoreItemsFromServer(II)Ljava/lang/String;

    move-result-object v1

    .line 1923
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1924
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoodsData;->parseVGItemListResponse(Ljava/lang/String;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1931
    .end local v1    # "response":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1926
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 1899
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1900
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1905
    return-void

    .line 1902
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getThumbImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1903
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

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

    .line 1900
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
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
    const/4 v3, 0x1

    .line 1937
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$1(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1939
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->moreStoreItems:Landroid/widget/Button;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$4(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1942
    if-nez p1, :cond_1

    .line 1944
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 1945
    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1948
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showGetStoreItemsNetworkErrorDialog()V
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$5(Lcom/tapjoy/TJCVirtualGoods;)V

    .line 1957
    :goto_0
    return-void

    .line 1952
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1953
    .local v0, "start":I
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1955
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ctx:Landroid/content/Context;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showStoreItemTableView(ILandroid/content/Context;)V
    invoke-static {v1, v0, v2}, Lcom/tapjoy/TJCVirtualGoods;->access$6(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1911
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$1(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1912
    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeNoData:Landroid/widget/TextView;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$2()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1913
    return-void
.end method
