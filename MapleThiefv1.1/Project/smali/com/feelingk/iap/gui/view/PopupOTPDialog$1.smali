.class Lcom/feelingk/iap/gui/view/PopupOTPDialog$1;
.super Ljava/lang/Object;
.source "PopupOTPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupOTPDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupOTPDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupOTPDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    # getter for: Lcom/feelingk/iap/gui/view/PopupOTPDialog;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->access$0(Lcom/feelingk/iap/gui/view/PopupOTPDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpDialogCancelButtonClick()V

    .line 60
    return-void
.end method
