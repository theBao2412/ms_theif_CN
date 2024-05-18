package com.chartboost.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public class CBUtility
{
  private static String ANDROID_AUID = null;
  public static final int ANDROID_AUID_COOKIE_FLAG = 1;
  public static final String ANDROID_AUID_COOKIE_KEY = "cb_auid";
  public static final String ANDROID_AUID_COOKIE_PREFIX = "android-";
  public static final String AUID_STATIC_EMULATOR = "ffff";
  public static final String AUID_STATIC_ERROR = "unknown";
  public static final String PREFERENCES_FILE = "ChartBoost.cb";
  public static final String PREFERENCES_SDCARD_PATH = "/Android/data/com.chartboost.sdk/files";
  
  public static String getAUID(Context paramContext)
  {
    if (ANDROID_AUID != null) {
      return ANDROID_AUID;
    }
    Object localObject1 = null;
    int j = 1;
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("ChartBoost.cb", 1);
    Object localObject3 = localSharedPreferences.getString("cb_auid", null);
    paramContext = (Context)localObject1;
    if (localObject3 != null) {
      paramContext = (Context)localObject3;
    }
    localObject3 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/com.chartboost.sdk/files" + "/" + "ChartBoost.cb");
    localObject1 = paramContext;
    int i = j;
    if (paramContext == null)
    {
      localObject1 = paramContext;
      i = j;
    }
    for (;;)
    {
      try
      {
        if (Environment.getExternalStorageState().equals("mounted"))
        {
          localObject1 = paramContext;
          i = j;
          if (((File)localObject3).isFile())
          {
            localStringBuffer = new StringBuffer("");
            localObject1 = new FileInputStream((File)localObject3);
            i = ((FileInputStream)localObject1).read();
            if (i != -1) {
              continue;
            }
            ((FileInputStream)localObject1).close();
            localObject1 = paramContext;
            i = j;
            if (localStringBuffer.length() == 40)
            {
              localObject1 = localStringBuffer.toString();
              i = 0;
            }
          }
        }
      }
      catch (Exception localException)
      {
        StringBuffer localStringBuffer;
        char c;
        localObject2 = paramContext;
        i = j;
        continue;
        paramContext = paramContext.toString();
        paramContext = "android-" + paramContext.replace("-", "");
      }
      paramContext = (Context)localObject1;
      if (localObject1 != null) {
        break label261;
      }
      paramContext = UUID.randomUUID();
      if (paramContext != null) {
        continue;
      }
      return "unknown";
      c = (char)i;
      localStringBuffer.append(c);
    }
    Object localObject2;
    label261:
    if ((!localSharedPreferences.edit().putString("cb_auid", paramContext).commit()) || (i != 0)) {}
    for (;;)
    {
      try
      {
        if (!((File)localObject3).exists()) {
          continue;
        }
        ((File)localObject3).delete();
        if (((File)localObject3).createNewFile())
        {
          localObject2 = new FileWriter((File)localObject3, false);
          ((FileWriter)localObject2).write(paramContext);
          ((FileWriter)localObject2).close();
        }
      }
      catch (IOException localIOException)
      {
        continue;
      }
      ANDROID_AUID = paramContext;
      return paramContext;
      return "unknown";
      ((File)localObject3).mkdirs();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.chartboost.sdk.CBUtility
 * JD-Core Version:    0.7.0.1
 */