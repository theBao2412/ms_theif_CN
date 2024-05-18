.class Lcom/Nexon/MapleThief/NativeClass;
.super Ljava/lang/Object;
.source "ItarosActivity.java"


# static fields
.field public static FPS:I

.field private static m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

.field private static m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

.field private static m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

.field private static m_Vibrator:Landroid/os/Vibrator;

.field private static m_isPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1974
    const/4 v0, 0x0

    sput-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Vibrator:Landroid/os/Vibrator;

    .line 1975
    const/4 v0, 0x0

    sput-boolean v0, Lcom/Nexon/MapleThief/NativeClass;->m_isPause:Z

    .line 1977
    const/16 v0, 0x21

    sput v0, Lcom/Nexon/MapleThief/NativeClass;->FPS:I

    .line 1980
    const-string v0, "BNVModule"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1968
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BGMLoad(Ljava/lang/String;)V
    .locals 1
    .param p0, "strFileName"    # Ljava/lang/String;

    .prologue
    .line 2099
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Load(Ljava/lang/String;)Z

    return-void
.end method

.method public static BGMPlay(Z)V
    .locals 1
    .param p0, "isLoop"    # Z

    .prologue
    .line 2101
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Play(Z)Z

    return-void
.end method

.method public static BGMRelease()V
    .locals 1

    .prologue
    .line 2100
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Release()V

    return-void
.end method

.method public static BGMStop()V
    .locals 1

    .prologue
    .line 2102
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->Stop()V

    return-void
.end method

.method public static BGMVolume(F)V
    .locals 1
    .param p0, "fVolume"    # F

    .prologue
    .line 2103
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVMediaPlayer;->SetVolume(F)V

    return-void
.end method

.method public static Init(Landroid/os/Vibrator;)V
    .locals 0
    .param p0, "v"    # Landroid/os/Vibrator;

    .prologue
    .line 1990
    sput-object p0, Lcom/Nexon/MapleThief/NativeClass;->m_Vibrator:Landroid/os/Vibrator;

    .line 1991
    return-void
.end method

.method public static InitActivity(Lcom/Nexon/MapleThief/ItarosActivity;)V
    .locals 0
    .param p0, "m_Act"    # Lcom/Nexon/MapleThief/ItarosActivity;

    .prologue
    .line 1985
    sput-object p0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    .line 1987
    return-void
.end method

.method public static InitSound(Lcom/Nexon/MapleThief/BNVSoundPool;Lcom/Nexon/MapleThief/BNVMediaPlayer;)V
    .locals 0
    .param p0, "sndPool"    # Lcom/Nexon/MapleThief/BNVSoundPool;
    .param p1, "mdaPlayer"    # Lcom/Nexon/MapleThief/BNVMediaPlayer;

    .prologue
    .line 2003
    sput-object p0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    .line 2004
    sput-object p1, Lcom/Nexon/MapleThief/NativeClass;->m_MediaPlayer2:Lcom/Nexon/MapleThief/BNVMediaPlayer;

    .line 2006
    return-void
.end method

.method public static Native_CallOtherProductPage()V
    .locals 1

    .prologue
    .line 2085
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->CallOtherProductPage()V

    .line 2087
    return-void
.end method

.method public static Native_Exit()V
    .locals 1

    .prologue
    .line 2020
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->Exit()V

    .line 2021
    return-void
.end method

.method public static Native_ExitPopup()V
    .locals 1

    .prologue
    .line 2024
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->ExitPopup()V

    .line 2025
    return-void
.end method

.method public static Native_GetDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2039
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->GetDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Native_GetExternalMemorySize()J
    .locals 2

    .prologue
    .line 2029
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->GetExternalMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Native_GetHeapFreeMemory()J
    .locals 2

    .prologue
    .line 2070
    const-wide/32 v0, 0xb71b00

    return-wide v0
.end method

.method public static Native_GetHeapTotalMemory()J
    .locals 2

    .prologue
    .line 2066
    const-wide/32 v0, 0xb71b00

    return-wide v0
.end method

.method public static Native_GetInternalMemorySize()J
    .locals 2

    .prologue
    .line 2034
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->GetInternalMemorySize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Native_GetPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2044
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->GetPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Native_RunInKeyPad()V
    .locals 1

    .prologue
    .line 2075
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->RunInKeyPad()V

    .line 2076
    return-void
.end method

.method public static Native_SetFps(I)V
    .locals 0
    .param p0, "fps"    # I

    .prologue
    .line 2080
    sput p0, Lcom/Nexon/MapleThief/NativeClass;->FPS:I

    .line 2081
    return-void
