.class Lcom/Nexon/MapleThief/ItarosActivity$12;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lnet/daum/adam/publisher/AdView$OnAdClosedListener;


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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$12;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdClosed()V
    .locals 2

    .prologue
    .line 1013
    const-string v0, "BannerTypeJava"

    const-string v1, "\uad11\uace0\ub97c \ub2eb\uc558\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void
.end method
