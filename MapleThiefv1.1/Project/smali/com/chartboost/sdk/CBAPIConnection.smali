.class public Lcom/chartboost/sdk/CBAPIConnection;
.super Ljava/lang/Object;
.source "CBAPIConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;
    }
.end annotation


# static fields
.field private static final CB_DEFAULT_ENDPOINT:Ljava/lang/String; = "https://www.chartboost.com/"


# instance fields
.field private delegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

.field private endpoint:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/CBAPIConnectionDelegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "https://www.chartboost.com/"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBAPIConnection;->setEndpoint(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/CBAPIConnection;->setDelegate(Lcom/chartboost/sdk/CBAPIConnectionDelegate;)V

    .line 57
    invoke-direct {p0}, Lcom/chartboost/sdk/CBAPIConnection;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 58
    return-void
.end method

.method private createHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 63
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 65
    new-instance v4, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;

    invoke-direct {v4, p0, v5}, Lcom/chartboost/sdk/CBAPIConnection$TrustingSocketFactory;-><init>(Lcom/chartboost/sdk/CBAPIConnection;Ljava/security/KeyStore;)V

    .line 66
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 68
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 69
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 70
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 72
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 73
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 74
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 76
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 78
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v6

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getDelegate()Lcom/chartboost/sdk/CBAPIConnectionDelegate;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->delegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    return-object v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    .locals 18
    .param p1, "request"    # Lcom/chartboost/sdk/CBAPIRequest;

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/chartboost/sdk/CBAPIConnection;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/CBAPIRequest;->getController()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/CBAPIRequest;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 92
    .local v15, "urlString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/CBAPIRequest;->getQuery()Ljava/util/Map;

    move-result-object v13

    .line 93
    .local v13, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 94
    const-string v14, ""

    .line 95
    .local v14, "queryString":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 102
    .end local v14    # "queryString":Ljava/lang/String;
    :cond_0
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 106
    .local v10, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual/range {p1 .. p1}, Lcom/chartboost/sdk/CBAPIRequest;->getBody()Ljava/util/Map;

    move-result-object v8

    .line 107
    .local v8, "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 108
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v12, "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v10, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v12    # "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/chartboost/sdk/CBAPIConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 121
    .local v3, "finalHttpClient":Lorg/apache/http/client/HttpClient;
    move-object v4, v10

    .line 122
    .local v4, "finalHttpRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 123
    .local v5, "finalHandler":Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/chartboost/sdk/CBAPIConnection;->delegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    .line 124
    .local v6, "finalDelegate":Lcom/chartboost/sdk/CBAPIConnectionDelegate;
    move-object/from16 v7, p1

    .line 126
    .local v7, "finalRequest":Lcom/chartboost/sdk/CBAPIRequest;
    new-instance v1, Lcom/chartboost/sdk/CBAPIConnection$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/chartboost/sdk/CBAPIConnection$1;-><init>(Lcom/chartboost/sdk/CBAPIConnection;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;Landroid/os/Handler;Lcom/chartboost/sdk/CBAPIConnectionDelegate;Lcom/chartboost/sdk/CBAPIRequest;)V

    .line 165
    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIConnection$1;->start()V

    .line 166
    return-void

    .line 95
    .end local v3    # "finalHttpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "finalHttpRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "finalHandler":Landroid/os/Handler;
    .end local v6    # "finalDelegate":Lcom/chartboost/sdk/CBAPIConnectionDelegate;
    .end local v7    # "finalRequest":Lcom/chartboost/sdk/CBAPIRequest;
    .end local v8    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v14    # "queryString":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 96
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 97
    .local v16, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, "&"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 109
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "queryString":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .restart local v8    # "body":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v12    # "postPairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 110
    .restart local v11    # "key":Ljava/lang/String;
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v11, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 114
    .end local v11    # "key":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 115
    .local v9, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDelegate(Lcom/chartboost/sdk/CBAPIConnectionDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection;->delegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    .line 179
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpoint"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection;->endpoint:Ljava/lang/String;

    .line 193
    return-void
.end method
