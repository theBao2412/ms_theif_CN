.class Lnet/daum/adam/publisher/AdInterstitial$1;
.super Landroid/os/Handler;
.source "AdInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/AdInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/AdInterstitial;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdInterstitial;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lnet/daum/adam/publisher/AdInterstitial$1;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lnet/daum/adam/publisher/impl/AdError;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/daum/adam/publisher/impl/AdError;

    .line 93
    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$1;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lnet/daum/adam/publisher/AdInterstitial$1;->a:Lnet/daum/adam/publisher/AdInterstitial;

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/AdInterstitial;->a(Lnet/daum/adam/publisher/AdInterstitial;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
