.class Lnet/daum/adam/publisher/AdView$7;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/impl/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lnet/daum/adam/publisher/impl/b;

.field final synthetic c:Lnet/daum/adam/publisher/AdView;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/AdView;JLnet/daum/adam/publisher/impl/b;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$7;->c:Lnet/daum/adam/publisher/AdView;

    iput-wide p2, p0, Lnet/daum/adam/publisher/AdView$7;->a:J

    iput-object p4, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 884
    instance-of v0, p1, Lnet/daum/adam/publisher/impl/c/p;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lnet/daum/adam/publisher/AdView$7;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->c:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->c(Lnet/daum/adam/publisher/AdView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 888
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->c:Lnet/daum/adam/publisher/AdView;

    iget-object v1, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/AdView;->a(Lnet/daum/adam/publisher/AdView;Ljava/lang/String;)V

    .line 891
    :cond_0
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->c:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0}, Lnet/daum/adam/publisher/AdView;->f(Lnet/daum/adam/publisher/AdView;)V

    .line 894
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 895
    check-cast p1, Lnet/daum/adam/publisher/impl/c/p;

    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$7;->b:Lnet/daum/adam/publisher/impl/b;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/daum/adam/publisher/impl/c/p;->c(Ljava/lang/String;)Z

    .line 898
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
