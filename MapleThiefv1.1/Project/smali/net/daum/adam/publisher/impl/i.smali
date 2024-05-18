.class public final Lnet/daum/adam/publisher/impl/i;
.super Ljava/lang/Object;
.source "AdRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/i$b;,
        Lnet/daum/adam/publisher/impl/i$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Integer; = null

.field private static final b:Ljava/lang/String; = "AdRefreshTask"

.field private static final c:I = 0x2

.field private static final d:I = 0x1

.field private static final e:I


# instance fields
.field private f:Lnet/daum/adam/publisher/impl/j;

.field private g:Lnet/daum/adam/publisher/AdView;

.field private h:Z

.field private i:Z

.field private j:Landroid/os/Handler;

.field private k:Lnet/daum/adam/publisher/impl/i$b;

.field private final l:Lnet/daum/adam/publisher/impl/h;

.field private final m:Lnet/daum/adam/publisher/impl/g;

.field private n:Lnet/daum/adam/publisher/impl/b/c;

.field private o:Lnet/daum/adam/publisher/impl/i$a;

.field private p:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/j;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->f:Lnet/daum/adam/publisher/impl/j;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    .line 45
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->a:Lnet/daum/adam/publisher/impl/i$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    .line 55
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    const-string v0, "Cannot initialize ad refresh task"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 59
    :cond_1
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    .line 61
    new-instance v0, Lnet/daum/adam/publisher/impl/h;

    invoke-direct {v0}, Lnet/daum/adam/publisher/impl/h;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->l:Lnet/daum/adam/publisher/impl/h;

    .line 62
    new-instance v0, Lnet/daum/adam/publisher/impl/g;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/daum/adam/publisher/impl/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->m:Lnet/daum/adam/publisher/impl/g;

    .line 65
    new-instance v0, Lnet/daum/adam/publisher/impl/i$1;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/impl/i$1;-><init>(Lnet/daum/adam/publisher/impl/i;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->j:Landroid/os/Handler;

    .line 110
    new-instance v0, Lnet/daum/adam/publisher/impl/i$b;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/i$b;-><init>(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/AdView;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    .line 112
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    const-string v2, "Ad@mAdViewUpdater"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    if-nez v0, :cond_2

    .line 115
    const-string v0, "Cannot start background thread"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 119
    :cond_2
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/i;->f:Lnet/daum/adam/publisher/impl/j;

    .line 121
    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/b/c;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/i;->n:Lnet/daum/adam/publisher/impl/b/c;

    return-object p1
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/j;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/i;->f()Lnet/daum/adam/publisher/impl/j;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Handler;Lnet/daum/adam/publisher/AdView;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    const-string v0, "AdRefreshTask"

    const-string v3, "refreshAd"

    invoke-static {v0, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->m:Lnet/daum/adam/publisher/impl/g;

    invoke-virtual {p2}, Lnet/daum/adam/publisher/AdView;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/String;)V

    .line 267
    :try_start_0
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 268
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->m:Lnet/daum/adam/publisher/impl/g;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/g;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 270
    invoke-static {}, Lnet/daum/adam/publisher/impl/c;->a()J

    move-result-wide v5

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 274
    invoke-virtual {p2}, Lnet/daum/adam/publisher/AdView;->getRequestInterval()I

    move-result v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c;->a(I)Lnet/daum/adam/publisher/impl/b;

    move-result-object v0

    .line 277
    if-nez v0, :cond_2

    .line 280
    const-string v9, "ft"

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    if-eqz v0, :cond_3

    const-string v0, "y"

    :goto_0
    invoke-virtual {v4, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "AdRefreshTask"

    const-string v9, "First Try"

    invoke-static {v0, v9}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    .line 288
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    .line 289
    const-string v0, "rt"

    sub-long v5, v7, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->l:Lnet/daum/adam/publisher/impl/h;

    invoke-virtual {p2}, Lnet/daum/adam/publisher/AdView;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Lnet/daum/adam/publisher/impl/h;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b;

    move-result-object v0

    .line 296
    invoke-static {}, Lnet/daum/adam/publisher/impl/c;->b()Lnet/daum/adam/publisher/impl/b;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_6

    .line 298
    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 302
    :goto_2
    if-nez v1, :cond_2

    .line 303
    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c;->a(Lnet/daum/adam/publisher/impl/b;)V

    .line 307
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    :goto_3
    return-void

    .line 280
    :cond_3
    const-string v0, "n"
    :try_end_0
    .catch Lnet/daum/adam/publisher/impl/AdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 284
    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v3

    if-eq v1, v3, :cond_5

    .line 311
    const-string v1, "AdRefreshTask"

    const-string v3, "SDK Exception"

    invoke-static {v1, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    :cond_5
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 314
    :catch_1
    move-exception v0

    .line 315
    const-string v1, "AdRefreshTask"

    const-string v3, "SDK Exception"

    invoke-static {v1, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private a(Lnet/daum/adam/publisher/AdView;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->j:Landroid/os/Handler;

    invoke-direct {p0, v0, p1}, Lnet/daum/adam/publisher/impl/i;->a(Landroid/os/Handler;Lnet/daum/adam/publisher/AdView;)V

    .line 336
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->m:Lnet/daum/adam/publisher/impl/g;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->j:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/i;->a(Landroid/os/Handler;)V

    .line 341
    :cond_0
    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/AdView;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/AdView;)V

    return-void
.end method

.method static synthetic b(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/AdView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    return-object v0
.end method

.method static synthetic c(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/b/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->n:Lnet/daum/adam/publisher/impl/b/c;

    return-object v0
.end method

.method static synthetic d(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/i$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->n:Lnet/daum/adam/publisher/impl/b/c;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->n:Lnet/daum/adam/publisher/impl/b/c;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c;->c()V

    .line 198
    :cond_0
    return-void
.end method

.method static synthetic e(Lnet/daum/adam/publisher/impl/i;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->h:Z

    return v0
.end method

.method private f()Lnet/daum/adam/publisher/impl/j;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->f:Lnet/daum/adam/publisher/impl/j;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uad11\uace0 Thread("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \uc77c\uc2dc \uc815\uc9c0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->c:Lnet/daum/adam/publisher/impl/i$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    .line 187
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/i$b;->a()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/i;->e()V

    .line 192
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    .line 456
    :try_start_0
    const-string v0, "AdRefreshTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current thread priority is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "AdRefreshTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to change current thread priority : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread priority has been changed into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    const-string v2, "AdRefreshTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    const-string v0, "AdRefreshTask"

    const-string v2, "Reset to set default thread priority..."

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    if-nez v0, :cond_1

    .line 128
    const-string v0, "AdRefreshTask"

    const-string v1, "Cannot draw ad."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isInForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string v0, "AdRefreshTask"

    const-string v1, "Ad@m view is in the background."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isAdExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string v0, "AdRefreshTask"

    const-string v1, "Expandable ad has been displayed."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/i;->a()V

    goto :goto_0

    .line 145
    :cond_3
    if-eqz p1, :cond_4

    .line 146
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/AdView;->getNetworkStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getNetworkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "AdRefreshTask"

    const-string v1, "Ad request right away."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/AdView;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->i:Z

    if-nez v0, :cond_5

    .line 155
    const-string v0, "AdRefreshTask"

    const-string v1, "Cannot refresh ad."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_5
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->a:Lnet/daum/adam/publisher/impl/i$a;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    if-ne v0, v1, :cond_7

    .line 160
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getNetworkStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uad11\uace0 Thread("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \uc2dc\uc791"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    .line 163
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    :cond_6
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->c:Lnet/daum/adam/publisher/impl/i$a;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getNetworkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uad11\uace0 Thread("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \uc7ac\uc2dc\uc791"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    .line 174
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/i$b;->b()V

    goto/16 :goto_0

    .line 166
    :cond_7
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ad Refresh state is already dead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "AdRefreshTask"

    const-string v1, "\uac15\uc81c \uc694\uccad"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/i;->a(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 206
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/i;->i:Z

    .line 208
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i;->i:Z

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/i;->a()V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/i;->a(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->o:Lnet/daum/adam/publisher/impl/i$a;

    .line 235
    const-string v0, "AdRefreshTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uad11\uace0 Thread("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/i;->k:Lnet/daum/adam/publisher/impl/i$b;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \uc815\uc9c0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 241
    :cond_0
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    :cond_1
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/i;->e()V

    .line 250
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/i;->a()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i;->g:Lnet/daum/adam/publisher/AdView;

    .line 252
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
