.class public abstract Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AbstractBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->a:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->b:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    return-object v0
.end method

.method public a(Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;->b:Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    .line 29
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method
