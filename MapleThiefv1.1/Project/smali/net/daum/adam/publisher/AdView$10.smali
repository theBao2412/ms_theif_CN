.class Lnet/daum/adam/publisher/AdView$10;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->d(Landroid/content/Context;)V
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
    .line 1112
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Z)V
    .locals 2

    .prologue
    .line 1114
    if-eqz p1, :cond_2

    .line 1115
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->g(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    const-string v0, "Screen wake, ad in foreground. Enable refresh"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1122
    :cond_1
    const-string v0, "Screen wake but ad in background"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->g(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    const-string v0, "Screen sleep, ad in foreground. Disable refresh"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$10;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    goto :goto_0

    .line 1132
    :cond_3
    const-string v0, "Screen sleep but ad in background"

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
