.class Lcom/Nexon/MapleThief/ItarosActivity$1;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lcom/kt/olleh/inapp/OnInAppListener;


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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$1;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v0, "I001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 397
    :goto_0
    const-string v0, "OnResultPurchase "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 386
    :cond_0
    const-string v0, "B010"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    const/16 v0, 0x61

    const-string v1, "buy month limit"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    const-string v0, "B009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    const/16 v0, 0x60

    const-string v1, "buy day limit"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    const/4 v0, 0x1

    const-string v1, "item buy fail"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Lcom/kt/olleh/inapp/net/Response;

    .prologue
    .line 403
    const-string v0, "OnResultPurchase "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method public OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 366
    return-void
.end method

.method public OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 371
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string v0, "OnResultPurchase "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    const-string v1, "item buy success"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 378
    return-void
.end method
