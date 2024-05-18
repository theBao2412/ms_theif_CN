.class public Lcom/tapjoy/TJCVirtualGoodsData;
.super Ljava/lang/Object;
.source "TJCVirtualGoodsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;,
        Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;,
        Lcom/tapjoy/TJCVirtualGoodsData$TJCUtility;,
        Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;
    }
.end annotation


# static fields
.field public static final PREFS_CURRENCY_KEY:Ljava/lang/String; = "currencyName"

.field public static final PREFS_FILE_NAME:Ljava/lang/String; = "TJCPrefsFile"

.field public static final PREFS_POINTS_KEY:Ljava/lang/String; = "tapPoints"

.field private static final TAPJOY_DATABASE:Ljava/lang/String; = "TapjoyDatabase"

.field private static final TAPJOY_FILE_SYSTEM:Ljava/lang/String; = "TapjoyFileSystem"

.field private static final TAPJOY_VIRTUAL_GOODS_DATA:Ljava/lang/String; = "TapjoyVirtualGoodsData"

.field private static context:Landroid/content/Context;

.field private static currencyName:Ljava/lang/String;

.field private static tapPoints:Ljava/lang/String;

.field private static userID:Ljava/lang/String;


# instance fields
.field private basePathSaveToPhone:Ljava/lang/String;

.field private basePathSaveToSDCard:Ljava/lang/String;

.field private clientPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsData;->userID:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "clientpackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sput-object p1, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoodsData;->clientPackage:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodsData;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vgDownloads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoodsData;->basePathSaveToPhone:Ljava/lang/String;

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "externalRoot":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoodsData;->clientPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vgDownloads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tapjoy/TJCVirtualGoodsData;->basePathSaveToSDCard:Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    const-string v3, "TJCPrefsFile"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "currencyName"

    const-string v3, "Points"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->currencyName:Ljava/lang/String;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tapPoints"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->tapPoints:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static clearRow(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vgstoreItemID"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    .local v0, "myDB1":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM tapjoy_VGStoreItems WHERE VGStoreItemID=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 251
    return-void
.end method

