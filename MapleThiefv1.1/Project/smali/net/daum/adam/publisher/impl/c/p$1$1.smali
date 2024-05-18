.class Lnet/daum/adam/publisher/impl/c/p$1$1;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/c/p$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/p;

.field final synthetic b:Lnet/daum/adam/publisher/impl/c/p$1;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/c/p$1;Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$1$1;->b:Lnet/daum/adam/publisher/impl/c/p$1;

    iput-object p2, p0, Lnet/daum/adam/publisher/impl/c/p$1$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 103
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/p$1$1;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->m()Lnet/daum/adam/publisher/impl/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/k;->g()V

    .line 104
    return-void
.end method
