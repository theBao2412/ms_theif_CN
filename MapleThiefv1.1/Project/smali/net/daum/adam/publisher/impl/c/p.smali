.class public Lnet/daum/adam/publisher/impl/c/p;
.super Landroid/webkit/WebView;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/c/p$b;,
        Lnet/daum/adam/publisher/impl/c/p$c;,
        Lnet/daum/adam/publisher/impl/c/p$i;,
        Lnet/daum/adam/publisher/impl/c/p$j;,
        Lnet/daum/adam/publisher/impl/c/p$e;,
        Lnet/daum/adam/publisher/impl/c/p$h;,
        Lnet/daum/adam/publisher/impl/c/p$k;,
        Lnet/daum/adam/publisher/impl/c/p$f;,
        Lnet/daum/adam/publisher/impl/c/p$g;,
        Lnet/daum/adam/publisher/impl/c/p$l;,
        Lnet/daum/adam/publisher/impl/c/p$d;,
        Lnet/daum/adam/publisher/impl/c/p$a;,
        Lnet/daum/adam/publisher/impl/c/p$m;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MraidView"

.field private static final b:I = -0x1

.field private static final c:I = 0x2710

.field private static final d:I = 0x1388


# instance fields
.field private e:I

.field private f:I

.field private g:Landroid/webkit/WebViewClient;

.field private h:Landroid/webkit/WebChromeClient;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Lnet/daum/adam/publisher/impl/c/k;

.field private l:Lnet/daum/adam/publisher/impl/c/b;

.field private m:Lnet/daum/adam/publisher/impl/c/p$l;

.field private n:Z

.field private o:Lnet/daum/adam/publisher/impl/c/p$g;

.field private p:Lnet/daum/adam/publisher/impl/c/p$f;

.field private q:Lnet/daum/adam/publisher/impl/c/p$k;

.field private r:Lnet/daum/adam/publisher/impl/c/p$h;

.field private s:Lnet/daum/adam/publisher/impl/c/p$e;

.field private t:Lnet/daum/adam/publisher/impl/c/p$j;

