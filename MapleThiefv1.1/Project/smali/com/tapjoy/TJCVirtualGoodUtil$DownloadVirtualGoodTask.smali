.class public Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;
.super Landroid/os/AsyncTask;
.source "TJCVirtualGoodUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadVirtualGoodTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tapjoy/VGStoreItem;",
        "Ljava/lang/Integer;",
        "Lcom/tapjoy/VGStoreItem;",
        ">;"
    }
.end annotation


# instance fields
.field public downloadCancel:Z

.field public localDownloadStatusText:Landroid/widget/TextView;

.field public localErrorIcon:Landroid/widget/ImageView;

.field public localProgressBar:Landroid/widget/ProgressBar;

.field public localRetryButton:Landroid/widget/Button;

.field public progressPercent:I

.field saveToSDCard:Z

.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

.field private vgItem:Lcom/tapjoy/VGStoreItem;

.field public virtualGoodDownloadStatus:I


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 315
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 310
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->downloadCancel:Z

    .line 311
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    .line 313
    iput v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->progressPercent:I

    .line 317
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    .line 318
    iput v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;Z)V
    .locals 2
    .param p2, "saveToSD"    # Z

    .prologue
    const/4 v1, 0x0

    .line 325
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 321
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 310
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->downloadCancel:Z

    .line 311
    iput-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    .line 313
    iput v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->progressPercent:I

    .line 323
    iput-boolean p2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    .line 324
    iput v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    return-void
.end method

.method static synthetic access$3(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/VGStoreItem;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)Lcom/tapjoy/TJCVirtualGoodUtil;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    return-object v0
.end method

