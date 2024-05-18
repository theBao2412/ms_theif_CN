.class public Lnet/daum/adam/publisher/impl/AdInterstitialActivity;
.super Landroid/app/Activity;
.source "AdInterstitialActivity.java"


# instance fields
.field private a:Lnet/daum/adam/publisher/impl/c/p;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)Lnet/daum/adam/publisher/impl/c/p;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    new-instance v2, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$4;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$4;-><init>(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 102
    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 103
    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v3, v0

    .line 104
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 111
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->o()I

    move-result v0

    .line 112
    iget-object v2, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->p()I

    move-result v5

    .line 113
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 114
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 119
    if-lez v0, :cond_4

    .line 120
    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    move v2, v0

    .line 123
    :goto_0
    if-lez v5, :cond_3

    .line 124
    sub-int v0, v6, v5

    div-int/lit8 v0, v0, 0x2

    .line 126
    :goto_1
    iget-object v5, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v5}, Lnet/daum/adam/publisher/impl/c/p;->o()I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    .line 127
    invoke-virtual {v4, v1, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 128
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_1
    :goto_2
    return-void

    .line 130
    :cond_2
    add-int/2addr v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v1, v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 141
    :cond_0
    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 45
    new-instance v0, Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/c/p;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    .line 47
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Z)V

    .line 49
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    new-instance v1, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$1;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$1;-><init>(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$k;)V

    .line 55
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    new-instance v1, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;-><init>(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$e;)V

    .line 66
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    new-instance v1, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$3;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$3;-><init>(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$f;)V

    .line 72
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "net.daum.adam.publisher.interstitialUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->finish()V

    .line 76
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/c/p;->b(Z)V

    .line 82
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/c/p;->loadUrl(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a:Lnet/daum/adam/publisher/impl/c/p;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->a(Landroid/view/View;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    return-void
.end method
