.class public Lcom/feelingk/iap/net/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field public final HEADER_SIZE:I

.field private mHeaderDataLength:I

.field private mHeaderSpecifier:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0xc

    iput v0, p0, Lcom/feelingk/iap/net/Header;->HEADER_SIZE:I

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/feelingk/iap/net/Header;->mHeaderSpecifier:[B

    .line 21
    return-void
.end method


# virtual methods
.method public getDataLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/feelingk/iap/net/Header;->mHeaderDataLength:I

    return v0
.end method

.method public getSpecifier()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/feelingk/iap/net/Header;->mHeaderSpecifier:[B

    return-object v0
.end method

.method protected parse([B)V
    .locals 5
    .param p1, "v"    # [B

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 27
    iget-object v1, p0, Lcom/feelingk/iap/net/Header;->mHeaderSpecifier:[B

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-array v0, v4, [B

    .line 30
    .local v0, "buf":[B
    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/feelingk/iap/net/Header;->mHeaderDataLength:I

    .line 32
    return-void
.end method
