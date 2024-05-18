.class public abstract Lnet/daum/adam/publisher/impl/a;
.super Ljava/lang/Object;
.source "AbstractHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BaseHttpContext"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lnet/daum/adam/publisher/impl/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lnet/daum/adam/publisher/impl/a;->c:I

    .line 36
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/a;->d:Lnet/daum/adam/publisher/impl/a$a;

    .line 61
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method protected a()Lnet/daum/adam/publisher/impl/a$a;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/a;->d:Lnet/daum/adam/publisher/impl/a$a;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/d/b;->a(Lorg/apache/http/HttpHost;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 84
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    const-string v2, "User-Agent"

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lnet/daum/adam/publisher/impl/a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "BaseHttpContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/a;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 93
    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->c()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/d/b;->a(Lorg/apache/http/HttpHost;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 112
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 115
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    const-string v2, "User-Agent"

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lnet/daum/adam/publisher/impl/a;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "BaseHttpContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/a;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 123
    throw v0
.end method

.method protected a(Lnet/daum/adam/publisher/impl/a$a;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/a;->d:Lnet/daum/adam/publisher/impl/a$a;

    .line 54
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 70
    const-string v0, "BaseHttpContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/daum/adam/publisher/impl/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lnet/daum/adam/publisher/impl/a;->c:I

    return v0
.end method
