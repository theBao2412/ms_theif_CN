.class Lnet/daum/adam/publisher/impl/b/c$8;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/a;

.field final synthetic b:Lnet/daum/adam/publisher/impl/b/c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Lnet/daum/adam/publisher/impl/b/a;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$8;->b:Lnet/daum/adam/publisher/impl/b/c;

    iput-object p2, p0, Lnet/daum/adam/publisher/impl/b/c$8;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$8;->a:Lnet/daum/adam/publisher/impl/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$8;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/a;->g()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$8;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 763
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$8;->a:Lnet/daum/adam/publisher/impl/b/a;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/impl/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Ljava/lang/String;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    iget-object v1, p0, Lnet/daum/adam/publisher/impl/b/c$8;->b:Lnet/daum/adam/publisher/impl/b/c;

    invoke-static {v1}, Lnet/daum/adam/publisher/impl/b/c;->d(Lnet/daum/adam/publisher/impl/b/c;)Lnet/daum/adam/publisher/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 765
    :cond_0
    return-void
.end method
