.class public Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;
.super Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;
.source "ScreenStateBroadcastReceiver.java"


# static fields
.field private static final b:Ljava/lang/String; = "ScreenStateBroadcastReceiver"


# instance fields
.field private c:Lnet/daum/adam/publisher/AdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/daum/adam/publisher/AdView;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->c:Lnet/daum/adam/publisher/AdView;

    .line 17
    iput-object p2, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->c:Lnet/daum/adam/publisher/AdView;

    .line 18
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const-string v0, "ScreenStateBroadcastReceiver"

    const-string v1, "registered successfully"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v0, "ScreenStateBroadcastReceiver"

    const-string v1, "Cannot be registered."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    const-string v0, "ScreenStateBroadcastReceiver"

    const-string v1, "unregistered"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "ScreenStateBroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    const-string v0, "ScreenStateBroadcastReceiver"

    const-string v1, "Screen Off"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;->onStateChange(Z)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->c:Lnet/daum/adam/publisher/AdView;

    invoke-virtual {v1}, Lnet/daum/adam/publisher/AdView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    :cond_3
    const-string v0, "ScreenStateBroadcastReceiver"

    const-string v1, "Screen On"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/ScreenStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;->onStateChange(Z)V

    goto :goto_0
.end method
