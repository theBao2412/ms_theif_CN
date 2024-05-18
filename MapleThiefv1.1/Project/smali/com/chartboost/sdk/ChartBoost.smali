.class public Lcom/chartboost/sdk/ChartBoost;
.super Ljava/lang/Object;
.source "ChartBoost.java"

# interfaces
.implements Lcom/chartboost/sdk/CBAPIConnectionDelegate;


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBoost"

.field private static sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;


# instance fields
.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private connection:Lcom/chartboost/sdk/CBAPIConnection;

.field private context:Landroid/content/Context;

.field private delegate:Lcom/chartboost/sdk/ChartBoostDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/chartboost/sdk/CBAPIConnection;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBAPIConnection;-><init>(Lcom/chartboost/sdk/CBAPIConnectionDelegate;)V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/ChartBoost;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBView$CBViewType;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBView$CBViewType;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/ChartBoost;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getSharedChartBoost()Lcom/chartboost/sdk/ChartBoost;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/chartboost/sdk/ChartBoost;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/chartboost/sdk/ChartBoost;

    invoke-direct {v0}, Lcom/chartboost/sdk/ChartBoost;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 78
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleChartBoostRequestForInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "interstitialView"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 280
    const-string v6, "cb"

    const-string v7, "handleChartBoostRequestForInterstitial"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "items":[Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v2, v3, v6

    .line 286
    .local v2, "function":Ljava/lang/String;
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v6, :cond_0

    .line 287
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v6, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didDismissInterstitial(Landroid/view/View;)V

    .line 290
    :cond_0
    const-string v6, "cb"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "function: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v6, "close"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v6, :cond_1

    .line 295
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v6, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseInterstitial(Landroid/view/View;)V

    .line 299
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/CBDialogActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    .line 340
    :cond_2
    :goto_0
    return-void

    .line 301
    :cond_3
    const-string v6, "link"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 303
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v6, :cond_4

    .line 304
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v6, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickInterstitial(Landroid/view/View;)V

    .line 307
    :cond_4
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getState()Lcom/chartboost/sdk/CBView$CBViewState;

    move-result-object v6

    sget-object v7, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBView$CBViewState;

    if-ne v6, v7, :cond_5

    .line 309
    const-string v6, "cb"

    const-string v7, "closing interstitial ad"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/chartboost/sdk/CBDialogActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v6}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    .line 314
    :cond_5
    :try_start_0
    new-instance v4, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v7, "api"

    const-string v8, "click"

    invoke-direct {v4, v6, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v4, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v4}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 317
    const-string v6, "to"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "to"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "cgn"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "cgn"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v6, "creative"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getResponseContext()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "creative"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "cb"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "decoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "finalRedirectUrl":Ljava/lang/String;
    move-object v5, p0

    .line 327
    .local v5, "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    new-instance v6, Lcom/chartboost/sdk/ChartBoost$4;

    invoke-direct {v6, p0, v5, v1}, Lcom/chartboost/sdk/ChartBoost$4;-><init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/chartboost/sdk/CBAPIRequest;->setContextInfoObject(Ljava/lang/Object;)V

    .line 333
    const-string v6, "cb"

    const-string v7, "sending request click request"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-virtual {v6, v4}, Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    .end local v1    # "finalRedirectUrl":Ljava/lang/String;
    .end local v4    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    .end local v5    # "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleChartBoostRequestForMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "moreAppsView"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 208
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "items":[Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v3, v4, v7

    .line 212
    .local v3, "function":Ljava/lang/String;
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v7, :cond_0

    .line 213
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v7, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didDismissMoreApps(Landroid/view/View;)V

    .line 216
    :cond_0
    const-string v7, "close"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v7, :cond_1

    .line 219
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v7, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didCloseMoreApps(Landroid/view/View;)V

    .line 223
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/CBDialogActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v7}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    .line 276
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    const-string v7, "link"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v7, :cond_4

    .line 228
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v7, p2}, Lcom/chartboost/sdk/ChartBoostDelegate;->didClickMoreApps(Landroid/view/View;)V

    .line 231
    :cond_4
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getState()Lcom/chartboost/sdk/CBView$CBViewState;

    move-result-object v7

    sget-object v8, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBView$CBViewState;

    if-ne v7, v8, :cond_5

    .line 233
    invoke-static {}, Lcom/chartboost/sdk/CBDialogActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-virtual {v7}, Lcom/chartboost/sdk/CBDialogActivity;->close()V

    .line 237
    :cond_5
    :try_start_0
    new-instance v5, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v8, "api"

    const-string v9, "click"

    invoke-direct {v5, v7, v8, v9}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v5, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 240
    new-instance v1, Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONTokener;

    const/4 v8, 0x4

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .local v1, "embeddedData":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "to"

    const-string v8, "to"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :goto_1
    :try_start_2
    const-string v7, "cgn"

    const-string v8, "cgn"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    :goto_2
    :try_start_3
    const-string v7, "creative"

    const-string v8, "creative"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 252
    :goto_3
    :try_start_4
    const-string v7, "type"

    const-string v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 255
    :goto_4
    :try_start_5
    const-string v7, "more_type"

    const-string v8, "more_type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 258
    :goto_5
    :try_start_6
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v8, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v7, 0x3

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "finalRedirectUrl":Ljava/lang/String;
    move-object v6, p0

    .line 263
    .local v6, "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    new-instance v7, Lcom/chartboost/sdk/ChartBoost$3;

    invoke-direct {v7, p0, v6, v2}, Lcom/chartboost/sdk/ChartBoost$3;-><init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/CBAPIRequest;->setContextInfoObject(Ljava/lang/Object;)V

    .line 269
    iget-object v7, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-virtual {v7, v5}, Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 271
    .end local v1    # "embeddedData":Lorg/json/JSONObject;
    .end local v2    # "finalRedirectUrl":Ljava/lang/String;
    .end local v5    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    .end local v6    # "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "embeddedData":Lorg/json/JSONObject;
    .restart local v5    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :catch_1
    move-exception v7

    goto :goto_5

    .line 253
    :catch_2
    move-exception v7

    goto :goto_4

    .line 250
    :catch_3
    move-exception v7

    goto :goto_3

    .line 247
    :catch_4
    move-exception v7

    goto :goto_2

    .line 244
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method private loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBView$CBViewType;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;
    .param p2, "type"    # Lcom/chartboost/sdk/CBView$CBViewType;

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-class v2, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bk_type"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView$CBViewType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "bk_cfgo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 362
    const-string v1, "ChartBoost"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sideloading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method


