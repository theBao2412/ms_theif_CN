.class public Lnet/daum/adam/publisher/AdView;
.super Landroid/widget/RelativeLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/AdView$AnimationType;,
        Lnet/daum/adam/publisher/AdView$OnAdClickedListener;,
        Lnet/daum/adam/publisher/AdView$OnAdClosedListener;,
        Lnet/daum/adam/publisher/AdView$OnAdFailedListener;,
        Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;,
        Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "AdView"

.field private static final h:I = 0x140

.field private static final i:I = 0x30

.field private static final o:I = 0x320

.field private static final p:I = 0x64


# instance fields
.field private A:Lnet/daum/adam/publisher/AdView$OnAdClosedListener;

.field private B:Lnet/daum/adam/publisher/AdView$OnAdClickedListener;

.field private C:Lnet/daum/adam/publisher/impl/c/p$h;

.field private D:Lnet/daum/adam/publisher/impl/c/p$f;

.field private E:Z

.field private F:Landroid/view/View$OnLongClickListener;

.field private G:Landroid/widget/RelativeLayout;

.field private H:Ljava/lang/String;

.field private I:Landroid/webkit/WebSettings$RenderPriority;

.field private J:Lnet/daum/adam/publisher/impl/i;

.field private K:Lnet/daum/adam/publisher/impl/a/a;

.field private L:Landroid/view/animation/Animation;

.field private M:Landroid/view/animation/Animation;

.field private N:Landroid/view/animation/Animation$AnimationListener;

.field private O:Lnet/daum/adam/publisher/AdView$AnimationType;