.method private downLoadVirtualGood(Lcom/tapjoy/VGStoreItem;Z)Z
    .locals 37
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "downloadToSDCard"    # Z

    .prologue
    .line 626
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "downloadVirtualGood: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", sd_download: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Downloading virtual good data for: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/16 v23, 0x0

    .line 630
    .local v23, "success":Z
    const/16 v17, 0x0

    .line 632
    .local v17, "networkTimeout":Z
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v30

    .line 633
    .local v30, "zipURL":Ljava/lang/String;
    const/16 v29, 0x0

    .line 634
    .local v29, "zipFileLocation":Ljava/lang/String;
    const/16 v28, 0x0

    .line 637
    .local v28, "zipExtractLocation":Ljava/lang/String;
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 639
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->publishProgress([Ljava/lang/Object;)V

    .line 642
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    if-nez v31, :cond_3

    .line 644
    const-string v31, "VirtualGoodUtil"

    const-string v32, "No zip file associated with virtual good."

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/16 v23, 0x1

    .line 801
    :cond_0
    :goto_0
    if-eqz v23, :cond_2

    .line 804
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$3()Lcom/tapjoy/TJCVirtualGoodsData;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoodsData;->saveInfo(Lcom/tapjoy/VGStoreItem;Z)V

    .line 806
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 807
    const/16 v31, 0x14

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 811
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_1

    .line 815
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$3()Lcom/tapjoy/TJCVirtualGoodsData;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoodsData;->deleteVGZip(Lcom/tapjoy/VGStoreItem;Z)V

    .line 817
    :cond_1
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x64

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->publishProgress([Ljava/lang/Object;)V

    .line 823
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v18

    .line 824
    .local v18, "new_value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v31, v0

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static/range {v31 .. v31}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 832
    .local v15, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .local v21, "p":Ljava/lang/StringBuilder;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "UPDATE tapjoy_VGStoreItemAttribute SET AttributeValue=\'"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\' "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "WHERE VGStoreItemID=\'"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "\' AND AttributeName=\'quantity\'"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 843
    .end local v15    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "new_value":I
    .end local v21    # "p":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "downloadVirtualGood success: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return v23

    .line 649
    :cond_3
    const-string v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 651
    .local v16, "n":I
    const/16 v31, -0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 653
    add-int/lit8 v31, v16, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 655
    .local v22, "storeItemFolder":Ljava/lang/String;
    if-eqz v22, :cond_4

    const-string v31, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_4

    .line 658
    const/16 v31, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x4

    move-object/from16 v0, v22

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 660
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 662
    .local v6, "externalRoot":Ljava/lang/String;
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "externalRoot: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 666
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v32, v0

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$1(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/tempZipDownloads/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 667
    new-instance v31, Ljava/lang/StringBuilder;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToSDCard:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$4()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 676
    .end local v6    # "externalRoot":Ljava/lang/String;
    :cond_4
    :goto_3
    const/16 v27, 0x1

    .line 677
    .local v27, "zipDownloaded":Z
    const/4 v12, 0x0

    .line 678
    .local v12, "inputStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .line 680
    .local v19, "out":Ljava/io/OutputStream;
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "downloading zip file: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :try_start_1
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 685
    .local v10, "fileURL":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 686
    .local v4, "connection":Ljava/net/URLConnection;
    const/16 v31, 0x3a98

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 687
    const/16 v31, 0x7530

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 688
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 690
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 692
    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .local v13, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9

    .line 693
    .local v9, "fileLength":I
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    .local v8, "fileDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 698
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "created directory at: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    :cond_5
    new-instance v7, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ".zip"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .local v7, "file":Ljava/io/File;
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 703
    .end local v19    # "out":Ljava/io/OutputStream;
    .local v20, "out":Ljava/io/OutputStream;
    const/16 v31, 0x400

    :try_start_3
    move/from16 v0, v31

    new-array v3, v0, [B

    .line 706
    .local v3, "buf":[B
    const-wide/16 v25, 0x0

    .line 708
    .local v25, "total":J
    :goto_4
    invoke-virtual {v13, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v14, v0, :cond_7

    .line 717
    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 718
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 720
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "ZIP FILE SIZE: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v33

    invoke-virtual/range {v32 .. v34}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v7}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-wide v31

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-nez v31, :cond_10

    .line 724
    const/16 v17, 0x1

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object v12, v13

    .line 738
    .end local v3    # "buf":[B
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileDir":Ljava/io/File;
    .end local v9    # "fileLength":I
    .end local v10    # "fileURL":Ljava/net/URL;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v14    # "len":I
    .end local v25    # "total":J
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_5
    if-eqz v17, :cond_9

    .line 740
    const-string v31, "VirtualGoodUtil"

    const-string v32, "zip file not downloaded"

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 744
    const/16 v31, 0x29

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    .line 751
    :goto_6
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 752
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 754
    :catch_0
    move-exception v31

    goto/16 :goto_0

    .line 671
    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    .end local v27    # "zipDownloaded":Z
    .restart local v6    # "externalRoot":Ljava/lang/String;
    :cond_6
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "data/data/"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    move-object/from16 v32, v0

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->clientPackage:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$1(Lcom/tapjoy/TJCVirtualGoodUtil;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/tempZipDownloads/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 672
    new-instance v31, Ljava/lang/StringBuilder;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->basePathSaveToPhone:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$5()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_3

    .line 710
    .end local v6    # "externalRoot":Ljava/lang/String;
    .restart local v3    # "buf":[B
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileDir":Ljava/io/File;
    .restart local v9    # "fileLength":I
    .restart local v10    # "fileURL":Ljava/net/URL;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "len":I
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v25    # "total":J
    .restart local v27    # "zipDownloaded":Z
    :cond_7
    int-to-long v0, v14

    move-wide/from16 v31, v0

    add-long v25, v25, v31

    .line 713
    const/16 v31, 0x1

    :try_start_5
    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-wide/16 v33, 0x5a

    mul-long v33, v33, v25

    int-to-long v0, v9

    move-wide/from16 v35, v0

    div-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->publishProgress([Ljava/lang/Object;)V

    .line 714
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_4

    .line 726
    .end local v3    # "buf":[B
    .end local v14    # "len":I
    .end local v25    # "total":J
    :catch_1
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object v12, v13

    .line 728
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileDir":Ljava/io/File;
    .end local v9    # "fileLength":I
    .end local v10    # "fileURL":Ljava/net/URL;
    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_7
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Network timeout: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/16 v27, 0x0

    .line 730
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 732
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v5

    .line 734
    .local v5, "e":Ljava/lang/Exception;
    :goto_8
    const-string v31, "VirtualGoodUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string v33, "Error downloading zip file: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 746
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v31, 0x2a

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_6

    .line 761
    :cond_9
    const-string v31, "VirtualGoodUtil"

    const-string v32, "No network error."

    invoke-static/range {v31 .. v32}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz v27, :cond_d

    .line 766
    new-instance v24, Ljava/io/File;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".zip"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v24, "tempZipFile":Ljava/io/File;
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$3()Lcom/tapjoy/TJCVirtualGoodsData;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoodsData;->extractZipFileToFolder(Ljava/io/File;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 772
    const/16 v11, 0x5a

    .local v11, "i":I
    :goto_9
    const/16 v31, 0x64

    move/from16 v0, v31

    if-le v11, v0, :cond_a

    .line 777
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 774
    :cond_a
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->publishProgress([Ljava/lang/Object;)V

    .line 772
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 782
    .end local v11    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 783
    const/16 v31, 0x2b

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_0

    .line 785
    :cond_c
    const/16 v31, 0x2c

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_0

    .line 791
    .end local v24    # "tempZipFile":Ljava/io/File;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    .line 792
    const/16 v31, 0x2b

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_0

    .line 794
    :cond_e
    const/16 v31, 0x2c

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_0

    .line 809
    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "n":I
    .end local v19    # "out":Ljava/io/OutputStream;
    .end local v22    # "storeItemFolder":Ljava/lang/String;
    .end local v27    # "zipDownloaded":Z
    :cond_f
    const/16 v31, 0xa

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    goto/16 :goto_1

    .line 837
    :catch_3
    move-exception v31

    goto/16 :goto_2

    .line 732
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v10    # "fileURL":Ljava/net/URL;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v16    # "n":I
    .restart local v19    # "out":Ljava/io/OutputStream;
    .restart local v22    # "storeItemFolder":Ljava/lang/String;
    .restart local v27    # "zipDownloaded":Z
    :catch_4
    move-exception v5

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileDir":Ljava/io/File;
    .restart local v9    # "fileLength":I
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v20    # "out":Ljava/io/OutputStream;
    :catch_5
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_8

    .line 726
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileDir":Ljava/io/File;
    .end local v9    # "fileLength":I
    .end local v10    # "fileURL":Ljava/net/URL;
    :catch_6
    move-exception v5

    goto/16 :goto_7

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v10    # "fileURL":Ljava/net/URL;
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v5

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_7

    .end local v12    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    .restart local v3    # "buf":[B
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileDir":Ljava/io/File;
    .restart local v9    # "fileLength":I
    .restart local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "len":I
    .restart local v20    # "out":Ljava/io/OutputStream;
    .restart local v25    # "total":J
    :cond_10
    move-object/from16 v19, v20

    .end local v20    # "out":Ljava/io/OutputStream;
    .restart local v19    # "out":Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;
    .locals 2
    .param p1, "obj"    # [Lcom/tapjoy/VGStoreItem;

    .prologue
    .line 342
    const-string v0, "VirtualGoodUtil"

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    .line 345
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    iget-boolean v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->downLoadVirtualGood(Lcom/tapjoy/VGStoreItem;Z)Z

    .line 347
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->doInBackground([Lcom/tapjoy/VGStoreItem;)Lcom/tapjoy/VGStoreItem;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 330
    const-string v0, "VirtualGoodUtil"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 334
    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->downloadCancel:Z

    if-nez v0, :cond_0

    .line 336
    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->tapjoyVGData:Lcom/tapjoy/TJCVirtualGoodsData;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$3()Lcom/tapjoy/TJCVirtualGoodsData;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    iget-boolean v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->saveToSDCard:Z

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJCVirtualGoodsData;->deleteVGZip(Lcom/tapjoy/VGStoreItem;Z)V

    .line 338
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/tapjoy/VGStoreItem;)V
    .locals 7
    .param p1, "vgItem"    # Lcom/tapjoy/VGStoreItem;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 379
    const-string v2, "VirtualGoodUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostExecute: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    sparse-switch v2, :sswitch_data_0

    .line 586
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    invoke-virtual {v2, p0}, Lcom/tapjoy/TJCVirtualGoodUtil;->removeAndExecuteNext(Landroid/os/AsyncTask;)Z

    .line 594
    const-string v2, "VirtualGoodUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentTask size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodUtil;->currentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->virtualGoodDownloadStatus:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 599
    :cond_2
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    iget-object v2, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->virtualGoodsToDownload:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_3
    return-void

    .line 389
    :sswitch_0
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v3, "Download Completed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const-string v2, "VirtualGoodUtil"

    const-string v3, "*** Download completed! ***"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getVirtualGoodDownloadListener()Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getVirtualGoodDownloadListener()Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/tapjoy/TJCVirtualGoods$TapjoyDownloadListener;->onDownLoad(Lcom/tapjoy/VGStoreItem;)V

    goto/16 :goto_0

    .line 417
    :sswitch_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v3, "Download Failed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    const-string v3, "Download Failed"

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    .line 424
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " fail to download. Would you like to download again?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    const-string v2, "Cancel"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$1;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    const-string v2, "Retry"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$2;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 446
    .local v0, "alert":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 448
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 459
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_2
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localRetryButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 462
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    const-string v3, "Download Failed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    const-string v3, "No more space is available on Device and SD Card."

    iput-object v3, v2, Lcom/tapjoy/TJCVirtualGoodUtil;->dialogErrorMessage:Ljava/lang/String;

    .line 467
    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailViewFromDownloader(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    .line 473
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Not enough space on the device or SD card.  Free more space and try again."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 475
    const-string v2, "OK"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$3;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$3;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 485
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    :try_start_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 487
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 498
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :sswitch_3
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_5

    .line 499
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->cancel(Z)Z

    .line 501
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    # getter for: Lcom/tapjoy/TJCVirtualGoodUtil;->applicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tapjoy/TJCVirtualGoodUtil;->access$0(Lcom/tapjoy/TJCVirtualGoodUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not enough space on the device. Would you like to download Item \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v3}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on SD card?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 503
    const-string v2, "No"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$4;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    const-string v2, "Yes"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask$5;-><init>(Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 577
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    :try_start_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 579
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 381
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tapjoy/VGStoreItem;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->onPostExecute(Lcom/tapjoy/VGStoreItem;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 352
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    .local v0, "prog":I
    if-gez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 359
    :cond_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 360
    const/16 v0, 0x64

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localDownloadStatusText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downloading... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->localProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 368
    iput v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->progressPercent:I

    .line 371
    sget-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->isPurchasedItemDetailView:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->detailViewStoreID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->vgItem:Lcom/tapjoy/VGStoreItem;

    invoke-virtual {v2}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->updateDetailProgressBar(I)V

    .line 375
    :cond_2
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCVirtualGoodUtil$DownloadVirtualGoodTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
