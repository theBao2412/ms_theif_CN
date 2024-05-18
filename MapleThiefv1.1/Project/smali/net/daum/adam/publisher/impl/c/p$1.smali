.class Lnet/daum/adam/publisher/impl/c/p$1;
.super Landroid/os/Handler;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/p;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/p$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    .line 82
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->g()Lnet/daum/adam/publisher/impl/c/p$h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->g()Lnet/daum/adam/publisher/impl/c/p$h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lnet/daum/adam/publisher/impl/c/p$h;->onFailure(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 87
    :cond_1
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->c()Lnet/daum/adam/publisher/impl/c/p$a;

    move-result-object v0

    sget-object v2, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Ad@m \uad11\uace0 \ud398\uc774\uc9c0 \uc218\uc2e0\uc5d0 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4."

    .line 89
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 93
    :cond_2
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 95
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const-string v2, "\ud655\uc778"

    new-instance v3, Lnet/daum/adam/publisher/impl/c/p$1$2;

    invoke-direct {v3, p0, v1}, Lnet/daum/adam/publisher/impl/c/p$1$2;-><init>(Lnet/daum/adam/publisher/impl/c/p$1;Lnet/daum/adam/publisher/impl/c/p;)V

    invoke-virtual {v0, v2, v3}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/d/a;->a(Z)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    new-instance v2, Lnet/daum/adam/publisher/impl/c/p$1$1;

    invoke-direct {v2, p0, v1}, Lnet/daum/adam/publisher/impl/c/p$1$1;-><init>(Lnet/daum/adam/publisher/impl/c/p$1;Lnet/daum/adam/publisher/impl/c/p;)V

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
