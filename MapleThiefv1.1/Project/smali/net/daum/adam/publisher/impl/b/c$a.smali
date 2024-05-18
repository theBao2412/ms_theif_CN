.class final Lnet/daum/adam/publisher/impl/b/c$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Lnet/daum/adam/publisher/impl/b/c;

.field private final b:Z

.field private final c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Z)V
    .locals 2

    .prologue
    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    .line 659
    iput-boolean p2, p0, Lnet/daum/adam/publisher/impl/b/c$a;->b:Z

    .line 661
    invoke-static {p1}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a;->c:Landroid/app/ProgressDialog;

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a;->c:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 672
    const-string v0, "AdCommandTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AgreeTask] \uc704\uce58 \uc815\ubcf4 \ub3d9\uc758 \uc5ec\ubd80 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/daum/adam/publisher/impl/b/c$a;->b:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$a$1;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/b/c$a$1;-><init>(Lnet/daum/adam/publisher/impl/b/c$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    new-instance v1, Lnet/daum/adam/publisher/impl/h;

    invoke-direct {v1}, Lnet/daum/adam/publisher/impl/h;-><init>()V

    .line 685
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/mergeLocInfoAgree.do"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    const/4 v0, 0x0

    .line 691
    :try_start_0
    iget-object v3, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v3}, Lnet/daum/adam/publisher/impl/b/c;->g(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/g;

    move-result-object v3

    iget-boolean v4, p0, Lnet/daum/adam/publisher/impl/b/c$a;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/daum/adam/publisher/impl/g;->a(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v3

    .line 694
    const-string v4, "interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lnet/daum/adam/publisher/impl/b/c;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v4, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v4}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/daum/adam/publisher/AdView;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lnet/daum/adam/publisher/impl/h;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/daum/adam/publisher/impl/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 701
    :goto_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Lnet/daum/adam/publisher/impl/b/a;)V

    .line 703
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$a$2;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/b/c$a$2;-><init>(Lnet/daum/adam/publisher/impl/b/c$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    const-string v2, "AgreeTask"

    const-string v3, "LIA \uc11c\ubc84 Command \uc694\uccad \uc2e4\ud328"

    invoke-static {v2, v3, v1}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
