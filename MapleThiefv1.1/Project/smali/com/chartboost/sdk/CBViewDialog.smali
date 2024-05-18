.class public Lcom/chartboost/sdk/CBViewDialog;
.super Landroid/app/Dialog;
.source "CBViewDialog.java"


# instance fields
.field private context:Landroid/content/Context;

.field private view:Lcom/chartboost/sdk/CBView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/CBView;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_view"    # Lcom/chartboost/sdk/CBView;

    .prologue
    .line 16
    sget v0, Lcom/chartboost/sdk/R$style;->chartBoostViewDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    iput-object p1, p0, Lcom/chartboost/sdk/CBViewDialog;->context:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/chartboost/sdk/CBViewDialog;->view:Lcom/chartboost/sdk/CBView;

    .line 20
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/CBViewDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, "container":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v1, p0, Lcom/chartboost/sdk/CBViewDialog;->view:Lcom/chartboost/sdk/CBView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBViewDialog;->setContentView(Landroid/view/View;)V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "ChartBoost"

    const-string v1, "View dismissed, not sure if by back button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
