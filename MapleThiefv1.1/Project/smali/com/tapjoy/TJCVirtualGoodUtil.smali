.class public Lcom/tapjoy/TJCVirtualGoodUtil;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;,
        Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    }
.end annotation


# static fields
.field private static final TAPJOY_VIRTUAL_GOOD_UTIL:Ljava/lang/String; = "VirtualGoodUtil"

.field private static basePathSaveToPhone:Ljava/lang/String; = null

.field private static basePathSaveToSDCard:Ljava/lang/String; = null

.field public static currentTasks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static pendingTasks:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final poolSize:I = 0x1

.field private static tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

.field private static tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;

.field public static virtualGoodsUIOpened:Z


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private clientPackage:Ljava/lang/String;

.field public detailIndex:I

.field dialogErrorMessage:Ljava/lang/String;

.field private downloadPurchasedVGContext:Landroid/content/Context;

.field public errorMsgClickListener:Landroid/view/View$OnClickListener;

.field fetchPurchasedVGItems:Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;

.field private myDB:Landroid/database/sqlite/SQLiteDatabase;

.field public purchaseItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private purchasedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field public retryClickListener:Landroid/view/View$OnClickListener;

.field retryDetailClickListener:Landroid/view/View$OnClickListener;

.field private urlParams:Ljava/lang/String;