.field private u:Lnet/daum/adam/publisher/impl/c/p$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/daum/adam/publisher/impl/c/p;-><init>(Landroid/content/Context;Z)V

    .line 270
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;Lnet/daum/adam/publisher/impl/c/p$l;)V
    .locals 1

    .prologue
    const/4 v0, -0x2

    .line 278
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    iput v0, p0, Lnet/daum/adam/publisher/impl/c/p;->e:I

    .line 65
    iput v0, p0, Lnet/daum/adam/publisher/impl/c/p;->f:I

    .line 74
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p$1;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/c/p$1;-><init>(Lnet/daum/adam/publisher/impl/c/p;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->i:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/p;->n:Z

    .line 279
    iput-object p4, p0, Lnet/daum/adam/publisher/impl/c/p;->m:Lnet/daum/adam/publisher/impl/c/p$l;

    .line 280
    invoke-direct {p0, p2, p3}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 273
    if-eqz p2, :cond_0

    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    :goto_0
    sget-object v2, Lnet/daum/adam/publisher/impl/c/p$d;->c:Lnet/daum/adam/publisher/impl/c/p$d;

    if-eqz p2, :cond_1

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$l;->b:Lnet/daum/adam/publisher/impl/c/p$l;

    :goto_1
    invoke-direct {p0, p1, v0, v2, v1}, Lnet/daum/adam/publisher/impl/c/p;-><init>(Landroid/content/Context;Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;Lnet/daum/adam/publisher/impl/c/p$l;)V

    .line 275
    return-void

    .line 273
    :cond_0
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$a;->a:Lnet/daum/adam/publisher/impl/c/p$a;

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$l;->a:Lnet/daum/adam/publisher/impl/c/p$l;

    goto :goto_1
.end method

.method private a(Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 290
    const-string v0, "MraidView"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setBackgroundColor(I)V

    .line 295
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 296
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 297
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 300
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$a;->a:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {p1, v0}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setScrollContainer(Z)V

    .line 302
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setVerticalScrollBarEnabled(Z)V

    .line 303
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setHorizontalScrollBarEnabled(Z)V

    .line 306
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/impl/c/b;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/c/b;-><init>(Lnet/daum/adam/publisher/impl/c/p;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->l:Lnet/daum/adam/publisher/impl/c/b;

    .line 307
    new-instance v0, Lnet/daum/adam/publisher/impl/c/k;

    invoke-direct {v0, p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/k;-><init>(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->k:Lnet/daum/adam/publisher/impl/c/k;

    .line 309
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/c/p$c;-><init>(Lnet/daum/adam/publisher/impl/c/p;Landroid/os/Handler;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->g:Landroid/webkit/WebViewClient;

    .line 310
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->g:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 312
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/c/p$b;-><init>(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$1;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->h:Landroid/webkit/WebChromeClient;

    .line 313
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->h:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 315
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->b(Z)V

    .line 316
    return-void
.end method

.method private a(Ljava/net/URI;)Z
    .locals 5

    .prologue
    .line 932
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 935
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 936
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 937
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 938
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 941
    :cond_0
    invoke-static {v1, v2, p0}, Lnet/daum/adam/publisher/impl/c/i;->a(Ljava/lang/String;Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/c;

    move-result-object v0

    .line 942
    if-nez v0, :cond_1

    .line 943
    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/c/p;->b(Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x0

    .line 948
    :goto_1
    return v0

    .line 946
    :cond_1
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/c;->a()V

    .line 947
    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/c/p;->b(Ljava/lang/String;)V

    .line 948
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/c/p;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/p;->j:Z

    return v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/c/p;Ljava/net/URI;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/c/p;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/c/p;->j:Z

    return p1
.end method

.method static synthetic b(Lnet/daum/adam/publisher/impl/c/p;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/p;->n:Z

    return v0
.end method

.method static synthetic c(Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/k;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->k:Lnet/daum/adam/publisher/impl/c/k;

    return-object v0
.end method

.method static synthetic d(Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/p$l;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->m:Lnet/daum/adam/publisher/impl/c/p$l;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 921
    const-string v0, ".mov"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".avi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".wmv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".wma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".3pg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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

.method private q()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->r:Lnet/daum/adam/publisher/impl/c/p$h;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->r:Lnet/daum/adam/publisher/impl/c/p$h;

    invoke-interface {v0, p0}, Lnet/daum/adam/publisher/impl/c/p$h;->onFailure(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lnet/daum/adam/publisher/impl/c/p$l;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->m:Lnet/daum/adam/publisher/impl/c/p$l;

    return-object v0
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 977
    iput p1, p0, Lnet/daum/adam/publisher/impl/c/p;->e:I

    .line 978
    iput p2, p0, Lnet/daum/adam/publisher/impl/c/p;->f:I

    .line 979
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 761
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute javascript : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz p1, :cond_0

    .line 765
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.fireErrorEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/daum/adam/publisher/impl/c/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 814
    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fire changes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method

.method protected a(Lnet/daum/adam/publisher/impl/c/m;)V
    .locals 4

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 801
    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fire change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$e;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->s:Lnet/daum/adam/publisher/impl/c/p$e;

    .line 706
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$f;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->p:Lnet/daum/adam/publisher/impl/c/p$f;

    .line 652
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$g;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->o:Lnet/daum/adam/publisher/impl/c/p$g;

    .line 638
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$h;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->r:Lnet/daum/adam/publisher/impl/c/p$h;

    .line 688
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$i;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->u:Lnet/daum/adam/publisher/impl/c/p$i;

    .line 742
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$j;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->t:Lnet/daum/adam/publisher/impl/c/p$j;

    .line 724
    return-void
.end method

.method public a(Lnet/daum/adam/publisher/impl/c/p$k;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p;->q:Lnet/daum/adam/publisher/impl/c/p$k;

    .line 670
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/c/p;->n:Z

    .line 167
    return-void
.end method

.method public a([F)V
    .locals 2

    .prologue
    .line 781
    const-string v0, "MraidView"

    const-string v1, "MRAID App Mode"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.fireTileEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 385
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setDrawingCacheEnabled(Z)V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 388
    invoke-virtual {p0, v2}, Lnet/daum/adam/publisher/impl/c/p;->clearCache(Z)V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->f()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/p;->n:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 868
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return v0

    .line 872
    :cond_1
    const-string v2, "MraidView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processClickAction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 879
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 880
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 886
    :goto_1
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/c/p;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 887
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 890
    :cond_2
    if-eqz v2, :cond_3

    .line 892
    const/high16 v3, 0x18000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 894
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 896
    :try_start_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v0, v1

    .line 911
    goto :goto_0

    .line 882
    :cond_4
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 902
    :catch_0
    move-exception v2

    .line 903
    const-string v3, "tel:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 904
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\uc804\ud654 \uae30\ub2a5\uc774 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 897
    :catch_1
    move-exception v2

    .line 898
    :try_start_3
    const-string v3, "MraidView"

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 906
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click failed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public d()Lnet/daum/adam/publisher/impl/c/p$g;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->o:Lnet/daum/adam/publisher/impl/c/p$g;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->k:Lnet/daum/adam/publisher/impl/c/k;

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "MraidView"

    const-string v1, "Release MraidDisplayController resources"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->k:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->d()V

    .line 374
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 375
    return-void
.end method

.method public e()Lnet/daum/adam/publisher/impl/c/p$f;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->p:Lnet/daum/adam/publisher/impl/c/p$f;

    return-object v0
.end method

.method public f()Lnet/daum/adam/publisher/impl/c/p$k;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->q:Lnet/daum/adam/publisher/impl/c/p$k;

    return-object v0
.end method

.method public g()Lnet/daum/adam/publisher/impl/c/p$h;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->r:Lnet/daum/adam/publisher/impl/c/p$h;

    return-object v0
.end method

.method public h()Lnet/daum/adam/publisher/impl/c/p$e;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->s:Lnet/daum/adam/publisher/impl/c/p$e;

    return-object v0
.end method

.method public i()Lnet/daum/adam/publisher/impl/c/p$j;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->t:Lnet/daum/adam/publisher/impl/c/p$j;

    return-object v0
.end method

.method public j()Lnet/daum/adam/publisher/impl/c/p$i;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->u:Lnet/daum/adam/publisher/impl/c/p$i;

    return-object v0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 789
    const-string v0, "window.mraidbridge.setAdamProperties({\'isApp\':true});"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 790
    const-string v0, "MraidView"

    const-string v1, "MRAID App Mode"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 831
    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 326
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 327
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x33

    if-eq v0, v3, :cond_0

    .line 338
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/p;->q()V

    .line 364
    :goto_0
    return-void

    .line 342
    :cond_0
    if-eqz v1, :cond_1

    .line 343
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 344
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 345
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 346
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/p;->q()V

    goto :goto_0

    .line 353
    :catch_1
    move-exception v0

    .line 354
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/p;->q()V

    goto :goto_0

    .line 356
    :catch_2
    move-exception v0

    .line 357
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/p;->q()V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lnet/daum/adam/publisher/impl/c/p;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m()Lnet/daum/adam/publisher/impl/c/k;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->k:Lnet/daum/adam/publisher/impl/c/k;

    return-object v0
.end method

.method public n()Lnet/daum/adam/publisher/impl/c/b;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p;->l:Lnet/daum/adam/publisher/impl/c/b;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lnet/daum/adam/publisher/impl/c/p;->e:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lnet/daum/adam/publisher/impl/c/p;->f:I

    return v0
.end method
