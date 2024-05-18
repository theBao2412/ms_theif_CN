.class Lnet/daum/adam/publisher/impl/b/c$a$1;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c$a;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c$a;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$a$1;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$1;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$1;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$1;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 679
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$1;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 681
    :cond_0
    return-void
.end method
