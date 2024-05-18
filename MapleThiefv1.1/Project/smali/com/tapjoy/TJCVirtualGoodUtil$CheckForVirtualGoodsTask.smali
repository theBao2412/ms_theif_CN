.class Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForVirtualGoodsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoodUtil;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;)V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 912
    const/4 v6, 0x0

    .line 915
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    sget-boolean v9, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsUIOpened:Z

    if-eqz v9, :cond_0

    .line 917
    const-string v9, "VirtualGoodUtil"

    const-string v10, "virtual goods UI is already open -- aborting check for virtual goods"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const/4 v6, 0x0

    .line 923
    :cond_0
    :try_start_0
    const-string v9, "VirtualGoodUtil"

    const-string v10, "fetchPurchasedVGItems"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$6()Lcom/tapjoy/TJCVirtualGoodsConnection;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x19

    invoke-virtual {v9, v10, v11}, Lcom/tapjoy/TJCVirtualGoodsConnection;->getAllPurchasedItemsFromServer(II)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "response":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 928
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/tapjoy/TJCVirtualGoodsData;->parseVGItemListResponse(Ljava/lang/String;ILandroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 936
    .end local v5    # "response":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v6, :cond_4

    .line 938
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 940
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v1, "downloadedVirtualGoodsIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 943
    .local v4, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v9, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 944
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v9, "VGStoreItemID"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 948
    .local v8, "vgStoreItemIDIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 949
    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 954
    :cond_2
    new-instance v9, Ljava/lang/String;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 951
    if-nez v9, :cond_2

    .line 962
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 963
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 967
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_5

    .line 997
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "downloadedVirtualGoodsIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "vgStoreItemIDIndex":I
    :cond_4
    :goto_2
    return-void

    .line 969
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "downloadedVirtualGoodsIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v4    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "vgStoreItemIDIndex":I
    :cond_5
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tapjoy/VGStoreItem;

    .line 975
    .local v7, "vgItem":Lcom/tapjoy/VGStoreItem;
    if-eqz v7, :cond_6

    .line 979
    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 981
    sput-boolean v13, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsUIOpened:Z

    .line 984
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->downloadPurchasedVGContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$7(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/tapjoy/DownloadVirtualGood;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 985
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 986
    const-string v9, "NAME"

    invoke-virtual {v7}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string v9, "URL_PARAMS"

    iget-object v10, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->urlParams:Ljava/lang/String;
    invoke-static {v10}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$8(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    sput-boolean v12, Lcom/tapjoy/TJCVirtualGoods;->doNotify:Z

    .line 991
    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->downloadPurchasedVGContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$7(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 967
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 931
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "downloadedVirtualGoodsIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v4    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "vgItem":Lcom/tapjoy/VGStoreItem;
    .end local v8    # "vgStoreItemIDIndex":I
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method
