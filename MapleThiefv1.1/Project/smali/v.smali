.class public final Lv;
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
    .locals 4
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

    const/4 v3, 0x0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    instance-of v1, p3, Lg;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Lg;

    invoke-virtual {v1}, Lg;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Could not get adActivity to create the video."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Could not get adWebView to create the video."

    invoke-static {v0}, Lcom/google/ads/util/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "load"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ld;->e()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "activity was null while loading a video."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/ads/AdActivity;->showVideo(Landroid/widget/VideoView;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/ads/AdActivity;->getVideoView()Landroid/widget/VideoView;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "Could not get the VideoView for a video GMSG."

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    const-string v0, "Video is now playing."

    invoke-static {v0}, Lcom/google/ads/util/a;->d(Ljava/lang/String;)V

    const-string v0, "onVideoEvent"

    const-string v1, "{\'event\': \'playing\'}"

    invoke-static {p3, v0, v1}, La;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "pause"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_7
    const-string v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_8
    const-string v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0

    :cond_9
    const-string v2, "replay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto/16 :goto_0

    :cond_a
    const-string v2, "currentTime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "time"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "No \"time\" parameter!"

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movie action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/a;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
