.class public Lnet/daum/adam/publisher/impl/a/b;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private final g:Z

.field private h:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 8

    .prologue
    .line 20
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/daum/adam/publisher/impl/a/b;-><init>(FFFFFZZ)V

    .line 21
    return-void
.end method

.method public constructor <init>(FFFFFZZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    iput p1, p0, Lnet/daum/adam/publisher/impl/a/b;->a:F

    .line 25
    iput p2, p0, Lnet/daum/adam/publisher/impl/a/b;->b:F

    .line 26
    iput p3, p0, Lnet/daum/adam/publisher/impl/a/b;->c:F

    .line 27
    iput p4, p0, Lnet/daum/adam/publisher/impl/a/b;->d:F

    .line 28
    iput p5, p0, Lnet/daum/adam/publisher/impl/a/b;->e:F

    .line 29
    iput-boolean p6, p0, Lnet/daum/adam/publisher/impl/a/b;->f:Z

    .line 30
    iput-boolean p7, p0, Lnet/daum/adam/publisher/impl/a/b;->g:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 41
    iget v0, p0, Lnet/daum/adam/publisher/impl/a/b;->a:F

    .line 42
    iget v1, p0, Lnet/daum/adam/publisher/impl/a/b;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 44
    iget v1, p0, Lnet/daum/adam/publisher/impl/a/b;->c:F

    .line 45
    iget v2, p0, Lnet/daum/adam/publisher/impl/a/b;->d:F

    .line 46
    iget-object v3, p0, Lnet/daum/adam/publisher/impl/a/b;->h:Landroid/graphics/Camera;

    .line 48
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 50
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 52
    iget-boolean v5, p0, Lnet/daum/adam/publisher/impl/a/b;->f:Z

    if-eqz v5, :cond_0

    .line 53
    iget v5, p0, Lnet/daum/adam/publisher/impl/a/b;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 58
    :goto_0
    iget-boolean v5, p0, Lnet/daum/adam/publisher/impl/a/b;->g:Z

    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 64
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 65
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 67
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 68
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 69
    return-void

    .line 55
    :cond_0
    iget v5, p0, Lnet/daum/adam/publisher/impl/a/b;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 36
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/a/b;->h:Landroid/graphics/Camera;

    .line 37
    return-void
.end method
