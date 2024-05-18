.class public Lcom/Nexon/MapleThief/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/Nexon/MapleThief/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/PurchaseObserver;->onBillingSupported(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/Nexon/MapleThief/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/Nexon/MapleThief/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/Nexon/MapleThief/ResponseHandler$1;

    invoke-direct {v1}, Lcom/Nexon/MapleThief/ResponseHandler$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method public static declared-synchronized register(Lcom/Nexon/MapleThief/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/Nexon/MapleThief/PurchaseObserver;

    .prologue
    .line 41
    const-class v0, Lcom/Nexon/MapleThief/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/Nexon/MapleThief/BillingService$RequestPurchase;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/Nexon/MapleThief/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/Nexon/MapleThief/Consts$ResponseCode;

    .prologue
    .line 153
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/Nexon/MapleThief/PurchaseObserver;->onRequestPurchaseResponse(Lcom/Nexon/MapleThief/BillingService$RequestPurchase;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/Nexon/MapleThief/Consts$ResponseCode;

    .prologue
    .line 169
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/Nexon/MapleThief/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/Nexon/MapleThief/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/Nexon/MapleThief/PurchaseObserver;

    .prologue
    .line 49
    const-class v0, Lcom/Nexon/MapleThief/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/Nexon/MapleThief/ResponseHandler;->sPurchaseObserver:Lcom/Nexon/MapleThief/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
