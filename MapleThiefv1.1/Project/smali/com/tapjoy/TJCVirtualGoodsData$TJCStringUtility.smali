.class public Lcom/tapjoy/TJCVirtualGoodsData$TJCStringUtility;
.super Ljava/lang/Object;
.source "TJCVirtualGoodsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TJCStringUtility"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1118
    if-eqz p0, :cond_0

    .line 1119
    const-string v0, "COMMA"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "stringWithCommas"    # Ljava/lang/String;

    .prologue
    .line 1111
    if-eqz p0, :cond_0

    .line 1112
    const-string v0, "\'"

    const-string v1, "COMMA"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
