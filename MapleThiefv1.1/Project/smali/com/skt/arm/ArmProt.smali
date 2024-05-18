.class public Lcom/skt/arm/ArmProt;
.super Ljava/lang/Object;
.source "ArmProt.java"


# static fields
.field public static REQ_SEED_APP_NEW_VER:I

.field public static SIZE_DEVICECODE:B

.field public static SIZE_MDN:B

.field public static SIZE_MDN_MACADDRESS:B

.field public static SIZE_OSVERSION:B

.field public static SIZE_SEED_TYPE:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/16 v0, 0xc

    sput-byte v0, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    .line 5
    const/4 v0, 0x4

    sput-byte v0, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    .line 6
    const/16 v0, 0x14

    sput-byte v0, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    .line 7
    const/16 v0, 0x1c

    sput-byte v0, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    .line 8
    const/16 v0, 0x1e

    sput-byte v0, Lcom/skt/arm/ArmProt;->SIZE_OSVERSION:B

    .line 9
    const/16 v0, 0x4022

    sput v0, Lcom/skt/arm/ArmProt;->REQ_SEED_APP_NEW_VER:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
