.class Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchaseVirtualGoodTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        "Ljava/lang/Void;",
        "Lcom/tapjoy/VGStoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field networkTimeout:Z

.field responseMessage:Ljava/lang/String;

.field successfulPurchase:Z

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2096
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    .line 2099
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    .line 2100
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->successfulPurchase:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V
    .locals 0

    .prologue
    .line 2096
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoods;
    .locals 1

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;
    .locals 8
    .param p1, "storeItem"    # [Lcom/tapjoy/VGStoreItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2106
    :try_start_0
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "virtual_good_id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/TJCVirtualGoodsConnection;->purchaseVGFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2110
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2112
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v1, v3}, Lcom/tapjoy/TJCVirtualGoodsData;->parsePurchaseVGWithCurrencyResponse(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2114
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2116
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    .line 2121
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    .line 2123
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2125
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->successfulPurchase:Z

    .line 2137
    :goto_0
    const-string v3, "Virtual Goods"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "responseMessage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", successfulPurchase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->successfulPurchase:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 2153
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 2129
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->successfulPurchase:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2148
    .end local v1    # "response":Ljava/lang/String;
    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Tapjoy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to purchase item.  e: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    iput-boolean v7, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    .line 2153
    aget-object v3, p1, v6

    goto :goto_1

    .line 2134
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Ljava/lang/String;
    .restart local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    goto :goto_0

    .line 2143
    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    .line 2146
    const/4 v3, 0x0

    aget-object v3, p1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tapjoy/VGStoreItem;)V
    .locals 5
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    const/4 v4, 0x0

    .line 2158
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/tapjoy/TJCVirtualGoods;->access$18(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$19(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    .line 2159
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$20(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2162
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    if-eqz v0, :cond_2

    .line 2166
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0, p1}, Lcom/tapjoy/TJCVirtualGoods;->access$21(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/VGStoreItem;)V

    .line 2167
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    .line 2168
    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V

    .line 2167
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2174
    const-string v2, "Retry"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2167
    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$19(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    .line 2183
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$18(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->exceptionDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$18(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2250
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->networkTimeout:Z

    if-nez v0, :cond_1

    .line 2252
    const-string v0, "Virtual Goods"

    const-string v1, "Now fetch store items again..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-static {v0, v4}, Lcom/tapjoy/TJCVirtualGoods;->access$29(Lcom/tapjoy/TJCVirtualGoods;I)V

    .line 2255
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemTable:Landroid/widget/TableLayout;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$30(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 2256
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->storeItemArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$0(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2258
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$31(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;)V

    .line 2259
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->fetchAllStoreItems:Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$32(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods$FetchAndBuildStoreItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2263
    :cond_1
    return-void

    .line 2196
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    .line 2199
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->successfulPurchase:Z

    if-nez v0, :cond_4

    .line 2201
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$23(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2203
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    const-string v1, "Balance too low"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2205
    const-string v0, "You do not have enough balance to purchase this item."

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    .line 2209
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    .line 2210
    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$3;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$3;-><init>(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V

    .line 2209
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2217
    const-string v2, "Get More"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask$4;-><init>(Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2209
    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$26(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    .line 2232
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->getMoreItemDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$24(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2234
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2243
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->updateHeaderFooters(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$27(Lcom/tapjoy/TJCVirtualGoods;Landroid/content/Context;)V

    .line 2245
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->responseMessage:Ljava/lang/String;

    # invokes: Lcom/tapjoy/TJCVirtualGoods;->showItemDownloadedDialog(Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V
    invoke-static {v0, v1, p1}, Lcom/tapjoy/TJCVirtualGoods;->access$28(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_0

    .line 2188
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoods$PurchaseVirtualGoodTask;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method
