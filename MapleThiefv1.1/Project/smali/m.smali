.class public final Lm;
.super Ljava/lang/Object;

# interfaces
.implements Li;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const-string v0, "js"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "Could not get the JS to evaluate."

    invoke-static {v1}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    :cond_0
    instance-of v1, p3, Lg;

    if-eqz v1, :cond_1

    check-cast p3, Lg;

    invoke-virtual {p3}, Lg;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Could not get the AdActivity from the AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "Trying to evaluate JS in a WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->getOpeningAdWebView()Lg;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "Could not get the opening WebView."

    invoke-static {v0}, Lcom/google/ads/util/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v0}, La;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
