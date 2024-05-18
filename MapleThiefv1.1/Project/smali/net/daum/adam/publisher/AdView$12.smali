.class Lnet/daum/adam/publisher/AdView$12;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->h(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lnet/daum/adam/publisher/AdView;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdView;)V
    .locals 1

    .prologue
    .line 1196
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    return-void
.end method


# virtual methods
.method public onStateChange(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1200
    if-nez p1, :cond_2

    .line 1201
    const-string v2, "Battery Low, pause refresing ad."

    invoke-static {v2}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    .line 1202
    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    .line 1203
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 1214
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1202
    goto :goto_0

    .line 1206
    :cond_2
    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    if-nez v2, :cond_0

    .line 1207
    iget-object v2, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v2}, Lnet/daum/adam/publisher/AdView;->g(Lnet/daum/adam/publisher/AdView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    iget-boolean v2, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    if-nez v2, :cond_3

    move v1, v0

    :cond_3
    iput-boolean v1, p0, Lnet/daum/adam/publisher/AdView$12;->a:Z

    .line 1209
    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1210
    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$12;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    goto :goto_1
.end method
