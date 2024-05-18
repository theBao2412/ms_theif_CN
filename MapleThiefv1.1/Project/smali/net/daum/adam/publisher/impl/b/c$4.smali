.class Lnet/daum/adam/publisher/impl/b/c$4;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c;->e()Z
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
    .line 354
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$4;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 357
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 358
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 359
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$4;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    return-void
.end method
