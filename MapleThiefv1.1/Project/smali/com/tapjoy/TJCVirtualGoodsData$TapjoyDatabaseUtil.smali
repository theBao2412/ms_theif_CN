.class public Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;
.super Ljava/lang/Object;
.source "TJCVirtualGoodsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCVirtualGoodsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TapjoyDatabaseUtil"
.end annotation


# static fields
.field public static db:Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;

    .line 1039
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    return-void
.end method

.method public static getTapjoyDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1050
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;

    if-nez v0, :cond_0

    .line 1051
    new-instance v0, Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;

    .line 1053
    :cond_0
    sget-object v0, Lcom/tapjoy/TJCVirtualGoodsData$TapjoyDatabaseUtil;->db:Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;

    invoke-virtual {v0}, Lcom/tapjoy/TJCVirtualGoodsData$TJCSQLLiteDatabase;->getTapjoyDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
