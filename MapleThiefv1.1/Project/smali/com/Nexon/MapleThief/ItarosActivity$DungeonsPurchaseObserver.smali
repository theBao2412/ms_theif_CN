.class Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;
.super Lcom/Nexon/MapleThief/PurchaseObserver;
.source "ItarosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/ItarosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DungeonsPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method public constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/Nexon/MapleThief/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 2
    .param p1, "supported"    # Z

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$DungeonsPurchaseObserver;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    .line 281
    :cond_0
    return-void
.end method

.method public onPurchaseStateChange(Lcom/Nexon/MapleThief/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1
    .param p1, "purchaseState"    # Lcom/Nexon/MapleThief/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-object v0, Lcom/Nexon/MapleThief/Consts$PurchaseState;->PURCHASED:Lcom/Nexon/MapleThief/Consts$PurchaseState;

    .line 301
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/Nexon/MapleThief/BillingService$RequestPurchase;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/Nexon/MapleThief/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/Nexon/MapleThief/Consts$ResponseCode;

    .prologue
    .line 309
    sget-object v0, Lcom/Nexon/MapleThief/Consts$ResponseCode;->RESULT_OK:Lcom/Nexon/MapleThief/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 313
    const/4 v0, 0x0

    const-string v1, "item buy success"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/Nexon/MapleThief/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/Nexon/MapleThief/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 319
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x1

    const-string v1, "item buy fail"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;Lcom/Nexon/MapleThief/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/Nexon/MapleThief/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/Nexon/MapleThief/Consts$ResponseCode;

    .prologue
    .line 333
    sget-object v0, Lcom/Nexon/MapleThief/Consts$ResponseCode;->RESULT_OK:Lcom/Nexon/MapleThief/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x1

    const-string v1, "item buy fail"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0
.end method
