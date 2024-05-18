.class public Lcom/Nexon/MapleThief/BNVNetworkManager;
.super Ljava/lang/Object;
.source "BNVNetworkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Debug_Android"


# instance fields
.field private m_ConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVNetworkManager;->m_ConnectivityManager:Landroid/net/ConnectivityManager;

    .line 27
    return-void
.end method

.method private Check()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVNetworkManager;->m_ConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "Debug_Android"

    const-string v1, "[BNVNetworkManager] Not found ConnectivityManager ! \n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public IsOnline()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/Nexon/MapleThief/BNVNetworkManager;->Check()Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVNetworkManager;->m_ConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 48
    .local v0, "ActiveNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public IsOnlineMobile()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/Nexon/MapleThief/BNVNetworkManager;->Check()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVNetworkManager;->m_ConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 62
    .local v0, "ActiveNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public IsOnlineWifi()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lcom/Nexon/MapleThief/BNVNetworkManager;->Check()Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/Nexon/MapleThief/BNVNetworkManager;->m_ConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 76
    .local v0, "ActiveNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 77
    goto :goto_0
.end method
