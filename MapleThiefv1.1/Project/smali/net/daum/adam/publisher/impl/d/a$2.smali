.class Lnet/daum/adam/publisher/impl/d/a$2;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/daum/adam/publisher/impl/d/a;->a(Landroid/content/Context;)Lnet/daum/adam/publisher/impl/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/d/a;


# direct methods
.method constructor <init>(Lnet/daum/adam/publisher/impl/d/a;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a$2;->a:Lnet/daum/adam/publisher/impl/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 145
    return-void
.end method