.end method

.method public static Native_StartAdBanner()V
    .locals 1

    .prologue
    .line 2054
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->downToAdView()V

    .line 2056
    return-void
.end method

.method public static Native_StopAdBanner()V
    .locals 1

    .prologue
    .line 2060
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0}, Lcom/Nexon/MapleThief/ItarosActivity;->upToAdView()V

    .line 2062
    return-void
.end method

.method public static Native_tryBuyItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "price"    # I

    .prologue
    .line 2049
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Activity:Lcom/Nexon/MapleThief/ItarosActivity;

    invoke-virtual {v0, p0, p1}, Lcom/Nexon/MapleThief/ItarosActivity;->tryBuyItem(Ljava/lang/String;I)V

    .line 2050
    return-void
.end method

.method public static native OnNativeBackKeyPress()V
.end method

.method public static native OnNativeBackKeyRelease()V
.end method

.method public static native OnNativeBuyResult(ILjava/lang/String;)V
.end method

.method public static native OnNativeConnectResult(I)V
.end method

.method public static native OnNativeDestroy()V
.end method

.method public static native OnNativeFrame()V
.end method

.method public static native OnNativeGetTapPointResult(I)V
.end method

.method public static native OnNativeInitialize()V
.end method

.method public static native OnNativeKeyPadDone([B)V
.end method

.method public static native OnNativeMenuKeyPress()V
.end method

.method public static native OnNativeMenuKeyRelease()V
.end method

.method public static native OnNativePath(Ljava/lang/String;)V
.end method

.method public static native OnNativePause()V
.end method

.method public static native OnNativeResume()V
.end method

.method public static native OnNativeSensorEventAccelerometer(FFF)V
.end method

.method public static native OnNativeSensorEventOrientation(FFF)V
.end method

.method public static native OnNativeSize(II)V
.end method

.method public static native OnNativeSmsResult(I)V
.end method

.method public static native OnNativeTouchMove(IIII)V
.end method

.method public static native OnNativeTouchPress(IIII)V
.end method

.method public static native OnNativeTouchRelease(IIII)V
.end method

.method public static native OnVFSInitialize(Ljava/io/FileDescriptor;JJ)V
.end method

.method public static OnVibrator(I)V
    .locals 3
    .param p0, "nMilli"    # I

    .prologue
    .line 2011
    sget-boolean v0, Lcom/Nexon/MapleThief/NativeClass;->m_isPause:Z

    if-eqz v0, :cond_1

    .line 2016
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 2015
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_Vibrator:Landroid/os/Vibrator;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public static Pause()V
    .locals 1

    .prologue
    .line 1995
    const/4 v0, 0x1

    sput-boolean v0, Lcom/Nexon/MapleThief/NativeClass;->m_isPause:Z

    .line 1996
    return-void
.end method

.method public static Resume()V
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x0

    sput-boolean v0, Lcom/Nexon/MapleThief/NativeClass;->m_isPause:Z

    .line 2000
    return-void
.end method

.method public static SoundLoad(Ljava/lang/String;I)V
    .locals 1
    .param p0, "strFileName"    # Ljava/lang/String;
    .param p1, "nKey"    # I

    .prologue
    .line 2091
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0, p0, p1}, Lcom/Nexon/MapleThief/BNVSoundPool;->Load(Ljava/lang/String;I)Z

    .line 2092
    return-void
.end method

.method public static SoundPlay(IZ)V
    .locals 1
    .param p0, "nKey"    # I
    .param p1, "isLoop"    # Z

    .prologue
    .line 2094
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0, p0, p1}, Lcom/Nexon/MapleThief/BNVSoundPool;->Play(IZ)Z

    return-void
.end method

.method public static SoundRelease(I)V
    .locals 1
    .param p0, "nKey"    # I

    .prologue
    .line 2093
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVSoundPool;->Release(I)V

    return-void
.end method

.method public static SoundStop(I)V
    .locals 1
    .param p0, "nKey"    # I

    .prologue
    .line 2095
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVSoundPool;->Stop(I)V

    return-void
.end method

.method public static SoundVolume(F)V
    .locals 1
    .param p0, "fVolume"    # F

    .prologue
    .line 2096
    sget-object v0, Lcom/Nexon/MapleThief/NativeClass;->m_SoundPool2:Lcom/Nexon/MapleThief/BNVSoundPool;

    invoke-virtual {v0, p0}, Lcom/Nexon/MapleThief/BNVSoundPool;->SetVolume(F)V

    return-void
.end method
