.class final Lnet/daum/adam/publisher/impl/b/c$c;
.super Ljava/lang/Thread;
.source "AdCommandTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/daum/adam/publisher/impl/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnet/daum/adam/publisher/impl/b/c$b;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/b/c;)V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/daum/adam/publisher/impl/b/c$c;-><init>(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Boolean;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 445
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 437
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->c:Lnet/daum/adam/publisher/impl/b/c$b;

    .line 438
    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    .line 446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->b:Ljava/lang/ref/WeakReference;

    .line 447
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/b/c$c;->a:Ljava/lang/Boolean;

    .line 448
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 430
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->destroy()V

    .line 432
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->destroy()V

    .line 433
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/b/c;

    .line 453
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "noaction"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->b(I)I

    .line 455
    const-string v0, "AdCommandTask"

    const-string v1, "[UpdateParamsRunnable] \uc704\uce58 \uc815\ubcf4 \uc11c\ube44\uc2a4 \uc0ac\uc6a9 \ubd88\uac00\ub2a5"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    const-string v1, "AdCommandTask"

    const-string v2, "[UpdateParamsRunnable] \uc704\uce58 \uc815\ubcf4 \uc11c\ube44\uc2a4 \uc0ac\uc6a9 \uac00\ub2a5 \uc5ec\ubd80 \uac80\uc0ac"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    :cond_2
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 471
    const-string v1, "AdCommandTask"

    const-string v2, "[UpdateParamsRunnable] \uc704\uce58 \uc815\ubcf4 \uc804\uc1a1\uc5d0 \ud544\uc694\ud55c \ud30c\ub77c\ubbf8\ud130\ub97c \uad6c\uc131"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v1

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->i(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/g;->d(Ljava/lang/String;)V

    .line 476
    :cond_3
    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->f()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "netoperator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v1

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->j(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/g;->c(Ljava/lang/String;)V

    .line 485
    :cond_4
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 486
    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$b;

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/daum/adam/publisher/impl/b/c;

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/c$c;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v1, v0, v2}, Lnet/daum/adam/publisher/impl/b/c$b;-><init>(Lnet/daum/adam/publisher/impl/b/c;Z)V

    iput-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$c;->c:Lnet/daum/adam/publisher/impl/b/c$b;

    .line 487
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$c;->c:Lnet/daum/adam/publisher/impl/b/c$b;

    const-string v2, "RequestCommandThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    .line 488
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 490
    :try_start_0
    sget-object v1, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 491
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    sget-object v2, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_5
    :goto_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 502
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/b/c;->a(J)J

    goto/16 :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$c;->d:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1
.end method
