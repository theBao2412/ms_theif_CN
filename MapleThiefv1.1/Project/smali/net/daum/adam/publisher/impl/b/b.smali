.class public final Lnet/daum/adam/publisher/impl/b/b;
.super Lnet/daum/adam/publisher/impl/a;
.source "AdCommandHttpContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lnet/daum/adam/publisher/impl/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/a;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b/a;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/daum/adam/publisher/impl/b/b;->c(Ljava/lang/String;Ljava/util/List;)Lnet/daum/adam/publisher/impl/b/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Lnet/daum/adam/publisher/impl/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnet/daum/adam/publisher/impl/b/a;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lnet/daum/adam/publisher/impl/b/b;->c(Ljava/lang/String;Ljava/util/List;)Lnet/daum/adam/publisher/impl/b/a;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;Ljava/util/List;)Lnet/daum/adam/publisher/impl/b/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lnet/daum/adam/publisher/impl/b/a;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 63
    const/4 v0, 0x0

    .line 67
    if-eqz p2, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/daum/adam/publisher/impl/b/b;->a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 73
    :goto_0
    if-eqz v1, :cond_3

    .line 74
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 76
    const-string v3, "AdCommandHttpContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 79
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    const-string v1, "AdCommandHttpContext"

    const-string v3, "Processing response XML "

    invoke-static {v1, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 86
    :try_start_1
    new-instance v1, Lnet/daum/adam/publisher/impl/b/a;

    invoke-direct {v1}, Lnet/daum/adam/publisher/impl/b/a;-><init>()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :try_start_2
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 90
    new-instance v3, Lnet/daum/adam/publisher/impl/b/b$a;

    invoke-direct {v3, p0, v1}, Lnet/daum/adam/publisher/impl/b/b$a;-><init>(Lnet/daum/adam/publisher/impl/b/b;Lnet/daum/adam/publisher/impl/b/a;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 91
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    .line 100
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 120
    :goto_2
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lnet/daum/adam/publisher/impl/b/b;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 94
    :goto_3
    const/4 v3, 0x4

    :try_start_4
    invoke-static {v3}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 95
    sget-object v3, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    const-string v4, "XML Parse error "

    invoke-static {v3, v4, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 99
    goto :goto_1

    .line 96
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 97
    :goto_4
    const/4 v3, 0x4

    invoke-static {v3}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 98
    sget-object v3, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    const-string v4, "XML Parse error "

    invoke-static {v3, v4, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    goto :goto_1

    .line 102
    :cond_1
    const/4 v1, 0x4

    :try_start_5
    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 103
    new-instance v1, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_HTTPFAILED:Lnet/daum/adam/publisher/impl/AdError;

    invoke-direct {v1, v2}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;)V

    .line 104
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/AdException;->printStackTrace()V

    .line 105
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 115
    :catch_2
    move-exception v1

    .line 116
    :goto_5
    invoke-static {v6}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 117
    sget-object v2, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    const-string v3, "server connection filed"

    invoke-static {v2, v3, v1}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 108
    :cond_2
    const/4 v1, 0x4

    :try_start_6
    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 109
    sget-object v1, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server doesn\'t response result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->a(I)V

    .line 113
    sget-object v1, Lnet/daum/adam/publisher/impl/b/b;->a:Ljava/lang/String;

    const-string v2, "server doesn\'t response"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 115
    :catch_3
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_5

    .line 96
    :catch_4
    move-exception v0

    goto :goto_4

    .line 93
    :catch_5
    move-exception v0

    goto :goto_3
.end method
