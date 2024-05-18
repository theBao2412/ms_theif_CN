.class Lnet/daum/adam/publisher/impl/c/d;
.super Lnet/daum/adam/publisher/impl/c/c;
.source "MraidCommandRegistry.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/daum/adam/publisher/impl/c/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 77
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/d;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->g()V

    .line 81
    return-void
.end method
