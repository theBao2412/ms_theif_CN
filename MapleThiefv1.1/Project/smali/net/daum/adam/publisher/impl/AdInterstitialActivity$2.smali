.class Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;
.super Ljava/lang/Object;
.source "AdInterstitialActivity.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/daum/adam/publisher/impl/c/p;Z)V
    .locals 2

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a()V

    .line 62
    :goto_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a(Lnet/daum/adam/publisher/impl/AdInterstitialActivity;)Lnet/daum/adam/publisher/impl/c/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/c/p;->setVisibility(I)V

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$2;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->b()V

    goto :goto_0
.end method
