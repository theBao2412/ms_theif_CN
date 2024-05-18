.class Lcom/Nexon/MapleThief/ItarosActivity$2;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lcom/feelingk/iap/IAPLib$OnClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/ItarosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$2;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlgAutoPurchaseInfoCancel()V
    .locals 2

    .prologue
    .line 543
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 545
    return-void
.end method

.method public onDlgError()V
    .locals 2

    .prologue
    .line 458
    const/16 v0, 0xb

    const-string v1, "dialog error"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 459
    return-void
.end method

.method public onDlgPurchaseCancel()V
    .locals 2

    .prologue
    .line 463
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 464
    return-void
.end method

.method public onError(II)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x1

    .line 489
    packed-switch p1, :pswitch_data_0

    .line 525
    :goto_0
    :pswitch_0
    return-void

    .line 493
    :pswitch_1
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPLib.HND_ERR_AUTH : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v0, "HND_ERR_AUTH"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 498
    :pswitch_2
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPLib.HND_ERR_ITEMQUERY : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v0, "HND_ERR_ITEMQUERY"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 503
    :pswitch_3
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPLib.HND_ERR_ITEMINFO : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "HND_ERR_ITEMINFO"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 508
    :pswitch_4
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPLib.HND_ERR_ITEMPURCHASE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v0, "HND_ERR_ITEMPURCHASE"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 513
    :pswitch_5
    const-string v0, "Debug_Android"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPLib.HND_ERR_DATA : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "HND_ERR_DATA"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :pswitch_6
    const-string v0, "Debug_Android"

    const-string v1, "IAPLib.HND_ERR_NORMALTIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "HND_ERR_NORMALTIMEOUT"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 521
    :pswitch_7
    const-string v0, "Debug_Android"

    const-string v1, "IAPLib.HND_ERR_PAYMENTTIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v0, "HND_ERR_PAYMENTTIMEOUT"

    invoke-static {v3, v0}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V
    .locals 2
    .param p1, "arg0"    # Lcom/feelingk/iap/net/ItemAuthInfo;

    .prologue
    .line 468
    const-string v0, "Debug_Android"

    const-string v1, "onItemAuthInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method public onItemPurchaseComplete()V
    .locals 2

    .prologue
    .line 473
    const/4 v0, 0x0

    const-string v1, "item buy success"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 474
    return-void
.end method

.method public onItemQueryComplete()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 529
    const-string v1, "Debug_Android"

    const-string v2, "onItemQueryComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 532
    .local v0, "bReturn":Ljava/lang/Boolean;
    return-object v0
.end method

.method public onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V
    .locals 2
    .param p1, "arg0"    # Lcom/feelingk/iap/net/ItemUse;

    .prologue
    .line 478
    const-string v0, "Debug_Android"

    const-string v1, "onItemUseQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public onJoinDialogCancel()V
    .locals 2

    .prologue
    .line 550
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 552
    return-void
.end method

.method public onJuminNumberDlgCancel()V
    .locals 2

    .prologue
    .line 537
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 539
    return-void
.end method

.method public onPurchaseDismiss()V
    .locals 2

    .prologue
    .line 557
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 559
    return-void
.end method

.method public onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V
    .locals 2
    .param p1, "arg0"    # [Lcom/feelingk/iap/net/ItemAuth;

    .prologue
    .line 483
    const-string v0, "Debug_Android"

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method
