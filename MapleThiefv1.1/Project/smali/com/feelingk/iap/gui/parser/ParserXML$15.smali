.class Lcom/feelingk/iap/gui/parser/ParserXML$15;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5621
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 5622
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->mJoinCheckList:[Z
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 5624
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "join"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    .line 5626
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x3

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$44(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V

    .line 5630
    :goto_0
    return-void

    .line 5629
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$15;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    goto :goto_0
.end method
