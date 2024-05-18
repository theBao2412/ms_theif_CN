.class Lcom/Nexon/MapleThief/ItarosActivity$23;
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$23;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$23;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->access$6(Lcom/Nexon/MapleThief/ItarosActivity;I)V

    .line 1519
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$23;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/16 v1, 0x309

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->removeDialog(I)V

    .line 1520
    return-void
.end method
