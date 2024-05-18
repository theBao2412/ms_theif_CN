.class public final Lnet/daum/adam/publisher/impl/AdException;
.super Ljava/lang/Exception;
.source "AdException.java"


# static fields
.field private static final a:J = 0x77f28486b25c1ed9L


# instance fields
.field private b:Lnet/daum/adam/publisher/impl/AdError;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_SDKEXCEPTION:Lnet/daum/adam/publisher/impl/AdError;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    .line 21
    return-void
.end method

.method public constructor <init>(Lnet/daum/adam/publisher/impl/AdError;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    .line 31
    return-void
.end method

.method public constructor <init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    .line 44
    return-void
.end method


# virtual methods
.method public getSdkError()Lnet/daum/adam/publisher/impl/AdError;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_2
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdException;->b:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
