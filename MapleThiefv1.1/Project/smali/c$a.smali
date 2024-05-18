.class final Lc$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc;

.field private final b:Ld;

.field private final c:Landroid/webkit/WebView;

.field private final d:Lb;

.field private final e:Lcom/google/ads/AdRequest$ErrorCode;

.field private final f:Z


# direct methods
.method public constructor <init>(Lc;Ld;Landroid/webkit/WebView;Lb;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 0

    iput-object p1, p0, Lc$a;->a:Lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc$a;->b:Ld;

    iput-object p3, p0, Lc$a;->c:Landroid/webkit/WebView;

    iput-object p4, p0, Lc$a;->d:Lb;

    iput-object p5, p0, Lc$a;->e:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean p6, p0, Lc$a;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc$a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lc$a;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lc$a;->d:Lb;

    invoke-virtual {v0}, Lb;->a()V

    iget-boolean v0, p0, Lc$a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc$a;->b:Ld;

    invoke-virtual {v0}, Ld;->i()Lg;

    move-result-object v0

    invoke-virtual {v0}, Lg;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lg;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lc$a;->b:Ld;

    iget-object v1, p0, Lc$a;->e:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Ld;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method
