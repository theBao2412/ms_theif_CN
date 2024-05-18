.class abstract Lnet/daum/adam/publisher/impl/c/c;
.super Ljava/lang/Object;
.source "MraidCommand.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lnet/daum/adam/publisher/impl/c/p;


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
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/c;->a:Ljava/util/Map;

    .line 11
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    .line 12
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 35
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    if-nez v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    return v0

    .line 40
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    move v0, v1

    .line 42
    goto :goto_0
.end method

.method abstract a()V
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->i()Lnet/daum/adam/publisher/impl/c/p$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->i()Lnet/daum/adam/publisher/impl/c/p$j;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/c;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/daum/adam/publisher/impl/c/p$j;->onOpen(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$a;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected c(Ljava/lang/String;)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    if-nez v0, :cond_0

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 69
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    move v0, v1

    .line 71
    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 83
    const-string v0, "true"

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
