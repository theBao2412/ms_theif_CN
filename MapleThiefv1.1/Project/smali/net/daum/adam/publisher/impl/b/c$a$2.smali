.class Lnet/daum/adam/publisher/impl/b/c$a$2;
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
    .line 703
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$a$2;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$2;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$2;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 709
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$a$2;->a:Lnet/daum/adam/publisher/impl/b/c$a;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c$a;->a(Lnet/daum/adam/publisher/impl/b/c$a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
