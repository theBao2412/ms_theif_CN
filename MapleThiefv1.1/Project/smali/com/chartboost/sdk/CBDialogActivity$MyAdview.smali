.class Lcom/chartboost/sdk/CBDialogActivity$MyAdview;
.super Landroid/webkit/WebViewClient;
.source "CBDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/CBDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBDialogActivity;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/CBDialogActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/CBDialogActivity;Lcom/chartboost/sdk/CBDialogActivity$MyAdview;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;-><init>(Lcom/chartboost/sdk/CBDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    move-object v0, p1

    .line 193
    check-cast v0, Lcom/chartboost/sdk/CBView;

    .line 194
    .local v0, "chartBoostView":Lcom/chartboost/sdk/CBView;
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBView;->getState()Lcom/chartboost/sdk/CBView$CBViewState;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateWaitingForDisplay:Lcom/chartboost/sdk/CBView$CBViewState;

    if-ne v1, v2, :cond_0

    .line 196
    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateOther:Lcom/chartboost/sdk/CBView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBView;->setState(Lcom/chartboost/sdk/CBView$CBViewState;)V

    .line 198
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBView;->getType()Lcom/chartboost/sdk/CBView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    if-ne v1, v2, :cond_3

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayInterstitial(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "CBDialogActivity"

    const-string v2, "Got an interstitial, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 212
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 238
    :cond_2
    :goto_1
    sget-object v1, Lcom/chartboost/sdk/CBView$CBViewState;->CBViewStateDisplayedByDefaultController:Lcom/chartboost/sdk/CBView$CBViewState;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBView;->setState(Lcom/chartboost/sdk/CBView$CBViewState;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/CBView;->getType()Lcom/chartboost/sdk/CBView$CBViewType;

    move-result-object v1

    sget-object v2, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBView$CBViewType;

    if-ne v1, v2, :cond_2

    .line 221
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 222
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/ChartBoost;->getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayMoreApps(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 227
    const-string v1, "CBDialogActivity"

    const-string v2, "Got More Apps, adding to view!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v1, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v1, v1, Lcom/chartboost/sdk/CBDialogActivity;->cbContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 246
    move-object v2, p1

    check-cast v2, Lcom/chartboost/sdk/CBView;

    .line 252
    .local v2, "view":Lcom/chartboost/sdk/CBView;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "uri":Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    .end local v1    # "uri":Ljava/net/URI;
    :cond_0
    :goto_0
    return v3

    .line 257
    .restart local v1    # "uri":Ljava/net/URI;
    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chartboost"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/chartboost/sdk/CBDialogActivity$MyAdview;->this$0:Lcom/chartboost/sdk/CBDialogActivity;

    iget-object v4, v4, Lcom/chartboost/sdk/CBDialogActivity;->cbObject:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v4, p2, v2}, Lcom/chartboost/sdk/ChartBoost;->handleChartBoostRequest(Ljava/lang/String;Lcom/chartboost/sdk/CBView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    const/4 v3, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
