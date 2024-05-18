.class Lnet/daum/adam/publisher/impl/b/c$2;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 367
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$2;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 370
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/b/c;->a(J)J

    .line 371
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$2;->a:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/b/c;->e(Lnet/daum/adam/publisher/impl/b/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    return-void
.end method