.field protected a:[Lnet/daum/adam/publisher/impl/c/p;

.field protected b:I

.field protected c:I

.field private e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

.field private f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

.field private g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:I

.field private n:Z

.field private q:J

.field private r:[F

.field private s:[F

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;

.field private y:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

.field private z:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 611
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/daum/adam/publisher/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 612
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/daum/adam/publisher/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 622
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/16 v3, 0x3c

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 632
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 124
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 127
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 138
    iput v3, p0, Lnet/daum/adam/publisher/AdView;->j:I

    .line 141
    const/16 v2, 0xc

    iput v2, p0, Lnet/daum/adam/publisher/AdView;->k:I

    .line 144
    const/16 v2, 0x78

    iput v2, p0, Lnet/daum/adam/publisher/AdView;->l:I

    .line 147
    iput v3, p0, Lnet/daum/adam/publisher/AdView;->m:I

    .line 150
    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    .line 178
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lnet/daum/adam/publisher/AdView;->q:J

    .line 187
    iput-boolean v1, p0, Lnet/daum/adam/publisher/AdView;->t:Z

    .line 289
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->u:Ljava/lang/String;

    .line 312
    iput-boolean v1, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    .line 315
    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->w:Z

    .line 473
    new-instance v2, Lnet/daum/adam/publisher/AdView$1;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/AdView$1;-><init>(Lnet/daum/adam/publisher/AdView;)V

    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->C:Lnet/daum/adam/publisher/impl/c/p$h;

    .line 480
    new-instance v2, Lnet/daum/adam/publisher/AdView$2;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/AdView$2;-><init>(Lnet/daum/adam/publisher/AdView;)V

    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->D:Lnet/daum/adam/publisher/impl/c/p$f;

    .line 493
    iput-boolean v1, p0, Lnet/daum/adam/publisher/AdView;->E:Z

    .line 496
    new-instance v2, Lnet/daum/adam/publisher/AdView$3;

    invoke-direct {v2, p0}, Lnet/daum/adam/publisher/AdView$3;-><init>(Lnet/daum/adam/publisher/AdView;)V

    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->F:Landroid/view/View$OnLongClickListener;

    .line 508
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    .line 514
    iput v0, p0, Lnet/daum/adam/publisher/AdView;->b:I

    .line 517
    iput v1, p0, Lnet/daum/adam/publisher/AdView;->c:I

    .line 520
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->H:Ljava/lang/String;

    .line 523
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    .line 544
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->K:Lnet/daum/adam/publisher/impl/a/a;

    .line 547
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->L:Landroid/view/animation/Animation;

    .line 550
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->M:Landroid/view/animation/Animation;

    .line 553
    iput-object v4, p0, Lnet/daum/adam/publisher/AdView;->N:Landroid/view/animation/Animation$AnimationListener;

    .line 556
    sget-object v2, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->O:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 634
    if-eqz p2, :cond_0

    .line 635
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    .line 642
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 643
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->H:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 651
    :goto_1
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdView;->c(Landroid/content/Context;)V

    .line 652
    return-void

    :cond_1
    move v0, v1

    .line 638
    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    const-string v1, "AdView"

    const-string v2, "User-Agent : OutOfMemoryError Exception occurs"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 646
    :catch_1
    move-exception v0

    .line 647
    const-string v1, "AdView"

    const-string v2, "User-Agent : Exception occurs"

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(I)Lnet/daum/adam/publisher/impl/c/p;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 756
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    .line 770
    :goto_0
    return-object v0

    .line 761
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 762
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    new-instance v1, Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/daum/adam/publisher/impl/c/p;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 763
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdView;->a(I)Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 768
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/impl/c/p;)V

    .line 770
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1049
    if-nez p2, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    const-string v0, "refreshInterval"

    const/16 v1, 0x3c

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/AdView;->setRequestInterval(I)V

    .line 1056
    const-string v0, "clientId"

    invoke-interface {p2, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/AdView;->setClientId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/impl/b;)V

    return-void
.end method

.method private a(Lnet/daum/adam/publisher/impl/b;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 839
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    const-string v0, "AdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uad11\uace0 View \uc601\uc5ed \uac31\uc2e0 (\ud0c0\uc785 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->c:I

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->a(I)Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 854
    long-to-int v4, v2

    invoke-virtual {v0, v4}, Lnet/daum/adam/publisher/impl/c/p;->setId(I)V

    .line 857
    new-instance v4, Lnet/daum/adam/publisher/AdView$6;

    invoke-direct {v4, p0, p1}, Lnet/daum/adam/publisher/AdView$6;-><init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V

    invoke-virtual {v0, v4}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$i;)V

    .line 869
    iget-object v4, p0, Lnet/daum/adam/publisher/AdView;->F:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v4}, Lnet/daum/adam/publisher/impl/c/p;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 870
    invoke-virtual {v0, v7}, Lnet/daum/adam/publisher/impl/c/p;->setLongClickable(Z)V

    .line 871
    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 874
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 875
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 876
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/daum/adam/publisher/AdView;->a(Ljava/lang/String;)V

    .line 880
    :cond_2
    invoke-virtual {v0, v6}, Lnet/daum/adam/publisher/impl/c/p;->a(Z)V

    .line 881
    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$g;)V

    .line 882
    new-instance v4, Lnet/daum/adam/publisher/AdView$7;

    invoke-direct {v4, p0, v2, v3, p1}, Lnet/daum/adam/publisher/AdView$7;-><init>(Lnet/daum/adam/publisher/AdView;JLnet/daum/adam/publisher/impl/b;)V

    invoke-virtual {v0, v4}, Lnet/daum/adam/publisher/impl/c/p;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 902
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lnet/daum/adam/publisher/impl/c/p;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 904
    :cond_3
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 906
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/daum/adam/publisher/AdView;->a(Ljava/lang/String;)V

    .line 910
    :cond_4
    invoke-virtual {v0, v7}, Lnet/daum/adam/publisher/impl/c/p;->a(Z)V

    .line 913
    invoke-virtual {v0, v6}, Lnet/daum/adam/publisher/impl/c/p;->setHorizontalScrollBarEnabled(Z)V

    .line 914
    invoke-virtual {v0, v6}, Lnet/daum/adam/publisher/impl/c/p;->setVerticalScrollBarEnabled(Z)V

    .line 916
    new-instance v1, Lnet/daum/adam/publisher/AdView$8;

    invoke-direct {v1, p0, p1}, Lnet/daum/adam/publisher/AdView$8;-><init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$g;)V

    .line 931
    new-instance v1, Lnet/daum/adam/publisher/AdView$9;

    invoke-direct {v1, p0, p1}, Lnet/daum/adam/publisher/AdView$9;-><init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$j;)V

    .line 949
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 1

    .prologue
    .line 824
    if-nez p1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->C:Lnet/daum/adam/publisher/impl/c/p$h;

    invoke-virtual {p1, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$h;)V

    .line 830
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->D:Lnet/daum/adam/publisher/impl/c/p$f;

    invoke-virtual {p1, v0}, Lnet/daum/adam/publisher/impl/c/p;->a(Lnet/daum/adam/publisher/impl/c/p$f;)V

    goto :goto_0
