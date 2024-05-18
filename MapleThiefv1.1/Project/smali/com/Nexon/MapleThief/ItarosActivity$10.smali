.class Lcom/Nexon/MapleThief/ItarosActivity$10;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lnet/daum/adam/publisher/AdView$OnAdLoadedListener;


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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$10;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdLoaded()V
    .locals 2

    .prologue
    .line 996
    const-string v0, "BannerTypeJava"

    const-string v1, "\uad11\uace0\uac00 \uc815\uc0c1\uc801\uc73c\ub85c \ub85c\ub529\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return-void
.end method
