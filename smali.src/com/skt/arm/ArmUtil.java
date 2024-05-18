package com.skt.arm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Locale;

public class ArmUtil
{
  public static boolean ARMServiceCheck(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext.getApplicationInfo(paramString, 0);
      ArmLog.d(ArmLog.tag, " T store ARM is found");
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      ArmLog.d(ArmLog.tag, " T store ARM is not found");
    }
    return false;
  }
  
  public static void ShowAppDetailPage(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 9)
    {
      paramContext.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:com.skt.skaf.OA00018282")));
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
    localIntent.putExtra("com.android.settings.ApplicationPkgName", "com.skt.skaf.OA00018282");
    localIntent.putExtra("pkg", "com.skt.skaf.OA00018282");
    paramContext.startActivity(localIntent);
  }
  
  public static String byteToHex(byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramInt == 0)) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfByte.length;
    paramInt = 0;
    for (;;)
    {
      if (paramInt >= i) {
        return localStringBuffer.toString();
      }
      localStringBuffer.append(Integer.toString((paramArrayOfByte[paramInt] & 0xFF) + 256, 16).substring(1));
      paramInt += 1;
    }
  }
  
  public static boolean checkNeedUpdateARMService(Context paramContext, String paramString)
  {
    paramContext = getApplicationVersion(paramContext, paramString);
    if ((paramContext == null) || (paramContext.equals(""))) {
      return false;
    }
    if (2.56F <= Float.valueOf(paramContext).floatValue()) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public static boolean checkTStoreInstalled(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext.getApplicationInfo(paramString, 0);
      ArmLog.d(ArmLog.tag, " T store is found");
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      ArmLog.d(ArmLog.tag, " T store is not found");
    }
    return false;
  }
  
  public static String extractHostFromURL(String paramString)
  {
    return paramString.split("/")[2].split(":")[0];
  }
  
  public static int extractPortFromURL(String paramString)
  {
    return Integer.parseInt(paramString.split("/")[2].split(":")[1]);
  }
  
  public static String getApplicationVersion(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "";
  }
  
  public static boolean getHoneyCombCheck()
  {
    ArmLog.d("Arm plug-in", Build.VERSION.RELEASE);
    String str = Build.VERSION.RELEASE;
    try
    {
      ArmLog.d("Arm plug-in", str.toCharArray()[0]);
      if (str.toCharArray()[0] == '3')
      {
        ArmLog.d("Arm plug-in", "HONEY COMB DEVICE");
        return true;
      }
      ArmLog.d("Arm plug-in", "NOT HONEY COMB DEVICE");
      return false;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public static String getLanguageSet(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().locale.getLanguage();
  }
  
  public static String getMDN(Context paramContext)
  {
    try
    {
      Object localObject = ((TelephonyManager)paramContext.getSystemService("phone")).getLine1Number();
      paramContext = (Context)localObject;
      if (localObject == null) {
        paramContext = "Insert USIM";
      }
      StringBuffer localStringBuffer = new StringBuffer();
      localObject = paramContext;
      if (paramContext.toCharArray()[0] == '+')
      {
        localStringBuffer.append('0');
        localStringBuffer.append(paramContext.substring(3, paramContext.length()));
        localObject = localStringBuffer.toString();
      }
      return localObject;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static String getModelCode(Context paramContext)
  {
    String str = "SP01";
    Object localObject1 = new File("/system/skt/ua/uafield.dat");
    Object localObject2;
    if (((File)localObject1).exists())
    {
      ArmLog.d("Arm plug-in", "File YES");
      if (!((File)localObject1).exists()) {
        break label182;
      }
      localObject1 = str;
      localObject2 = str;
    }
    for (;;)
    {
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(new FileReader("/system/skt/ua/uafield.dat"));
        paramContext = str;
        localObject1 = paramContext;
        localObject2 = paramContext;
        str = localBufferedReader.readLine();
        if (str != null) {
          continue;
        }
        localObject1 = paramContext;
        localObject2 = paramContext;
        localBufferedReader.close();
      }
      catch (FileNotFoundException paramContext)
      {
        paramContext.printStackTrace();
        paramContext = (Context)localObject1;
        continue;
      }
      catch (IOException paramContext)
      {
        paramContext.printStackTrace();
        paramContext = (Context)localObject2;
        continue;
      }
      ArmLog.d("Arm plug-in", "modelcode == " + paramContext);
      if (paramContext != null)
      {
        localObject1 = paramContext;
        if (!paramContext.equals("")) {}
      }
      else
      {
        localObject1 = "SP01";
      }
      return localObject1;
      ArmLog.d("Arm plug-in", "File No");
      break;
      localObject1 = paramContext;
      localObject2 = paramContext;
      paramContext = str.substring(5, 9);
      localObject1 = paramContext;
      localObject2 = paramContext;
      ArmLog.d("Arm plug-in", "SKT");
      continue;
      label182:
      paramContext = getOtherModelCode(paramContext);
    }
  }
  
  public static String getNotPermissionMsg(Context paramContext)
  {
    Object localObject2 = null;
    ArrayList localArrayList = new ArrayList();
    String str = paramContext.getPackageName();
    Object localObject1 = "";
    int i;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 4096);
      paramContext = paramContext.requestedPermissions;
      if (paramContext == null)
      {
        paramContext = "\nandroid.permission.ACCESS_WIFI_STATE\nandroid.permission.ACCESS_NETWORK_STATE\nandroid.permission.READ_PHONE_STATE\nandroid.permission.INTERNET";
        return paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
        paramContext = localObject2;
      }
      i = 0;
    }
    for (;;)
    {
      if (i >= paramContext.length)
      {
        if (!localArrayList.contains("android.permission.ACCESS_WIFI_STATE")) {
          localObject1 = "\nandroid.permission.ACCESS_WIFI_STATE";
        }
        paramContext = (Context)localObject1;
        if (!localArrayList.contains("android.permission.ACCESS_NETWORK_STATE")) {
          paramContext = localObject1 + "\n" + "android.permission.ACCESS_NETWORK_STATE";
        }
        localObject1 = paramContext;
        if (!localArrayList.contains("android.permission.READ_PHONE_STATE")) {
          localObject1 = paramContext + "\n" + "android.permission.READ_PHONE_STATE";
        }
        paramContext = (Context)localObject1;
        if (localArrayList.contains("android.permission.INTERNET")) {
          break;
        }
        return localObject1 + "\n" + "android.permission.INTERNET";
      }
      localArrayList.add(paramContext[i]);
      i += 1;
    }
  }
  
  public static String getOSVersion()
  {
    return Build.VERSION.RELEASE;
  }
  
  public static String getOtherModelCode(Context paramContext)
  {
    Object localObject = Build.MODEL;
    ArmLog.d("Arm plug-in", "Model == " + (String)localObject);
    localObject = new String[61];
    localObject[0] = "Desire";
    localObject[1] = "A853";
    localObject[2] = "X10i";
    localObject[3] = "NexusOne(SKT)";
    localObject[4] = "MB525";
    localObject[5] = "MB501";
    localObject[6] = "SHW-M200S";
    localObject[7] = "LT15i";
    localObject[8] = "ST18i";
    localObject[9] = "SHW-M420S";
    localObject[10] = "NexusOne(KT)";
    localObject[11] = "IM-A630K";
    localObject[12] = "SHW-M130K";
    localObject[13] = "SHW-M130L";
    localObject[14] = "SHW-M200K";
    localObject[15] = "SHW-M250K";
    localObject[16] = "IM-A710K";
    localObject[17] = "KU3700";
    localObject[18] = "SHW-M250L";
    localObject[19] = "IM-A720L";
    localObject[20] = "LU3700";
    localObject[21] = "SHW-M180L";
    localObject[22] = "SHW-M290K";
    localObject[23] = "KU5900";
    localObject[24] = "IM-A750K";
    localObject[25] = "IM-A770K";
    localObject[26] = "MB861";
    localObject[27] = "A9191";
    localObject[28] = "SHW-M220L";
    localObject[29] = "LU3000";
    localObject[30] = "LU6800";
    localObject[31] = "LU3100";
    localObject[32] = "IM-A690L";
    localObject[33] = "IM-A725L";
    localObject[34] = "IM-A780L";
    localObject[35] = "HTC-X515E";
    localObject[36] = "HTC-S710E";
    localObject[37] = "IM-T100K";
    localObject[38] = "LU6200";
    localObject[39] = "SHV-E120L";
    localObject[40] = "SHV-E160L";
    localObject[41] = "SHV-E120K";
    localObject[42] = "SHV-160K";
    localObject[43] = "IM-A810K";
    localObject[44] = "SHW-M420K";
    localObject[45] = "KM-S220H";
    localObject[46] = "IM-A775C";
    localObject[47] = "SHW-M340K";
    localObject[48] = "KU5400";
    localObject[49] = "XT910K";
    localObject[50] = "HTC-X315E";
    localObject[51] = "KM-S300";
    localObject[52] = "SHW-M340L";
    localObject[53] = "LU5400";
    localObject[54] = "LU6500";
    localObject[55] = "IM-A820L";
    localObject[56] = "I-L1";
    localObject[57] = "LG-F100L";
    localObject[58] = "LG-F120K";
    localObject[59] = "LG-F120L";
    localObject[60] = "SHV-E140L";
    Hashtable localHashtable = new Hashtable();
    int i = 0;
    for (;;)
    {
      if (i >= localObject.length)
      {
        if (!Build.MODEL.equals("Nexus One")) {
          break label952;
        }
        if (!isOtherCarrier(paramContext)) {
          break;
        }
        return (String)localHashtable.get("NexusOne(SKT)");
      }
      localHashtable.put(localObject[i], new String[] { "HT14", "MT55", "SE02", "HT11", "MT57", "MT56", "SSNL", "SE06", "SE07", "SSO0", "KTW1", "KPWB", "KSWS", "ZZAJ", "SSNU", "SP01", "SKX1", "LGEM", "SP02", "SKX0", "LGEN", "ZZAL", "SP04", "LGEY", "SKX2", "SKX3", "MT60", "KTW4", "ZZAW", "LGFB", "LGEZ", "LGFC", "SKY0", "SKY1", "SKY2", "KTWS", "HT21", "SKT3", "LGFD", "T001", "T002", "SP07", "SP06", "SKY4", "SP05", "KKWJ", "SKY6", "SP09", "LGFF", "MT63", "HT22", "KKWK", "T004", "LGFI", "LGFJ", "SKY7", "T003", "LGFY", "LGFG", "LGFL", "T005" }[i]);
      i += 1;
    }
    return (String)localHashtable.get("NexusOne(KT)");
    label952:
    if (Build.MODEL.equals("Galaxy Nexus"))
    {
      if (isOtherCarrier(paramContext)) {
        return (String)localHashtable.get("SHW-M420S");
      }
      return (String)localHashtable.get("SHW-M420K");
    }
    if (Build.MODEL.equals("Nexus S"))
    {
      if (isOtherCarrier(paramContext)) {
        return (String)localHashtable.get("SHW-M200S");
      }
      return (String)localHashtable.get("SHW-M200K");
    }
    return (String)localHashtable.get(Build.MODEL);
  }
  
  public static boolean getPermissionCheck(Context paramContext)
  {
    boolean bool2 = false;
    Object localObject = null;
    ArrayList localArrayList = new ArrayList();
    String str = paramContext.getPackageName();
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(str, 4096);
      paramContext = paramContext.requestedPermissions;
      boolean bool1 = bool2;
      if (paramContext != null)
      {
        i = 0;
        if (i < paramContext.length) {
          break label119;
        }
        bool1 = bool2;
        if (localArrayList.contains("android.permission.ACCESS_WIFI_STATE"))
        {
          bool1 = bool2;
          if (localArrayList.contains("android.permission.ACCESS_NETWORK_STATE"))
          {
            bool1 = bool2;
            if (localArrayList.contains("android.permission.READ_PHONE_STATE"))
            {
              bool1 = bool2;
              if (localArrayList.contains("android.permission.INTERNET")) {
                bool1 = true;
              }
            }
          }
        }
      }
      return bool1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        int i;
        paramContext.printStackTrace();
        paramContext = localObject;
        continue;
        label119:
        localArrayList.add(paramContext[i]);
        i += 1;
      }
    }
  }
  
  public static int getServiceState(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    int i = 0;
    if (Integer.parseInt(Build.VERSION.RELEASE.split("\\.")[0]) >= 4) {}
    try
    {
      i = paramContext.getApplicationEnabledSetting("com.skt.skaf.OA00018282");
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public static String hexToASCII(String paramString)
  {
    if (paramString.length() % 2 != 0) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramString.length() - 1) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append((char)Integer.parseInt(paramString.substring(i, i + 2), 16));
      i += 2;
    }
  }
  
  public static boolean isEnableWifi(Context paramContext)
  {
    boolean bool = true;
    if (!((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) {
      bool = false;
    }
    return bool;
  }
  
  public static boolean isInstalledCombinedTstore(Context paramContext, String paramString)
  {
    if (getHoneyCombCheck()) {}
    do
    {
      return false;
      paramContext = getApplicationVersion(paramContext, paramString);
    } while ((paramContext == null) || (paramContext.equals("")));
    paramContext = paramContext.split("[.]");
    paramString = "2.90".split("[.]");
    int i = Integer.parseInt(paramContext[0]);
    int j = Integer.parseInt(paramContext[1]);
    int k = Integer.parseInt(paramString[0]);
    int m = Integer.parseInt(paramString[1]);
    boolean bool;
    if (i > k) {
      bool = true;
    }
    for (;;)
    {
      return bool;
      if ((i == k) && (j >= m)) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public static boolean isOtherCarrier(Context paramContext)
  {
    boolean bool2 = true;
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
    ArmLog.d("Arm plug-in", "isOtherCarrier====" + paramContext);
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (paramContext.contains("SKT")) {
        bool1 = false;
      }
    }
    return bool1;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmUtil
 * JD-Core Version:    0.7.0.1
 */