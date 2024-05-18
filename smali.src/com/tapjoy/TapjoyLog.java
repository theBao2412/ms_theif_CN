package com.tapjoy;

import android.util.Log;

public class TapjoyLog
{
  private static final int MAX_STRING_SIZE = 4096;
  private static boolean showLog = false;
  
  public static void d(String paramString1, String paramString2)
  {
    if (showLog) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (showLog) {
      Log.e(paramString1, paramString2);
    }
  }
  
  public static void enableLogging(boolean paramBoolean)
  {
    Log.i("TapjoyLog", "enableLogging: " + paramBoolean);
    showLog = paramBoolean;
  }
  
  public static void i(String paramString1, String paramString2)
  {
    int i;
    if (showLog)
    {
      if (paramString2.length() > 4096) {
        i = 0;
      }
    }
    else {
      for (;;)
      {
        if (i > paramString2.length() / 4096) {
          return;
        }
        int k = (i + 1) * 4096;
        int j = k;
        if (k > paramString2.length()) {
          j = paramString2.length();
        }
        Log.i(paramString1, paramString2.substring(i * 4096, j));
        i += 1;
      }
    }
    Log.i(paramString1, paramString2);
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (showLog) {
      Log.v(paramString1, paramString2);
    }
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (showLog) {
      Log.w(paramString1, paramString2);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyLog
 * JD-Core Version:    0.7.0.1
 */