.class public Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;
.super Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;
.source "NetworkStateBroadcastReceiver.java"


# static fields
.field private static final b:Ljava/lang/String; = "NetworkStateBroadcastReceiver"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "registered successfully"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "Cannot be registered."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "unregistered"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    const-string v1, "NetworkStateBroadcastReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 28
    if-nez v1, :cond_4

    .line 29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 31
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "3G Network has been connected."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_1
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;->onStateChange(Z)V

    goto :goto_0

    .line 33
    :cond_3
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "WIFI Network has been connected."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 41
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 42
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "3G Network has been disconnected."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_2
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/receiver/NetworkStateBroadcastReceiver;->a()Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;

    move-result-object v0

    invoke-interface {v0, v2}, Lnet/daum/adam/publisher/impl/receiver/AbstractBroadcastReceiver$a;->onStateChange(Z)V

    goto :goto_0

    .line 44
    :cond_6
    const-string v0, "NetworkStateBroadcastReceiver"

    const-string v1, "WIFI Network has been disconnected."

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
