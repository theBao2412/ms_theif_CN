package com.google.ads;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;

public class InstallReceiver
  extends BroadcastReceiver
{
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      int i;
      String str;
      try
      {
        String[] arrayOfString = paramString1.split("&");
        int j = arrayOfString.length;
        i = 0;
        paramString1 = null;
        if (i < j)
        {
          Object localObject = arrayOfString[i];
          str = paramString1;
          if (!((String)localObject).startsWith("admob_")) {
            break label227;
          }
          localObject = ((String)localObject).substring("admob_".length()).split("=");
          str = URLEncoder.encode(localObject[0], "UTF-8");
          localObject = URLEncoder.encode(localObject[1], "UTF-8");
          if (paramString1 == null)
          {
            paramString1 = new StringBuilder(128);
            paramString1.append(str).append("=").append((String)localObject);
            str = paramString1;
            break label227;
          }
          paramString1.append("&");
          continue;
          return null;
        }
      }
      catch (UnsupportedEncodingException paramString1)
      {
        a.a("Could not create install URL.  Install not tracked.", paramString1);
      }
      while (paramString1 == null) {}
      paramString2 = URLEncoder.encode(paramString2, "UTF-8");
      paramString1.append("&").append("isu").append("=").append(paramString2);
      paramString2 = URLEncoder.encode(paramString3, "UTF-8");
      paramString1.append("&").append("app_id").append("=").append(paramString2);
      paramString1 = "http://a.admob.com/f0?" + paramString1.toString();
      return paramString1;
      label227:
      i += 1;
      paramString1 = str;
    }
  }
  
  public void forwardIntent(Context paramContext, Intent paramIntent)
  {
    try
    {
      Object localObject = paramContext.getPackageManager();
      if (localObject != null)
      {
        ActivityInfo localActivityInfo = ((PackageManager)localObject).getReceiverInfo(new ComponentName(paramContext, InstallReceiver.class), 128);
        if ((localActivityInfo != null) && (localActivityInfo.metaData != null))
        {
          localObject = localActivityInfo.metaData.keySet();
          if (localObject != null)
          {
            Iterator localIterator = ((Set)localObject).iterator();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              localObject = null;
              try
              {
                str = localActivityInfo.metaData.getString(str);
                localObject = str;
                if (!str.equals("com.google.android.apps.analytics.AnalyticsReceiver"))
                {
                  localObject = str;
                  ((BroadcastReceiver)Class.forName(str).newInstance()).onReceive(paramContext, paramIntent);
                  localObject = str;
                  a.a("Successfully forwarded install notification to " + str);
                }
              }
              catch (Exception localException)
              {
                a.b("Could not forward Market's INSTALL_REFERRER intent to " + (String)localObject, localException);
              }
            }
          }
        }
      }
      try
      {
        ((BroadcastReceiver)Class.forName("com.google.android.apps.analytics.AnalyticsReceiver").newInstance()).onReceive(paramContext, paramIntent);
        a.a("Successfully forwarded install notification to com.google.android.apps.analytics.AnalyticsReceiver");
        return;
      }
      catch (ClassNotFoundException paramContext)
      {
        a.d("Google Analytics not installed.");
        return;
      }
      catch (Exception paramContext)
      {
        a.b("Exception from the Google Analytics install receiver.", paramContext);
      }
    }
    catch (Exception paramContext)
    {
      a.b("Unhandled exception while forwarding install intents. Possibly lost some install information.", paramContext);
      return;
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      Object localObject = paramIntent.getStringExtra("referrer");
      String str = AdUtil.a(paramContext);
      localObject = a((String)localObject, str, paramContext.getPackageName());
      if (localObject != null) {
        a.d("Processing install from an AdMob ad (" + (String)localObject + ").");
      }
      localObject = (HttpURLConnection)new URL((String)localObject).openConnection();
      AdUtil.a((HttpURLConnection)localObject, paramContext.getApplicationContext());
      ((HttpURLConnection)localObject).setRequestProperty("X-Admob-Isu", str);
      ((HttpURLConnection)localObject).getResponseCode();
      forwardIntent(paramContext, paramIntent);
      return;
    }
    catch (Exception paramContext)
    {
      a.a("Unhandled exception processing Market install.", paramContext);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.InstallReceiver
 * JD-Core Version:    0.7.0.1
 */