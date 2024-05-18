.class Lnet/daum/adam/publisher/impl/c/e;
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
    .line 86
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 87
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 90
    const-string v0, "width"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/e;->a(Ljava/lang/String;)I

    move-result v2

    .line 91
    const-string v0, "height"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/e;->a(Ljava/lang/String;)I

    move-result v3

    .line 92
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v0, "useCustomClose"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/e;->d(Ljava/lang/String;)Z

    move-result v4

    .line 101
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    if-nez v0, :cond_3

    .line 103
    if-lez v2, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    iget v0, v0, Lnet/daum/adam/publisher/impl/c/k;->b:I

    if-le v2, v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    iget v2, v0, Lnet/daum/adam/publisher/impl/c/k;->b:I

    .line 107
    :cond_1
    if-lez v3, :cond_2

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    iget v0, v0, Lnet/daum/adam/publisher/impl/c/k;->c:I

    if-le v3, v0, :cond_3

    .line 108
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    iget v3, v0, Lnet/daum/adam/publisher/impl/c/k;->c:I

    .line 112
    :cond_3
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/e;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lnet/daum/adam/publisher/impl/c/k;->a(Ljava/lang/String;IIZZ)V

    .line 113
    return-void
.end method
