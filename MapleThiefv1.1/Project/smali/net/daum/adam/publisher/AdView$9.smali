.class Lnet/daum/adam/publisher/AdView$9;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/c/p$j;


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
    .line 931
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$9;->b:Lnet/daum/adam/publisher/AdView;

    iput-object p2, p0, Lnet/daum/adam/publisher/AdView$9;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$a;)V
    .locals 2

    .prologue
    .line 933
    if-eqz p2, :cond_1

    sget-object v0, Lnet/daum/adam/publisher/impl/c/p$a;->a:Lnet/daum/adam/publisher/impl/c/p$a;

    invoke-virtual {p2, v0}, Lnet/daum/adam/publisher/impl/c/p$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    const-string v0, "AdView"

    const-string v1, "mraid.open() - EXPANSION ENABLED STATE"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$9;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$9;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;)Lnet/daum/adam/publisher/impl/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/i;->b(Z)V

    .line 941
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$9;->b:Lnet/daum/adam/publisher/AdView;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$9;->a:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$9;->b:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->f(Lnet/daum/adam/publisher/AdView;)V

    .line 946
    :cond_1
    return-void
.end method
