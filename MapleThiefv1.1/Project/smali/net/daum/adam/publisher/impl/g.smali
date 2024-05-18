.class public final Lnet/daum/adam/publisher/impl/g;
.super Ljava/lang/Object;
.source "AdParameterBuilder.java"


# static fields
.field public static final a:Ljava/lang/String; = "network"

.field public static final b:Ljava/lang/String; = "netoperator"

.field public static final c:Ljava/lang/String; = "gps"

.field public static final d:Ljava/lang/String; = "noaction"

.field public static final e:Ljava/lang/String; = "wifi"

.field public static final f:Ljava/lang/String; = "3g"

.field private static final g:Ljava/lang/String; = "AdParameterHelper"

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Ljava/lang/String; = null

.field private static final r:Ljava/lang/String; = "12586269025"


# instance fields
.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lnet/daum/adam/publisher/impl/g;->h:Ljava/lang/String;

    .line 33
    sput-object v0, Lnet/daum/adam/publisher/impl/g;->i:Ljava/lang/String;

    .line 34
    sput-object v0, Lnet/daum/adam/publisher/impl/g;->j:Ljava/util/List;

    .line 35
    sput-object v0, Lnet/daum/adam/publisher/impl/g;->k:Ljava/util/List;

    .line 43
    sput-object v0, Lnet/daum/adam/publisher/impl/g;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "xml2"

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/g;->m:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/g;->p:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/g;->q:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/g;->l:Landroid/content/Context;

    .line 54
    sget-object v0, Lnet/daum/adam/publisher/impl/g;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/daum/adam/publisher/impl/g;->o:Ljava/lang/String;

    .line 57
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 66
    .line 68
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v2

    .line 74
    :cond_1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 81
    :goto_1
    :try_start_1
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 82
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v3, "AdParameterHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mac Address(Plain) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 95
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    const/4 v0, 0x0

    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 100
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string v1, "AdParameterHelper"

    const-string v3, "getDeviceKey() - Exception occurs while getting wifi infomation."

    invoke-static {v1, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 102
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    const-string v0, "AdParameterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mac Address(SHA-256)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 347
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x0

    .line 361
    :goto_0
    return-object v0

    .line 351
    :cond_1
    const/16 v2, 0x4c

    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 354
    const-string v1, ""

    .line 356
    const/4 v0, 0x0

    :goto_1
    if-eq v0, v4, :cond_2

    .line 357
    rem-int v5, v0, v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v2

    .line 358
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v2

    .line 359
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    xor-int/2addr v5, v6

    add-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    if-eqz p2, :cond_0

    .line 227
    const-string v0, "gps"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "AdParameterHelper"

    const-string v1, "\uc704\uce58 \uc815\ubcf4\ub97c \ud30c\ub77c\ubbf8\ud130\uc5d0 \ucd94\uac00"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "AdParameterHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uc704\uce58 \uc815\ubcf4 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/daum/adam/publisher/impl/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/daum/adam/publisher/impl/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "gps_la"

    sget-object v1, Lnet/daum/adam/publisher/impl/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "gps_lo"

    sget-object v1, Lnet/daum/adam/publisher/impl/g;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    sput-object p0, Lnet/daum/adam/publisher/impl/g;->j:Ljava/util/List;

    .line 274
    return-void
.end method

.method public static a(Landroid/widget/RelativeLayout;)Z
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lnet/daum/adam/publisher/impl/g;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/g;-><init>(Landroid/content/Context;)V

    .line 264
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    sput-object p0, Lnet/daum/adam/publisher/impl/g;->k:Ljava/util/List;

    .line 283
    return-void
.end method

.method private d()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/g;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_UNKNOWN_CLIENTID:Lnet/daum/adam/publisher/impl/AdError;

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;)V

    throw v0

    .line 126
    :cond_0
    const-string v0, "devid"

    sget-object v2, Lnet/daum/adam/publisher/impl/g;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "client"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_1
    const-string v0, "ct"

    const-string v2, "AA"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "sdkver"

    const-string v2, "2.0.3.0"

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "test"

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "y"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "output"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/g;->m:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "oe"

    const-string v2, "utf8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "ie"

    const-string v2, "utf8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "network"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 158
    const-string v0, "netoperator"

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/g;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_3
    return-object v1

    .line 140
    :cond_4
    const-string v0, "n"

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/g;->d()Ljava/util/HashMap;

    move-result-object v0

    .line 199
    const-string v1, "dev"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "osver"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lnet/daum/adam/publisher/impl/g;->j:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/util/HashMap;Ljava/util/List;)V

    .line 215
    return-object v0
.end method

.method public a(Ljava/lang/Boolean;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lnet/daum/adam/publisher/impl/AdException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/g;->d()Ljava/util/HashMap;

    move-result-object v1

    .line 178
    if-nez p1, :cond_0

    .line 179
    sget-object v0, Lnet/daum/adam/publisher/impl/g;->k:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/util/HashMap;Ljava/util/List;)V

    .line 184
    :goto_0
    return-object v1

    .line 182
    :cond_0
    const-string v2, "isagree"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "y"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "n"

    goto :goto_1
.end method

.method public a(DD)V
    .locals 16

    .prologue
    .line 324
    new-instance v2, Lnet/daum/adam/publisher/impl/d/c;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/d/c;-><init>()V

    .line 326
    const/16 v7, 0xa

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-virtual/range {v2 .. v15}, Lnet/daum/adam/publisher/impl/d/c;->e(DDIDDDD)[D

    move-result-object v2

    .line 329
    const-string v3, "12586269025"

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/daum/adam/publisher/impl/g;->h:Ljava/lang/String;

    .line 330
    const-string v3, "12586269025"

    const/4 v4, 0x1

    aget-wide v4, v2, v4

    double-to-int v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/daum/adam/publisher/impl/g;->i:Ljava/lang/String;

    .line 332
    const-string v2, "AdParameterHelper"

    const-string v3, "\uc704\uce58 \uc815\ubcf4 \uac00\uc838\uc624\uae30 \ubc0f \uc554\ud638\ud654"

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v2, "AdParameterHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uc704\ub3c4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/daum/adam/publisher/impl/g;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v2, "AdParameterHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uacbd\ub3c4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lnet/daum/adam/publisher/impl/g;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_1
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/g;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/g;->q:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 295
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/g;->p:Ljava/lang/String;

    .line 313
    return-void
.end method