# virtual methods
.method public didFailToReceiveAPIResponse(Lcom/chartboost/sdk/CBAPIRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/chartboost/sdk/CBAPIRequest;

    .prologue
    .line 377
    const-string v0, "ChartBoost"

    const-string v1, "API response failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method public didReceiveAPIResponse(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBAPIRequest;)V
    .locals 3
    .param p1, "response"    # Lorg/json/JSONObject;
    .param p2, "request"    # Lcom/chartboost/sdk/CBAPIRequest;

    .prologue
    .line 370
    const-string v0, "ChartBoost"

    const-string v1, "API response received!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBAPIRequest;->getContextInfoObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBRunnable;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBAPIRequest;->getContextInfoObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/CBRunnable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/CBRunnable;->run([Ljava/lang/Object;)V

    .line 375
    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    return-object v0
.end method

.method protected handleChartBoostRequest(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 197
    const-string v0, "ChartBoost"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling chartboost:// request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getType()Lcom/chartboost/sdk/CBView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    if-ne v0, v1, :cond_1

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->handleChartBoostRequestForInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p2}, Lcom/chartboost/sdk/CBView;->getType()Lcom/chartboost/sdk/CBView$CBViewType;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->handleChartBoostRequestForMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V

    goto :goto_0
.end method

.method public install()V
    .locals 5

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v3, "api"

    const-string v4, "install"

    invoke-direct {v1, v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .local v1, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 92
    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadInterstitial()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/ChartBoost;->loadInterstitial(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 6
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-interface {v3}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestInterstitial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v4, "api"

    const-string v5, "get"

    invoke-direct {v1, v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v1, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 121
    const-string v3, "location"

    invoke-virtual {v1, v3, p1}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object v2, p0

    .line 126
    .local v2, "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    new-instance v3, Lcom/chartboost/sdk/ChartBoost$1;

    invoke-direct {v3, p0, v2}, Lcom/chartboost/sdk/ChartBoost$1;-><init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;)V

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/CBAPIRequest;->setContextInfoObject(Ljava/lang/Object;)V

    .line 139
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    .end local v2    # "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadMoreApps()V
    .locals 6

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v4, "api"

    const-string v5, "more"

    invoke-direct {v1, v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v1, "request":Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v1}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 153
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object v2, p0

    .line 155
    .local v2, "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    new-instance v3, Lcom/chartboost/sdk/ChartBoost$2;

    invoke-direct {v3, p0, v2}, Lcom/chartboost/sdk/ChartBoost$2;-><init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;)V

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/CBAPIRequest;->setContextInfoObject(Ljava/lang/Object;)V

    .line 167
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->connection:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/CBAPIConnection;->sendRequest(Lcom/chartboost/sdk/CBAPIRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "request":Lcom/chartboost/sdk/CBAPIRequest;
    .end local v2    # "thisChartBoost":Lcom/chartboost/sdk/ChartBoost;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    .line 353
    invoke-static {}, Lcom/chartboost/sdk/CBDefaultViewController;->getSharedController()Lcom/chartboost/sdk/CBDefaultViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/CBDefaultViewController;->setContext(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method public setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/chartboost/sdk/ChartBoostDelegate;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    .line 68
    return-void
.end method
