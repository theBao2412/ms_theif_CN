.class Lcom/tapjoy/TapjoyVideoView$7;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideoView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 591
    const-string v0, "VIDEO"

    const-string v1, "dialog onCancel"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->seekTime:I
    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$7(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 596
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 598
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$7;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$8(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 599
    return-void
.end method
