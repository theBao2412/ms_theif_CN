.class Lnet/daum/adam/publisher/impl/c/k;
.super Lnet/daum/adam/publisher/impl/c/a;
.source "MraidDisplayController.java"


# static fields
.field private static final d:Ljava/lang/String; = "MraidDisplayController"

.field private static final e:I = 0x65

.field private static final f:I = 0x64

.field private static final g:I = 0x66


# instance fields
.field protected a:F

.field protected b:I

.field protected c:I

.field private h:Lnet/daum/adam/publisher/impl/c/p$m;

.field private final i:Lnet/daum/adam/publisher/impl/c/p$a;

.field private final j:Lnet/daum/adam/publisher/impl/c/p$d;

.field private k:Lnet/daum/adam/publisher/impl/c/p;

.field private l:Landroid/widget/FrameLayout;

.field private final m:I

.field private n:Landroid/widget/ImageView;

.field private o:Z

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 109
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/c/a;-><init>(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 51
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$m;->d:Lnet/daum/adam/publisher/impl/c/p$m;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 88
    iput v1, p0, Lnet/daum/adam/publisher/impl/c/k;->b:I

    .line 91
    iput v1, p0, Lnet/daum/adam/publisher/impl/c/k;->c:I

    .line 110
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/c/k;->i:Lnet/daum/adam/publisher/impl/c/p$a;

    .line 111
    iput-object p3, p0, Lnet/daum/adam/publisher/impl/c/k;->j:Lnet/daum/adam/publisher/impl/c/p$d;

    .line 113
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/daum/adam/publisher/impl/c/k;->m:I

    .line 120
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$m;->a:Lnet/daum/adam/publisher/impl/c/p$m;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 123
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/k;->h()V

    .line 126
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->q:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 116
    goto :goto_0
.end method

.method private a(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 464
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 466
    if-ge p2, v0, :cond_0

    move p2, v0

    .line 469
    :cond_0
    if-ge p3, v0, :cond_1

    move p3, v0

    .line 473
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 474
    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 477
    const/16 v1, 0xb0

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 479
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 482
    new-instance v2, Lnet/daum/adam/publisher/impl/c/k$3;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/c/k$3;-><init>(Lnet/daum/adam/publisher/impl/c/k;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 491
    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 493
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 497
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    return-object v0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/c/k;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 514
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 515
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 516
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 520
    :goto_1
    return-void

    .line 515
    :cond_0
    iget v1, p0, Lnet/daum/adam/publisher/impl/c/k;->m:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    const-string v0, "MraidDisplayController"

    const-string v1, "Unable to modify device orientation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    .line 141
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 143
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 144
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 145
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    .line 150
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 151
    check-cast v0, Landroid/app/Activity;

    .line 152
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 154
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 155
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 156
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 157
    sub-int/2addr v0, v2

    .line 160
    :goto_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v2, v4, v2

    sub-int v0, v2, v0

    .line 162
    int-to-double v1, v1

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v4, v4

    div-double v4, v6, v4

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iput v1, p0, Lnet/daum/adam/publisher/impl/c/k;->b:I

    .line 163
    int-to-double v0, v0

    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lnet/daum/adam/publisher/impl/c/k;->c:I

    .line 164
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 263
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 264
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lnet/daum/adam/publisher/impl/c/k;->a(Z)V

    .line 270
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 271
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 273
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->requestLayout()V

    .line 275
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    iget v3, p0, Lnet/daum/adam/publisher/impl/c/k;->p:I

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 281
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string v1, "MraidDisplayController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 429
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 431
    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 436
    const/16 v1, 0x64

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 440
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 441
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    .line 442
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 446
    :cond_1
    iput v1, p0, Lnet/daum/adam/publisher/impl/c/k;->p:I

    .line 449
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v4

    invoke-virtual {v4}, Lnet/daum/adam/publisher/impl/c/p;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v5

    invoke-virtual {v5}, Lnet/daum/adam/publisher/impl/c/p;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 441
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;IIZZ)V
    .locals 7

    .prologue
    .line 301
    int-to-float v0, p2

    iget v1, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 302
    int-to-float v0, p3

    iget v2, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 304
    const-string v0, "MraidDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAYOUT WIDTH  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "MraidDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAYOUT HEIGHT :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/c/p;->a(II)V

    .line 310
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->i:Lnet/daum/adam/publisher/impl/c/p$a;

    sget-object v3, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    if-ne v0, v3, :cond_1

    .line 311
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/c/p;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    invoke-virtual {p0, p4}, Lnet/daum/adam/publisher/impl/c/k;->b(Z)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getRootView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    .line 327
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_4

    .line 328
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->g()Lnet/daum/adam/publisher/impl/c/p$h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->g()Lnet/daum/adam/publisher/impl/c/p$h;

    move-result-object v0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$h;->onFailure(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 331
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot see the expandable content."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    const-string v1, "MraidDisplayController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_4
    :try_start_1
    invoke-virtual {p0, p4}, Lnet/daum/adam/publisher/impl/c/k;->b(Z)V

    .line 335
    invoke-direct {p0, p5}, Lnet/daum/adam/publisher/impl/c/k;->c(Z)V

    .line 336
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/k;->j()V

    .line 339
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    .line 342
    if-eqz p1, :cond_5

    .line 343
    const-string v0, "MraidDisplayController"

    const-string v3, "2-piece ad"

    invoke-static {v0, v3}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v3

    invoke-virtual {v3}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lnet/daum/adam/publisher/impl/c/p$a;->b:Lnet/daum/adam/publisher/impl/c/p$a;

    sget-object v5, Lnet/daum/adam/publisher/impl/c/p$d;->c:Lnet/daum/adam/publisher/impl/c/p$d;

    sget-object v6, Lnet/daum/adam/publisher/impl/c/p$l;->a:Lnet/daum/adam/publisher/impl/c/p$l;

    invoke-direct {v0, v3, v4, v5, v6}, Lnet/daum/adam/publisher/impl/c/p;-><init>(Landroid/content/Context;Lnet/daum/adam/publisher/impl/c/p$a;Lnet/daum/adam/publisher/impl/c/p$d;Lnet/daum/adam/publisher/impl/c/p$l;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->k:Lnet/daum/adam/publisher/impl/c/p;

    .line 346
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->k:Lnet/daum/adam/publisher/impl/c/p;

    new-instance v3, Lnet/daum/adam/publisher/impl/c/k$1;

    invoke-direct {v3, p0}, Lnet/daum/adam/publisher/impl/c/k$1;-><init>(Lnet/daum/adam/publisher/impl/c/k;)V

    invoke-virtual {v0, v3}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$f;)V

    .line 351
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->k:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0, p1}, Lnet/daum/adam/publisher/impl/c/p;->loadUrl(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->k:Lnet/daum/adam/publisher/impl/c/p;

    const v3, -0xbbbbbc

    invoke-virtual {v0, v3}, Lnet/daum/adam/publisher/impl/c/p;->setBackgroundColor(I)V

    .line 354
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->k:Lnet/daum/adam/publisher/impl/c/p;

    .line 358
    :cond_5
    new-instance v3, Lnet/daum/adam/publisher/impl/c/k$2;

    invoke-direct {v3, p0}, Lnet/daum/adam/publisher/impl/c/k$2;-><init>(Lnet/daum/adam/publisher/impl/c/k;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 390
    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 392
    invoke-direct {p0, v0, v1, v2}, Lnet/daum/adam/publisher/impl/c/k;->a(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 409
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->j:Lnet/daum/adam/publisher/impl/c/p$d;

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$d;->a:Lnet/daum/adam/publisher/impl/c/p$d;

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lnet/daum/adam/publisher/impl/c/k;->o:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->j:Lnet/daum/adam/publisher/impl/c/p$d;

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$d;->b:Lnet/daum/adam/publisher/impl/c/p$d;

    if-eq v0, v1, :cond_7

    .line 411
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/k;->a(Z)V

    .line 414
    :cond_7
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$m;->c:Lnet/daum/adam/publisher/impl/c/p$m;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 415
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/o;->a(Lnet/daum/adam/publisher/impl/c/p$m;)Lnet/daum/adam/publisher/impl/c/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/m;)V

    .line 417
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->d()Lnet/daum/adam/publisher/impl/c/p$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->d()Lnet/daum/adam/publisher/impl/c/p$g;

    move-result-object v0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/daum/adam/publisher/impl/c/p$g;->onExpand(Lnet/daum/adam/publisher/impl/c/p;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 528
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->l:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 533
    if-eqz p1, :cond_3

    .line 534
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 535
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v2

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    .line 536
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    new-instance v2, Lnet/daum/adam/publisher/impl/c/k$4;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/c/k$4;-><init>(Lnet/daum/adam/publisher/impl/c/k;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 545
    :cond_2
    const/high16 v1, 0x42480000    # 50.0f

    iget v2, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 546
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lnet/daum/adam/publisher/impl/c/k;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 547
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 548
    invoke-virtual {v3, v5, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 549
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    :goto_1
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->h()Lnet/daum/adam/publisher/impl/c/p$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->h()Lnet/daum/adam/publisher/impl/c/p$e;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lnet/daum/adam/publisher/impl/c/p$e;->a(Lnet/daum/adam/publisher/impl/c/p;Z)V

    goto :goto_0

    .line 551
    :cond_3
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public b()Lnet/daum/adam/publisher/impl/c/p$m;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    return-object v0
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 568
    iput-boolean p1, p0, Lnet/daum/adam/publisher/impl/c/k;->o:Z

    .line 570
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    .line 571
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 574
    :goto_0
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->h()Lnet/daum/adam/publisher/impl/c/p$e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 575
    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/c/p;->h()Lnet/daum/adam/publisher/impl/c/p$e;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lnet/daum/adam/publisher/impl/c/p$e;->a(Lnet/daum/adam/publisher/impl/c/p;Z)V

    .line 577
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lnet/daum/adam/publisher/impl/c/p$a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->i:Lnet/daum/adam/publisher/impl/c/p$a;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    return-void
.end method

.method protected e()V
    .locals 3

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget v0, p0, Lnet/daum/adam/publisher/impl/c/k;->b:I

    iget v2, p0, Lnet/daum/adam/publisher/impl/c/k;->c:I

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/c/n;->a(II)Lnet/daum/adam/publisher/impl/c/n;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lnet/daum/adam/publisher/impl/c/q;->a(Z)Lnet/daum/adam/publisher/impl/c/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Ljava/util/ArrayList;)V

    .line 217
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$m;->b:Lnet/daum/adam/publisher/impl/c/p$m;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 220
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/o;->a(Lnet/daum/adam/publisher/impl/c/p$m;)Lnet/daum/adam/publisher/impl/c/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/m;)V

    .line 221
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$m;->c:Lnet/daum/adam/publisher/impl/c/p$m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 3

    .prologue
    .line 236
    const-string v0, "MraidDisplayController"

    const-string v1, "close()"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    sget-object v1, Lnet/daum/adam/publisher/impl/c/p$m;->c:Lnet/daum/adam/publisher/impl/c/p$m;

    if-ne v0, v1, :cond_0

    .line 239
    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/c/k;->i()V

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/impl/c/k;->c(Z)V

    .line 245
    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$m;->b:Lnet/daum/adam/publisher/impl/c/p$m;

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    .line 249
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/c/o;->a(Lnet/daum/adam/publisher/impl/c/p$m;)Lnet/daum/adam/publisher/impl/c/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/m;)V

    .line 252
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->e()Lnet/daum/adam/publisher/impl/c/p$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->e()Lnet/daum/adam/publisher/impl/c/p$f;

    move-result-object v0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/k;->a()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/c/k;->h:Lnet/daum/adam/publisher/impl/c/p$m;

    invoke-interface {v0, v1, v2}, Lnet/daum/adam/publisher/impl/c/p$f;->onClose(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$m;)V

    .line 255
    :cond_1
    return-void
.end method
