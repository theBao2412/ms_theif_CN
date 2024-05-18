.class Lcom/Nexon/MapleThief/ItarosActivity$24;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/ItarosActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/ItarosActivity;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$24;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$24;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    # getter for: Lcom/Nexon/MapleThief/ItarosActivity;->mBillingService:Lcom/Nexon/MapleThief/BillingService;
    invoke-static {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->access$7(Lcom/Nexon/MapleThief/ItarosActivity;)Lcom/Nexon/MapleThief/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/Nexon/MapleThief/ItarosActivity$24;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    iget-object v1, v1, Lcom/Nexon/MapleThief/ItarosActivity;->PID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/Nexon/MapleThief/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$24;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->showDialog(I)V

    .line 1569
    :cond_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$24;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->removeDialog(I)V

    .line 1571
    return-void
.end method
