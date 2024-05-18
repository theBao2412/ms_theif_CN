.class Lnet/daum/adam/publisher/AdView$11;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/AdView;->f(Landroid/content/Context;)V
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
    .line 1164
    iput-object p1, p0, Lnet/daum/adam/publisher/AdView$11;->a:Lnet/daum/adam/publisher/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Z)V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lnet/daum/adam/publisher/AdView$11;->a:Lnet/daum/adam/publisher/AdView;

    invoke-static {v0, p1}, Lnet/daum/adam/publisher/AdView;->b(Lnet/daum/adam/publisher/AdView;Z)Z

    .line 1167
    return-void
.end method
