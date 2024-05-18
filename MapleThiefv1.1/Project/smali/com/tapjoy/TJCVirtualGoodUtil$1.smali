.class Lcom/tapjoy/TJCVirtualGoodUtil$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoodUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodUtil;
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
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoodUtil$1;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoodUtil$1;->this$0:Lcom/tapjoy/TJCVirtualGoodUtil;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoodUtil;->showDLErrorDialog()V

    .line 257
    return-void
.end method
