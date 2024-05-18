.class Lnet/daum/adam/publisher/impl/b/c$b$1;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c$b;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c$b;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1;->a:Lnet/daum/adam/publisher/impl/b/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 616
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    sget-object v1, Lnet/daum/adam/publisher/impl/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const-string v1, "\uc2b9\uc778"

    new-instance v2, Lnet/daum/adam/publisher/impl/b/c$b$1$3;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/b/c$b$1$3;-><init>(Lnet/daum/adam/publisher/impl/b/c$b$1;)V

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const-string v1, "\uac70\uc808"

    new-instance v2, Lnet/daum/adam/publisher/impl/b/c$b$1$2;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/b/c$b$1$2;-><init>(Lnet/daum/adam/publisher/impl/b/c$b$1;)V

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/d/a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c$b$1$1;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/b/c$b$1$1;-><init>(Lnet/daum/adam/publisher/impl/b/c$b$1;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/DialogInterface$OnCancelListener;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Z)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1;->a:Lnet/daum/adam/publisher/impl/b/c$b;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c$b;->a(Lnet/daum/adam/publisher/impl/b/c$b;)Lnet/daum/adam/publisher/impl/b/c;

    move-result-object v1

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 637
    return-void
.end method
