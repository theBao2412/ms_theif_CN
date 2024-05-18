.class Lcom/tapjoy/TJCVirtualGoods$1;
.super Ljava/lang/Object;
.source "TJCVirtualGoods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCVirtualGoods;->showItemDetail(Lcom/tapjoy/VGStoreItem;ILandroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJCVirtualGoods;

.field private final synthetic val$storeItemName:Ljava/lang/String;

.field private final synthetic val$storeItemPrice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    iput-object p2, p0, Lcom/tapjoy/TJCVirtualGoods$1;->val$storeItemName:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TJCVirtualGoods$1;->val$storeItemPrice:Ljava/lang/String;

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCVirtualGoods$1;)Lcom/tapjoy/TJCVirtualGoods;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Are you sure you want  \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$1;->val$storeItemName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods$1;->val$storeItemPrice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->currencyName:Ljava/lang/String;
    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->access$33()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    .line 1313
    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$1$1;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$1$1;-><init>(Lcom/tapjoy/TJCVirtualGoods$1;)V

    .line 1312
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1319
    const-string v2, "Cancel"

    new-instance v3, Lcom/tapjoy/TJCVirtualGoods$1$2;

    invoke-direct {v3, p0}, Lcom/tapjoy/TJCVirtualGoods$1$2;-><init>(Lcom/tapjoy/TJCVirtualGoods$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1311
    invoke-static {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->access$34(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V

    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods$1;->this$0:Lcom/tapjoy/TJCVirtualGoods;

    # getter for: Lcom/tapjoy/TJCVirtualGoods;->getItemDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->access$23(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    goto :goto_0
.end method
