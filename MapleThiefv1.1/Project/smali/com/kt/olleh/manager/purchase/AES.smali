.class public Lcom/kt/olleh/manager/purchase/AES;
.super Ljava/lang/Object;
.source "AES.java"


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;

.field private mIv:Ljavax/crypto/spec/IvParameterSpec;

.field private mKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The key cannot be null or an empty string.."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The initial vector cannot be null or an empty string."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_3
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    .line 31
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 32
    .local v0, "md5":Ljava/security/MessageDigest;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/kt/olleh/manager/purchase/AES;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    .line 33
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    .line 34
    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 8
    .param p0, "base64Data"    # [B

    .prologue
    .line 110
    const/4 v2, 0x0

    check-cast v2, [B

    .line 112
    .local v2, "buf":[B
    :try_start_0
    const-string v6, "org.apache.commons.codec.binary.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 113
    .local v1, "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    .line 114
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const-string v6, "decodeBase64"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 115
    .local v3, "decodeBase64":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "decodeBase64":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "AES"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static encodeBase64([B)[B
    .locals 8
    .param p0, "binaryData"    # [B

    .prologue
    .line 94
    const/4 v2, 0x0

    check-cast v2, [B

    .line 96
    .local v2, "buf":[B
    :try_start_0
    const-string v6, "org.apache.commons.codec.binary.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    .line 98
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const-string v6, "encodeBase64"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 99
    .local v4, "encodeBase64":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "Base64":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "encodeBase64":Ljava/lang/reflect/Method;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "AES"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 70
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The cipher string cannot be null or an empty string."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 82
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/kt/olleh/manager/purchase/AES;->decodeBase64([B)[B

    move-result-object v1

    .line 84
    .local v1, "encryptedValue":[B
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 86
    .local v0, "decryptedValue":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 78
    .end local v0    # "decryptedValue":[B
    .end local v1    # "encryptedValue":[B
    :cond_3
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 43
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The cipher string cannot be null or an empty string."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 55
    :goto_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    .local v1, "utf8Value":[B
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 59
    .local v0, "encryptedValue":[B
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/kt/olleh/manager/purchase/AES;->encodeBase64([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 51
    .end local v0    # "encryptedValue":[B
    .end local v1    # "utf8Value":[B
    :cond_3
    iget-object v2, p0, Lcom/kt/olleh/manager/purchase/AES;->mCipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/kt/olleh/manager/purchase/AES;->mKey:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/kt/olleh/manager/purchase/AES;->mIv:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method
