.class Lnet/daum/adam/publisher/impl/c/k$2;
.super Ljava/lang/Object;
.source "MraidDisplayController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/c/k;->a(Ljava/lang/String;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/k;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/k;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 361
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 364
    :try_start_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    .line 365
    :cond_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->stopLoading()V

    .line 366
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->g()V

    .line 386
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    const-string v2, "window.mraid.close()"

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/k;->a(Lnet/daum/adam/publisher/impl/c/k;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    const-string v1, "MraidDisplayController"

    const-string v2, "Close Expandable View Forcefully"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/k;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 381
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/k$2;->a:Lnet/daum/adam/publisher/impl/c/k;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/k;->g()V

    .line 382
    const-string v2, "MraidDisplayController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
