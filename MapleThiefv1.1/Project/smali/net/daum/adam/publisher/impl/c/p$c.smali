.class Lnet/daum/adam/publisher/impl/c/p$c;
.super Landroid/webkit/WebViewClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/lang/Object;

.field c:Landroid/os/Handler;

.field d:Ljava/lang/Thread;

.field e:Landroid/app/ProgressDialog;

.field final synthetic f:Lnet/daum/adam/publisher/impl/c/p;


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/c/p;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 403
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 397
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 398
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->b:Ljava/lang/Object;

    .line 399
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->c:Landroid/os/Handler;

    .line 400
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    .line 401
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    .line 404
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/c/p$c;->c:Landroid/os/Handler;

    .line 405
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 406
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->b:Ljava/lang/Object;

    .line 407
    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 607
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 553
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 557
    instance-of v0, p1, Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 558
    check-cast v0, Lnet/daum/adam/publisher/impl/c/p;

    .line 563
    :goto_0
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 565
    iput-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    .line 569
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c/p;->b(Lnet/daum/adam/publisher/impl/c/p;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->k()V

    .line 584
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c/p;->c(Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->e()V

    .line 587
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/p;->d(Lnet/daum/adam/publisher/impl/c/p;)Lnet/daum/adam/publisher/impl/c/p$l;

    move-result-object v1

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/l;->a(Lnet/daum/adam/publisher/impl/c/p$l;)Lnet/daum/adam/publisher/impl/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/m;)V

    .line 588
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v3}, Lnet/daum/adam/publisher/impl/c/q;->a(Z)Lnet/daum/adam/publisher/impl/c/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/m;)V

    .line 591
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->l()V

    .line 593
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->f()Lnet/daum/adam/publisher/impl/c/p$k;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->f()Lnet/daum/adam/publisher/impl/c/p$k;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-interface {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$k;->a(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 596
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {v0, v3}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p;Z)Z

    .line 600
    :cond_3
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->j()Lnet/daum/adam/publisher/impl/c/p$i;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->j()Lnet/daum/adam/publisher/impl/c/p$i;

    move-result-object v0

    check-cast p1, Lnet/daum/adam/publisher/impl/c/p;

    invoke-interface {v0, p1}, Lnet/daum/adam/publisher/impl/c/p$i;->onLoad(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 603
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    .line 560
    goto/16 :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 411
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 415
    instance-of v1, p1, Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v1, :cond_2

    .line 416
    check-cast p1, Lnet/daum/adam/publisher/impl/c/p;

    .line 422
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    .line 428
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p$c$1;

    const-string v1, "CheckIfContentDelayLoading"

    invoke-direct {v0, p0, v1, p1}, Lnet/daum/adam/publisher/impl/c/p$c$1;-><init>(Lnet/daum/adam/publisher/impl/c/p$c;Ljava/lang/String;Lnet/daum/adam/publisher/impl/c/p;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    .line 468
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 471
    :try_start_1
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    sget-object v2, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    :goto_1
    :try_start_2
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 477
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\ud398\uc774\uc9c0\ub97c \ubd88\ub7ec\uc624\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824\uc8fc\uc138\uc694."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    .line 480
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 481
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lnet/daum/adam/publisher/impl/c/p$c$2;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/c/p$c$2;-><init>(Lnet/daum/adam/publisher/impl/c/p$c;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 493
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object p1, v0

    .line 418
    goto :goto_0

    .line 472
    :catch_0
    move-exception v1

    .line 473
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 489
    :catch_1
    move-exception v0

    .line 490
    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 503
    instance-of v1, p1, Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v1, :cond_2

    .line 504
    check-cast p1, Lnet/daum/adam/publisher/impl/c/p;

    .line 510
    :goto_0
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 518
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->d:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_1
    :goto_1
    const-string v0, "MraidView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 529
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 530
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 532
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void

    :cond_2
    move-object p1, v0

    .line 506
    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    const-string v1, "MraidView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 538
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p;Ljava/net/URI;)Z

    .line 544
    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0, p2}, Lnet/daum/adam/publisher/impl/c/p;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
