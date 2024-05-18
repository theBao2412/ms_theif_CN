.class final Lnet/daum/adam/publisher/impl/b/c$b;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lnet/daum/adam/publisher/impl/b/c;

.field private final b:Z


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Z)V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    .line 561
    iput-boolean p2, p0, Lnet/daum/adam/publisher/impl/b/c$b;->b:Z

    .line 562
    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c$b;)Lnet/daum/adam/publisher/impl/b/c;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 565
    const-string v0, "AdCommandTask"

    const-string v2, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \uc5ec\ubd80 \uad00\ub828 \ud504\ub85c\uc138\uc2a4 \uc2dc\uc791"

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v2, Lnet/daum/adam/publisher/impl/h;

    invoke-direct {v2}, Lnet/daum/adam/publisher/impl/h;-><init>()V

    .line 569
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 571
    iget-boolean v4, p0, Lnet/daum/adam/publisher/impl/b/c$b;->b:Z

    if-nez v4, :cond_0

    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->g()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 572
    :cond_0
    const-string v4, "AdCommandTask"

    const-string v5, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \uac80\uc0ac URL \uc0ac\uc6a9"

    invoke-static {v4, v5}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/checkLocInfoAgree.do"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    :try_start_0
    iget-object v4, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v4}, Lnet/daum/adam/publisher/impl/b/c;->g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v4

    .line 585
    const-string v5, "interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->h()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v5

    invoke-virtual {v5}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v5

    if-nez v5, :cond_3

    .line 589
    iget-object v5, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v5}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v5

    invoke-virtual {v5}, Lnet/daum/adam/publisher/AdView;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v4, v5}, Lnet/daum/adam/publisher/impl/h;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 596
    :goto_1
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v2}, Lnet/daum/adam/publisher/impl/b/c;->k(Lnet/daum/adam/publisher/impl/b/c;)Landroid/location/LocationManager;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 604
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/a;->b()I

    move-result v4

    if-ne v4, v3, :cond_5

    if-eqz v2, :cond_5

    .line 605
    const-string v0, "AdCommandTask"

    const-string v2, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \ud31d\uc5c5 \ucd9c\ub825"

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 609
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 610
    const-string v0, "AdCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AgreeCommandThread is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v2}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$b$1;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/b/c$b$1;-><init>(Lnet/daum/adam/publisher/impl/b/c$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    :goto_3
    return-void

    .line 575
    :cond_2
    const-string v4, "AdCommandTask"

    const-string v5, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 URL \uc0ac\uc6a9"

    invoke-static {v4, v5}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/collectLocInfo.do"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    const-string v2, "AdCommandTask"

    const-string v4, "[RequestCommandRunnable] LIA \uc11c\ubc84 Command \uc694\uccad \uc2e4\ud328"

    invoke-static {v2, v4, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    .line 596
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 640
    :catch_1
    move-exception v0

    .line 641
    const-string v1, "AdCommandTask"

    const-string v2, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \ud31d\uc5c5 \uc608\uc678 \ubc1c\uc0dd"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 644
    :cond_5
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$b;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Lnet/daum/adam/publisher/impl/b/a;)V

    goto :goto_3
.end method
