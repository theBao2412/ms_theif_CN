.class Lnet/daum/adam/publisher/impl/b/c$7;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lnet/daum/adam/publisher/impl/b/c;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$7;->b:Lnet/daum/adam/publisher/impl/b/c;

    iput-object p2, p0, Lnet/daum/adam/publisher/impl/b/c$7;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$7;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 749
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/b/c$7;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 750
    return-void
.end method
