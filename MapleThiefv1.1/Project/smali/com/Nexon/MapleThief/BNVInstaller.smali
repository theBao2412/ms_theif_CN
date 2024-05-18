.class Lcom/Nexon/MapleThief/BNVInstaller;
.super Ljava/lang/Object;
.source "BNVCommon.java"


# static fields
.field private static final DATA_VERSION:I = 0x1

.field private static final RESULT_IOEXCEPTION:I = 0x3

.field private static final RESULT_NO_MEMORY:I = 0x2

.field private static final RESULT_SUCCESS:I = 0x1

.field private static final RESULT_WRITE_FAILED:I = 0x4

.field private static m_nResult:I

.field public static m_strResultMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    sput-object v0, Lcom/Nexon/MapleThief/BNVInstaller;->m_strResultMessage:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/Nexon/MapleThief/BNVInstaller;->m_nResult:I

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckAlzza(Ljava/lang/String;)Z
    .locals 7
    .param p0, "strInstallPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "prov.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "strFlagFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "fin":Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 176
    .end local v1    # "fin":Ljava/io/FileReader;
    :goto_0
    return v3

    .line 171
    .restart local v1    # "fin":Ljava/io/FileReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 172
    goto :goto_0

    .line 174
    .end local v1    # "fin":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v3, v4

    .line 176
    goto :goto_0
.end method

.method public static CheckResource(Ljava/lang/String;)Z
    .locals 7
    .param p0, "strInstallPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Install.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "strFlagFile":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "fin":Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 152
    .end local v1    # "fin":Ljava/io/FileReader;
    :goto_0
    return v3

    .line 147
    .restart local v1    # "fin":Ljava/io/FileReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 148
    goto :goto_0

    .line 150
    .end local v1    # "fin":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v3, v4

    .line 152
    goto :goto_0
.end method

.method public static InstallResource(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/widget/ProgressBar;)Z
    .locals 21
    .param p0, "Assets"    # Landroid/content/res/AssetManager;
    .param p1, "strInstallPath"    # Ljava/lang/String;
    .param p2, "PercentBar"    # Landroid/widget/ProgressBar;

    .prologue
    .line 45
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Install.txt"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 46
    .local v16, "strFlagFile":Ljava/lang/String;
    const/4 v2, 0x0

    .line 50
    .local v2, "OldPercent":I
    const-wide/32 v17, 0x1400000

    .line 51
    .local v17, "zip_uncompress_size":J
    :try_start_0
    invoke-static {}, Lcom/Nexon/MapleThief/BNVInstaller;->getAvailableInternalMemorySize()J

    move-result-wide v12

    .line 54
    .local v12, "memory_size":J
    cmp-long v19, v12, v17

    if-gez v19, :cond_0

    .line 56
    const-string v19, "Zip"

    const-string v20, "available memory size < zip uncompress size"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/16 v19, 0x2

    const-string v20, "\uac8c\uc784\uc124\uce58\uc5d0 \ud544\uc694\ud55c \uc6a9\ub7c9\uc774 \ubd80\uc871\ud569\ub2c8\ub2e4. \uba54\ubaa8\ub9ac\uc6a9\ub7c9 \ud655\ubcf4\ud6c4 \uc7ac\uc124\uce58\ud574\uc8fc\uc138\uc694"

    invoke-static/range {v19 .. v20}, Lcom/Nexon/MapleThief/BNVInstaller;->SetResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/16 v19, 0x0

    .line 130
    .end local v12    # "memory_size":J
    :goto_0
    return v19

    .line 64
    .restart local v12    # "memory_size":J
    :cond_0
    const/4 v7, 0x0

    .local v7, "fi":I
    :goto_1
    const/16 v19, 0x2b

    move/from16 v0, v19

    if-le v7, v0, :cond_1

    .line 107
    :try_start_1
    new-instance v9, Ljava/io/FileWriter;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v9, "fout":Ljava/io/FileWriter;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/FileWriter;->write(I)V

    .line 109
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    const/16 v19, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    const/16 v19, 0x1

    const-string v20, "\uac8c\uc784\uc124\uce58 \uc131\uacf5."

    invoke-static/range {v19 .. v20}, Lcom/Nexon/MapleThief/BNVInstaller;->SetResult(ILjava/lang/String;)V

    .line 130
    const/16 v19, 0x1

    goto :goto_0

    .line 67
    .end local v9    # "fout":Ljava/io/FileWriter;
    :cond_1
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "snd"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".ogg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 71
    .local v10, "is":Ljava/io/InputStream;
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v11

    .line 72
    .local v11, "k":I
    new-array v4, v11, [B

    .line 73
    .local v4, "bytes":[B
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    .line 74
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 76
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Resource"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    .local v14, "outPath":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 78
    .local v15, "parent":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 79
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 80
    .local v9, "fout":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 81
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 82
    const/4 v4, 0x0

    check-cast v4, [B

    .line 84
    int-to-float v0, v7

    move/from16 v19, v0

    const/high16 v20, 0x422c0000    # 43.0f

    div-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v3, v0

    .line 85
    .local v3, "Percent":I
    if-eq v2, v3, :cond_2

    .line 87
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    move v2, v3

    .line 64
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 94
    .end local v3    # "Percent":I
    .end local v4    # "bytes":[B
    .end local v7    # "fi":I
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "fout":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "k":I
    .end local v12    # "memory_size":J
    .end local v14    # "outPath":Ljava/lang/String;
    .end local v15    # "parent":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 96
    .local v5, "e":Ljava/io/IOException;
    const-string v19, "Zip"

    const-string v20, "Throw IOException, unpack zip file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v19, 0x3

    const-string v20, "\uc778\uc2a4\ud1a8 \uacfc\uc815\uc5d0\uc11c \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc124\uce58\ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static/range {v19 .. v20}, Lcom/Nexon/MapleThief/BNVInstaller;->SetResult(ILjava/lang/String;)V

    .line 101
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 111
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "fi":I
    .restart local v12    # "memory_size":J
    :catch_1
    move-exception v6

    .line 113
    .local v6, "e2":Ljava/io/IOException;
    const-string v19, "Zip"

    const-string v20, "Throw IOException, cannot create \'install.txt\' file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v19, 0x4

    const-string v20, "\uc778\uc2a4\ud1a8 \uacfc\uc815\uc5d0\uc11c \uc5d0\ub7ec\uac00 \ubc1c\uc0dd\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc124\uce58\ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static/range {v19 .. v20}, Lcom/Nexon/MapleThief/BNVInstaller;->SetResult(ILjava/lang/String;)V

    .line 118
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private static SetResult(ILjava/lang/String;)V
    .locals 2
    .param p0, "nResult"    # I
    .param p1, "strMessage"    # Ljava/lang/String;

    .prologue
    .line 37
    sput p0, Lcom/Nexon/MapleThief/BNVInstaller;->m_nResult:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Error Code("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/Nexon/MapleThief/BNVInstaller;->m_strResultMessage:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static externalMemoryAvailable()Z
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 8

    .prologue
    .line 196
    invoke-static {}, Lcom/Nexon/MapleThief/BNVInstaller;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 198
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 199
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 200
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 201
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    .line 203
    :goto_0
    return-wide v6

    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 182
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 183
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 185
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 186
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method
