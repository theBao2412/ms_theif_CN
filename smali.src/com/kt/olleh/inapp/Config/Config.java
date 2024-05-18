package com.kt.olleh.inapp.Config;

import android.util.Log;

public class Config
{
  public static final String B007 = "B007";
  public static final String B007_msg = "구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
  public static final String B009 = "B009";
  public static final String B009_msg = "일별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
  public static final String B010 = "B010";
  public static final String B010_msg = "월별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
  public static boolean DEBUG = false;
  public static String TAG = "Config";
  public static String VERSION;
  public static final boolean bIsStandAlone = false;
  public static boolean bTBserver = false;
  public static final int iLibSetting = 0;
  
  public static void LogD(String paramString1, String paramString2)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.d(TAG, localStringBuffer.toString());
    }
  }
  
  public static void LogD(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.d(TAG, localStringBuffer.toString(), paramThrowable);
    }
  }
  
  public static void LogE(String paramString1, String paramString2)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.e(TAG, localStringBuffer.toString());
    }
  }
  
  public static void LogE(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.e(TAG, localStringBuffer.toString(), paramThrowable);
    }
  }
  
  public static void LogI(String paramString1, String paramString2)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.i(TAG, localStringBuffer.toString());
    }
  }
  
  public static void LogI(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.i(TAG, localStringBuffer.toString(), paramThrowable);
    }
  }
  
  public static void LogW(String paramString1, String paramString2)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.w(TAG, localStringBuffer.toString());
    }
  }
  
  public static void LogW(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (DEBUG)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append("[");
      localStringBuffer.append(paramString1);
      localStringBuffer.append("] ");
      localStringBuffer.append(paramString2);
      Log.w(TAG, localStringBuffer.toString(), paramThrowable);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.kt.olleh.inapp.Config.Config
 * JD-Core Version:    0.7.0.1
 */