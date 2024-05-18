.class Lcom/Nexon/MapleThief/ItarosActivity$3;
.super Landroid/os/Handler;
.source "ItarosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/ItarosActivity;
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$3;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 849
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    .line 851
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 861
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$3;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->Create()V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 869
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$3;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0, v2}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    goto :goto_0
.end method
