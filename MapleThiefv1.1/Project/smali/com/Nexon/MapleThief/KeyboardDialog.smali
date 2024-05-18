.class Lcom/Nexon/MapleThief/KeyboardDialog;
.super Landroid/app/Dialog;
.source "ItarosActivity.java"


# instance fields
.field private m_Edit:Landroid/widget/EditText;

.field private m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 120
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/Nexon/MapleThief/KeyboardDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_InputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/Nexon/MapleThief/KeyboardDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public GetResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SetTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/Nexon/MapleThief/KeyboardDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->setContentView(I)V

    .line 130
    const-string v1, "Keyboard Dialog"

    invoke-virtual {p0, v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/Nexon/MapleThief/KeyboardDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    .line 133
    iget-object v1, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 134
    iget-object v1, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 135
    iget-object v1, p0, Lcom/Nexon/MapleThief/KeyboardDialog;->m_Edit:Landroid/widget/EditText;

    new-instance v2, Lcom/Nexon/MapleThief/KeyboardDialog$1;

    invoke-direct {v2, p0}, Lcom/Nexon/MapleThief/KeyboardDialog$1;-><init>(Lcom/Nexon/MapleThief/KeyboardDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/Nexon/MapleThief/KeyboardDialog$2;

    invoke-direct {v2, p0}, Lcom/Nexon/MapleThief/KeyboardDialog$2;-><init>(Lcom/Nexon/MapleThief/KeyboardDialog;)V

    .line 153
    const-wide/16 v3, 0x96

    .line 149
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 154
    .local v0, "mHandler":Z
    return-void
.end method
