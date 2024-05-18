.class Lnet/daum/adam/publisher/impl/b/c$6;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lnet/daum/adam/publisher/impl/b/c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 721
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$6;->b:Lnet/daum/adam/publisher/impl/b/c;

    iput-object p2, p0, Lnet/daum/adam/publisher/impl/b/c$6;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$6;->a:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 724
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$6;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 725
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$6;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 726
    return-void
.end method
