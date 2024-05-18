.class public Lcom/skt/arm/ArmSeedCheck;
.super Ljava/lang/Object;
.source "ArmSeedCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skt/arm/ArmSeedCheck$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static mContext:Landroid/content/Context;

.field public static mProductNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    sput-object v0, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/skt/arm/ArmSeedCheck$1;

    invoke-direct {v0}, Lcom/skt/arm/ArmSeedCheck$1;-><init>()V

    sput-object v0, Lcom/skt/arm/ArmSeedCheck;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sput-object p1, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private static createHttpConnector(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 12
    .param p0, "strURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 279
    const-string v7, "http.keepAlive"

    const-string v8, "false"

    invoke-static {v7, v8}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    new-array v5, v11, [Ljavax/net/ssl/TrustManager;

    .line 286
    new-instance v7, Lcom/skt/arm/ArmSeedCheck$2;

    invoke-direct {v7}, Lcom/skt/arm/ArmSeedCheck$2;-><init>()V

    aput-object v7, v5, v10

    .line 301
    .local v5, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v7, "TLS"

    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 302
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v7, 0x0

    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v7, v5, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 303
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 309
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 312
    .local v0, "httpURLCon":Ljava/net/HttpURLConnection;
    instance-of v7, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 314
    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v8, Lcom/skt/arm/ArmSeedCheck;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 316
    new-instance v7, Lcom/skt/arm/ArmSeedCheck$3;

    invoke-direct {v7}, Lcom/skt/arm/ArmSeedCheck$3;-><init>()V

    invoke-static {v7}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 323
    :cond_0
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "strHost":Ljava/lang/String;
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->extractPortFromURL(Ljava/lang/String;)I

    move-result v1

    .line 326
    .local v1, "nPort":I
    const-string v7, "Arm plug-in"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "++ strHost="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v7, "Arm plug-in"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "++ nPort="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v4, "N"

    .line 330
    .local v4, "strIsWifi":Ljava/lang/String;
    sget-object v7, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/skt/arm/ArmUtil;->isEnableWifi(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 331
    const-string v4, "Y"

    .line 333
    :cond_1
    const-string v7, "Arm plug-in"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "++ strIsWifi=%s"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 336
    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 337
    const-string v7, "GET"

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    const-string v7, "Arm plug-in"

    const-string v8, "++ RequestMethod( GET ) "

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v7, "Host"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v7, "Accept-Language"

    const-string v8, "euc-kr"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v7, "User-Agent"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v7, "Cookie"

    const-string v8, "OMPSESSIONID=45auikq,6789asfd7ujk"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v7, "Is-Wifi"

    invoke-virtual {v0, v7, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-object v0

    .line 304
    .end local v0    # "httpURLCon":Ljava/net/HttpURLConnection;
    .end local v1    # "nPort":I
    .end local v3    # "strHost":Ljava/lang/String;
    .end local v4    # "strIsWifi":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 367
    .local v5, "trustStore":Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 369
    new-instance v4, Lcom/skt/arm/ArmSeedCheck$MySSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/skt/arm/ArmSeedCheck$MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 370
    .local v4, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 372
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 373
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 374
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 376
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 377
    .local v3, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 378
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 380
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 382
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "params":Lorg/apache/http/params/HttpParams;
    .end local v3    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method public static getProductID(Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .param p0, "seedNum"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v25, ""

    .line 102
    .local v25, "strURL":Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 103
    .local v23, "strMDN":Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->getModelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 104
    .local v24, "strModel":Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->isEnableWifi(Landroid/content/Context;)Z

    move-result v12

    .line 105
    .local v12, "isSecureURL":Z
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->isOtherCarrier(Landroid/content/Context;)Z

    move-result v11

    .line 117
    .local v11, "isOtherCarrier":Z
    if-nez v12, :cond_0

    if-eqz v11, :cond_7

    .line 118
    :cond_0
    const-string v25, "https://220.103.229.115:444/shop_client/scproxy.omp"

    .line 123
    :goto_0
    sget-object v26, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "strURL::"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v3, 0x0

    check-cast v3, [B

    .line 129
    .local v3, "aybyBuf":[B
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    .line 130
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    .line 129
    add-int v26, v26, v27

    .line 130
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    .line 129
    add-int v26, v26, v27

    .line 130
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_OSVERSION:B

    .line 129
    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 131
    const/16 v26, 0x0

    sget v27, Lcom/skt/arm/ArmProt;->REQ_SEED_APP_NEW_VER:I

    ushr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 132
    const/16 v26, 0x1

    sget v27, Lcom/skt/arm/ArmProt;->REQ_SEED_APP_NEW_VER:I

    ushr-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 135
    if-eqz v23, :cond_1

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 136
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_1

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_8

    .line 147
    .end local v9    # "i":I
    .end local v13    # "j":I
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "i":I
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_2
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_2

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_a

    .line 158
    :cond_2
    move-object/from16 v22, p0

    .line 160
    .local v22, "seedType":Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 161
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_3

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_c

    .line 172
    :cond_3
    const-string v18, ""

    .line 173
    .local v18, "osType":Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string v26, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 174
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_4
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_4

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_OSVERSION:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_e

    .line 185
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "?REQ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v3

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v3, v0}, Lcom/skt/arm/ArmUtil;->byteToHex([BI)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 187
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "strURL=="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v8, 0x0

    .line 191
    .local v8, "httpURLCon":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static/range {v25 .. v25}, Lcom/skt/arm/ArmSeedCheck;->createHttpConnector(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 199
    const/16 v26, 0x3a98

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    const/16 v26, 0x3a98

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 205
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 206
    .local v16, "nResCode":I
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "ResCode === "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    .end local v16    # "nResCode":I
    :goto_5
    const/4 v10, 0x0

    .line 214
    .local v10, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 220
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v15, 0x0

    .line 222
    .local v15, "nReadCount":I
    const/16 v17, 0x0

    .line 223
    .local v17, "nTotalReadCount":I
    const/16 v26, 0x4001

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 226
    .local v14, "m_aybyReadBuf":[B
    const-string v21, ""

    .line 227
    .local v21, "rtnBody":Ljava/lang/String;
    const/4 v7, -0x1

    .line 229
    .local v7, "errcode":I
    :goto_6
    const/16 v26, 0x1000

    :try_start_3
    move/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v4, v14, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v15

    if-gtz v15, :cond_10

    .line 233
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "nTotalReadCount["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "m_aybyReadBuf["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v14, v15}, Lcom/skt/arm/ArmUtil;->byteToHex([BI)Ljava/lang/String;

    move-result-object v21

    .line 236
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "m_aybyReadBuf HEX["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v26, 0x4

    const/16 v27, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 239
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Error Code Value["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-nez v7, :cond_6

    .line 242
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "hexToASCII()"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/skt/arm/ArmUtil;->hexToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static/range {v21 .. v21}, Lcom/skt/arm/ArmUtil;->hexToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 244
    .local v20, "productBody":Ljava/lang/String;
    const-string v26, "com.skt.skaf.OA00018282"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 246
    .local v19, "packageIdx":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 248
    add-int/lit8 v26, v19, -0x14

    add-int/lit8 v27, v19, -0xa

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .line 250
    :cond_5
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Product Number"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v28, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 261
    .end local v19    # "packageIdx":I
    .end local v20    # "productBody":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 262
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 273
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 274
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "errcode":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "m_aybyReadBuf":[B
    .end local v15    # "nReadCount":I
    .end local v17    # "nTotalReadCount":I
    .end local v21    # "rtnBody":Ljava/lang/String;
    :goto_7
    return-object v26

    .line 120
    .end local v3    # "aybyBuf":[B
    .end local v8    # "httpURLCon":Ljava/net/HttpURLConnection;
    .end local v9    # "i":I
    .end local v13    # "j":I
    .end local v18    # "osType":Ljava/lang/String;
    .end local v22    # "seedType":Ljava/lang/String;
    :cond_7
    const-string v25, "http://220.103.229.115:8301/shop_client/scproxy.omp"

    goto/16 :goto_0

    .line 138
    .restart local v3    # "aybyBuf":[B
    .restart local v9    # "i":I
    .restart local v13    # "j":I
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_9

    .line 139
    add-int/lit8 v26, v9, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 136
    :goto_8
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 141
    :cond_9
    add-int/lit8 v26, v9, 0x2

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_8

    .line 149
    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_b

    .line 150
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 147
    :goto_9
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 152
    :cond_b
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_9

    .line 163
    .restart local v22    # "seedType":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_d

    .line 164
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 161
    :goto_a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 166
    :cond_d
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_a

    .line 176
    .restart local v18    # "osType":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_f

    .line 177
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 174
    :goto_b
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 179
    :cond_f
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_b

    .line 192
    .restart local v8    # "httpURLCon":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v6

    .line 194
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const-string v26, ""

    goto/16 :goto_7

    .line 207
    .end local v6    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 209
    .local v6, "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 215
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 217
    .restart local v6    # "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 218
    const-string v26, ""

    goto/16 :goto_7

    .line 230
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v7    # "errcode":I
    .restart local v14    # "m_aybyReadBuf":[B
    .restart local v15    # "nReadCount":I
    .restart local v17    # "nTotalReadCount":I
    .restart local v21    # "rtnBody":Ljava/lang/String;
    :cond_10
    add-int v17, v17, v15

    goto/16 :goto_6

    .line 255
    :catch_3
    move-exception v5

    .line 256
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    const-string v26, ""

    goto/16 :goto_7

    .line 263
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 265
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    const-string v26, ""

    goto/16 :goto_7
.end method
