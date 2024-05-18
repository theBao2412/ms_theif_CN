.class Lcom/tapjoy/TJCVirtualGoods$4;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showGetStoreItemsNetworkErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    .line 1430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCVirtualGoods$4;)Lcom/tapjoy/TJCVirtualGoods;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1436
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$4$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$4$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1446
    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/TJCVirtualGoods$4$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJCVirtualGoods$4$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1456
    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1458
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods$4;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iget-object v1, v1, Lcom/tapjoy/TJCVirtualGoods;->allItemAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :goto_0
    return-void

    .line 1464
    :catch_0
    move-exception v1

    goto :goto_0
.end method
