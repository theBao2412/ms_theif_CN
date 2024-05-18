.class Lnet/daum/adam/publisher/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 496
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$3;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 499
    const-string v0, "AdView"

    const-string v1, "\uc704\uce58 \ub3d9\uc758 \ucca0\ud68c \uc694\uccad"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$3;->a:Lnet/daum/adam/publisher/AdView;

    new-instance v1, Lnet/daum/adam/publisher/impl/b/c;

    iget-object v2, p0, Lnet/daum/adam/publisher/AdView$3;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {v1, v2}, Lnet/daum/adam/publisher/impl/b/c;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b/c;->e()Z

    move-result v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;Z)Z

    .line 501
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$3;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->c(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    return v0
.end method
