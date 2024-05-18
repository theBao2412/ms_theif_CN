.class Lcom/Nexon/MapleThief/BNVMediaPlayer;
.super Ljava/lang/Object;
.source "BNVSound.java"


# instance fields
.field private m_AudioManager:Landroid/media/AudioManager;

.field private m_Context:Landroid/content/Context;

.field private m_MediaPlayer:Landroid/media/MediaPlayer;

.field private m_fVolume:F

.field private m_isPlay:Z

.field private m_isSetVolume:Z

.field private m_strRootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-boolean v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isSetVolume:Z

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_fVolume:F

    .line 321
    iput-boolean v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    .line 328
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_Context:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_strRootPath:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_Context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_AudioManager:Landroid/media/AudioManager;

    .line 331
    return-void
.end method


# virtual methods
.method public Load(Ljava/lang/String;)Z
    .locals 12
    .param p1, "strFileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 349
    if-nez p1, :cond_0

    .line 434
    :goto_0
    return v8

    .line 352
    :cond_0
    const-string v7, ""

    .line 353
    .local v7, "strPath":Ljava/lang/String;
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_strRootPath:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 354
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_strRootPath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 358
    :goto_1
    const/4 v2, 0x0

    .line 359
    .local v2, "f":Ljava/io/File;
    const/4 v5, 0x0

    .line 360
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 365
    .local v4, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 366
    .end local v2    # "f":Ljava/io/File;
    .local v3, "f":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 369
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 391
    :try_start_3
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 392
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 393
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 395
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepare()V

    .line 397
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    .line 400
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v10, Lcom/Nexon/MapleThief/BNVMediaPlayer$1;

    invoke-direct {v10, p0}, Lcom/Nexon/MapleThief/BNVMediaPlayer$1;-><init>(Lcom/Nexon/MapleThief/BNVMediaPlayer;)V

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 410
    iget-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    new-instance v10, Lcom/Nexon/MapleThief/BNVMediaPlayer$2;

    invoke-direct {v10, p0}, Lcom/Nexon/MapleThief/BNVMediaPlayer$2;-><init>(Lcom/Nexon/MapleThief/BNVMediaPlayer;)V

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 427
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 434
    const/4 v8, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_1
    move-object v7, p1

    goto :goto_1

    .line 371
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 376
    :catch_1
    move-exception v0

    .line 378
    .local v0, "close_e":Ljava/io/IOException;
    :try_start_6
    const-string v9, "Debug_Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[BNVMediaPlayer]Load - Cannot close file : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 383
    .end local v0    # "close_e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 385
    .end local v3    # "f":Ljava/io/File;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "f":Ljava/io/File;
    :goto_2
    const-string v9, "Debug_Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[BNVMediaPlayer]Load - Cannot find file : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 419
    .local v1, "e":Ljava/io/IOException;
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 420
    const-string v9, "Debug_Android"

    const-string v10, "[BNVMediaPlayer]Load - MediaPlayer exception"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 428
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 430
    .restart local v0    # "close_e":Ljava/io/IOException;
    const-string v9, "Debug_Android"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[BNVMediaPlayer]Load - Cannot find file : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    .end local v0    # "close_e":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "f":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    goto :goto_2
.end method

.method public native OnCompleteCallback()V
.end method

.method public native OnPreparedCallback()V
.end method

.method public Pause()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 508
    const-string v0, "Debug_Android"

    const-string v1, "[BNVMediaPlayer]Pause - not sound loaded \n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public Play(Z)Z
    .locals 5
    .param p1, "isLoop"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 450
    iget-object v3, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 452
    const-string v2, "Debug_Android"

    const-string v3, "[BNVMediaPlayer]Play - not sound loaded \n"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 457
    :cond_1
    iget-object v3, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 465
    .local v0, "streamVolume":F
    iget-boolean v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isSetVolume:Z

    if-eqz v1, :cond_2

    .line 467
    iget v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_fVolume:F

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 479
    iget-object v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 480
    iget-object v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 482
    iput-boolean v2, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    move v1, v2

    .line 484
    goto :goto_0

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v0, v1

    .line 475
    iget-object v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public Release()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    .line 446
    :cond_0
    return-void
.end method

.method public Resume()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 524
    const-string v0, "Debug_Android"

    const-string v1, "[BNVMediaPlayer]Resume - not sound loaded \n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public SetVolume(F)V
    .locals 2
    .param p1, "fVolume"    # F

    .prologue
    const/4 v1, 0x0

    .line 335
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isSetVolume:Z

    .line 338
    iput p1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_fVolume:F

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isSetVolume:Z

    .line 343
    iput v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_fVolume:F

    goto :goto_0
.end method

.method public Stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 491
    const-string v0, "Debug_Android"

    const-string v1, "[BNVMediaPlayer]Stop - not sound loaded \n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 498
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 500
    iput-boolean v1, p0, Lcom/Nexon/MapleThief/BNVMediaPlayer;->m_isPlay:Z

    goto :goto_0
.end method
