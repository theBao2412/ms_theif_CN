.class Lcom/chartboost/sdk/CBAPIConnection$1$2;
.super Ljava/lang/Object;
.source "CBAPIConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/CBAPIConnection$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chartboost/sdk/CBAPIConnection$1;

.field private final synthetic val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

.field private final synthetic val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBAPIConnection$1;Lcom/chartboost/sdk/CBAPIConnectionDelegate;Lcom/chartboost/sdk/CBAPIRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection$1$2;->this$1:Lcom/chartboost/sdk/CBAPIConnection$1;

    iput-object p2, p0, Lcom/chartboost/sdk/CBAPIConnection$1$2;->val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    iput-object p3, p0, Lcom/chartboost/sdk/CBAPIConnection$1$2;->val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection$1$2;->val$finalDelegate:Lcom/chartboost/sdk/CBAPIConnectionDelegate;

    iget-object v1, p0, Lcom/chartboost/sdk/CBAPIConnection$1$2;->val$finalRequest:Lcom/chartboost/sdk/CBAPIRequest;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/CBAPIConnectionDelegate;->didFailToReceiveAPIResponse(Lcom/chartboost/sdk/CBAPIRequest;)V

    .line 157
    return-void
.end method
