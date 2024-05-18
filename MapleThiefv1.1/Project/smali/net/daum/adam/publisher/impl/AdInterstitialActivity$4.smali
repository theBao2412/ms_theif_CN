.class Lnet/daum/adam/publisher/impl/AdInterstitialActivity$4;
.super Ljava/lang/Object;
.source "AdInterstitialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->a()V
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
    .line 93
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$4;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/AdInterstitialActivity$4;->a:Lnet/daum/adam/publisher/impl/AdInterstitialActivity;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdInterstitialActivity;->finish()V

    .line 96
    return-void
.end method
