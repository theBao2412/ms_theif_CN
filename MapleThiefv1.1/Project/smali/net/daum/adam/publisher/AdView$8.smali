.class Lnet/daum/adam/publisher/AdView$8;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/impl/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b;

.field final synthetic b:Lnet/daum/adam/publisher/AdView;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdView;Lnet/daum/adam/publisher/impl/b;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$8;->b:Lnet/daum/adam/publisher/AdView;

    iput-object p2, p0, Lnet/daum/adam/publisher/AdView$8;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpand(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$8;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$8;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 923
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$8;->b:Lnet/daum/adam/publisher/AdView;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$8;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$8;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->f(Lnet/daum/adam/publisher/AdView;)V

    .line 927
    return-void
.end method
