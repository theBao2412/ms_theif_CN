.class Lnet/daum/adam/publisher/impl/b/c$b$1$2;
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
    .line 625
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1$2;->a:Lnet/daum/adam/publisher/impl/b/c$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 627
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 628
    const-string v0, "AdCommandTask"

    const-string v1, "[RequestCommandRunnable] \uc704\uce58 \uc815\ubcf4 \uc218\uc9d1 \uac70\uc808 \uc815\ubcf4 \uc804\uc1a1 \uc694\uccad"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$b$1$2;->a:Lnet/daum/adam/publisher/impl/b/c$b$1;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/b/c$b$1;->a:Lnet/daum/adam/publisher/impl/b/c$b;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$b;->a(Lnet/daum/adam/publisher/impl/b/c$b;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 630
    return-void
.end method
