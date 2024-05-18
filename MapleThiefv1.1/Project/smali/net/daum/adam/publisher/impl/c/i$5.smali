.class final Lnet/daum/adam/publisher/impl/c/i$5;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 43
    invoke-virtual {p2}, Lnet/daum/adam/publisher/impl/c/p;->a()Lnet/daum/adam/publisher/impl/c/p$l;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$l;->b:Lnet/daum/adam/publisher/impl/c/p$l;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lnet/daum/adam/publisher/impl/c/e;

    invoke-direct {v0, p1, p2}, Lnet/daum/adam/publisher/impl/c/e;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
