.class Lnet/daum/adam/publisher/impl/i$1;
.super Landroid/os/Handler;
.source "AdRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/i;-><init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/i;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/i;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/j;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->b(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/AdView;

    move-result-object v2

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/j;->updateAd(Lnet/daum/adam/publisher/impl/b;)V

    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->c(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->c(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c;->c()V

    .line 83
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/b/c;

    .line 86
    :cond_1
    const-string v0, "AdRefreshTask"

    const-string v1, "\uc704\uce58 \uc815\ubcf4 \uac31\uc2e0"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {v1, v2}, Lnet/daum/adam/publisher/impl/b/c;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/i;->a(Lnet/daum/adam/publisher/impl/i;Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/impl/b/c;

    .line 88
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/i$1;->a:Lnet/daum/adam/publisher/impl/i;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/i;->c(Lnet/daum/adam/publisher/impl/i;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/c;->a()V

    goto :goto_0

    .line 93
    :pswitch_2
    if-eqz v2, :cond_0

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 97
    instance-of v1, v0, Lnet/daum/adam/publisher/impl/AdException;

    if-eqz v1, :cond_2

    .line 98
    check-cast v0, Lnet/daum/adam/publisher/impl/AdException;

    .line 99
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_SDKEXCEPTION:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
