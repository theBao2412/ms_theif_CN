.class Lnet/daum/adam/publisher/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/AdView;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdView;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$2;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$m;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$2;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$2;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$2;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->b(Lnet/daum/adam/publisher/AdView;)V

    .line 489
    return-void
.end method
