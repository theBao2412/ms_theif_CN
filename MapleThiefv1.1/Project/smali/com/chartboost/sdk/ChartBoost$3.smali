.class Lcom/chartboost/sdk/ChartBoost$3;
.super Ljava/lang/Object;
.source "ChartBoost.java"

# interfaces
.implements Lcom/chartboost/sdk/CBRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/ChartBoost;->handleChartBoostRequestForMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/ChartBoost;

.field private final synthetic val$finalRedirectUrl:Ljava/lang/String;

.field private final synthetic val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost$3;->this$0:Lcom/chartboost/sdk/ChartBoost;

    iput-object p2, p0, Lcom/chartboost/sdk/ChartBoost$3;->val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;

    iput-object p3, p0, Lcom/chartboost/sdk/ChartBoost$3;->val$finalRedirectUrl:Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs run([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost$3;->val$thisChartBoost:Lcom/chartboost/sdk/ChartBoost;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost$3;->val$finalRedirectUrl:Ljava/lang/String;

    # invokes: Lcom/chartboost/sdk/ChartBoost;->openUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->access$1(Lcom/chartboost/sdk/ChartBoost;Ljava/lang/String;)V

    .line 266
    return-void
.end method
