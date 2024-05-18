.class Lcom/Nexon/MapleThief/ItarosActivity$25;
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
    iput-object p1, p0, Lcom/Nexon/MapleThief/ItarosActivity$25;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1576
    const/16 v0, 0x63

    const-string v1, "item buy cancel"

    invoke-static {v0, v1}, Lcom/Nexon/MapleThief/NativeClass;->OnNativeBuyResult(ILjava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/Nexon/MapleThief/ItarosActivity$25;->this$0:Lcom/Nexon/MapleThief/ItarosActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/Nexon/MapleThief/ItarosActivity;->removeDialog(I)V

    .line 1579
    return-void
.end method
