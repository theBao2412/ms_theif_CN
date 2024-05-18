.class public final Lnet/daum/adam/publisher/AdInterstitial;
.super Ljava/lang/Object;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AdInterstitial"

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

.field private final f:Landroid/app/Activity;

.field private g:Ljava/lang/String;

.field private final h:Lnet/daum/adam/publisher/impl/h;

.field private final i:Lnet/daum/adam/publisher/impl/g;

.field private j:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

.field private k:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/daum/adam/publisher/AdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lnet/daum/adam/publisher/AdInterstitial$1;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/AdInterstitial$1;-><init>(Lnet/daum/adam/publisher/AdInterstitial;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->d:Landroid/os/Handler;

    .line 191
    iput-object p1, p0, Lnet/daum/adam/publisher/AdInterstitial;->f:Landroid/app/Activity;

    .line 193
    new-instance v0, Lnet/daum/adam/publisher/impl/h;

    invoke-direct {v0}, Lnet/daum/adam/publisher/impl/h;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->h:Lnet/daum/adam/publisher/impl/h;

    .line 194
    new-instance v0, Lnet/daum/adam/publisher/impl/g;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->i:Lnet/daum/adam/publisher/impl/g;

    .line 196
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Lnet/daum/adam/publisher/AdInterstitial;->setClientId(Ljava/lang/String;)V

    .line 201
    :cond_0
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :goto_0
    sget-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    .line 210
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "AdInterstitial"

    const-string v2, "OutOfMemoryError Exception occurs"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    const-string v1, "AdInterstitial"

    const-string v2, "Exception occurs"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 358
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 359
    iput p1, v0, Landroid/os/Message;->what:I

    .line 360
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    return-object v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdInterstitial;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/AdInterstitial;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdInterstitial;)Lnet/daum/adam/publisher/impl/g;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->i:Lnet/daum/adam/publisher/impl/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    const-string v0, "AdInterstitial"

    const-string v1, "adLoaded"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    .line 306
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->j:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->j:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    invoke-interface {v0}, Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;->OnAdLoaded()V

    .line 309
    :cond_0
    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdInterstitial;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdInterstitial;Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdInterstitial;Lnet/daum/adam/publisher/impl/b;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/impl/b;)V

    return-void
.end method

.method private a(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    const-string v0, "AdInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adFailed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    .line 294
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->k:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->k:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    invoke-interface {v0, p1, p2}, Lnet/daum/adam/publisher/AdView$OnAdFailedListener;->OnAdFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method private a(Lnet/daum/adam/publisher/impl/b;)V
    .locals 5

    .prologue
    .line 332
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdInterstitial;->a()Landroid/app/Activity;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v2, "net.daum.adam.publisher.interstitialUrl"

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lnet/daum/adam/publisher/AdInterstitial;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 348
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    const-string v1, "AdInterstitialActivity must be added in AndroidManifest.xml!"

    .line 341
    iget-object v2, p0, Lnet/daum/adam/publisher/AdInterstitial;->d:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/daum/adam/publisher/AdInterstitial;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    const-string v1, "AdInterstitial"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lnet/daum/adam/publisher/AdInterstitial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lnet/daum/adam/publisher/AdInterstitial;)Lnet/daum/adam/publisher/impl/h;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->h:Lnet/daum/adam/publisher/impl/h;

    return-object v0
.end method

.method static synthetic d(Lnet/daum/adam/publisher/AdInterstitial;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    sget-object v1, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;->NOT_READY:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->e:Lnet/daum/adam/publisher/AdInterstitial$InterstitialState;

    .line 258
    new-instance v0, Lnet/daum/adam/publisher/AdInterstitial$2;

    const-string v1, "AdInterstitialLoader"

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/AdInterstitial$2;-><init>(Lnet/daum/adam/publisher/AdInterstitial;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdInterstitial$2;->start()V

    .line 282
    return-void
.end method

.method public setAdCache(Z)V
    .locals 0

    .prologue
    .line 221
    invoke-static {p1}, Lnet/daum/adam/publisher/impl/e;->a(Z)V

    .line 222
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 242
    const-string v0, "AdInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClientId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lnet/daum/adam/publisher/AdInterstitial;->i:Lnet/daum/adam/publisher/impl/g;

    invoke-virtual {v0, p1}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setOnAdFailedListener(Lnet/daum/adam/publisher/AdView$OnAdFailedListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lnet/daum/adam/publisher/AdInterstitial;->k:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    .line 171
    return-void
.end method

.method public setOnAdLoadedListener(Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lnet/daum/adam/publisher/AdInterstitial;->j:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    .line 150
    return-void
.end method
