.class Lcom/feelingk/iap/IAPActivity$33;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$33;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$33;->this$0:Lcom/feelingk/iap/IAPActivity;

    # invokes: Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V
    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 600
    return-void
.end method
