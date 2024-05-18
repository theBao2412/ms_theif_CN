.class Lnet/daum/adam/publisher/impl/d/a$1;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/d/a;
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
    .line 31
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/d/a$1;->a:Lnet/daum/adam/publisher/impl/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lnet/daum/adam/publisher/impl/d/a;->a()Lnet/daum/adam/publisher/impl/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/d/a;->b()V

    .line 34
    return-void
.end method
