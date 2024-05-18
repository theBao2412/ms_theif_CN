.class public final Lnet/daum/adam/publisher/impl/d;
.super Ljava/lang/Object;
.source "AdClickTraceHttpContext.java"


# static fields
.field private static final a:Ljava/lang/String; = "AdClickTraceHttpContext"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 22
    const-string v0, "AdClickTraceHttpContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Click Trace Request URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/daum/adam/publisher/impl/d$1;

    invoke-direct {v1, p0, p1}, Lnet/daum/adam/publisher/impl/d$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AdClickTraceHttpContext"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method
