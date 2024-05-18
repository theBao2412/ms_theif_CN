package com.skt.arm;

import android.util.Log;

public class ArmLog
{
  public static boolean mBLogEnable = false;
  public static String tag = "Arm plug-in";
  
  public static void d(String paramString1, String paramString2)
  {
    if (mBLogEnable) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (mBLogEnable) {
      Log.e(paramString1, paramString2);
    }
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (mBLogEnable) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (mBLogEnable) {
      Log.v(paramString1, paramString2);
    }
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (mBLogEnable) {
      Log.w(paramString1, paramString2);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmLog
 * JD-Core Version:    0.7.0.1
 */