.class public Lnet/daum/adam/publisher/impl/c/i;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/c/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/daum/adam/publisher/impl/c/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    .line 16
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "close"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$1;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "expand"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$2;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "usecustomclose"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$3;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "open"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$4;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "setExpandProperties"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$5;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "makeCall"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$6;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    const-string v1, "playVideo"

    new-instance v2, Lnet/daum/adam/publisher/impl/c/i$7;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/c/i$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/daum/adam/publisher/impl/c/p;",
            ")",
            "Lnet/daum/adam/publisher/impl/c/c;"
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lnet/daum/adam/publisher/impl/c/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/c/i$a;

    .line 66
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/daum/adam/publisher/impl/c/i$a;->a(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