.method public static createFilesAndFolders(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)V
    .locals 16
    .param p0, "destFolder"    # Ljava/lang/String;
    .param p1, "zipentry"    # Ljava/util/zip/ZipEntry;
    .param p2, "zipFile"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "entryName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 774
    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, " "

    const-string v15, "%20"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 778
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 780
    const-string v13, "TapjoyFileSystem"

    const-string v14, "Created directory"

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    .end local v3    # "dir":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    :try_start_0
    const-string v9, ""

    .line 789
    .local v9, "folder":Ljava/lang/String;
    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-le v13, v14, :cond_2

    .line 791
    const/4 v13, 0x0

    const-string v14, "/"

    invoke-virtual {v5, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 793
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 794
    .local v12, "newPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v3    # "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 797
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 798
    const-string v13, "TapjoyFileSystem"

    const-string v14, "Created directory"

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .end local v3    # "dir":Ljava/io/File;
    .end local v12    # "newPath":Ljava/lang/String;
    :cond_2
    const-string v13, "/"

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 803
    .local v7, "fileName":Ljava/lang/String;
    const-string v13, "."

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 805
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "DOT"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 806
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 809
    :cond_3
    const-string v13, " "

    const-string v14, "%20"

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 810
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 813
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 815
    .local v2, "buf":[B
    const/4 v8, 0x0

    .line 816
    .local v8, "fileoutputstream":Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 817
    .restart local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 818
    .local v10, "inputStream":Ljava/io/InputStream;
    :goto_1
    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v10, v2, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .local v11, "n":I
    const/4 v13, -0x1

    if-gt v11, v13, :cond_4

    .line 820
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 827
    .end local v2    # "buf":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    .end local v9    # "folder":Ljava/lang/String;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "n":I
    :catch_0
    move-exception v4

    .line 829
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "TapjoyFileSystem"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "createFilesAndFolders: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    throw v4

    .line 819
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "buf":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "fileoutputstream":Ljava/io/FileOutputStream;
    .restart local v9    # "folder":Ljava/lang/String;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "n":I
    :cond_4
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v8, v2, v13, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 900
    const-string v4, "TapjoyFileSystem"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deleting directory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 923
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 927
    :cond_1
    return v3

    .line 913
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tapjoy/TJCVirtualGoodsData;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 915
    .local v2, "success":Z
    if-eqz v2, :cond_1

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getCurrencyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodsData;->currencyName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataFileHashForVGStoreItemID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vgstoreItemID"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 221
    .local v2, "myDB1":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT DataFileHash FROM tapjoy_VGStoreItems WHERE VGStoreItemID=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 223
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, ""

    .line 225
    .local v1, "dataFileHash":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const-string v3, "DataFileHash"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_1
    return-object v1
.end method

.method public static getPoints()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodsData;->tapPoints:Ljava/lang/String;

    return-object v0
.end method

.method public static getPurchasedItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 38
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v29, "purchasedItemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v24

    .line 90
    .local v24, "myDB1":Landroid/database/sqlite/SQLiteDatabase;
    const-string v36, "SELECT i.VGStoreItemID,i.AppleProductID,i.Price,i.Name,i.Description,i.ItemTypeName,i.ItemsOwned,i.ThumbImageName,i.FullImageName,i.DataFileName,i.DataFileHash,a.AttributeName,a.AttributeValue FROM tapjoy_VGStoreItems i   left join tapjoy_VGStoreItemAttribute a on (i.VGStoreItemID=a.VGStoreItemID )  "

    const/16 v37, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 92
    .local v9, "cursor":Landroid/database/Cursor;
    const-string v36, "VGStoreItemID"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 93
    .local v35, "vgStoreItemID":I
    const-string v36, "AttributeName"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 94
    .local v6, "attributeNameIndex":I
    const-string v36, "AttributeValue"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 95
    .local v8, "attributeValueIndex":I
    const-string v36, "AppleProductID"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "appleProductIdIndex":I
    const-string v36, "Price"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 97
    .local v28, "priceIndex":I
    const-string v36, "Name"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 98
    .local v26, "nameIndex":I
    const-string v36, "Description"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 99
    .local v15, "descriptionIndex":I
    const-string v36, "ItemTypeName"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 100
    .local v21, "itemTypeNameIndex":I
    const-string v36, "ItemsOwned"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 101
    .local v19, "itemOwnedIndex":I
    const-string v36, "ThumbImageName"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 102
    .local v32, "thumbImageNameIndex":I
    const-string v36, "FullImageName"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 103
    .local v17, "fullImageNameIndex":I
    const-string v36, "DataFileName"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 104
    .local v13, "dataFileNameIndex":I
    const-string v36, "DataFileHash"

    move-object/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 106
    .local v11, "dataFileHashIndex":I
    const-string v30, ""

    .line 107
    .local v30, "storeID":Ljava/lang/String;
    const-string v3, ""

    .line 109
    .local v3, "appeProductId":Ljava/lang/String;
    const-string v25, ""

    .line 110
    .local v25, "name":Ljava/lang/String;
    const-string v14, ""

    .line 111
    .local v14, "description":Ljava/lang/String;
    const-string v20, ""

    .line 113
    .local v20, "itemTypeName":Ljava/lang/String;
    const-string v31, ""

    .line 114
    .local v31, "thumbImageName":Ljava/lang/String;
    const-string v16, ""

    .line 115
    .local v16, "fullImageName":Ljava/lang/String;
    const-string v12, ""

    .line 116
    .local v12, "dataFileName":Ljava/lang/String;
    const-string v5, ""

    .line 117
    .local v5, "attributeName":Ljava/lang/String;
    const-string v7, ""

    .line 118
    .local v7, "attributeValue":Ljava/lang/String;
    const-string v10, ""

    .line 120
    .local v10, "dataFileHash":Ljava/lang/String;
    const/16 v34, 0x0

    .line 124
    .local v34, "vgItems":Lcom/tapjoy/VGStoreItem;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    invoke-interface {v9}, Landroid/database/Cursor;->isFirst()Z

    move-result v36

    if-eqz v36, :cond_2

    .line 128
    const-string v18, ","

    .line 131
    .local v18, "ids":Ljava/lang/String;
    :cond_0
    move/from16 v0, v35

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 133
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_4

    .line 135
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 138
    new-instance v33, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-direct/range {v33 .. v33}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .line 139
    .local v33, "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-static {v5}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 140
    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 142
    if-eqz v34, :cond_1

    .line 144
    invoke-virtual/range {v34 .. v34}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v36

    if-eqz v36, :cond_3

    .line 145
    invoke-virtual/range {v34 .. v34}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    .line 129
    if-nez v36, :cond_0

    .line 205
    .end local v18    # "ids":Ljava/lang/String;
    .end local v33    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 208
    return-object v29

    .line 148
    .restart local v18    # "ids":Ljava/lang/String;
    .restart local v33    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v23, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 156
    .end local v23    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    .end local v33    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    :cond_4
    new-instance v34, Lcom/tapjoy/VGStoreItem;

    .end local v34    # "vgItems":Lcom/tapjoy/VGStoreItem;
    invoke-direct/range {v34 .. v34}, Lcom/tapjoy/VGStoreItem;-><init>()V

    .line 157
    .restart local v34    # "vgItems":Lcom/tapjoy/VGStoreItem;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 159
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 161
    .local v27, "price":Ljava/lang/Integer;
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 162
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 163
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 164
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 165
    .local v22, "itemsOwned":Ljava/lang/Integer;
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 166
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 167
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 168
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 170
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 172
    new-instance v33, Lcom/tapjoy/VGStoreItemAttributeValue;

    invoke-direct/range {v33 .. v33}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .line 173
    .restart local v33    # "vgAttribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-static {v5}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 174
    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 176
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .restart local v23    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    if-eqz v33, :cond_5

    invoke-virtual/range {v33 .. v33}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_5

    .line 179
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_5
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemID(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/tapjoy/VGStoreItem;->setProductID(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setPrice(I)V

    .line 184
    invoke-static/range {v25 .. v25}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setName(Ljava/lang/String;)V

    .line 185
    invoke-static {v14}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setDescription(Ljava/lang/String;)V

    .line 186
    invoke-static/range {v20 .. v20}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemTypeName(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 188
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setThumbImageUrl(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setFullImageUrl(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lcom/tapjoy/VGStoreItem;->setDataFileHash(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    .line 195
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodsData;->userID:Ljava/lang/String;

    return-object v0
.end method

.method private static parseNodeForStoreItems(Lorg/w3c/dom/Node;)Lcom/tapjoy/VGStoreItem;
    .locals 9
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 497
    const-string v6, ""

    .line 498
    .local v6, "str":Ljava/lang/String;
    const/4 v5, 0x0

    .line 500
    .local v5, "storeItem":Lcom/tapjoy/VGStoreItem;
    if-eqz p0, :cond_b

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 502
    new-instance v5, Lcom/tapjoy/VGStoreItem;

    .end local v5    # "storeItem":Lcom/tapjoy/VGStoreItem;
    invoke-direct {v5}, Lcom/tapjoy/VGStoreItem;-><init>()V

    .restart local v5    # "storeItem":Lcom/tapjoy/VGStoreItem;
    move-object v0, p0

    .line 504
    check-cast v0, Lorg/w3c/dom/Element;

    .line 506
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v7, "VGStoreItemID"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 507
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 508
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemID(Ljava/lang/String;)V

    .line 510
    :cond_0
    const-string v7, "AppleProductID"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 511
    if-eqz v6, :cond_1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 512
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setProductID(Ljava/lang/String;)V

    .line 514
    :cond_1
    const-string v7, "Price"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 515
    if-eqz v6, :cond_2

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 516
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setPrice(I)V

    .line 518
    :cond_2
    const-string v7, "Name"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 519
    if-eqz v6, :cond_3

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 520
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setName(Ljava/lang/String;)V

    .line 522
    :cond_3
    const-string v7, "Description"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 523
    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 524
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setDescription(Ljava/lang/String;)V

    .line 526
    :cond_4
    const-string v7, "VGStoreItemTypeName"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 527
    if-eqz v6, :cond_5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 528
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemTypeName(Ljava/lang/String;)V

    .line 530
    :cond_5
    const-string v7, "NumberOwned"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 531
    if-eqz v6, :cond_6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 532
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setNumberOwned(I)V

    .line 534
    :cond_6
    const-string v7, "ThumbImageURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 535
    if-eqz v6, :cond_7

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 536
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setThumbImageUrl(Ljava/lang/String;)V

    .line 538
    :cond_7
    const-string v7, "FullImageURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 539
    if-eqz v6, :cond_8

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 540
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setFullImageUrl(Ljava/lang/String;)V

    .line 542
    :cond_8
    const-string v7, "DatafileURL"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 543
    if-eqz v6, :cond_9

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 544
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setDatafileUrl(Ljava/lang/String;)V

    .line 546
    :cond_9
    const-string v7, "DataHash"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-static {v7}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    .line 547
    if-eqz v6, :cond_a

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 548
    invoke-virtual {v5, v6}, Lcom/tapjoy/VGStoreItem;->setDataFileHash(Ljava/lang/String;)V

    .line 552
    :cond_a
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoodsData;->parseNodeForStoreItemsAttributes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/tapjoy/VGStoreItem;->setVgStoreItemsAttributeValueList(Ljava/util/ArrayList;)V

    .line 559
    .end local v0    # "element":Lorg/w3c/dom/Element;
    :cond_b
    :try_start_0
    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v2

    .line 560
    .local v2, "new_value":I
    sget-object v7, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 561
    .local v1, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .local v4, "q":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UPDATE tapjoy_VGStoreItems SET ItemsOwned=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WHERE VGStoreItemID=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v3, "p":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UPDATE tapjoy_VGStoreItemAttribute SET AttributeValue=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "WHERE VGStoreItemID=\'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND AttributeName=\'quantity\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "new_value":I
    .end local v3    # "p":Ljava/lang/StringBuilder;
    .end local v4    # "q":Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 573
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private static parseNodeForStoreItemsAttributes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItemAttributeValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 584
    .local v0, "element":Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    .line 585
    .local v2, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v5, ""

    .line 587
    .local v5, "str":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v4, "storeItemAtrributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItemAttributeValue;>;"
    const-string v6, "VGStoreItemAttributeValueReturnClass"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 590
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 611
    return-object v4

    .line 592
    :cond_0
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 593
    const/4 v3, 0x0

    .line 594
    .local v3, "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 596
    new-instance v3, Lcom/tapjoy/VGStoreItemAttributeValue;

    .end local v3    # "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    invoke-direct {v3}, Lcom/tapjoy/VGStoreItemAttributeValue;-><init>()V

    .restart local v3    # "storeItemAtrribute":Lcom/tapjoy/VGStoreItemAttributeValue;
    move-object v0, p0

    .line 597
    check-cast v0, Lorg/w3c/dom/Element;

    .line 599
    const-string v6, "AttributeType"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 600
    if-eqz v5, :cond_1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 601
    invoke-virtual {v3, v5}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeType(Ljava/lang/String;)V

    .line 603
    :cond_1
    const-string v6, "AttributeValue"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 604
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 605
    invoke-virtual {v3, v5}, Lcom/tapjoy/VGStoreItemAttributeValue;->setAttributeValue(Ljava/lang/String;)V

    .line 608
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parsePurchaseVGWithCurrencyResponse(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 287
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 293
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    const-string v12, "UTF-8"

    invoke-virtual {p0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 295
    .local v9, "is":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 296
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 298
    .local v3, "doc":Lorg/w3c/dom/Document;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "connectReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "UserAccountObject"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 304
    .local v10, "node":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lt v8, v12, :cond_0

    .line 334
    const-string v12, "TapjoyConnectReturnObject"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 336
    const/4 v8, 0x0

    :goto_1
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lt v8, v12, :cond_4

    .line 387
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "connectReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "node":Lorg/w3c/dom/NodeList;
    :goto_2
    return-object v2

    .line 306
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "connectReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "i":I
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "node":Lorg/w3c/dom/NodeList;
    :cond_0
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 307
    .local v7, "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v13, :cond_3

    .line 309
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 312
    .local v5, "element":Lorg/w3c/dom/Element;
    const-string v12, "TapPoints"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, "str":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 315
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoodsData;->savePoints(I)V

    .line 319
    :cond_1
    const-string v12, "PointsID"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 320
    if-eqz v11, :cond_2

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 322
    invoke-static {v11}, Lcom/tapjoy/TJCVirtualGoodsData;->saveUserID(Ljava/lang/String;)V

    .line 326
    :cond_2
    const-string v12, "CurrencyName"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 327
    if-eqz v11, :cond_3

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 329
    invoke-static {v11}, Lcom/tapjoy/TJCVirtualGoodsData;->saveCurrencyName(Ljava/lang/String;)V

    .line 304
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "str":Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 338
    .end local v7    # "firstNode":Lorg/w3c/dom/Node;
    :cond_4
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 339
    .restart local v7    # "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v13, :cond_5

    .line 341
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 345
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    const-string v12, "Message"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 346
    .restart local v11    # "str":Ljava/lang/String;
    if-eqz v11, :cond_6

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 348
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_3
    const-string v12, "Success"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 357
    if-eqz v11, :cond_7

    .line 359
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :goto_4
    const-string v12, "ErrorMessage"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-static {v12}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    .line 368
    if-eqz v11, :cond_8

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 370
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v11    # "str":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 353
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    .restart local v11    # "str":Ljava/lang/String;
    :cond_6
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 382
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "connectReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "firstNode":Lorg/w3c/dom/Node;
    .end local v8    # "i":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "node":Lorg/w3c/dom/NodeList;
    .end local v11    # "str":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 384
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "TapjoyVirtualGoodsData"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "parseVGPurchaseResponse: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 364
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "connectReturnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    .restart local v7    # "firstNode":Lorg/w3c/dom/Node;
    .restart local v8    # "i":I
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "node":Lorg/w3c/dom/NodeList;
    .restart local v11    # "str":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 375
    :cond_8
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public static parseVGItemListResponse(Ljava/lang/String;ILandroid/content/Context;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "itemType"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tapjoy/VGStoreItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 406
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v11, 0x0

    .line 407
    .local v11, "nodelist":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .line 408
    .local v10, "node":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 409
    .local v4, "element":Lorg/w3c/dom/Element;
    const-string v13, ""

    .line 413
    .local v13, "str":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayInputStream;

    const-string v14, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 415
    .local v8, "is":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 416
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 418
    .local v2, "doc":Lorg/w3c/dom/Document;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v12, "storeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    const-string v14, "UserAccountObject"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 422
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v7, v14, :cond_2

    .line 454
    const-string v14, "VGStoreItemReturnClass"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 455
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lt v7, v14, :cond_6

    .line 463
    const-string v14, "MoreDataAvailable"

    invoke-interface {v2, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 464
    const/4 v9, 0x0

    .line 466
    .local v9, "moreDataAvailable":I
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_0

    .line 468
    move-object v0, v10

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 470
    invoke-static {v11}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v13

    .line 471
    if-eqz v13, :cond_0

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 473
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 477
    :cond_0
    if-nez p1, :cond_7

    .line 478
    sput v9, Lcom/tapjoy/VGStoreItem;->availableItemsMoreDataAvailable:I

    .line 483
    :cond_1
    :goto_2
    return-object v12

    .line 424
    .end local v9    # "moreDataAvailable":I
    :cond_2
    invoke-interface {v11, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 425
    .local v6, "firstNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 427
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 430
    const-string v14, "TapPoints"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v13

    .line 431
    if-eqz v13, :cond_3

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 433
    const-string v14, "TapjoyVirtualGoodsData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Virtual Currency: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/tapjoy/TJCVirtualGoodsData;->savePoints(I)V

    .line 439
    :cond_3
    const-string v14, "PointsID"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v13

    .line 440
    if-eqz v13, :cond_4

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 442
    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData;->saveUserID(Ljava/lang/String;)V

    .line 446
    :cond_4
    const-string v14, "CurrencyName"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    invoke-static {v14}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v13

    .line 447
    if-eqz v13, :cond_5

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 449
    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData;->saveCurrencyName(Ljava/lang/String;)V

    .line 422
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 457
    .end local v6    # "firstNode":Lorg/w3c/dom/Node;
    :cond_6
    invoke-interface {v11, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 459
    invoke-static {v10}, Lcom/tapjoy/TJCVirtualGoodsData;->parseNodeForStoreItems(Lorg/w3c/dom/Node;)Lcom/tapjoy/VGStoreItem;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 479
    .restart local v9    # "moreDataAvailable":I
    :cond_7
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 480
    sput v9, Lcom/tapjoy/VGStoreItem;->purchasedItemsMoreDataAvailable:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 485
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "moreDataAvailable":I
    .end local v12    # "storeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tapjoy/VGStoreItem;>;"
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "TapjoyVirtualGoodsData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "parseVGItemListResponse: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v14, Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static rowExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "vgstoreItemID"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 263
    .local v1, "myDB1":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM tapjoy_VGStoreItems WHERE VGStoreItemID=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 267
    .local v2, "rowExists":Z
    if-eqz v0, :cond_1

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/4 v2, 0x1

    .line 272
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    return v2
.end method

.method private static saveCurrencyName(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 636
    sget-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    const-string v3, "TJCPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 637
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 638
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "currencyName"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    sput-object p0, Lcom/tapjoy/TJCVirtualGoodsData;->currencyName:Ljava/lang/String;

    .line 642
    return-void
.end method

.method private static savePoints(I)V
    .locals 5
    .param p0, "points"    # I

    .prologue
    .line 621
    sget-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    const-string v3, "TJCPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 622
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 623
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "tapPoints"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 624
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tapjoy/TJCVirtualGoodsData;->tapPoints:Ljava/lang/String;

    .line 627
    return-void
.end method

.method private static saveUserID(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 651
    sput-object p0, Lcom/tapjoy/TJCVirtualGoodsData;->userID:Ljava/lang/String;

    .line 652
    return-void
.end method


# virtual methods
.method public deleteVGZip(Lcom/tapjoy/VGStoreItem;Z)V
    .locals 11
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "saveToSDCard"    # Z

    .prologue
    .line 837
    if-nez p1, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "zipURL":Ljava/lang/String;
    const/4 v6, 0x0

    .line 845
    .local v6, "zipFileLocation":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 848
    const-string v8, "TapjoyFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "delete getDatafileUrl: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 851
    .local v2, "last_slash":I
    const/4 v8, 0x0

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 853
    .local v3, "second_to_last_slash":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v3, :cond_2

    .line 856
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "storeItemFolder":Ljava/lang/String;
    const-string v8, "TapjoyFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "storeItemFolder: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    if-eqz v4, :cond_2

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 862
    if-eqz p2, :cond_3

    .line 864
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "externalRoot":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodsData;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tempZipDownloads/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 874
    .end local v1    # "externalRoot":Ljava/lang/String;
    .end local v4    # "storeItemFolder":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v8, "TapjoyFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "deleteVGZip: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .local v5, "zipFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 882
    const-string v8, "TapjoyFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "deleting file at: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 886
    .end local v5    # "zipFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "TapjoyFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error deleting virtual good zip file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "storeItemFolder":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "data/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TJCVirtualGoodsData;->clientPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tempZipDownloads/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public extractZipFileToFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "destinationFolder"    # Ljava/lang/String;

    .prologue
    .line 693
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "extractZipFileToFolder file: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", destinationFolder: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v8, 0x1

    .line 698
    .local v8, "success":Z
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v3, "f":Ljava/io/File;
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "File saving to: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "File saving to: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 706
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 707
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    mul-int/2addr v11, v12

    int-to-long v4, v11

    .line 708
    .local v4, "free_memory":J
    const-string v11, "TapjoyFileSystem"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "FREE INTERNAL MEMORY: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v13, 0x400

    div-long v13, v4, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 711
    new-instance v7, Landroid/os/StatFs;

    .end local v7    # "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 712
    .restart local v7    # "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    mul-int/2addr v11, v12

    int-to-long v4, v11

    .line 713
    const-string v11, "TapjoyFileSystem"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "FREE EXTERNAL MEMORY: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v13, 0x400

    div-long v13, v4, v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 718
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Created directory: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 726
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 729
    .local v2, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-nez v11, :cond_3

    .line 747
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 756
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    if-nez v8, :cond_2

    .line 759
    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoodsData;->deleteDir(Ljava/io/File;)Z

    .line 762
    :cond_2
    return v8

    .line 731
    .restart local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 733
    .local v10, "zipentry":Ljava/util/zip/ZipEntry;
    if-eqz v10, :cond_1

    .line 737
    :try_start_2
    move-object/from16 v0, p2

    invoke-static {v0, v10, v9}, Lcom/tapjoy/TJCVirtualGoodsData;->createFilesAndFolders(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error trying to create files and folders e: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 742
    const/4 v8, 0x0

    goto :goto_0

    .line 750
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v10    # "zipentry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v1

    .line 752
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "TapjoyVirtualGoodsData"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Extraction failed e: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public saveInfo(Lcom/tapjoy/VGStoreItem;Z)V
    .locals 15
    .param p1, "storeItem"    # Lcom/tapjoy/VGStoreItem;
    .param p2, "savedToSDCard"    # Z

    .prologue
    .line 940
    const-string v12, "TapjoyDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "saveInfo to SQL DB: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x1

    .line 944
    .local v0, "SQLinsert":Z
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDatafileUrl()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "dataFileUrl":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 948
    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 949
    .local v5, "index":I
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 951
    if-eqz p2, :cond_2

    .line 952
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/tapjoy/TJCVirtualGoodsData;->basePathSaveToSDCard:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    .end local v5    # "index":I
    :goto_0
    const-string v12, "TapjoyDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "dataFileUrl: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object v12, Lcom/tapjoy/TJCVirtualGoodsData;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 966
    .local v7, "myDB":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v11, "q":Ljava/lang/StringBuilder;
    const-string v12, "INSERT INTO tapjoy_VGStoreItems (VGStoreItemID, AppleProductID, Price, Name,Description , ItemTypeName , ItemsOwned , ThumbImageName , FullImageName , DataFileName , DataFileHash)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    const-string v12, " VALUES ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getProductID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getPrice()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 980
    .local v10, "price":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-le v12, v13, :cond_0

    .line 981
    const-string v12, ","

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 982
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getNumberOwned()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getThumbImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getFullImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getDataFileHash()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_1
    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemsAttributeValueList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1013
    .local v6, "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lt v4, v12, :cond_4

    .line 1036
    .end local v4    # "i":I
    .end local v6    # "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    return-void

    .line 954
    .end local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "price":Ljava/lang/String;
    .end local v11    # "q":Ljava/lang/StringBuilder;
    .restart local v5    # "index":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/tapjoy/TJCVirtualGoodsData;->basePathSaveToPhone:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 958
    .end local v5    # "index":I
    :cond_3
    const-string v1, ""

    goto/16 :goto_0

    .line 999
    .restart local v7    # "myDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "price":Ljava/lang/String;
    .restart local v11    # "q":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 1002
    .local v3, "e1":Landroid/database/SQLException;
    const-string v12, "TapjoyDatabase"

    const-string v13, "Row already exists"

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const/4 v0, 0x0

    goto :goto_1

    .line 1015
    .end local v3    # "e1":Landroid/database/SQLException;
    .restart local v4    # "i":I
    .restart local v6    # "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_4
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/VGStoreItemAttributeValue;

    .line 1016
    .local v8, "obj":Lcom/tapjoy/VGStoreItemAttributeValue;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    .local v9, "p":Ljava/lang/StringBuilder;
    const-string v12, "INSERT INTO tapjoy_VGStoreItemAttribute ( VGStoreItemID, AttributeName, AttributeValue)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    const-string v12, " Values ("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tapjoy/VGStoreItem;->getVgStoreItemID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\',"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tapjoy/VGStoreItemAttributeValue;->getAttributeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;->replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1029
    :catch_1
    move-exception v2

    .line 1031
    .local v2, "e":Landroid/database/SQLException;
    const-string v12, "TapjoyDatabase"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "SQLException while trying to insert into table: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
