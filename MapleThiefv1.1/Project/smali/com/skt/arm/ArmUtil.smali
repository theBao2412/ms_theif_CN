.class public Lcom/skt/arm/ArmUtil;
.super Ljava/lang/Object;
.source "ArmUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ARMServiceCheck(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "strPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 492
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 493
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    const-string v4, " T store ARM is found"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    const-string v4, " T store ARM is not found"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ShowAppDetailPage(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 447
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 448
    const-string v2, "package:com.skt.skaf.OA00018282"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 449
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 450
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 458
    .end local v1    # "packageURI":Landroid/net/Uri;
    :goto_0
    return-void

    .line 452
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v2, "com.android.settings.ApplicationPkgName"

    const-string v3, "com.skt.skaf.OA00018282"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "pkg"

    const-string v3, "com.skt.skaf.OA00018282"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static byteToHex([BI)Ljava/lang/String;
    .locals 6
    .param p0, "aybyBuf"    # [B
    .param p1, "buffLen"    # I

    .prologue
    .line 155
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    const/4 v2, 0x0

    .line 171
    :goto_0
    return-object v2

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 162
    :cond_2
    aget-byte v0, p0, v2

    .line 163
    .local v0, "bb":B
    and-int/lit16 v4, v0, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static checkNeedUpdateARMService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strPackageName"    # Ljava/lang/String;

    .prologue
    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "bRet":Z
    const v0, 0x4023d70a    # 2.56f

    .line 467
    .local v0, "COMBINE_ARM_VERSION":F
    invoke-static {p0, p1}, Lcom/skt/arm/ArmUtil;->getApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "strArmVersion":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    :cond_0
    const/4 v4, 0x0

    .line 483
    :goto_0
    return v4

    .line 474
    :cond_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 476
    .local v1, "CURRENT_ARM_VERSION":F
    const v4, 0x4023d70a    # 2.56f

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_2

    .line 477
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 483
    goto :goto_0

    .line 480
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static checkTStoreInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "strPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 507
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 508
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    const-string v4, " T store is found"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    const-string v4, " T store is not found"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "value":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "HostValue":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method public static extractPortFromURL(Ljava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "value":[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "HostValue":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 564
    const-string v1, ""

    .line 568
    .local v1, "strRetVal":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 569
    .local v0, "i":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v0    # "i":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 570
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getHoneyCombCheck()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 189
    const-string v3, "Arm plug-in"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 194
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    const-string v3, "Arm plug-in"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/4 v6, 0x0

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    aget-char v3, v3, v4

    const/16 v4, 0x33

    if-ne v3, v4, :cond_0

    .line 197
    const-string v3, "Arm plug-in"

    const-string v4, "HONEY COMB DEVICE"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x1

    .line 207
    :goto_0
    return v2

    .line 200
    :cond_0
    const-string v3, "Arm plug-in"

    const-string v4, "NOT HONEY COMB DEVICE"

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLanguageSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 319
    .local v0, "systemLocale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 32
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "telNo":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 35
    const-string v3, "Insert USIM"

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v1, "rtn":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 40
    .local v4, "temp":[C
    const/4 v5, 0x0

    aget-char v5, v4, v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_1

    .line 42
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 51
    .end local v1    # "rtn":Ljava/lang/StringBuffer;
    .end local v2    # "tManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "telNo":Ljava/lang/String;
    .end local v4    # "temp":[C
    :cond_1
    :goto_0
    return-object v3

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getModelCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v5, "SP01"

    .line 63
    .local v5, "strModelCode":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/skt/ua/uafield.dat"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 65
    const-string v6, "Arm plug-in"

    const-string v7, "File YES"

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 72
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/system/skt/ua/uafield.dat"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v3, "in":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 76
    .local v4, "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 86
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    :goto_2
    const-string v6, "Arm plug-in"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "modelcode == "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    :cond_0
    const-string v5, "SP01"

    .line 104
    .end local v5    # "strModelCode":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 67
    .restart local v5    # "strModelCode":Ljava/lang/String;
    :cond_2
    const-string v6, "Arm plug-in"

    const-string v7, "File No"

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x5

    const/16 v7, 0x9

    :try_start_1
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 80
    const-string v6, "Arm plug-in"

    const-string v7, "SKT"

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 87
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e2":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v1    # "e2":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->getOtherModelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method public static getNotPermissionMsg(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 378
    const/4 v5, 0x0

    .line 379
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v3, "listPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "mPackagename":Ljava/lang/String;
    const-string v0, ""

    .line 384
    .local v0, "Msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 385
    const/16 v8, 0x1000

    .line 384
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 390
    :goto_0
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 393
    .local v6, "usesPermission":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 394
    const-string v0, "\nandroid.permission.ACCESS_WIFI_STATE\nandroid.permission.ACCESS_NETWORK_STATE\nandroid.permission.READ_PHONE_STATE\nandroid.permission.INTERNET"

    .line 416
    :cond_0
    :goto_1
    return-object v0

    .line 386
    .end local v6    # "usesPermission":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "usesPermission":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v6

    if-lt v2, v7, :cond_5

    .line 405
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 406
    const-string v0, "\nandroid.permission.ACCESS_WIFI_STATE"

    .line 407
    :cond_2
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :cond_3
    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_4
    const-string v7, "android.permission.INTERNET"

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 403
    :cond_5
    aget-object v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOtherModelCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 265
    const-string v0, ""

    .line 266
    .local v0, "aaaaa":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 268
    const-string v5, "Arm plug-in"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Model == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v5, 0x3d

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "Desire"

    aput-object v5, v2, v8

    const-string v5, "A853"

    aput-object v5, v2, v9

    const-string v5, "X10i"

    aput-object v5, v2, v10

    const-string v5, "NexusOne(SKT)"

    aput-object v5, v2, v11

    const-string v5, "MB525"

    aput-object v5, v2, v12

    const/4 v5, 0x5

    const-string v6, "MB501"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "SHW-M200S"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "LT15i"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "ST18i"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    const-string v6, "SHW-M420S"

    aput-object v6, v2, v5

    const/16 v5, 0xa

    .line 270
    const-string v6, "NexusOne(KT)"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    const-string v6, "IM-A630K"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    const-string v6, "SHW-M130K"

    aput-object v6, v2, v5

    const/16 v5, 0xd

    const-string v6, "SHW-M130L"

    aput-object v6, v2, v5

    const/16 v5, 0xe

    const-string v6, "SHW-M200K"

    aput-object v6, v2, v5

    const/16 v5, 0xf

    const-string v6, "SHW-M250K"

    aput-object v6, v2, v5

    const/16 v5, 0x10

    const-string v6, "IM-A710K"

    aput-object v6, v2, v5

    const/16 v5, 0x11

    const-string v6, "KU3700"

    aput-object v6, v2, v5

    const/16 v5, 0x12

    .line 271
    const-string v6, "SHW-M250L"

    aput-object v6, v2, v5

    const/16 v5, 0x13

    const-string v6, "IM-A720L"

    aput-object v6, v2, v5

    const/16 v5, 0x14

    const-string v6, "LU3700"

    aput-object v6, v2, v5

    const/16 v5, 0x15

    const-string v6, "SHW-M180L"

    aput-object v6, v2, v5

    const/16 v5, 0x16

    const-string v6, "SHW-M290K"

    aput-object v6, v2, v5

    const/16 v5, 0x17

    const-string v6, "KU5900"

    aput-object v6, v2, v5

    const/16 v5, 0x18

    const-string v6, "IM-A750K"

    aput-object v6, v2, v5

    const/16 v5, 0x19

    const-string v6, "IM-A770K"

    aput-object v6, v2, v5

    const/16 v5, 0x1a

    .line 272
    const-string v6, "MB861"

    aput-object v6, v2, v5

    const/16 v5, 0x1b

    const-string v6, "A9191"

    aput-object v6, v2, v5

    const/16 v5, 0x1c

    const-string v6, "SHW-M220L"

    aput-object v6, v2, v5

    const/16 v5, 0x1d

    const-string v6, "LU3000"

    aput-object v6, v2, v5

    const/16 v5, 0x1e

    const-string v6, "LU6800"

    aput-object v6, v2, v5

    const/16 v5, 0x1f

    const-string v6, "LU3100"

    aput-object v6, v2, v5

    const/16 v5, 0x20

    const-string v6, "IM-A690L"

    aput-object v6, v2, v5

    const/16 v5, 0x21

    const-string v6, "IM-A725L"

    aput-object v6, v2, v5

    const/16 v5, 0x22

    const-string v6, "IM-A780L"

    aput-object v6, v2, v5

    const/16 v5, 0x23

    .line 273
    const-string v6, "HTC-X515E"

    aput-object v6, v2, v5

    const/16 v5, 0x24

    const-string v6, "HTC-S710E"

    aput-object v6, v2, v5

    const/16 v5, 0x25

    const-string v6, "IM-T100K"

    aput-object v6, v2, v5

    const/16 v5, 0x26

    const-string v6, "LU6200"

    aput-object v6, v2, v5

    const/16 v5, 0x27

    const-string v6, "SHV-E120L"

    aput-object v6, v2, v5

    const/16 v5, 0x28

    const-string v6, "SHV-E160L"

    aput-object v6, v2, v5

    const/16 v5, 0x29

    const-string v6, "SHV-E120K"

    aput-object v6, v2, v5

    const/16 v5, 0x2a

    const-string v6, "SHV-160K"

    aput-object v6, v2, v5

    const/16 v5, 0x2b

    .line 274
    const-string v6, "IM-A810K"

    aput-object v6, v2, v5

    const/16 v5, 0x2c

    const-string v6, "SHW-M420K"

    aput-object v6, v2, v5

    const/16 v5, 0x2d

    const-string v6, "KM-S220H"

    aput-object v6, v2, v5

    const/16 v5, 0x2e

    const-string v6, "IM-A775C"

    aput-object v6, v2, v5

    const/16 v5, 0x2f

    const-string v6, "SHW-M340K"

    aput-object v6, v2, v5

    const/16 v5, 0x30

    const-string v6, "KU5400"

    aput-object v6, v2, v5

    const/16 v5, 0x31

    const-string v6, "XT910K"

    aput-object v6, v2, v5

    const/16 v5, 0x32

    const-string v6, "HTC-X315E"

    aput-object v6, v2, v5

    const/16 v5, 0x33

    .line 275
    const-string v6, "KM-S300"

    aput-object v6, v2, v5

    const/16 v5, 0x34

    const-string v6, "SHW-M340L"

    aput-object v6, v2, v5

    const/16 v5, 0x35

    const-string v6, "LU5400"

    aput-object v6, v2, v5

    const/16 v5, 0x36

    const-string v6, "LU6500"

    aput-object v6, v2, v5

    const/16 v5, 0x37

    const-string v6, "IM-A820L"

    aput-object v6, v2, v5

    const/16 v5, 0x38

    const-string v6, "I-L1"

    aput-object v6, v2, v5

    const/16 v5, 0x39

    const-string v6, "LG-F100L"

    aput-object v6, v2, v5

    const/16 v5, 0x3a

    const-string v6, "LG-F120K"

    aput-object v6, v2, v5

    const/16 v5, 0x3b

    const-string v6, "LG-F120L"

    aput-object v6, v2, v5

    const/16 v5, 0x3c

    const-string v6, "SHV-E140L"

    aput-object v6, v2, v5

    .line 277
    .local v2, "arr_modelname":[Ljava/lang/String;
    const/16 v5, 0x3d

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "HT14"

    aput-object v5, v1, v8

    const-string v5, "MT55"

    aput-object v5, v1, v9

    const-string v5, "SE02"

    aput-object v5, v1, v10

    const-string v5, "HT11"

    aput-object v5, v1, v11

    const-string v5, "MT57"

    aput-object v5, v1, v12

    const/4 v5, 0x5

    const-string v6, "MT56"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "SSNL"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "SE06"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "SE07"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "SSO0"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "KTW1"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "KPWB"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "KSWS"

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "ZZAJ"

    aput-object v6, v1, v5

    const/16 v5, 0xe

    .line 278
    const-string v6, "SSNU"

    aput-object v6, v1, v5

    const/16 v5, 0xf

    const-string v6, "SP01"

    aput-object v6, v1, v5

    const/16 v5, 0x10

    const-string v6, "SKX1"

    aput-object v6, v1, v5

    const/16 v5, 0x11

    const-string v6, "LGEM"

    aput-object v6, v1, v5

    const/16 v5, 0x12

    const-string v6, "SP02"

    aput-object v6, v1, v5

    const/16 v5, 0x13

    const-string v6, "SKX0"

    aput-object v6, v1, v5

    const/16 v5, 0x14

    const-string v6, "LGEN"

    aput-object v6, v1, v5

    const/16 v5, 0x15

    const-string v6, "ZZAL"

    aput-object v6, v1, v5

    const/16 v5, 0x16

    const-string v6, "SP04"

    aput-object v6, v1, v5

    const/16 v5, 0x17

    const-string v6, "LGEY"

    aput-object v6, v1, v5

    const/16 v5, 0x18

    const-string v6, "SKX2"

    aput-object v6, v1, v5

    const/16 v5, 0x19

    const-string v6, "SKX3"

    aput-object v6, v1, v5

    const/16 v5, 0x1a

    const-string v6, "MT60"

    aput-object v6, v1, v5

    const/16 v5, 0x1b

    const-string v6, "KTW4"

    aput-object v6, v1, v5

    const/16 v5, 0x1c

    .line 279
    const-string v6, "ZZAW"

    aput-object v6, v1, v5

    const/16 v5, 0x1d

    const-string v6, "LGFB"

    aput-object v6, v1, v5

    const/16 v5, 0x1e

    const-string v6, "LGEZ"

    aput-object v6, v1, v5

    const/16 v5, 0x1f

    const-string v6, "LGFC"

    aput-object v6, v1, v5

    const/16 v5, 0x20

    const-string v6, "SKY0"

    aput-object v6, v1, v5

    const/16 v5, 0x21

    const-string v6, "SKY1"

    aput-object v6, v1, v5

    const/16 v5, 0x22

    const-string v6, "SKY2"

    aput-object v6, v1, v5

    const/16 v5, 0x23

    const-string v6, "KTWS"

    aput-object v6, v1, v5

    const/16 v5, 0x24

    const-string v6, "HT21"

    aput-object v6, v1, v5

    const/16 v5, 0x25

    const-string v6, "SKT3"

    aput-object v6, v1, v5

    const/16 v5, 0x26

    const-string v6, "LGFD"

    aput-object v6, v1, v5

    const/16 v5, 0x27

    const-string v6, "T001"

    aput-object v6, v1, v5

    const/16 v5, 0x28

    const-string v6, "T002"

    aput-object v6, v1, v5

    const/16 v5, 0x29

    const-string v6, "SP07"

    aput-object v6, v1, v5

    const/16 v5, 0x2a

    .line 280
    const-string v6, "SP06"

    aput-object v6, v1, v5

    const/16 v5, 0x2b

    const-string v6, "SKY4"

    aput-object v6, v1, v5

    const/16 v5, 0x2c

    const-string v6, "SP05"

    aput-object v6, v1, v5

    const/16 v5, 0x2d

    const-string v6, "KKWJ"

    aput-object v6, v1, v5

    const/16 v5, 0x2e

    const-string v6, "SKY6"

    aput-object v6, v1, v5

    const/16 v5, 0x2f

    const-string v6, "SP09"

    aput-object v6, v1, v5

    const/16 v5, 0x30

    const-string v6, "LGFF"

    aput-object v6, v1, v5

    const/16 v5, 0x31

    const-string v6, "MT63"

    aput-object v6, v1, v5

    const/16 v5, 0x32

    const-string v6, "HT22"

    aput-object v6, v1, v5

    const/16 v5, 0x33

    const-string v6, "KKWK"

    aput-object v6, v1, v5

    const/16 v5, 0x34

    const-string v6, "T004"

    aput-object v6, v1, v5

    const/16 v5, 0x35

    const-string v6, "LGFI"

    aput-object v6, v1, v5

    const/16 v5, 0x36

    const-string v6, "LGFJ"

    aput-object v6, v1, v5

    const/16 v5, 0x37

    const-string v6, "SKY7"

    aput-object v6, v1, v5

    const/16 v5, 0x38

    .line 281
    const-string v6, "T003"

    aput-object v6, v1, v5

    const/16 v5, 0x39

    const-string v6, "LGFY"

    aput-object v6, v1, v5

    const/16 v5, 0x3a

    const-string v6, "LGFG"

    aput-object v6, v1, v5

    const/16 v5, 0x3b

    const-string v6, "LGFL"

    aput-object v6, v1, v5

    const/16 v5, 0x3c

    const-string v6, "T005"

    aput-object v6, v1, v5

    .line 283
    .local v1, "arr_UACD":[Ljava/lang/String;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 285
    .local v3, "ht":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-lt v4, v5, :cond_0

    .line 288
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Nexus One"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->isOtherCarrier(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 290
    const-string v5, "NexusOne(SKT)"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 307
    :goto_1
    return-object v5

    .line 286
    :cond_0
    aget-object v5, v2, v4

    aget-object v6, v1, v4

    invoke-virtual {v3, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const-string v5, "NexusOne(KT)"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 294
    :cond_2
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Galaxy Nexus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->isOtherCarrier(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    const-string v5, "SHW-M420S"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 298
    :cond_3
    const-string v5, "SHW-M420K"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 300
    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "Nexus S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 301
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->isOtherCarrier(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    const-string v5, "SHW-M200S"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 304
    :cond_5
    const-string v5, "SHW-M200K"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    .line 307
    :cond_6
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1
.end method

.method public static getPermissionCheck(Landroid/content/Context;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 330
    const/4 v4, 0x0

    .line 331
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, "listPermission":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "mPackagename":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 337
    const/16 v8, 0x1000

    .line 336
    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 345
    :goto_0
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 348
    .local v5, "usesPermission":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v5

    if-lt v1, v7, :cond_1

    .line 354
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 355
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 357
    const-string v7, "android.permission.INTERNET"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    const/4 v6, 0x1

    .line 367
    .end local v1    # "i":I
    :cond_0
    return v6

    .line 339
    .end local v5    # "usesPermission":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "i":I
    .restart local v5    # "usesPermission":[Ljava/lang/String;
    :cond_1
    aget-object v7, v5, v1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getServiceState(Landroid/content/Context;)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 426
    .local v1, "packageM":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 427
    .local v2, "stateNum":I
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "version":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    .line 430
    :try_start_0
    const-string v4, "com.skt.skaf.OA00018282"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 436
    :cond_0
    :goto_0
    return v2

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hexToASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 240
    const/4 v4, 0x0

    .line 255
    :goto_0
    return-object v4

    .line 242
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1

    .line 255
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 248
    :cond_1
    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "output":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 253
    .local v0, "decimal":I
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public static isEnableWifi(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 115
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 116
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 117
    .local v2, "ni":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 119
    .local v1, "isWifiConn":Z
    if-nez v1, :cond_0

    .line 120
    const/4 v3, 0x0

    .line 123
    :cond_0
    return v3
.end method

.method public static isInstalledCombinedTstore(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 530
    const/4 v3, 0x0

    .line 531
    .local v3, "bRet":Z
    invoke-static {}, Lcom/skt/arm/ArmUtil;->getHoneyCombCheck()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 556
    :cond_0
    :goto_0
    return v9

    .line 534
    :cond_1
    const-string v0, "2.90"

    .line 535
    .local v0, "COMBINE_TSTORE_VERSION":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/skt/arm/ArmUtil;->getApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "strTstoreVersion":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 540
    const-string v10, "[.]"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "arrTstoreVersion":[Ljava/lang/String;
    const-string v10, "2.90"

    const-string v11, "[.]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "arrCombinedTstoreVersion":[Ljava/lang/String;
    aget-object v10, v2, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 544
    .local v6, "nTstoreFront":I
    aget-object v10, v2, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 546
    .local v7, "nTstoreRear":I
    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 547
    .local v4, "nCombinedTstoreFront":I
    aget-object v9, v1, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 549
    .local v5, "nCombinedTstoreRear":I
    if-le v6, v4, :cond_2

    .line 550
    const/4 v3, 0x1

    :goto_1
    move v9, v3

    .line 556
    goto :goto_0

    .line 551
    :cond_2
    if-ne v6, v4, :cond_3

    if-lt v7, v5, :cond_3

    .line 552
    const/4 v3, 0x1

    goto :goto_1

    .line 554
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isOtherCarrier(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 136
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 137
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "networkOperator":Ljava/lang/String;
    const-string v3, "Arm plug-in"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isOtherCarrier===="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    const-string v3, "SKT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v2, 0x0

    .line 151
    :cond_0
    return v2
.end method
