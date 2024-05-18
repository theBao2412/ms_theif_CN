.class public final Lnet/daum/adam/publisher/impl/c;
.super Ljava/lang/Object;
.source "AdCache.java"


# static fields
.field private static a:J

.field private static b:Lnet/daum/adam/publisher/impl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/daum/adam/publisher/impl/c;->a:J

    .line 10
    const/4 v0, 0x0

    sput-object v0, Lnet/daum/adam/publisher/impl/c;->b:Lnet/daum/adam/publisher/impl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lnet/daum/adam/publisher/impl/c;->a:J

    return-wide v0
.end method

.method protected static a(I)Lnet/daum/adam/publisher/impl/b;
    .locals 6

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    sget-wide v2, Lnet/daum/adam/publisher/impl/c;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lnet/daum/adam/publisher/impl/c;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 43
    invoke-static {}, Lnet/daum/adam/publisher/impl/c;->b()Lnet/daum/adam/publisher/impl/b;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Lnet/daum/adam/publisher/impl/b;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/daum/adam/publisher/impl/c;->a:J

    .line 20
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sput-object p0, Lnet/daum/adam/publisher/impl/c;->b:Lnet/daum/adam/publisher/impl/b;

    .line 23
    :cond_0
    return-void
.end method

.method public static b()Lnet/daum/adam/publisher/impl/b;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "AdCache"

    const-string v1, "GET CACHED DATA!!"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lnet/daum/adam/publisher/impl/c;->b:Lnet/daum/adam/publisher/impl/b;

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
