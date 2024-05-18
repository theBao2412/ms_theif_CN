.class final Lnet/daum/adam/publisher/impl/i$b;
.super Ljava/lang/Object;
.source "AdRefreshTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/i;

.field private final b:Ljava/lang/Object;

.field private c:Z

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/daum/adam/publisher/AdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/AdView;)V
    .locals 1

    .prologue
    .line 348
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i$b;->c:Z

    .line 351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->d:Ljava/lang/ref/WeakReference;

    .line 352
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i$b;->c:Z

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 430
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i$b;->c:Z

    .line 432
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 357
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/AdView;

    .line 360
    if-eqz v0, :cond_9

    .line 361
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isInForeground()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 362
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isShown()Z

    move-result v4

    .line 363
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->hasWindowFocus()Z

    move-result v5

    .line 364
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isAdExpanded()Z

    move-result v6

    .line 365
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/i;->d(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/i$a;

    move-result-object v1

    sget-object v7, Lnet/daum/adam/publisher/impl/i$a;->b:Lnet/daum/adam/publisher/impl/i$a;

    if-ne v1, v7, :cond_3

    move v1, v2

    .line 367
    :goto_0
    if-nez v5, :cond_1

    iget-object v5, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v5}, Lnet/daum/adam/publisher/impl/i;->e(Lnet/daum/adam/publisher/impl/i;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 372
    :cond_1
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getNetworkStatus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 373
    if-nez v4, :cond_4

    .line 375
    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    const-string v4, "AdView\'s visibility has been changed, ad will not be updated"

    invoke-virtual {v0, v1, v4}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 384
    :goto_1
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/i;->d(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/i$a;

    move-result-object v1

    sget-object v4, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    if-ne v1, v4, :cond_7

    .line 385
    const-string v0, "AdRefreshTask"

    const-string v1, "Ad updater thread is dead already."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v3

    .line 365
    goto :goto_0

    .line 376
    :cond_4
    if-nez v6, :cond_5

    if-eqz v1, :cond_5

    .line 378
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 400
    :catch_0
    move-exception v0

    .line 402
    const-string v1, "AdRefreshTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 381
    :cond_5
    :try_start_1
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    goto :goto_1

    .line 389
    :cond_6
    const-string v1, "AdRefreshTask"

    const-string v4, "Network is not connected."

    invoke-static {v1, v4}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_7
    const-string v1, "AdRefreshTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getRequestInterval()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ucd08 \ub3d9\uc548 Thread Sleep"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getRequestInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :cond_8
    :goto_3
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :goto_4
    :try_start_2
    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/i$b;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    .line 409
    :try_start_3
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 410
    :catch_1
    move-exception v0

    .line 411
    :try_start_4
    const-string v2, "AdRefreshTask"

    const-string v3, "[AdViewUpdaterRunnable] run() - InterruptedException occurs."

    invoke-static {v2, v3, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    monitor-exit v1

    goto :goto_2

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 396
    :cond_9
    if-nez v0, :cond_8

    .line 397
    :try_start_5
    const-string v0, "Ad@m view should be initialized before background thread start."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/impl/i$b;->c:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 415
    :cond_a
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 417
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$b;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->d(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/i$a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/i$a;->d:Lnet/daum/adam/publisher/impl/i$a;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2
.end method
