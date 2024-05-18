.class Lnet/daum/adam/publisher/AdView$4;
.super Lnet/daum/adam/publisher/impl/j;
.source "AdView.java"


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
    .line 687
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$4;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Lnet/daum/adam/publisher/impl/j;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAd(Lnet/daum/adam/publisher/impl/b;)V
    .locals 3

    .prologue
    .line 691
    if-eqz p1, :cond_2

    .line 693
    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/daum/adam/publisher/impl/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$4;->a:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->isAvailableToShowExpandableAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$4;->a:Lnet/daum/adam/publisher/AdView;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$4;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0, p1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V

    goto :goto_0

    .line 700
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$4;->a:Lnet/daum/adam/publisher/AdView;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_NOAD:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    goto :goto_0
.end method
