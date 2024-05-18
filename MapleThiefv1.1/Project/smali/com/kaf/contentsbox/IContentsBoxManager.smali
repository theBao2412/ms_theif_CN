.class public abstract Lcom/kaf/contentsbox/IContentsBoxManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kaf/contentsbox/IContentsBoxManager$ServiceConnectionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeContentFile(ILjava/io/FileDescriptor;I)V
    .locals 0

    return-void
.end method

.method public closeIconFile(ILjava/io/FileDescriptor;)V
    .locals 0

    return-void
.end method

.method public closeThumbnail(ILjava/io/FileDescriptor;)V
    .locals 0

    return-void
.end method

.method public connectService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createThumbnail(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deleteAppWidgetInfo(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deleteCategory(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deleteContentsInfo(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deleteDownloadUrl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deleteMimeType(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deletePlayListConts(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deletePlayListInfo(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public disconnectService()V
    .locals 0

    return-void
.end method

.method public executeCommand(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWidgetInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioMetadata(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCategory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentsBoxName(I)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentsInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUrl([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalVolumeSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalVolumnSerial(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimeType([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayListConts([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayListInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorageCapacity(ILjava/lang/String;)Lcom/kaf/contentsbox/IStatContentsBoxFs;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertAppWidgetInfo(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertCategory(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertContentsInfo(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertDownloadUrl(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertMimeType(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertPlayListConts(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public insertPlayListInfo(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public openContentFile(II)Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openIconFile(II)Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openThumbnail(I)Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public openThumbnail(II)Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reducePlayCount(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateAppWidgetInfo(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateCategory(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateContentsInfo(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateDownloadUrl(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateMimeType(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updatePlayListConts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updatePlayListInfo(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateRingtone(II)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
