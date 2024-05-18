.class Lnet/daum/adam/publisher/impl/c/p$c$1;
.super Ljava/lang/Thread;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/c/p$c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/p;

.field final synthetic b:Lnet/daum/adam/publisher/impl/c/p$c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p$c;Ljava/lang/String;Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iput-object p3, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 435
    :try_start_0
    const-string v2, "MraidView"

    const-string v3, "++++++++++++++++++++ Contents Loading ++++++++++++++++++++"

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v2

    sget-object v3, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {v2, v3}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    const-string v2, "MraidView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :goto_1
    return-void

    .line 440
    :cond_0
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v2

    .line 443
    const-string v2, "MraidView"

    const-string v3, "++++++++++++++++++++ Thread has been interrupted ++++++++++++++++++++"

    invoke-static {v2, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v2, v2, Lnet/daum/adam/publisher/impl/c/p$c;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 452
    :try_start_2
    const-string v3, "MraidView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    const-string v0, "MraidView"

    const-string v1, "++++++++++++++++++++ Thread timeout ++++++++++++++++++++"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 458
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$1;->b:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->c:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    monitor-exit v2

    goto :goto_1

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 461
    :cond_3
    :try_start_3
    const-string v0, "MraidView"

    const-string v1, "++++++++++++++++++++ Success Loading ++++++++++++++++++++"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
