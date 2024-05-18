.class Lcom/Nexon/MapleThief/ItarosActivity$11;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Lnet/daum/adam/publisher/AdView$OnAdWillLoadListener;


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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$11;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdWillLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 1006
    const-string v0, "BannerTypeJava"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uad11\uace0\ub97c \ubd88\ub7ec\uc635\ub2c8\ub2e4. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method
