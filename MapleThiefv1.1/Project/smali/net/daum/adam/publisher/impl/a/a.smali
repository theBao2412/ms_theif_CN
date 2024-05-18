.class public Lnet/daum/adam/publisher/impl/a/a;
.super Ljava/lang/Object;
.source "AnimationController.java"


# static fields
.field private static final c:J = 0x12cL


# instance fields
.field private a:Lnet/daum/adam/publisher/AdView;

.field private b:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lnet/daum/adam/publisher/AdView;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    .line 31
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/a/a;->b:Landroid/view/animation/Animation$AnimationListener;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lnet/daum/adam/publisher/AdView$AnimationType;)V
    .locals 8

    .prologue
    .line 46
    sget-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_HORIZONTAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    if-ne p1, v0, :cond_2

    .line 47
    new-instance v0, Lnet/daum/adam/publisher/impl/a/b;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v3}, Lnet/daum/adam/publisher/AdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v4}, Lnet/daum/adam/publisher/AdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/a/b;-><init>(FFFFFZ)V

    .line 48
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/a/b;->setDuration(J)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setFillAfter(Z)V

    .line 50
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 51
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 52
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/AdView;->setAnimationHide(Landroid/view/animation/Animation;)V

    .line 54
    new-instance v0, Lnet/daum/adam/publisher/impl/a/b;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v3}, Lnet/daum/adam/publisher/AdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v4}, Lnet/daum/adam/publisher/AdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lnet/daum/adam/publisher/impl/a/b;-><init>(FFFFFZ)V

    .line 55
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/a/b;->setDuration(J)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setFillAfter(Z)V

    .line 57
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/AdView;->setAnimationShow(Landroid/view/animation/Animation;)V

    .line 75
    :cond_0
    :goto_0
    sget-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getAnimationHide()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getAnimationHide()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    :cond_1
    return-void

    .line 60
    :cond_2
    sget-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->FLIP_VERTICAL:Lnet/daum/adam/publisher/AdView$AnimationType;

    if-ne p1, v0, :cond_0

    .line 61
    new-instance v0, Lnet/daum/adam/publisher/impl/a/b;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v3}, Lnet/daum/adam/publisher/AdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v4}, Lnet/daum/adam/publisher/AdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lnet/daum/adam/publisher/impl/a/b;-><init>(FFFFFZZ)V

    .line 62
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/a/b;->setDuration(J)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setFillAfter(Z)V

    .line 64
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 65
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/AdView;->setAnimationHide(Landroid/view/animation/Animation;)V

    .line 68
    new-instance v0, Lnet/daum/adam/publisher/impl/a/b;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v3}, Lnet/daum/adam/publisher/AdView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v4}, Lnet/daum/adam/publisher/AdView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lnet/daum/adam/publisher/impl/a/b;-><init>(FFFFFZZ)V

    .line 69
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/a/b;->setDuration(J)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setFillAfter(Z)V

    .line 71
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->b:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 72
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/a/b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 73
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/a/a;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/AdView;->setAnimationShow(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
