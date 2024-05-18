.class Lcom/Nexon/MapleThief/ItarosActivity$9;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lnet/daum/adam/publisher/AdView$OnAdFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->Create()V
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$9;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdFailed(Lnet/daum/adam/publisher/impl/AdError;Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Lnet/daum/adam/publisher/impl/AdError;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 979
    const-string v0, "BannerTypeJava"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v0, "BannerTypeJava"

    const-string v1, "\uad11\uace0\ub97c \ub0b4\ub824\ubc1b\uae30 \uc2e4\ud328."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$9;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->adView:Lnet/daum/adam/publisher/AdView;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$2(Lcom/Nexon/MapleThief/ItarosActivity;)Lnet/daum/adam/publisher/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$9;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # invokes: Lcom/Nexon/MapleThief/ItarosActivity;->runAdmob()V
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$3(Lcom/Nexon/MapleThief/ItarosActivity;)V

    .line 990
    :cond_0
    return-void
.end method
