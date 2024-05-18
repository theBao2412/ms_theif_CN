.class Lnet/daum/adam/publisher/AdView$5;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->c(Landroid/content/Context;)V
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
    .line 729
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$5;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$5;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getAnimationHide()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$5;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->d(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$5;->a:Lnet/daum/adam/publisher/AdView;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$5;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getAnimationShow()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 742
    return-void
.end method
