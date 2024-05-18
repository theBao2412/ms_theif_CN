.class Lnet/daum/adam/publisher/impl/k;
.super Ljava/io/FilterInputStream;
.source "AdCommon.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 420
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 424
    move-wide v2, v4

    .line 426
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 427
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/k;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 428
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 429
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/k;->read()I

    move-result v0

    .line 431
    if-gez v0, :cond_1

    .line 440
    :cond_0
    return-wide v2

    .line 434
    :cond_1
    const-wide/16 v0, 0x1

    .line 437
    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 438
    goto :goto_0
.end method
