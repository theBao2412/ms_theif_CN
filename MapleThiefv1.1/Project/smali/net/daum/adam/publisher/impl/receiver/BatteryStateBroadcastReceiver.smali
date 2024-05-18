.class public Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;
.super Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;
.source "BatteryStateBroadcastReceiver.java"


# static fields
.field private static final b:Ljava/lang/String; = "BatteryStateBroadcastReceiver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 19
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const-string v0, "BatteryStateBroadcastReceiver"

    const-string v1, "registered successfully"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v0, "BatteryStateBroadcastReceiver"

    const-string v1, "Cannot be registered."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    const-string v0, "BatteryStateBroadcastReceiver"

    const-string v1, "unregistered"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "BatteryStateBroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 43
    const/4 v0, 0x1

    .line 45
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v0, "BatteryStateBroadcastReceiver"

    const-string v1, "Battery Low!"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/BatteryStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;->onStateChange(Z)V

    .line 53
    :cond_1
    return-void
.end method
