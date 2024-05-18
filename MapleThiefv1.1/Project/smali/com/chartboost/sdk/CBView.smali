.class public Lcom/chartboost/sdk/CBView;
.super Landroid/webkit/WebView;
.source "CBView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/CBView$CBViewState;,
        Lcom/chartboost/sdk/CBView$CBViewType;
    }
.end annotation


# instance fields
.field private dialog:Lcom/chartboost/sdk/CBViewDialog;

.field private responseContext:Lorg/json/JSONObject;

.field private state:Lcom/chartboost/sdk/CBView$CBViewState;

.field private type:Lcom/chartboost/sdk/CBView$CBViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView$CBViewType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/chartboost/sdk/CBView$CBViewType;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBView;->setBackgroundColor(I)V

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    iput-object p2, p0, Lcom/chartboost/sdk/CBView;->type:Lcom/chartboost/sdk/CBView$CBViewType;

    .line 42
    sget-object v0, Lcom/chartboost/sdk/CBView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBView$CBViewType;

    if-ne p2, v0, :cond_0

    .line 44
    new-instance v0, Lcom/chartboost/sdk/CBView$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/CBView$1;-><init>(Lcom/chartboost/sdk/CBView;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/chartboost/sdk/CBViewDialog;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/CBView;->dialog:Lcom/chartboost/sdk/CBViewDialog;

    return-object v0
.end method

.method public getResponseContext()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/CBView;->responseContext:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getState()Lcom/chartboost/sdk/CBView$CBViewState;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/CBView;->state:Lcom/chartboost/sdk/CBView$CBViewState;

    return-object v0
.end method

.method public getType()Lcom/chartboost/sdk/CBView$CBViewType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/CBView;->type:Lcom/chartboost/sdk/CBView$CBViewType;

    return-object v0
.end method

.method public setDialog(Lcom/chartboost/sdk/CBViewDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/chartboost/sdk/CBViewDialog;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/chartboost/sdk/CBView;->dialog:Lcom/chartboost/sdk/CBViewDialog;

    .line 95
    return-void
.end method

.method public setResponseContext(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "responseContext"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/chartboost/sdk/CBView;->responseContext:Lorg/json/JSONObject;

    .line 65
    return-void
.end method

.method public setState(Lcom/chartboost/sdk/CBView$CBViewState;)V
    .locals 0
    .param p1, "state"    # Lcom/chartboost/sdk/CBView$CBViewState;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/chartboost/sdk/CBView;->state:Lcom/chartboost/sdk/CBView$CBViewState;

    .line 78
    return-void
.end method

.method public setType(Lcom/chartboost/sdk/CBView$CBViewType;)V
    .locals 0
    .param p1, "type"    # Lcom/chartboost/sdk/CBView$CBViewType;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/chartboost/sdk/CBView;->type:Lcom/chartboost/sdk/CBView$CBViewType;

    .line 111
    return-void
.end method
