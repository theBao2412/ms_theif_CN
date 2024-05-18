package com.Nexon.MapleThief;

import android.os.Vibrator;
import java.io.FileDescriptor;

class NativeClass
{
  public static int FPS;
  private static ItarosActivity m_Activity;
  private static BNVMediaPlayer m_MediaPlayer2;
  private static BNVSoundPool m_SoundPool2;
  private static Vibrator m_Vibrator = null;
  private static boolean m_isPause = false;
  
  static
  {
    FPS = 33;
    System.loadLibrary("BNVModule");
  }
  
  public static void BGMLoad(String paramString)
  {
    m_MediaPlayer2.Load(paramString);
  }
  
  public static void BGMPlay(boolean paramBoolean)
  {
    m_MediaPlayer2.Play(paramBoolean);
  }
  
  public static void BGMRelease()
  {
    m_MediaPlayer2.Release();
  }
  
  public static void BGMStop()
  {
    m_MediaPlayer2.Stop();
  }
  
  public static void BGMVolume(float paramFloat)
  {
    m_MediaPlayer2.SetVolume(paramFloat);
  }
  
  public static void Init(Vibrator paramVibrator)
  {
    m_Vibrator = paramVibrator;
  }
  
  public static void InitActivity(ItarosActivity paramItarosActivity)
  {
    m_Activity = paramItarosActivity;
  }
  
  public static void InitSound(BNVSoundPool paramBNVSoundPool, BNVMediaPlayer paramBNVMediaPlayer)
  {
    m_SoundPool2 = paramBNVSoundPool;
    m_MediaPlayer2 = paramBNVMediaPlayer;
  }
  
  public static void Native_CallOtherProductPage()
  {
    m_Activity.CallOtherProductPage();
  }
  
  public static void Native_Exit()
  {
    m_Activity.Exit();
  }
  
  public static void Native_ExitPopup()
  {
    m_Activity.ExitPopup();
  }
  
  public static String Native_GetDeviceModel()
  {
    return m_Activity.GetDeviceModel();
  }
  
  public static long Native_GetExternalMemorySize()
  {
    return m_Activity.GetExternalMemorySize();
  }
  
  public static long Native_GetHeapFreeMemory()
  {
    return 12000000L;
  }
  
  public static long Native_GetHeapTotalMemory()
  {
    return 12000000L;
  }
  
  public static long Native_GetInternalMemorySize()
  {
    return m_Activity.GetInternalMemorySize();
  }
  
  public static String Native_GetPhoneNumber()
  {
    return m_Activity.GetPhoneNumber();
  }
  
  public static void Native_RunInKeyPad()
  {
    m_Activity.RunInKeyPad();
  }
  
  public static void Native_SetFps(int paramInt)
  {
    FPS = paramInt;
  }
  
  public static void Native_StartAdBanner()
  {
    m_Activity.downToAdView();
  }
  
  public static void Native_StopAdBanner()
  {
    m_Activity.upToAdView();
  }
  
  public static void Native_tryBuyItem(String paramString, int paramInt)
  {
    m_Activity.tryBuyItem(paramString, paramInt);
  }
  
  public static native void OnNativeBackKeyPress();
  
  public static native void OnNativeBackKeyRelease();
  
  public static native void OnNativeBuyResult(int paramInt, String paramString);
  
  public static native void OnNativeConnectResult(int paramInt);
  
  public static native void OnNativeDestroy();
  
  public static native void OnNativeFrame();
  
  public static native void OnNativeGetTapPointResult(int paramInt);
  
  public static native void OnNativeInitialize();
  
  public static native void OnNativeKeyPadDone(byte[] paramArrayOfByte);
  
  public static native void OnNativeMenuKeyPress();
  
  public static native void OnNativeMenuKeyRelease();
  
  public static native void OnNativePath(String paramString);
  
  public static native void OnNativePause();
  
  public static native void OnNativeResume();
  
  public static native void OnNativeSensorEventAccelerometer(float paramFloat1, float paramFloat2, float paramFloat3);
  
  public static native void OnNativeSensorEventOrientation(float paramFloat1, float paramFloat2, float paramFloat3);
  
  public static native void OnNativeSize(int paramInt1, int paramInt2);
  
  public static native void OnNativeSmsResult(int paramInt);
  
  public static native void OnNativeTouchMove(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static native void OnNativeTouchPress(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static native void OnNativeTouchRelease(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static native void OnVFSInitialize(FileDescriptor paramFileDescriptor, long paramLong1, long paramLong2);
  
  public static void OnVibrator(int paramInt)
  {
    if (m_isPause) {}
    while (m_Vibrator == null) {
      return;
    }
    m_Vibrator.vibrate(paramInt);
  }
  
  public static void Pause()
  {
    m_isPause = true;
  }
  
  public static void Resume()
  {
    m_isPause = false;
  }
  
  public static void SoundLoad(String paramString, int paramInt)
  {
    m_SoundPool2.Load(paramString, paramInt);
  }
  
  public static void SoundPlay(int paramInt, boolean paramBoolean)
  {
    m_SoundPool2.Play(paramInt, paramBoolean);
  }
  
  public static void SoundRelease(int paramInt)
  {
    m_SoundPool2.Release(paramInt);
  }
  
  public static void SoundStop(int paramInt)
  {
    m_SoundPool2.Stop(paramInt);
  }
  
  public static void SoundVolume(float paramFloat)
  {
    m_SoundPool2.SetVolume(paramFloat);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.Nexon.MapleThief.NativeClass
 * JD-Core Version:    0.7.0.1
 */