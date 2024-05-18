.class Lcom/Nexon/MapleThief/BNVSoundPool;
.super Ljava/lang/Object;
.source "BNVSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    }
.end annotation


# static fields
.field private static final MAX_CHANNEL:I = 0x2


# instance fields
.field private m_AudioManager:Landroid/media/AudioManager;

.field private m_Context:Landroid/content/Context;

.field private m_PlaySoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_SoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_SoundPool:Landroid/media/SoundPool;

.field private m_fVolume:F

.field private m_isSetVolume:Z

.field private m_strRootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_isSetVolume:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_fVolume:F

    .line 39
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_Context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_strRootPath:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_Context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_AudioManager:Landroid/media/AudioManager;

    .line 43
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundMap:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method public Load(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "strFileName"    # Ljava/lang/String;
    .param p2, "nKey"    # I

    .prologue
    .line 65
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 68
    :cond_1
    const-string v15, ""

    .line 69
    .local v15, "strPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_strRootPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_strRootPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 74
    :goto_1
    const/4 v10, 0x0

    .line 75
    .local v10, "f":Ljava/io/File;
    const/4 v12, 0x0

    .line 76
    .local v12, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 81
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    .end local v10    # "f":Ljava/io/File;
    .local v11, "f":Ljava/io/File;
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 85
    .end local v12    # "is":Ljava/io/FileInputStream;
    .local v13, "is":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    const-wide/16 v3, 0x0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v14

    .line 106
    .local v14, "nSoundID":I
    if-nez v14, :cond_3

    .line 108
    const-string v1, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BNVSoundPool]Load - Return 0 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v14    # "nSoundID":I
    :cond_2
    move-object/from16 v15, p1

    goto :goto_1

    .line 87
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v9

    .line 91
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 96
    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :catch_1
    move-exception v8

    .line 94
    .local v8, "close_e":Ljava/io/IOException;
    :try_start_4
    const-string v1, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BNVSoundPool]Load - Cannot close file : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 99
    .end local v8    # "close_e":Ljava/io/IOException;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    move-object v12, v13

    .end local v13    # "is":Ljava/io/FileInputStream;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 101
    .end local v11    # "f":Ljava/io/File;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "f":Ljava/io/File;
    :goto_3
    const-string v1, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BNVSoundPool]Load - Cannot find file : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 111
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "f":Ljava/io/File;
    .end local v12    # "is":Ljava/io/FileInputStream;
    .restart local v11    # "f":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/FileInputStream;
    .restart local v14    # "nSoundID":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 117
    :catch_3
    move-exception v8

    .line 119
    .restart local v8    # "close_e":Ljava/io/IOException;
    const-string v1, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BNVSoundPool]Load - Cannot find file : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 99
    .end local v8    # "close_e":Ljava/io/IOException;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "is":Ljava/io/FileInputStream;
    .end local v14    # "nSoundID":I
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v10    # "f":Ljava/io/File;
    .restart local v11    # "f":Ljava/io/File;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11    # "f":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    goto :goto_3
.end method

.method public Pause(I)V
    .locals 4
    .param p1, "nKey"    # I

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 270
    :goto_1
    return-void

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 264
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget v2, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    if-ne v2, p1, :cond_1

    .line 266
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_1

    .line 261
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public PauseAll()V
    .locals 4

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 277
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 282
    return-void

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 280
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->pause(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Play(IZ)Z
    .locals 11
    .param p1, "nKey"    # I
    .param p2, "isLoop"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, "streamVolume":F
    const-string v0, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[BNVSoundPool]Play - Key("

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") is come ! \n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v8, 0x0

    .line 168
    .local v8, "info2":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 170
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "info2":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v8, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 171
    .restart local v8    # "info2":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v8, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v0, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 172
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_isSetVolume:Z

    if-eqz v0, :cond_1

    .line 181
    iget v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_fVolume:F

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    .local v1, "nSoundID":I
    if-nez v1, :cond_2

    .line 197
    const-string v0, "Debug_Android"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[BNVSoundPool]Play - Key("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is wrong key value ! \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_1
    return v5

    .line 188
    .end local v1    # "nSoundID":I
    :cond_1
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v2, v0

    .line 189
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_AudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_0

    .line 201
    .restart local v1    # "nSoundID":I
    :cond_2
    const/4 v9, 0x0

    .line 206
    .local v9, "nResult":I
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 209
    if-nez v9, :cond_3

    .line 211
    const-string v0, "Debug_Android"

    const-string v3, "[BNVSoundPool]Play - soundpool play function return failed ! \n"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    :cond_3
    new-instance v7, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    invoke-direct {v7, p0}, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;-><init>(Lcom/Nexon/MapleThief/BNVSoundPool;)V

    .line 218
    .local v7, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iput p1, v7, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    .line 219
    iput v9, v7, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    .line 220
    iget-object v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v4

    .line 222
    goto :goto_1
.end method

.method public Release(I)V
    .locals 4
    .param p1, "nKey"    # I

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 142
    :goto_1
    return-void

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 133
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget v2, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    if-ne v2, p1, :cond_1

    .line 135
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 136
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 137
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ReleaseAll()V
    .locals 4

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 157
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 151
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 152
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Resume(I)V
    .locals 4
    .param p1, "nKey"    # I

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 298
    :goto_1
    return-void

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 292
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget v2, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    if-ne v2, p1, :cond_1

    .line 294
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ResumeAll()V
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 310
    return-void

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 308
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->resume(I)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public SetVolume(F)V
    .locals 2
    .param p1, "fVolume"    # F

    .prologue
    const/4 v1, 0x0

    .line 50
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_isSetVolume:Z

    .line 53
    iput p1, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_fVolume:F

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_isSetVolume:Z

    .line 58
    iput v1, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_fVolume:F

    goto :goto_0
.end method

.method public Stop(I)V
    .locals 4
    .param p1, "nKey"    # I

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 240
    :goto_1
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 233
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget v2, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    if-ne v2, p1, :cond_1

    .line 235
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 236
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 230
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public StopAll()V
    .locals 4

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 254
    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_PlaySoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    check-cast v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;

    .line 250
    .restart local v1    # "info":Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
    iget-object v2, p0, Lcom/Nexon/MapleThief/BNVSoundPool;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
