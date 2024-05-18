.class Lcom/Nexon/MapleThief/KeyboardDialog$2;
.super Ljava/lang/Object;
.source "ItarosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/Nexon/MapleThief/KeyboardDialog$2;->this$0:Lcom/Nexon/MapleThief/KeyboardDialog;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog$2;->this$0:Lcom/Nexon/MapleThief/KeyboardDialog;

    # getter for: Lcom/Nexon/MapleThief/KeyboardDialog;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/Nexon/MapleThief/KeyboardDialog;->access$0(Lcom/Nexon/MapleThief/KeyboardDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/Nexon/MapleThief/KeyboardDialog$2;->this$0:Lcom/Nexon/MapleThief/KeyboardDialog;

    # getter for: Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->access$1(Lcom/Nexon/MapleThief/KeyboardDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 152
    return-void
.end method
