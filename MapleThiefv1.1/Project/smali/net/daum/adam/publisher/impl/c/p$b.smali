.class Lnet/daum/adam/publisher/impl/c/p$b;
.super Landroid/webkit/WebChromeClient;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/daum/adam/publisher/impl/c/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lnet/daum/adam/publisher/impl/c/p;


# direct methods
.method private constructor <init>(Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lnet/daum/adam/publisher/impl/c/p$b;->a:Lnet/daum/adam/publisher/impl/c/p;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/daum/adam/publisher/impl/c/p;Lnet/daum/adam/publisher/impl/c/p$1;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lnet/daum/adam/publisher/impl/c/p$b;-><init>(Lnet/daum/adam/publisher/impl/c/p;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 627
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method
