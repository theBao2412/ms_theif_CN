.class Lcom/feelingk/iap/gui/view/PopupJoinDialog$1;
.super Ljava/lang/Object;
.source "PopupJoinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupJoinDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupJoinDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupJoinDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    # getter for: Lcom/feelingk/iap/gui/view/PopupJoinDialog;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->access$0(Lcom/feelingk/iap/gui/view/PopupJoinDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogCancelButtonClick()V

    .line 68
    return-void
.end method
