.class Lcom/tapjoy/TJCVirtualGoodUtil$4;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoodUtil;->showDLErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoodUtil;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoodUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$4;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 864
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 865
    return-void
.end method
