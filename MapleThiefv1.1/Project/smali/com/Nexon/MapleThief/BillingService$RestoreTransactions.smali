.class Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;
.super Lcom/Nexon/MapleThief/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreTransactions"
.end annotation


# instance fields
.field mNonce:J

.field final synthetic this$0:Lcom/Nexon/MapleThief/BillingService;


# direct methods
.method public constructor <init>(Lcom/Nexon/MapleThief/BillingService;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->this$0:Lcom/Nexon/MapleThief/BillingService;

    .line 315
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/Nexon/MapleThief/BillingService$BillingRequest;-><init>(Lcom/Nexon/MapleThief/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected onRemoteException(Landroid/os/RemoteException;)V
    .locals 2
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/Nexon/MapleThief/BillingService$BillingRequest;->onRemoteException(Landroid/os/RemoteException;)V

    .line 333
    iget-wide v0, p0, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->mNonce:J

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/Security;->removeNonce(J)V

    .line 334
    return-void
.end method

.method protected responseCodeReceived(Lcom/Nexon/MapleThief/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/Nexon/MapleThief/Consts$ResponseCode;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->this$0:Lcom/Nexon/MapleThief/BillingService;

    invoke-static {v0, p0, p1}, Lcom/Nexon/MapleThief/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V

    .line 339
    return-void
.end method

.method protected run()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lcom/Nexon/MapleThief/Security;->generateNonce()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->mNonce:J

    .line 322
    const-string v2, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v2}, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 323
    .local v0, "request":Landroid/os/Bundle;
    const-string v2, "NONCE"

    iget-wide v3, p0, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->mNonce:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 324
    # getter for: Lcom/Nexon/MapleThief/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;
    invoke-static {}, Lcom/Nexon/MapleThief/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 325
    .local v1, "response":Landroid/os/Bundle;
    const-string v2, "restoreTransactions"

    invoke-virtual {p0, v2, v1}, Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    const-string v2, "REQUEST_ID"

    .line 327
    sget-wide v3, Lcom/Nexon/MapleThief/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 326
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method
