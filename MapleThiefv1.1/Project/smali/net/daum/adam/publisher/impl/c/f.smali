.class Lnet/daum/adam/publisher/impl/c/f;
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
    .line 145
    invoke-direct {p0, p1, p2}, Lnet/daum/adam/publisher/impl/c/c;-><init>(Ljava/util/Map;Lnet/daum/adam/publisher/impl/c/p;)V

    .line 146
    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lnet/daum/adam/publisher/impl/c/f;->b()V

    .line 153
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lnet/daum/adam/publisher/impl/c/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 156
    :cond_0
    const-string v0, "MraidCommandMakeCall"

    const-string v1, "\uc804\ud654\ubc88\ud638\ub97c \ub123\uc5b4\uc8fc\uc138\uc694"

    invoke-static {v0, v1}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    if-eqz v1, :cond_1

    .line 168
    const/high16 v0, 0x18000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lnet/daum/adam/publisher/impl/c/f;->b:Lnet/daum/adam/publisher/impl/c/p;

    invoke-virtual {v0}, Lnet/daum/adam/publisher/impl/c/p;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 172
    :try_start_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    const-string v0, "\uc804\ud654 \uae30\ub2a5\uc774 \uc9c0\uc6d0\ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    const-string v0, "\uc804\ud654 \uae30\ub2a5\uc744 \uc0ac\uc6a9\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-static {v0}, Lnet/daum/adam/publisher/impl/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
