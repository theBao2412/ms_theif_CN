.class public final Lnet/daum/adam/publisher/impl/h;
.super Ljava/lang/Object;
.source "AdProtocolHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 87
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_2
    return-object v1
.end method

.method private b(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    if-eqz v3, :cond_0

    .line 110
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/daum/adam/publisher/impl/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v1, Lnet/daum/adam/publisher/impl/f;

    invoke-direct {v1, v0, p3}, Lnet/daum/adam/publisher/impl/f;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 29
    const-string v2, "AdProtocolHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lnet/daum/adam/publisher/impl/h;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p2}, Lnet/daum/adam/publisher/impl/h;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lnet/daum/adam/publisher/impl/f;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 33
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/f;->b()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/b;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;)V

    throw v0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/f;->a()Lnet/daum/adam/publisher/impl/a$a;

    move-result-object v1

    sget-object v2, Lnet/daum/adam/publisher/impl/a$a;->c:Lnet/daum/adam/publisher/impl/a$a;

    if-ne v1, v2, :cond_1

    .line 42
    return-object v0

    .line 44
    :cond_1
    new-instance v1, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_INVALIDAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_2
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;)V

    throw v0

    .line 50
    :cond_3
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/daum/adam/publisher/impl/b/a;"
        }
    .end annotation

    .prologue
    .line 63
    .line 66
    const-string v0, "AdProtocolHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lnet/daum/adam/publisher/impl/h;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lnet/daum/adam/publisher/impl/b/b;

    invoke-direct {v0, p3}, Lnet/daum/adam/publisher/impl/b/b;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p2}, Lnet/daum/adam/publisher/impl/h;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/daum/adam/publisher/impl/b/b;->b(Ljava/lang/String;Ljava/util/List;)Lnet/daum/adam/publisher/impl/b/a;

    move-result-object v0

    .line 70
    return-object v0
.end method
