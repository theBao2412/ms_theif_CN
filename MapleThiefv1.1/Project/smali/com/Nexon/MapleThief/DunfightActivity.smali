.class public Lcom/Nexon/MapleThief/DunfightActivity;
.super Landroid/app/Activity;
.source "DunfightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bCheck:Z

.field private intent:Landroid/content/Intent;

.field private mBtnCheck:Landroid/widget/Button;

.field private mBtnNext:Landroid/widget/Button;

.field private mTvString:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mBtnNext:Landroid/widget/Button;

    .line 20
    iput-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mBtnCheck:Landroid/widget/Button;

    .line 21
    iput-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mTvString:Landroid/widget/TextView;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->bCheck:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/DunfightActivity;->finish()V

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 61
    :pswitch_0
    sput-boolean v6, Lcom/Nexon/MapleThief/Global;->b_check:Z

    .line 65
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/DunfightActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "strResourceRootPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "prov.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "strFlagFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "fout":Ljava/io/FileWriter;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/FileWriter;->write(I)V

    .line 71
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "fout":Ljava/io/FileWriter;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/Nexon/MapleThief/DunfightActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/Nexon/MapleThief/DunfightActivity;->finish()V

    goto :goto_0

    .line 72
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7f060007
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/DunfightActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/DunfightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mBtnNext:Landroid/widget/Button;

    .line 32
    const v0, 0x7f060009

    invoke-virtual {p0, v0}, Lcom/Nexon/MapleThief/DunfightActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mTvString:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mBtnNext:Landroid/widget/Button;

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 40
    iget-object v0, p0, Lcom/Nexon/MapleThief/DunfightActivity;->mBtnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    return-void
.end method
