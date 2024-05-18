.class Lnet/daum/adam/publisher/impl/c/p$c$2;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/c/p$c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/p$c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p$c;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$c$2;->a:Lnet/daum/adam/publisher/impl/c/p$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 483
    const-string v0, "MraidView"

    const-string v1, "Close window before expandable ad loaded"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$2;->a:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->stopLoading()V

    .line 485
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$c$2;->a:Lnet/daum/adam/publisher/impl/c/p$c;

    iget-object v0, v0, Lnet/daum/adam/publisher/impl/c/p$c;->f:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->g()V

    .line 486
    return-void
.end method
