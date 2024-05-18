.class Lcom/tapjoy/TapjoyVideo$2;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->cacheAllVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 554
    const-string v8, "TapjoyVideo"

    const-string v9, "--- cacheAllVideos called ---"

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-wide/16 v0, 0x1f4

    .line 557
    .local v0, "SLEEP_TIME":J
    const-wide/16 v2, 0x2710

    .line 558
    .local v2, "TIMEOUT":J
    const/4 v5, 0x0

    .line 561
    .local v5, "elapsed":I
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->initialized:Z
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$7(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cacheVideos connection_type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cache3g: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->cache3g:Z
    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cacheWifi: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->cacheWifi:Z
    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->cache3g:Z
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mobile"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 587
    :cond_1
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->cacheWifi:Z
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 589
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, "state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 594
    const-string v8, "TapjoyVideo"

    const-string v9, "Media storage unavailable.  Aborting caching videos."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->videoNotifierError(I)V

    .line 614
    .end local v6    # "state":Ljava/lang/String;
    :goto_1
    return-void

    .line 565
    :cond_3
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 566
    add-int/lit16 v5, v5, 0x1f4

    .line 569
    int-to-long v8, v5

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 571
    const-string v8, "TapjoyVideo"

    const-string v9, "Error during cacheVideos.  Timeout while waiting for initVideos to finish."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 575
    :catch_0
    move-exception v4

    .line 577
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "TapjoyVideo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception in cacheAllVideos: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "state":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$13(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;
    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$12(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/TapjoyVideoObject;

    iget-object v7, v8, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 605
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # invokes: Lcom/tapjoy/TapjoyVideo;->cacheVideo(Ljava/lang/String;)V
    invoke-static {v8, v7}, Lcom/tapjoy/TapjoyVideo;->access$14(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    .line 602
    .end local v7    # "url":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$10(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I
    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$11(Lcom/tapjoy/TapjoyVideo;)I

    move-result v9

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # getter for: Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$12(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-gtz v8, :cond_4

    .line 613
    .end local v6    # "state":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    # invokes: Lcom/tapjoy/TapjoyVideo;->printCachedVideos()V
    invoke-static {v8}, Lcom/tapjoy/TapjoyVideo;->access$15(Lcom/tapjoy/TapjoyVideo;)V

    goto :goto_1

    .line 610
    :cond_7
    const-string v8, "TapjoyVideo"

    const-string v9, " * Skipping caching videos because of video flags and connection_type..."

    invoke-static {v8, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
