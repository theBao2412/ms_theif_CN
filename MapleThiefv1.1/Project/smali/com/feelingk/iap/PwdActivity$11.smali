.class Lcom/feelingk/iap/PwdActivity$11;
.super Ljava/lang/Object;
.source "PwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/PwdActivity;->viewLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/PwdActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/PwdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 706
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v0, v5, :cond_0

    .line 707
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 708
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-lez v0, :cond_4

    .line 711
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, v1, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v3, v3, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v0, v5, :cond_1

    .line 713
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 714
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, v1, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 718
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 720
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 722
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-nez v0, :cond_5

    .line 726
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/PwdActivity;->finish()V

    .line 727
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$11;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 728
    return-void
.end method
