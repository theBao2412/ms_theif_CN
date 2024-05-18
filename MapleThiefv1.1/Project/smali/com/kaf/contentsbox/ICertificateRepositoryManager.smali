.class public abstract Lcom/kaf/contentsbox/ICertificateRepositoryManager;
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

.method public constructor <init>(Landroid/content/Context;Lcom/kaf/contentsbox/ICertificateRepositoryManager$ServiceConnectionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCertFile(ILjava/io/FileDescriptor;I)V
    .locals 0

    return-void
.end method

.method public connect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteCertInfo(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getCertInfo([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insertCertInfo(Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public openCertFile(II)Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCertInfo(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
