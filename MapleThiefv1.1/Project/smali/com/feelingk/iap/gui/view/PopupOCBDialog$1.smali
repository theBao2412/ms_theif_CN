.class Lcom/feelingk/iap/gui/view/PopupOCBDialog$1;
.super Ljava/lang/Object;
.source "PopupOCBDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupOCBDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupOCBDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupOCBDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    # getter for: Lcom/feelingk/iap/gui/view/PopupOCBDialog;->onOCBCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->access$0(Lcom/feelingk/iap/gui/view/PopupOCBDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;->onOCBRegistrationCancelClick()V

    .line 55
    return-void
.end method
