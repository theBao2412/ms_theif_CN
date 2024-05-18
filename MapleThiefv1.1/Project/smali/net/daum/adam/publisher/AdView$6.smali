.class Lnet/daum/adam/publisher/AdView$6;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$i;


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
    .line 857
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$6;->b:Lnet/daum/adam/publisher/AdView;

    iput-object p2, p0, Lnet/daum/adam/publisher/AdView$6;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$6;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->e(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    .line 861
    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$6;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$6;->b:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->b()V

    .line 866
    :cond_0
    return-void
.end method
