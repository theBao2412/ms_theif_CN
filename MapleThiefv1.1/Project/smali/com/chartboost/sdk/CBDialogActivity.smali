.class public Lcom/chartboost/sdk/CBDialogActivity;
.super Landroid/app/Activity;
.source "CBDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBDialogActivity$MyAdview;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_CONFIGOBJECT:Ljava/lang/String; = "bk_cfgo"

.field public static final BUNDLE_KEY_TYPE:Ljava/lang/String; = "bk_type"

.field public static final DEBUG_MODE:Z = false

.field public static final OVERLAY_OPACITY:I = 0x4b

.field public static final TAG:Ljava/lang/String; = "CBDialogActivity"

.field protected static ctx:Landroid/content/Context;


# instance fields
.field protected cbConfiguration:Lorg/json/JSONObject;

.field protected cbContainer:Landroid/widget/RelativeLayout;

.field protected cbObject:Lcom/chartboost/sdk/ChartBoost;

.field protected cbViewType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/chartboost/sdk/CBDialogActivity;->display()V

    return-void
.end method

.method private display()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "chartBoostView":Lcom/chartboost/sdk/CBView;
    iget v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v2, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-virtual {v2}, Lcom/chartboost/sdk/CBView$CBViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 125
    new-instance v0, Lcom/chartboost/sdk/CBView;

    .end local v0    # "chartBoostView":Lcom/chartboost/sdk/CBView;
    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView$CBViewType;)V

    .line 130
    .restart local v0    # "chartBoostView":Lcom/chartboost/sdk/CBView;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost()Lcom/chartboost/sdk/ChartBoost;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    .line 133
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    if-nez v1, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 139
    :cond_2
    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBView;->setState(Lcom/chartboost/sdk/CBView$CBViewState;)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBView;->setResponseContext(Lorg/json/JSONObject;)V

    .line 141
    new-instance v1, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;

    invoke-direct {v1, p0, v3}, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;-><init>(Lcom/chartboost/sdk/CBDialogActivity;Lcom/chartboost/sdk/CBDialogActivity$MyAdview;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v2, "html"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "cbHtmlContent":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 147
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "html content is blank!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v6    # "cbHtmlContent":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 156
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 159
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 126
    :cond_4
    iget v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    sget-object v2, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-virtual {v2}, Lcom/chartboost/sdk/CBView$CBViewType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 127
    new-instance v0, Lcom/chartboost/sdk/CBView;

    .end local v0    # "chartBoostView":Lcom/chartboost/sdk/CBView;
    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/CBView;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView$CBViewType;)V

    .restart local v0    # "chartBoostView":Lcom/chartboost/sdk/CBView;
    goto :goto_0

    .line 150
    .restart local v6    # "cbHtmlContent":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v1, "file:///android_asset/"

    iget-object v2, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/CBView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 56
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 60
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bk_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bk_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbViewType:I

    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bk_cfgo"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbConfiguration:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    sput-object p0, Lcom/chartboost/sdk/CBDialogActivity;->ctx:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/chartboost/sdk/CBDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/CBDialogActivity$1;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/CBDialogActivity;->setContentView(Landroid/view/View;)V

    .line 90
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 164
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBDialogActivity;->finish()V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