.field public virtualGoodsToDownload:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    .line 59
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsUIOpened:Z

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "client_package"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->downloadPurchasedVGContext:Landroid/content/Context;

    .line 62
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->detailIndex:I

    .line 73
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    .line 76
    iput-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->urlParams:Ljava/lang/String;

    .line 80
    const-string v3, ""

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    .line 252
    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$1;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$2;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$3;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$3;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->retryDetailClickListener:Landroid/view/View$OnClickListener;

    .line 84
    const-string v3, "VirtualGoodUtil"

    const-string v4, "TJCVirtualGoodUtil init"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vgDownloads/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToPhone:Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "externalRoot":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vgDownloads/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToSDCard:Ljava/lang/String;

    .line 94
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    .line 96
    new-instance v3, Lcom/tapjoy/TJCVirtualGoodsData;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Lcom/tapjoy/TJCVirtualGoodsData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;

    .line 98
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vgDownloads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "destFolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    const-string v3, "VirtualGoodUtil"

    const-string v4, "vgDownloads directory created at device....."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tempZipDownloads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const-string v3, "VirtualGoodUtil"

    const-string v4, "temporary zip file directory generated at device"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_1
    const-string v3, "VirtualGoodUtil"

    const-string v4, "TJCVirtualGoodUtil init DONE"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3()Lcom/tapjoy/TJCVirtualGoodsData;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToSDCard:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Lcom/tapjoy/TJCVirtualGoodsConnection;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->downloadPurchasedVGContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z
    .locals 6
    .param p1, "params"    # [Lcom/tapjoy/VGStoreItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;[",
            "Lcom/tapjoy/VGStoreItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "asyncTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1026
    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addTask size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pending size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 1030
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    if-eqz p1, :cond_0

    .line 1038
    :try_start_0
    const-string v1, "VirtualGoodUtil"

    const-string v2, "execute with params"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1059
    :goto_0
    return v4

    .line 1043
    :cond_0
    const-string v1, "VirtualGoodUtil"

    const-string v2, "execute"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1053
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1054
    .local v0, "task":[Ljava/lang/Object;
    aput-object p0, v0, v5

    .line 1055
    aput-object p1, v0, v4

    .line 1056
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static removeTask(Landroid/os/AsyncTask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1064
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1067
    const/4 v0, 0x1

    .line 1069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelExecution()V
    .locals 5

    .prologue
    .line 1002
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1003
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1018
    return-void

    .line 1005
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1006
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .line 1008
    .local v0, "dGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    .line 1012
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 1016
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkForVirtualGoods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "urlParameters"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string v0, "VirtualGoodUtil"

    const-string v1, "checkForVirtualGoods"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    if-nez v0, :cond_0

    .line 894
    iput-object p3, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    .line 895
    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->urlParams:Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/tapjoy/TJCVirtualGoodsConnection;

    const-string v1, "https://ws.tapjoyads.com/"

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->urlParams:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoodsConnection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGConnection:Lcom/tapjoy/TJCVirtualGoodsConnection;

    .line 900
    :cond_0
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->downloadPurchasedVGContext:Landroid/content/Context;

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    .line 904
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;Lcom/tapjoy/TJCVirtualGoodUtil$CheckForVirtualGoodsTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 905
    return-void
.end method

.method public downLoadPurcahasedVirtualGood(Ljava/util/List;Landroid/widget/TableLayout;I)V
    .locals 15
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;",
            "Landroid/widget/TableLayout;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "purchasedItems":Ljava/util/List;, "Ljava/util/List<Lcom/tapjoy/VGStoreItem;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v2, "allPurchsedStoreItemsIds":Ljava/lang/StringBuilder;
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->myDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 140
    .local v3, "cursor":Landroid/database/Cursor;
    const-string v11, "VGStoreItemID"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, "firstNameColumn":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 149
    :cond_0
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "firstName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    .line 147
    if-nez v11, :cond_0

    .line 156
    .end local v5    # "firstName":Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 157
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 160
    const-string v1, ""

    .line 162
    .local v1, "allItems":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 163
    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object/from16 v11, p1

    .line 165
    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->purchaseItems:Ljava/util/ArrayList;

    .line 169
    move/from16 v7, p3

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-lt v7, v11, :cond_3

    .line 204
    return-void

    .line 171
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tapjoy/VGStoreItem;

    .line 172
    .local v10, "vgItem":Lcom/tapjoy/VGStoreItem;
    if-eqz v10, :cond_4

    .line 175
    invoke-virtual {v10}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 177
    const-string v11, "VirtualGoodUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download this purchased vg: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-direct {v4, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    .line 180
    .local v4, "dGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    mul-int/lit8 v11, v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 181
    .local v9, "v":Landroid/view/View;
    instance-of v11, v9, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_4

    move-object v8, v9

    .line 183
    check-cast v8, Landroid/widget/LinearLayout;

    .line 185
    .local v8, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_progress_bar"

    const-string v13, "id"

    iget-object v14, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iget-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 188
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_download_status_text"

    const-string v13, "id"

    iget-object v14, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 189
    iget-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v12, "Download Pending"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_retry_button"

    const-string v13, "id"

    iget-object v14, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    .line 192
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "vg_row_error_icon"

    const-string v13, "id"

    iget-object v14, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    .line 194
    iget-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->retryClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v11, v4, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->errorMsgClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v11, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v10}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/4 v11, 0x1

    new-array v11, v11, [Lcom/tapjoy/VGStoreItem;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    invoke-static {v4, v11}, Lcom/tapjoy/TJCVirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 169
    .end local v4    # "dGood":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    .end local v8    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v9    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public getdownloadVirtualGoods()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    return-object v0
.end method

.method public removeAndExecuteNext(Landroid/os/AsyncTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            "Ljava/lang/Integer;",
            "Lcom/tapjoy/VGStoreItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "atask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/tapjoy/VGStoreItem;Ljava/lang/Integer;Lcom/tapjoy/VGStoreItem;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1075
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoodUtil;->removeTask(Landroid/os/AsyncTask;)Z

    .line 1076
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 1078
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1079
    .local v0, "task":[Ljava/lang/Object;
    sget-object v1, Lcom/tapjoy/TJCVirtualGoodUtil;->pendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1080
    aget-object v1, v0, v3

    check-cast v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    aget-object v2, v0, v2

    check-cast v2, [Lcom/tapjoy/VGStoreItem;

    invoke-static {v1, v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 1082
    .end local v0    # "task":[Ljava/lang/Object;
    :cond_0
    return v3
.end method

.method public retryDownloadVG(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V
    .locals 8
    .param p1, "failedTask"    # Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 217
    new-instance v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    .line 219
    .local v0, "retryTask":Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
    const-string v2, "VirtualGoodUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RETRY DOWNLOAD VG: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/VGStoreItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    .line 222
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 224
    iget-object v2, p1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    .line 225
    iget-object v2, p1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 227
    iget-object v2, p1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    .line 228
    iget-object v2, p1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    iput-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    .line 229
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v3, "Download Pending"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v2, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iput v5, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 235
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;
    invoke-static {p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->access$3(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/VGStoreItem;

    move-result-object v1

    .line 237
    .local v1, "vgItem":Lcom/tapjoy/VGStoreItem;
    invoke-virtual {p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    .line 238
    invoke-virtual {p1, v7}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 249
    :cond_1
    new-array v2, v7, [Lcom/tapjoy/VGStoreItem;

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->addTask(Landroid/os/AsyncTask;[Lcom/tapjoy/VGStoreItem;)Z

    .line 250
    return-void
.end method

.method public setDetailIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->detailIndex:I

    .line 209
    return-void
.end method

.method public setPurchasedItemArray(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1087
    .local p1, "purchasedItemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->purchasedItemArray:Ljava/util/ArrayList;

    .line 1088
    return-void
.end method

.method public showDLErrorDialog()V
    .locals 4

    .prologue
    .line 852
    const/4 v0, 0x0

    .line 853
    .local v0, "alert":Landroid/app/AlertDialog;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 856
    const-string v2, "An error occured while downloading the contents of acquired item."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 860
    :goto_0
    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$4;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 872
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_1
    return-void

    .line 858
    :cond_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 874
    :catch_0
    move-exception v2

    goto :goto_1
.end method
