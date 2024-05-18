.class Lnet/daum/adam/publisher/impl/c/g;
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
    .line 132
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 133
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/g;->b()V

    .line 137
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/g;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->n()Lnet/daum/adam/publisher/impl/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/c/b;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method
