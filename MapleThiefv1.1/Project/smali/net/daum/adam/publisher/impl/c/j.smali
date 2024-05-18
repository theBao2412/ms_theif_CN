.class Lnet/daum/adam/publisher/impl/c/j;
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
    .line 118
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 119
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "useCustomClose"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/j;->d(Ljava/lang/String;)Z

    move-result v0

    .line 123
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/j;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/c/k;->b(Z)V

    .line 124
    return-void
.end method
