package com.google.ads.util;

import android.util.Log;

public final class a
{
  public static void a(String paramString)
  {
    if (a("Ads", 3)) {
      Log.d("Ads", paramString);
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (a("Ads", 6)) {
      Log.e("Ads", paramString, paramThrowable);
    }
  }
  
  private static boolean a(String paramString, int paramInt)
  {
    boolean bool = false;
    if (paramInt >= 5) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (Log.isLoggable(paramString, paramInt))) {
        bool = true;
      }
      return bool;
    }
  }
  
  public static void b(String paramString)
  {
    if (a("Ads", 6)) {
      Log.e("Ads", paramString);
    }
  }
  
  public static void b(String paramString, Throwable paramThrowable)
  {
    if (a("Ads", 5)) {
      Log.w("Ads", paramString, paramThrowable);
    }
  }
  
  public static void c(String paramString)
  {
    if (a("Ads", 4)) {
      Log.i("Ads", paramString);
    }
  }
  
  public static void d(String paramString)
  {
    if (a("Ads", 2)) {
      Log.v("Ads", paramString);
    }
  }
  
  public static void e(String paramString)
  {
    if (a("Ads", 5)) {
      Log.w("Ads", paramString);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.util.a
 * JD-Core Version:    0.7.0.1
 */