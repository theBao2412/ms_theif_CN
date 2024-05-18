.class Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;
.super Ljava/lang/Object;
.source "BNVSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Nexon/MapleThief/BNVSoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BNVPlaySoundInfo"
.end annotation


# instance fields
.field m_nKey:I

.field m_nPlayID:I

.field final synthetic this$0:Lcom/Nexon/MapleThief/BNVSoundPool;


# direct methods
.method constructor <init>(Lcom/Nexon/MapleThief/BNVSoundPool;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object p1, p0, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->this$0:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nKey:I

    .line 24
    iput v0, p0, Lcom/Nexon/MapleThief/BNVSoundPool$BNVPlaySoundInfo;->m_nPlayID:I

    return-void
.end method
