.class Lnet/daum/adam/publisher/impl/c/h;
.super Lnet/daum/adam/publisher/impl/c/c;
.source "MraidCommandRegistry.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/daum/adam/publisher/impl/c/p;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 189
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/h;->b()V

    .line 196
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    if-eqz v1, :cond_0

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v0, 0x18000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/h;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 209
    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string v0, "\ube44\ub514\uc624 \uc7ac\uc0dd \uae30\ub2a5\uc774 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :catch_2
    move-exception v0

    .line 217
    const-string v0, "\ube44\ub514\uc624 \uc7ac\uc0dd \ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
