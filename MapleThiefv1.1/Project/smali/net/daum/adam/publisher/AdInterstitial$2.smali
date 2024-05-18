.class Lnet/daum/adam/publisher/AdInterstitial$2;
.super Ljava/lang/Thread;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdInterstitial;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/AdInterstitial;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    :try_start_0
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v1}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/g;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v2}, Lnet/daum/adam/publisher/AdInterstitial;->c(Lnet/daum/adam/publisher/AdInterstitial;)Lnet/daum/adam/publisher/impl/h;

    move-result-object v2

    iget-object v3, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v3}, Lnet/daum/adam/publisher/AdInterstitial;->b(Lnet/daum/adam/publisher/AdInterstitial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lnet/daum/adam/publisher/impl/h;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string v1, "AdInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial ad url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;Lnet/daum/adam/publisher/impl/b;)V

    .line 280
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdInterstitial;->d(Lnet/daum/adam/publisher/AdInterstitial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    const/4 v2, 0x0

    sget-object v3, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-static {v1, v2, v3}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lnet/daum/adam/publisher/impl/AdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v1}, Lnet/daum/adam/publisher/AdInterstitial;->d(Lnet/daum/adam/publisher/AdInterstitial;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdInterstitial;->d(Lnet/daum/adam/publisher/AdInterstitial;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$2;->a:Lnet/daum/adam/publisher/AdInterstitial;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_SDKEXCEPTION:Lnet/daum/adam/publisher/impl/AdError;

    invoke-static {v1, v4, v2}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
