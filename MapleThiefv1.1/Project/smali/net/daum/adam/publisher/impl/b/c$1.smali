.class Lnet/daum/adam/publisher/impl/b/c$1;
.super Landroid/os/Handler;
.source "AdCommandTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 69
    .line 71
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 73
    :sswitch_0
    const-string v0, "AdCommandTask"

    const-string v1, "MSG_INITIALIZE_GPS"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->b(Lnet/daum/adam/publisher/impl/b/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "AdCommandTask"

    const-string v2, "\uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 \uae30\ub2a5 \uc608\uc678 \ubc1c\uc0dd"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :cond_0
    :try_start_1
    const-string v0, "AdCommandTask"

    const-string v1, "\uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 \uad8c\ud55c \uc5c6\uc74c"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    :cond_1
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lnet/daum/adam/publisher/impl/b/c$a;

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {v3, v4, v0}, Lnet/daum/adam/publisher/impl/b/c$a;-><init>(Lnet/daum/adam/publisher/impl/b/c;Z)V

    const-string v0, "AgreeCommandThread"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 92
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 94
    :try_start_2
    sget-object v1, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lnet/daum/adam/publisher/impl/i;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 97
    :catch_1
    move-exception v1

    .line 98
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->c(Lnet/daum/adam/publisher/impl/b/c;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_1

    .line 106
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 107
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 109
    :cond_3
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/b/c;->a(Lnet/daum/adam/publisher/impl/b/c;Z)V

    .line 110
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$1;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->resume()V

    goto/16 :goto_0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method
