.class Lnet/daum/adam/publisher/impl/b/c$b$1$3;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c$b$1;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c$b$1;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1$3;->a:Lnet/daum/adam/publisher/impl/b/c$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 619
    const-string v0, "AdCommandTask"

    const-string v1, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 \uc2b9\uc778 \uc815\ubcf4 \uc804\uc1a1 \uc694\uccad"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 621
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 622
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 623
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1$3;->a:Lnet/daum/adam/publisher/impl/b/c$b$1;

    iget-object v1, v1, Lnet/daum/adam/publisher/impl/b/c$b$1;->a:Lnet/daum/adam/publisher/impl/b/c$b;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c$b;->a(Lnet/daum/adam/publisher/impl/b/c$b;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v1

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 624
    return-void
.end method
