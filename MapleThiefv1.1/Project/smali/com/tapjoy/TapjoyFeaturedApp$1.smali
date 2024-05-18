.class Lcom/tapjoy/TapjoyFeaturedApp$1;
.super Ljava/lang/Object;
.source "TapjoyFeaturedApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyFeaturedApp;->getFeaturedApp(Ljava/lang/String;Lcom/tapjoy/TapjoyFeaturedAppNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFeaturedApp;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyFeaturedApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyFeaturedApp$1;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, "returnValue":Z
    # getter for: Lcom/tapjoy/TapjoyFeaturedApp;->tapjoyURLConnection:Lcom/tapjoy/TapjoyURLConnection;
    invoke-static {}, Lcom/tapjoy/TapjoyFeaturedApp;->access$0()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v2

    const-string v3, "https://ws.tapjoyads.com/get_offers/featured?"

    sget-object v4, Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppURLParams:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/tapjoy/TapjoyFeaturedApp$1;->this$0:Lcom/tapjoy/TapjoyFeaturedApp;

    # invokes: Lcom/tapjoy/TapjoyFeaturedApp;->buildResponse(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyFeaturedApp;->access$1(Lcom/tapjoy/TapjoyFeaturedApp;Ljava/lang/String;)Z

    move-result v1

    .line 98
    :cond_0
    if-nez v1, :cond_1

    .line 99
    # getter for: Lcom/tapjoy/TapjoyFeaturedApp;->featuredAppNotifier:Lcom/tapjoy/TapjoyFeaturedAppNotifier;
    invoke-static {}, Lcom/tapjoy/TapjoyFeaturedApp;->access$2()Lcom/tapjoy/TapjoyFeaturedAppNotifier;

    move-result-object v2

    const-string v3, "Error retrieving full screen ad data from the server."

    invoke-interface {v2, v3}, Lcom/tapjoy/TapjoyFeaturedAppNotifier;->getFeaturedAppResponseFailed(Ljava/lang/String;)V

    .line 100
    :cond_1
    return-void
.end method
