.class Lcom/Nexon/MapleThief/KeyboardDialog$1;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Nexon/MapleThief/KeyboardDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Nexon/MapleThief/KeyboardDialog;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/KeyboardDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Nexon/MapleThief/KeyboardDialog$1;->this$0:Lcom/Nexon/MapleThief/KeyboardDialog;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/widget/TextView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 137
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog$1;->this$0:Lcom/Nexon/MapleThief/KeyboardDialog;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/KeyboardDialog;->dismiss()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
