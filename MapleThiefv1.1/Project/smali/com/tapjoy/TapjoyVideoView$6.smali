.class Lcom/tapjoy/TapjoyVideoView$6;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 572
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 574
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->seekTime:I
    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$7(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 575
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 577
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$8(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 579
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RESUME VIDEO time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->seekTime:I
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$7(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentPosition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", elapsed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView$6;->this$0:Lcom/tapjoy/TapjoyVideoView;

    # getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v3}, Lcom/tapjoy/TapjoyVideoView;->access$6(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method
