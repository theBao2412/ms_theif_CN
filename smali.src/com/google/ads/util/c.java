package com.google.ads.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;

public final class c
{
  private static int a(Context paramContext, float paramFloat, int paramInt)
  {
    int i = paramInt;
    if ((paramContext.getApplicationInfo().flags & 0x2000) != 0) {
      i = (int)(paramInt / paramFloat);
    }
    return i;
  }
  
  public static int a(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    return a(paramContext, paramDisplayMetrics.density, paramDisplayMetrics.heightPixels);
  }
  
  public static int b(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    return a(paramContext, paramDisplayMetrics.density, paramDisplayMetrics.widthPixels);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.util.c
 * JD-Core Version:    0.7.0.1
 */