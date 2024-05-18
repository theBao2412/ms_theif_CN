.class Lnet/daum/adam/publisher/impl/b/c$b$1$1;
.super Ljava/lang/Object;
.source "AdCommandTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/b/c$b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/b/c$b$1;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/b/c$b$1;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/b/c$b$1$1;->a:Lnet/daum/adam/publisher/impl/b/c$b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 633
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/b/c;->a(J)J

    .line 634
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 635
    return-void
.end method
