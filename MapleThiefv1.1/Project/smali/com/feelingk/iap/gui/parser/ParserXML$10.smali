.class Lcom/feelingk/iap/gui/parser/ParserXML$10;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5384
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$10;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    # getter for: Lcom/feelingk/iap/gui/parser/ParserXML;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;
    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$33(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;->onIMEIAuthDialogCancelButtonClick()V

    .line 5385
    return-void
.end method
