.class public Lnet/daum/adam/publisher/impl/f;
.super Lnet/daum/adam/publisher/impl/a;
.source "AdHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdHttpContext"


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/daum/adam/publisher/impl/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/daum/adam/publisher/impl/b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lnet/daum/adam/publisher/impl/a;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/daum/adam/publisher/impl/f;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 101
    return-void
.end method

.method b(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/daum/adam/publisher/impl/f;->a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/f;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 53
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 57
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 59
    new-instance v2, Lnet/daum/adam/publisher/impl/f$a;

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lnet/daum/adam/publisher/impl/f$a;-><init>(Lnet/daum/adam/publisher/impl/f;Ljava/util/ArrayList;)V

    .line 60
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 61
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 91
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lnet/daum/adam/publisher/impl/f;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 64
    new-instance v1, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_INVALIDAD:Lnet/daum/adam/publisher/impl/AdError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML parsing error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 87
    new-instance v1, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 88
    const-string v0, "AdHttpContext"

    const-string v2, "requestBody"

    invoke-static {v0, v2, v1}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    throw v1

    .line 68
    :cond_1
    :try_start_3
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 69
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    const-string v2, "There is no advertisement"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 70
    const-string v1, "AdHttpContext"

    const-string v2, "requestBody"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v0

    .line 74
    :cond_2
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 75
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server doesn\'t response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/f;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 76
    const-string v1, "AdHttpContext"

    const-string v2, "requestBody"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    throw v0

    .line 80
    :cond_3
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 81
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    const-string v2, "server doesn\'t response"

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 82
    const-string v1, "AdHttpContext"

    const-string v2, "requestBody"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method protected c(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->b:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 113
    invoke-virtual {p0, p1, p2}, Lnet/daum/adam/publisher/impl/f;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/f;->a()Lnet/daum/adam/publisher/impl/a$a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 115
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/b;

    .line 116
    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->c:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 133
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 121
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Lnet/daum/adam/publisher/impl/AdException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/f;->a()Lnet/daum/adam/publisher/impl/a$a;

    move-result-object v1

    sget-object v2, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/a$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 131
    :cond_1
    throw v0

    .line 124
    :cond_2
    :try_start_1
    sget-object v0, Lnet/daum/adam/publisher/impl/a$a;->a:Lnet/daum/adam/publisher/impl/a$a;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/f;->a(Lnet/daum/adam/publisher/impl/a$a;)V

    .line 125
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Lnet/daum/adam/publisher/impl/AdException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
