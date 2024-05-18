.class Lcom/chartboost/sdk/ChartBoost$2;
.super Ljava/lang/Object;
.source "ChartBoost.java"

# interfaces
.implements Lcom/chartboost/sdk/CBRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/ChartBoost;->loadMoreApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;

.field private final synthetic val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$2;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iput-object p2, p0, Lcom/chartboost/sdk/ChartBoost$2;->val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs run([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 157
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object v2, p1, v4

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    aget-object v1, p1, v4

    check-cast v1, Lorg/json/JSONObject;

    .line 160
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost$2;->val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Lorg/json/JSONObject;

    sget-object v4, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    # invokes: Lcom/chartboost/sdk/ChartBoost;->loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBView$CBViewType;)V
    invoke-static {v3, v2, v4}, Lcom/chartboost/sdk/ChartBoost;->access$0(Lcom/chartboost/sdk/ChartBoost;Lorg/json/JSONObject;Lcom/chartboost/sdk/CBView$CBViewType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
