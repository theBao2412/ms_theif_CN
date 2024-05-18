.class public Lcom/tapjoy/DownloadVirtualGood;
.super Landroid/app/Activity;
.source "DownloadVirtualGood.java"


# static fields
.field public static final EXTRA_KEY_VIRTUAL_GOOD_NAME:Ljava/lang/String; = "NAME"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field cancelListener:Landroid/view/View$OnClickListener;

.field private clientPackage:Ljava/lang/String;

.field private downloadBtn:Landroid/widget/Button;

.field downloadListener:Landroid/view/View$OnClickListener;

.field private urlParams:Ljava/lang/String;

.field private vgAcquiredMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->urlParams:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/tapjoy/DownloadVirtualGood$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/DownloadVirtualGood$1;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/tapjoy/DownloadVirtualGood$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/DownloadVirtualGood$2;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelListener:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/DownloadVirtualGood;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->urlParams:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 53
    const-string v1, "URL_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "URL_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->urlParams:Ljava/lang/String;

    .line 57
    :cond_0
    const-string v1, "DOWNLOAD VIRTUAL GOODS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clientPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->getClientPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tapjoy_virtualgoods_reconnectvirtualgoods"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "DownloadBtn"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadBtn:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "CancelBtn"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelBtn:Landroid/widget/Button;

    .line 62
    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "VGAcquiredMsgText"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->vgAcquiredMsg:Landroid/widget/TextView;

    .line 64
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->downloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/tapjoy/DownloadVirtualGood;->vgAcquiredMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You have successfully acquired item \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Would you like to download it now?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
