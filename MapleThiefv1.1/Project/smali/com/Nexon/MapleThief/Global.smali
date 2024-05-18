.class Lcom/Nexon/MapleThief/Global;
.super Ljava/lang/Object;
.source "ItarosActivity.java"


# static fields
.field public static final INSTALL_CHECK_FILE_NAME:Ljava/lang/String; = "Install.txt"

.field public static final INSTALL_CHECK_PROV_NAME:Ljava/lang/String; = "prov.txt"

.field public static final INSTALL_FILE_NAME:Ljava/lang/String; = "Resource.zip"

.field public static final TAG:Ljava/lang/String; = "Debug_Android"

.field public static final USING_KOREAN:Z = true

.field public static WebUrl:Ljava/lang/String;

.field public static b_check:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/Nexon/MapleThief/Global;->b_check:Z

    .line 94
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
