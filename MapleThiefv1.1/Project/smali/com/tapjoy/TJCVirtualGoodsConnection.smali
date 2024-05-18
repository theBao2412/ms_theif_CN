.class public Lcom/tapjoy/TJCVirtualGoodsConnection;
.super Ljava/lang/Object;
.source "TJCVirtualGoodsConnection.java"


# static fields
.field static final TAPJOY_VIRTUAL_GOODS_CONNECTION:Ljava/lang/String; = "TapjoyVirtualGoodsConnection"

.field private static tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

.field private static urlDomain:Ljava/lang/String;

.field private static urlParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlDomain:Ljava/lang/String;

    .line 20
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlParams:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsConnection;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseDomain"    # Ljava/lang/String;
    .param p2, "baseParams"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "TapjoyVirtualGoodsConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsConnection;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    .line 31
    sput-object p1, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlDomain:Ljava/lang/String;

    .line 32
    sput-object p2, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlParams:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAllPurchasedItemsFromServer(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "max"    # I

    .prologue
    .line 46
    const-string v3, "TapjoyVirtualGoodsConnection"

    const-string v4, "getAllPurchasedItemsFromServer"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlDomain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "get_vg_store_items/purchased?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlParams:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "params":Ljava/lang/String;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodsConnection;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    invoke-virtual {v3, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "response":Ljava/lang/String;
    return-object v1
.end method

.method public getAllStoreItemsFromServer(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "max"    # I

    .prologue
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlDomain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "get_vg_store_items/all?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlParams:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "params":Ljava/lang/String;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodsConnection;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    invoke-virtual {v3, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "response":Ljava/lang/String;
    return-object v1
.end method

.method public purchaseVGFromServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "virtualGoodID"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlDomain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "points/purchase_vg?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/tapjoy/TJCVirtualGoodsConnection;->urlParams:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&virtual_good_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "params":Ljava/lang/String;
    sget-object v3, Lcom/tapjoy/TJCVirtualGoodsConnection;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;

    invoke-virtual {v3, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "response":Ljava/lang/String;
    return-object v1
.end method
