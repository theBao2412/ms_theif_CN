.class Lnet/daum/adam/publisher/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$h;


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
    .line 473
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$1;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$1;->a:Lnet/daum/adam/publisher/AdView;

    sget-object v1, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    sget-object v2, Lnet/daum/adam/publisher/impl/AdError;->AD_DOWNLOAD_ERROR_FAILTODRAW:Lnet/daum/adam/publisher/impl/AdError;

    invoke-virtual {v2}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/daum/adam/publisher/AdView;->adFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    .line 476
    return-void
.end method
