package com.tapjoy;

import android.os.Build;
import java.lang.reflect.Field;

public class TapjoyHardwareUtil
{
  public String getSerial()
  {
    String str2 = null;
    String str1 = str2;
    try
    {
      Field localField = Class.forName("android.os.Build").getDeclaredField("SERIAL");
      str1 = str2;
      if (!localField.isAccessible())
      {
        str1 = str2;
        localField.setAccessible(true);
      }
      str1 = str2;
      str2 = localField.get(Build.class).toString();
      str1 = str2;
      TapjoyLog.i("TapjoyHardwareUtil", "serial: " + str2);
      return str2;
    }
    catch (Exception localException)
    {
      TapjoyLog.e("TapjoyHardwareUtil", localException.toString());
    }
    return str1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyHardwareUtil
 * JD-Core Version:    0.7.0.1
 */