.end method

.method static synthetic a(Lnet/daum/adam/publisher/AdView;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lnet/daum/adam/publisher/AdView;->E:Z

    return p1
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 783
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->clearView()V

    .line 784
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->freeMemory()V

    .line 785
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->destroy()V

    .line 786
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    const-string v1, "AdView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lnet/daum/adam/publisher/impl/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 957
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 958
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->H:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/daum/adam/publisher/impl/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_0
    return-void
.end method

.method static synthetic b(Lnet/daum/adam/publisher/AdView;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->d()V

    return-void
.end method

.method static synthetic b(Lnet/daum/adam/publisher/AdView;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lnet/daum/adam/publisher/AdView;->w:Z

    return p1
.end method

.method private c(I)I
    .locals 2

    .prologue
    .line 1375
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1376
    int-to-float v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 661
    const-string v0, "AdView"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/AdView;->setFocusable(Z)V

    .line 666
    invoke-virtual {p0, v4}, Lnet/daum/adam/publisher/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 667
    invoke-virtual {p0, v4}, Lnet/daum/adam/publisher/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 670
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    .line 671
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 673
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x30

    invoke-direct {p0, v3}, Lnet/daum/adam/publisher/AdView;->c(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lnet/daum/adam/publisher/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 677
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/daum/adam/publisher/impl/c/p;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    .line 681
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->i()V

    .line 687
    new-instance v0, Lnet/daum/adam/publisher/impl/i;

    new-instance v1, Lnet/daum/adam/publisher/AdView$4;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/AdView$4;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/i;-><init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/j;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    .line 705
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0, v4}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 707
    const-string v0, "Activated Ad@m Ad"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    .line 729
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/AdView$5;

    invoke-direct {v0, p0}, Lnet/daum/adam/publisher/AdView$5;-><init>(Lnet/daum/adam/publisher/AdView;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->N:Landroid/view/animation/Animation$AnimationListener;

    .line 746
    new-instance v0, Lnet/daum/adam/publisher/impl/a/a;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->N:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lnet/daum/adam/publisher/impl/a/a;-><init>(Lnet/daum/adam/publisher/AdView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->K:Lnet/daum/adam/publisher/impl/a/a;

    .line 747
    :goto_0
    return-void

    .line 710
    :cond_1
    const-string v0, "Ensure that you add the INTERNET, NETWORK_WIFI_STATE and ACCESS_WIFI_STATE permissions in your Application."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->d(Ljava/lang/String;)V

    .line 711
    sget-object v0, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->O:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 714
    new-instance v0, Lnet/daum/adam/publisher/impl/b;

    invoke-direct {v0}, Lnet/daum/adam/publisher/impl/b;-><init>()V

    .line 715
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body style=\"background-color:#fff;border-bottom:1px solid black;border-top:1px solid black;padding:5px;margin:0\"><p style=\"font-size:10px\">Ensure that you add the <strong style=\"color:red\">INTERNET</strong>, <strong style=\"color:red\">NETWORK_WIFI_STATE</strong>, <strong style=\"color:red\">ACCESS_WIFI_STATE</strong> permissions in your Application.</p></body></html>"

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/b;->d(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/impl/b;)V

    .line 720
    :try_start_0
    new-instance v0, Lnet/daum/adam/publisher/impl/AdException;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_PERMISSION_DENIED:Lnet/daum/adam/publisher/impl/AdError;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_PERMISSION_DENIED:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/daum/adam/publisher/impl/AdException;-><init>(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lnet/daum/adam/publisher/impl/AdException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdException;->getSdkError()Lnet/daum/adam/publisher/impl/AdError;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lnet/daum/adam/publisher/AdView;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->E:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "AdView"

    const-string v1, "adClosed"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->A:Lnet/daum/adam/publisher/AdView$OnAdClosedListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->A:Lnet/daum/adam/publisher/AdView$OnAdClosedListener;

    invoke-interface {v0}, Lnet/daum/adam/publisher/AdView$OnAdClosedListener;->OnAdClosed()V

    .line 438
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1111
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;

    invoke-direct {v0, p1, p0}, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;-><init>(Landroid/content/Context;Lnet/daum/adam/publisher/AdView;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 1112
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    new-instance v1, Lnet/daum/adam/publisher/AdView$10;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/AdView$10;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->a(Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;)V

    .line 1137
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->b()V

    goto :goto_0
.end method

.method static synthetic d(Lnet/daum/adam/publisher/AdView;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->h()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "AdView"

    const-string v1, "adClicked"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->B:Lnet/daum/adam/publisher/AdView$OnAdClickedListener;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->B:Lnet/daum/adam/publisher/AdView$OnAdClickedListener;

    invoke-interface {v0}, Lnet/daum/adam/publisher/AdView$OnAdClickedListener;->OnAdClicked()V

    .line 448
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->e:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->c()V

    .line 1149
    :cond_0
    return-void
.end method

.method static synthetic e(Lnet/daum/adam/publisher/AdView;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->g()Z

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1163
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;

    invoke-direct {v0, p1}, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 1164
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    new-instance v1, Lnet/daum/adam/publisher/AdView$11;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/AdView$11;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->a(Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;)V

    .line 1169
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->b()V

    goto :goto_0
.end method

.method static synthetic f(Lnet/daum/adam/publisher/AdView;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->e()V

    return-void
.end method

.method private f()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 798
    const/4 v0, 0x1

    .line 800
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    const-string v0, "android.permission.INTERNET permission must be added in AndroidManifest.xml!"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->d(Ljava/lang/String;)V

    move v0, v1

    .line 805
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    const-string v0, "android.permission.ACCESS_NETWORK_STATE permission must be added in AndroidManifest.xml!"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->d(Ljava/lang/String;)V

    move v0, v1

    .line 810
    :cond_1
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    const-string v0, "android.permission.ACCESS_WIFI_STATE permission must be added in AndroidManifest.xml!"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->d(Ljava/lang/String;)V

    .line 815
    :goto_0
    return v1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->f:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->c()V

    .line 1181
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 968
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    if-nez v0, :cond_3

    .line 969
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 972
    :cond_1
    sget-object v0, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    move v0, v1

    .line 995
    :cond_2
    :goto_0
    return v0

    .line 977
    :cond_3
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/daum/adam/publisher/AdView;->c:I

    .line 978
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->b:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/daum/adam/publisher/AdView;->b:I

    .line 980
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->K:Lnet/daum/adam/publisher/impl/a/a;

    if-eqz v0, :cond_4

    .line 981
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->K:Lnet/daum/adam/publisher/impl/a/a;

    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->O:Lnet/daum/adam/publisher/AdView$AnimationType;

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/a/a;->a(Lnet/daum/adam/publisher/AdView$AnimationType;)V

    .line 984
    :cond_4
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->O:Lnet/daum/adam/publisher/AdView$AnimationType;

    sget-object v2, Lnet/daum/adam/publisher/AdView$AnimationType;->NONE:Lnet/daum/adam/publisher/AdView$AnimationType;

    if-ne v0, v2, :cond_6

    .line 985
    :cond_5
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->h()Z

    move-result v0

    .line 986
    if-eqz v0, :cond_2

    .line 987
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 988
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 993
    :cond_6
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->L:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 995
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lnet/daum/adam/publisher/AdView;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    return v0
.end method

.method private h(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1195
    :cond_0
    new-instance v0, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;

    invoke-direct {v0, p1}, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    .line 1196
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    new-instance v1, Lnet/daum/adam/publisher/AdView$12;

    invoke-direct {v1, p0}, Lnet/daum/adam/publisher/AdView$12;-><init>(Lnet/daum/adam/publisher/AdView;)V

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->a(Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;)V

    .line 1216
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->b()V

    goto :goto_0
.end method

.method private declared-synchronized h()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1002
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1042
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1006
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    .line 1008
    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    if-eqz v2, :cond_2

    .line 1009
    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    if-nez v2, :cond_4

    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lnet/daum/adam/publisher/AdView;->n:Z

    .line 1013
    :cond_2
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v4, p0, Lnet/daum/adam/publisher/AdView;->c:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v4, p0, Lnet/daum/adam/publisher/AdView;->c:I

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/c/p;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1014
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v5, p0, Lnet/daum/adam/publisher/AdView;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1015
    iget v2, p0, Lnet/daum/adam/publisher/AdView;->c:I

    invoke-direct {p0, v2}, Lnet/daum/adam/publisher/AdView;->b(I)V

    .line 1019
    :cond_3
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v4, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_6

    .line 1020
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v4, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v2, v2, v4

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lnet/daum/adam/publisher/impl/c/p;->setVisibility(I)V

    .line 1022
    const/16 v2, 0x140

    invoke-direct {p0, v2}, Lnet/daum/adam/publisher/AdView;->c(I)I

    move-result v2

    .line 1023
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lnet/daum/adam/publisher/AdView;->c(I)I

    move-result v4

    .line 1025
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getMeasuredWidth()I

    move-result v5

    .line 1026
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getMeasuredHeight()I

    move-result v6

    .line 1028
    const-string v7, "AdView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ad Size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    if-nez v3, :cond_5

    if-lez v5, :cond_5

    if-ge v5, v2, :cond_5

    if-lez v6, :cond_5

    if-ge v6, v4, :cond_5

    .line 1032
    const-string v1, "Ad@m view should be displayed at least 320DP x 48DP  resolution."

    .line 1033
    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {p0, v2, v1}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 1034
    invoke-static {v1}, Lnet/daum/adam/publisher/impl/e;->d(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/daum/adam/publisher/impl/i;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v0

    .line 1009
    goto/16 :goto_1

    .line 1040
    :cond_5
    :try_start_2
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v2, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/daum/adam/publisher/impl/c/p;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move v0, v1

    .line 1042
    goto/16 :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->h(Landroid/content/Context;)V

    .line 1254
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->f(Landroid/content/Context;)V

    .line 1257
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->d(Landroid/content/Context;)V

    .line 1260
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->a(Landroid/content/Context;)V

    .line 1261
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->g:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->c()V

    .line 1228
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->i(Landroid/content/Context;)V

    .line 1268
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->g(Landroid/content/Context;)V

    .line 1271
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->e(Landroid/content/Context;)V

    .line 1274
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->b(Landroid/content/Context;)V

    .line 1275
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->x:Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->x:Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;

    invoke-interface {v0, p1}, Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;->OnAdWillLoad(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad will be loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->z:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->z:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    invoke-interface {v0, p1, p2}, Lnet/daum/adam/publisher/AdView$OnAdFailedListener;->OnAdFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad downloading has been failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->y:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->y:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    invoke-interface {v0}, Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;->OnAdLoaded()V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "Ad has been downloaded"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()Lnet/daum/adam/publisher/impl/c/p;
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v1, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v0, v0, v1

    .line 1355
    :goto_0
    return-object v0

    .line 1354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1278
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    if-nez v0, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->j()V

    .line 1284
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/i;->c()V

    .line 1286
    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    .line 1289
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 1290
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1292
    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    .line 1295
    :cond_3
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->c:I

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->b(I)V

    .line 1296
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->b:I

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->b(I)V

    .line 1297
    iput-object v2, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    .line 1299
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    if-nez v0, :cond_0

    .line 1300
    const-string v0, "Terminated Ad@m Ad"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAnimationHide()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->L:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getAnimationShow()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->M:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkStatus()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->w:Z

    return v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lnet/daum/adam/publisher/AdView;->m:I

    return v0
.end method

.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/i;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewRenderPriority()Landroid/webkit/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method public isAdExpanded()Z
    .locals 2

    .prologue
    .line 1364
    const/4 v0, 0x0

    .line 1365
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1366
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->b()Z

    move-result v0

    .line 1368
    :cond_0
    return v0
.end method

.method public isAvailableToShowExpandableAd()Z
    .locals 3

    .prologue
    .line 1527
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1528
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1530
    :goto_0
    if-nez v0, :cond_0

    .line 1531
    const-string v1, "AdView"

    const-string v2, "\ud655\uc7a5\ud615 \uad11\uace0 \ub178\ucd9c \ubd88\uac00\ub2a5"

    invoke-static {v1, v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_0
    return v0

    .line 1528
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInForeground()Z
    .locals 1

    .prologue
    .line 1336
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1306
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1308
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->G:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    if-nez v0, :cond_0

    .line 1309
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/daum/adam/publisher/AdView;->c(Landroid/content/Context;)V

    .line 1312
    :cond_0
    const-string v0, "AdView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1317
    const-string v0, "AdView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-direct {p0}, Lnet/daum/adam/publisher/AdView;->j()V

    .line 1321
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 1322
    const-string v0, "Ad has been detached from window. Stop ad refresh."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1325
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1326
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/4 v1, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 239
    iget-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->t:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-ge v0, v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    if-nez v0, :cond_2

    .line 244
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    .line 247
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    iget-wide v2, p0, Lnet/daum/adam/publisher/AdView;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 250
    iget-wide v2, p0, Lnet/daum/adam/publisher/AdView;->q:J

    sub-long v2, v0, v2

    .line 251
    iput-wide v0, p0, Lnet/daum/adam/publisher/AdView;->q:J

    .line 253
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->r:[F

    .line 255
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    aget v0, v0, v7

    .line 256
    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    aget v1, v1, v6

    .line 257
    iget-object v4, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    aget v4, v4, v8

    .line 259
    const/high16 v5, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    .line 261
    const/high16 v1, 0x44480000    # 800.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 262
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 266
    :cond_3
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    const/4 v1, 0x0

    aput v1, v0, v7

    .line 267
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v6

    .line 268
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->s:[F

    const/high16 v1, 0x40000000    # 2.0f

    aput v1, v0, v8

    goto :goto_0

    .line 271
    :cond_4
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lnet/daum/adam/publisher/AdView;->c()Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->r:[F

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->a([F)V

    goto :goto_0

    .line 244
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 1234
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1236
    if-nez p1, :cond_1

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    .line 1242
    :goto_0
    const-string v0, "AdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    iget-boolean v1, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1247
    :cond_0
    return-void

    .line 1239
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->v:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 1482
    const-string v0, "Pause ad refresh"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1485
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 1503
    const-string v0, "Resume ad refresh forcefully"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/i;->b()V

    .line 1506
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 1491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView;->E:Z

    .line 1492
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    if-eqz v0, :cond_0

    .line 1493
    const-string v0, "Resume ad refresh"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->c(Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1496
    :cond_0
    return-void
.end method

.method public setAdCache(Z)V
    .locals 0

    .prologue
    .line 1517
    invoke-static {p1}, Lnet/daum/adam/publisher/impl/e;->a(Z)V

    .line 1518
    return-void
.end method

.method public setAnimationHide(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->L:Landroid/view/animation/Animation;

    .line 565
    return-void
.end method

.method public setAnimationShow(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->M:Landroid/view/animation/Animation;

    .line 574
    return-void
.end method

.method public setAnimationType(Lnet/daum/adam/publisher/AdView$AnimationType;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->O:Lnet/daum/adam/publisher/AdView$AnimationType;

    .line 601
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->u:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setOnAdClickedListener(Lnet/daum/adam/publisher/AdView$OnAdClickedListener;)V
    .locals 0

    .prologue
    .line 1425
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->B:Lnet/daum/adam/publisher/AdView$OnAdClickedListener;

    .line 1426
    return-void
.end method

.method public setOnAdClosedListener(Lnet/daum/adam/publisher/AdView$OnAdClosedListener;)V
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->A:Lnet/daum/adam/publisher/AdView$OnAdClosedListener;

    .line 1417
    return-void
.end method

.method public setOnAdFailedListener(Lnet/daum/adam/publisher/AdView$OnAdFailedListener;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->z:Lnet/daum/adam/publisher/AdView$OnAdFailedListener;

    .line 1408
    return-void
.end method

.method public setOnAdLoadedListener(Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->y:Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;

    .line 1399
    return-void
.end method

.method public setOnAdWillLoadListener(Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;)V
    .locals 0

    .prologue
    .line 1388
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->x:Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;

    .line 1390
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3

    .prologue
    const/16 v2, 0x78

    const/16 v1, 0xc

    .line 1085
    invoke-static {}, Lnet/daum/adam/publisher/impl/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iput p1, p0, Lnet/daum/adam/publisher/AdView;->m:I

    .line 1097
    :goto_0
    return-void

    .line 1090
    :cond_0
    if-ge p1, v1, :cond_1

    .line 1091
    iput v1, p0, Lnet/daum/adam/publisher/AdView;->m:I

    goto :goto_0

    .line 1092
    :cond_1
    if-le p1, v2, :cond_2

    .line 1093
    iput v2, p0, Lnet/daum/adam/publisher/AdView;->m:I

    goto :goto_0

    .line 1095
    :cond_2
    iput p1, p0, Lnet/daum/adam/publisher/AdView;->m:I

    goto :goto_0
.end method

.method public setThreadPriority(I)V
    .locals 1

    .prologue
    .line 1552
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 1553
    :cond_0
    const-string v0, "Thread Priority is out of range : between Thread.MIN_PRIORITY and Thread.MAX_PRIORITY"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 1557
    :goto_0
    return-void

    .line 1556
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->J:Lnet/daum/adam/publisher/impl/i;

    invoke-virtual {v0, p1}, Lnet/daum/adam/publisher/impl/i;->a(I)V

    goto :goto_0
.end method

.method public setWebViewRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 2

    .prologue
    .line 1436
    if-eqz p1, :cond_2

    .line 1437
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    .line 1443
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v1, p0, Lnet/daum/adam/publisher/AdView;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v1, p0, Lnet/daum/adam/publisher/AdView;->c:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v1, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView;->a:[Lnet/daum/adam/publisher/impl/c/p;

    iget v1, p0, Lnet/daum/adam/publisher/AdView;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_1
    :goto_1
    return-void

    .line 1439
    :cond_2
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Lnet/daum/adam/publisher/AdView;->I:Landroid/webkit/WebSettings$RenderPriority;

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    const-string v0, "AdView"

    const-string v1, "Webview doesn\'t initialized!"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
