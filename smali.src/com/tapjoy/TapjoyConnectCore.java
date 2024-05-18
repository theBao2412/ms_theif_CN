package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import org.w3c.dom.Document;

public class TapjoyConnectCore
{
  public static final String TAPJOY_CONNECT = "TapjoyConnect";
  private static String androidID;
  private static String appID;
  private static String appVersion;
  private static String carrierCountryCode;
  private static String carrierName;
  private static String clientPackage;
  private static Hashtable<String, String> connectFlags = null;
  private static String connectionType;
  private static Context context = null;
  private static float currencyMultiplier;
  private static String deviceCountryCode;
  private static String deviceID;
  private static String deviceLanguage;
  private static String deviceManufacturer;
  private static String deviceModel;
  private static String deviceOSVersion;
  private static String deviceScreenDensity;
  private static String deviceScreenLayoutSize;
  private static String deviceType;
  private static String libraryVersion;
  private static String macAddress;
  private static String matchingPackageNames = "";
  private static String mobileCountryCode;
  private static String mobileNetworkCode;
  private static String paidAppActionID;
  private static String platformName;
  private static String plugin;
  private static String referralURL;
  private static String sdkType;
  private static String secretKey;
  private static String serialID;
  private static String sha1MacAddress;
  private static String sha2DeviceID;
  private static String storeName;
  private static TapjoyConnectCore tapjoyConnectCore = null;
  private static TapjoyURLConnection tapjoyURLConnection = null;
  private static String userID;
  private static boolean videoEnabled;
  private static String videoIDs;
  private long elapsed_time = 0L;
  private Timer timer = null;
  
  static
  {
    androidID = "";
    deviceID = "";
    sha2DeviceID = "";
    macAddress = "";
    sha1MacAddress = "";
    serialID = "";
    deviceModel = "";
    deviceManufacturer = "";
    deviceType = "";
    deviceOSVersion = "";
    deviceCountryCode = "";
    deviceLanguage = "";
    appID = "";
    appVersion = "";
    libraryVersion = "";
    deviceScreenDensity = "";
    deviceScreenLayoutSize = "";
    userID = "";
    platformName = "";
    carrierName = "";
    carrierCountryCode = "";
    mobileCountryCode = "";
    mobileNetworkCode = "";
    connectionType = "";
    storeName = "";
    secretKey = "";
    clientPackage = "";
    referralURL = "";
    plugin = "native";
    sdkType = "";
    videoEnabled = false;
    videoIDs = "";
    currencyMultiplier = 1.0F;
    paidAppActionID = null;
  }
  
  public TapjoyConnectCore(Context paramContext)
  {
    context = paramContext;
    tapjoyURLConnection = new TapjoyURLConnection();
    init();
    TapjoyLog.i("TapjoyConnect", "URL parameters: " + getURLParams());
    new Thread(new ConnectThread()).start();
  }
  
  public static String getAppID()
  {
    return appID;
  }
  
  public static String getAwardPointsVerifier(long paramLong, int paramInt, String paramString)
  {
    try
    {
      paramString = TapjoyUtil.SHA256(appID + ":" + deviceID + ":" + paramLong + ":" + secretKey + ":" + paramInt + ":" + paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      TapjoyLog.e("TapjoyConnect", "getAwardPointsVerifier ERROR: " + paramString.toString());
    }
    return "";
  }
  
  public static String getCarrierName()
  {
    return carrierName;
  }
  
  public static String getClientPackage()
  {
    return clientPackage;
  }
  
  public static String getConnectionType()
  {
    String str1 = "";
    String str3 = str1;
    for (;;)
    {
      try
      {
        ConnectivityManager localConnectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
        if (localConnectivityManager == null) {
          break;
        }
        str3 = str1;
        if (localConnectivityManager.getActiveNetworkInfo() == null) {
          break;
        }
        str3 = str1;
        switch (localConnectivityManager.getActiveNetworkInfo().getType())
        {
        case 1: 
          str3 = str1;
          TapjoyLog.i("TapjoyConnect", "connectivity: " + localConnectivityManager.getActiveNetworkInfo().getType());
          str3 = str1;
          TapjoyLog.i("TapjoyConnect", "connection_type: " + str1);
          return str1;
        }
      }
      catch (Exception localException)
      {
        TapjoyLog.e("TapjoyConnect", "getConnectionType error: " + localException.toString());
        return str3;
      }
      str1 = "wifi";
      continue;
      String str2 = "mobile";
    }
    return "";
  }
  
  public static Context getContext()
  {
    return context;
  }
  
  public static String getDeviceID()
  {
    return deviceID;
  }
  
  public static String getEventVerifier(String paramString)
  {
    try
    {
      paramString = TapjoyUtil.SHA256(appID + ":" + deviceID + ":" + secretKey + ":" + paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      TapjoyLog.e("TapjoyConnect", "getEventVerifier ERROR: " + paramString.toString());
    }
    return "";
  }
  
  public static String getFlagValue(String paramString)
  {
    if (connectFlags != null) {
      return (String)connectFlags.get(paramString);
    }
    return "";
  }
  
  public static String getGenericURLParams()
  {
    return new StringBuilder(String.valueOf("")).append("app_id=").append(Uri.encode(appID)).append("&").toString() + getParamsWithoutAppID();
  }
  
  public static TapjoyConnectCore getInstance()
  {
    return tapjoyConnectCore;
  }
  
  public static int getLocalTapPointsTotal()
  {
    return context.getSharedPreferences("tjcPrefrences", 0).getInt("last_tap_points", -9999);
  }
  
  public static String getPackageNamesVerifier(long paramLong, String paramString)
  {
    try
    {
      paramString = TapjoyUtil.SHA256(appID + ":" + deviceID + ":" + paramLong + ":" + secretKey + ":" + paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      TapjoyLog.e("TapjoyConnect", "getVerifier ERROR: " + paramString.toString());
    }
    return "";
  }
  
  private static String getParamsWithoutAppID()
  {
    Object localObject1 = "" + "android_id=" + androidID + "&";
    if ((getFlagValue("sha_2_udid") != null) && (getFlagValue("sha_2_udid").equals("true"))) {}
    for (Object localObject2 = localObject1 + "sha2_udid=" + Uri.encode(sha2DeviceID) + "&";; localObject2 = localObject1 + "udid=" + Uri.encode(deviceID) + "&")
    {
      localObject1 = localObject2;
      if (macAddress != null)
      {
        localObject1 = localObject2;
        if (macAddress.length() > 0) {
          localObject1 = localObject2 + "sha1_mac_address=" + Uri.encode(sha1MacAddress) + "&";
        }
      }
      localObject2 = localObject1;
      if (serialID != null)
      {
        localObject2 = localObject1;
        if (serialID.length() > 0) {
          localObject2 = localObject1 + "serial_id=" + Uri.encode(serialID) + "&";
        }
      }
      localObject2 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(localObject2)).append("device_name=").append(Uri.encode(deviceModel)).append("&").toString())).append("device_manufacturer=").append(Uri.encode(deviceManufacturer)).append("&").toString())).append("device_type=").append(Uri.encode(deviceType)).append("&").toString())).append("os_version=").append(Uri.encode(deviceOSVersion)).append("&").toString())).append("country_code=").append(Uri.encode(deviceCountryCode)).append("&").toString())).append("language_code=").append(Uri.encode(deviceLanguage)).append("&").toString())).append("app_version=").append(Uri.encode(appVersion)).append("&").toString())).append("library_version=").append(Uri.encode(libraryVersion)).append("&").toString())).append("platform=").append(Uri.encode(platformName)).append("&").toString() + "display_multiplier=" + Uri.encode(Float.toString(currencyMultiplier));
      localObject1 = localObject2;
      if (carrierName.length() > 0) {
        localObject1 = new StringBuilder(String.valueOf(localObject2)).append("&").toString() + "carrier_name=" + Uri.encode(carrierName);
      }
      localObject2 = localObject1;
      if (carrierCountryCode.length() > 0) {
        localObject2 = new StringBuilder(String.valueOf(localObject1)).append("&").toString() + "carrier_country_code=" + Uri.encode(carrierCountryCode);
      }
      localObject1 = localObject2;
      if (mobileCountryCode.length() > 0) {
        localObject1 = new StringBuilder(String.valueOf(localObject2)).append("&").toString() + "mobile_country_code=" + Uri.encode(mobileCountryCode);
      }
      localObject2 = localObject1;
      if (mobileNetworkCode.length() > 0) {
        localObject2 = new StringBuilder(String.valueOf(localObject1)).append("&").toString() + "mobile_network_code=" + Uri.encode(mobileNetworkCode);
      }
      localObject1 = localObject2;
      if (deviceScreenDensity.length() > 0)
      {
        localObject1 = localObject2;
        if (deviceScreenLayoutSize.length() > 0) {
          localObject1 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(localObject2)).append("&").toString())).append("screen_density=").append(Uri.encode(deviceScreenDensity)).append("&").toString() + "screen_layout_size=" + Uri.encode(deviceScreenLayoutSize);
        }
      }
      connectionType = getConnectionType();
      localObject2 = localObject1;
      if (connectionType.length() > 0) {
        localObject2 = new StringBuilder(String.valueOf(localObject1)).append("&").toString() + "connection_type=" + Uri.encode(connectionType);
      }
      localObject1 = localObject2;
      if (plugin.length() > 0) {
        localObject1 = new StringBuilder(String.valueOf(localObject2)).append("&").toString() + "plugin=" + Uri.encode(plugin);
      }
      localObject2 = localObject1;
      if (sdkType.length() > 0) {
        localObject2 = new StringBuilder(String.valueOf(localObject1)).append("&").toString() + "sdk_type=" + Uri.encode(sdkType);
      }
      localObject1 = localObject2;
      if (storeName.length() > 0) {
        localObject1 = new StringBuilder(String.valueOf(localObject2)).append("&").toString() + "store_name=" + Uri.encode(storeName);
      }
      return localObject1;
    }
  }
  
  public static String getURLParams()
  {
    String str1 = getGenericURLParams() + "&";
    long l = System.currentTimeMillis() / 1000L;
    String str2 = getVerifier(l);
    return new StringBuilder(String.valueOf(str1)).append("timestamp=").append(l).append("&").toString() + "verifier=" + str2;
  }
  
  public static String getUserID()
  {
    return userID;
  }
  
  public static String getVerifier(long paramLong)
  {
    try
    {
      String str = TapjoyUtil.SHA256(appID + ":" + deviceID + ":" + paramLong + ":" + secretKey);
      return str;
    }
    catch (Exception localException)
    {
      TapjoyLog.e("TapjoyConnect", "getVerifier ERROR: " + localException.toString());
    }
    return "";
  }
  
  public static String getVideoParams()
  {
    String str = "";
    if (videoEnabled) {
      if (videoIDs.length() <= 0) {}
    }
    for (str = "video_offer_ids=" + videoIDs;; str = "hide_videos=true")
    {
      TapjoyLog.i("TapjoyConnect", "video parameters: " + str);
      return str;
    }
  }
  
  private static boolean handleConnectResponse(String paramString)
  {
    paramString = TapjoyUtil.buildDocument(paramString);
    Object localObject;
    Vector localVector;
    int i;
    int j;
    if (paramString != null)
    {
      localObject = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("PackageNames"));
      if ((localObject != null) && (((String)localObject).length() > 0))
      {
        localVector = new Vector();
        i = 0;
        j = ((String)localObject).indexOf(',', i);
        if (j != -1) {
          break label165;
        }
        TapjoyLog.i("TapjoyConnect", "parse: " + ((String)localObject).substring(i).trim());
        localVector.add(((String)localObject).substring(i).trim());
        matchingPackageNames = "";
        localObject = context.getPackageManager().getInstalledApplications(0).iterator();
      }
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Success"));
        if ((paramString != null) && (paramString.equals("true"))) {}
        return true;
        label165:
        TapjoyLog.i("TapjoyConnect", "parse: " + ((String)localObject).substring(i, j).trim());
        localVector.add(((String)localObject).substring(i, j).trim());
        i = j + 1;
        break;
      }
      ApplicationInfo localApplicationInfo = (ApplicationInfo)((Iterator)localObject).next();
      if (((localApplicationInfo.flags & 0x1) != 1) && (localVector.contains(localApplicationInfo.packageName)))
      {
        TapjoyLog.i("TapjoyConnect", "MATCH: installed packageName: " + localApplicationInfo.packageName);
        if (matchingPackageNames.length() > 0) {
          matchingPackageNames += ",";
        }
        matchingPackageNames += localApplicationInfo.packageName;
      }
    }
  }
  
  private boolean handlePayPerActionResponse(String paramString)
  {
    paramString = TapjoyUtil.buildDocument(paramString);
    if (paramString != null)
    {
      paramString = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Success"));
      if ((paramString != null) && (paramString.equals("true")))
      {
        TapjoyLog.i("TapjoyConnect", "Successfully sent completed Pay-Per-Action to Tapjoy server.");
        return true;
      }
      TapjoyLog.e("TapjoyConnect", "Completed Pay-Per-Action call failed.");
    }
    return false;
  }
  
  /* Error */
  private void init()
  {
    // Byte code:
    //   0: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   3: invokevirtual 469	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   6: astore 4
    //   8: getstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   11: ifnonnull +13 -> 24
    //   14: new 296	java/util/Hashtable
    //   17: dup
    //   18: invokespecial 517	java/util/Hashtable:<init>	()V
    //   21: putstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   24: aload 4
    //   26: ifnull +56 -> 82
    //   29: aload 4
    //   31: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   34: invokevirtual 520	android/content/Context:getPackageName	()Ljava/lang/String;
    //   37: sipush 128
    //   40: invokevirtual 524	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   43: astore 5
    //   45: aload 5
    //   47: ifnull +1578 -> 1625
    //   50: aload 5
    //   52: getfield 528	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   55: ifnull +1570 -> 1625
    //   58: getstatic 534	com/tapjoy/TapjoyConnectFlag:FLAG_ARRAY	[Ljava/lang/String;
    //   61: astore 6
    //   63: aload 6
    //   65: arraylength
    //   66: istore_2
    //   67: iconst_0
    //   68: istore_1
    //   69: iload_1
    //   70: iload_2
    //   71: if_icmplt +1455 -> 1526
    //   74: ldc 19
    //   76: ldc_w 536
    //   79: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   85: invokevirtual 540	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   88: ldc_w 542
    //   91: invokestatic 548	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   94: putstatic 81	com/tapjoy/TapjoyConnectCore:androidID	Ljava/lang/String;
    //   97: aload 4
    //   99: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   102: invokevirtual 520	android/content/Context:getPackageName	()Ljava/lang/String;
    //   105: iconst_0
    //   106: invokevirtual 552	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   109: getfield 557	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   112: putstatic 107	com/tapjoy/TapjoyConnectCore:appVersion	Ljava/lang/String;
    //   115: ldc_w 559
    //   118: putstatic 97	com/tapjoy/TapjoyConnectCore:deviceType	Ljava/lang/String;
    //   121: ldc_w 559
    //   124: putstatic 117	com/tapjoy/TapjoyConnectCore:platformName	Ljava/lang/String;
    //   127: getstatic 564	android/os/Build:MODEL	Ljava/lang/String;
    //   130: putstatic 93	com/tapjoy/TapjoyConnectCore:deviceModel	Ljava/lang/String;
    //   133: getstatic 567	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   136: putstatic 95	com/tapjoy/TapjoyConnectCore:deviceManufacturer	Ljava/lang/String;
    //   139: getstatic 572	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   142: putstatic 99	com/tapjoy/TapjoyConnectCore:deviceOSVersion	Ljava/lang/String;
    //   145: invokestatic 578	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   148: invokevirtual 581	java/util/Locale:getCountry	()Ljava/lang/String;
    //   151: putstatic 101	com/tapjoy/TapjoyConnectCore:deviceCountryCode	Ljava/lang/String;
    //   154: invokestatic 578	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   157: invokevirtual 584	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   160: putstatic 103	com/tapjoy/TapjoyConnectCore:deviceLanguage	Ljava/lang/String;
    //   163: ldc_w 586
    //   166: putstatic 109	com/tapjoy/TapjoyConnectCore:libraryVersion	Ljava/lang/String;
    //   169: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   172: ldc_w 318
    //   175: iconst_0
    //   176: invokevirtual 322	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   179: astore 4
    //   181: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   184: ldc_w 588
    //   187: invokevirtual 266	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   190: checkcast 590	android/telephony/TelephonyManager
    //   193: astore 5
    //   195: aload 5
    //   197: ifnull +85 -> 282
    //   200: aload 5
    //   202: invokevirtual 593	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   205: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   208: aload 5
    //   210: invokevirtual 596	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   213: putstatic 119	com/tapjoy/TapjoyConnectCore:carrierName	Ljava/lang/String;
    //   216: aload 5
    //   218: invokevirtual 599	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   221: putstatic 121	com/tapjoy/TapjoyConnectCore:carrierCountryCode	Ljava/lang/String;
    //   224: aload 5
    //   226: invokevirtual 602	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   229: ifnull +53 -> 282
    //   232: aload 5
    //   234: invokevirtual 602	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   237: invokevirtual 351	java/lang/String:length	()I
    //   240: iconst_5
    //   241: if_icmpeq +16 -> 257
    //   244: aload 5
    //   246: invokevirtual 602	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   249: invokevirtual 351	java/lang/String:length	()I
    //   252: bipush 6
    //   254: if_icmpne +28 -> 282
    //   257: aload 5
    //   259: invokevirtual 602	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   262: iconst_0
    //   263: iconst_3
    //   264: invokevirtual 492	java/lang/String:substring	(II)Ljava/lang/String;
    //   267: putstatic 123	com/tapjoy/TapjoyConnectCore:mobileCountryCode	Ljava/lang/String;
    //   270: aload 5
    //   272: invokevirtual 602	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   275: iconst_3
    //   276: invokevirtual 459	java/lang/String:substring	(I)Ljava/lang/String;
    //   279: putstatic 125	com/tapjoy/TapjoyConnectCore:mobileNetworkCode	Ljava/lang/String;
    //   282: ldc 19
    //   284: new 170	java/lang/StringBuilder
    //   287: dup
    //   288: ldc_w 604
    //   291: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   294: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   297: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   303: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   306: iconst_0
    //   307: istore_1
    //   308: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   311: ifnonnull +1356 -> 1667
    //   314: ldc 19
    //   316: ldc_w 606
    //   319: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   322: iconst_1
    //   323: istore_1
    //   324: ldc 19
    //   326: new 170	java/lang/StringBuilder
    //   329: dup
    //   330: ldc_w 608
    //   333: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   336: getstatic 611	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   339: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   348: iload_1
    //   349: istore_2
    //   350: getstatic 611	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   353: invokestatic 617	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   356: bipush 9
    //   358: if_icmplt +96 -> 454
    //   361: ldc 19
    //   363: ldc_w 619
    //   366: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   369: new 621	com/tapjoy/TapjoyHardwareUtil
    //   372: dup
    //   373: invokespecial 622	com/tapjoy/TapjoyHardwareUtil:<init>	()V
    //   376: invokevirtual 625	com/tapjoy/TapjoyHardwareUtil:getSerial	()Ljava/lang/String;
    //   379: putstatic 91	com/tapjoy/TapjoyConnectCore:serialID	Ljava/lang/String;
    //   382: iload_1
    //   383: ifeq +9 -> 392
    //   386: getstatic 91	com/tapjoy/TapjoyConnectCore:serialID	Ljava/lang/String;
    //   389: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   392: ldc 19
    //   394: ldc_w 627
    //   397: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   400: ldc 19
    //   402: new 170	java/lang/StringBuilder
    //   405: dup
    //   406: ldc_w 629
    //   409: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   412: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   415: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: ldc_w 631
    //   421: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   424: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   427: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   430: ldc 19
    //   432: ldc_w 627
    //   435: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   438: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   441: ifnonnull +1348 -> 1789
    //   444: ldc 19
    //   446: ldc_w 633
    //   449: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: iconst_1
    //   453: istore_2
    //   454: iload_2
    //   455: ifeq +54 -> 509
    //   458: new 635	java/lang/StringBuffer
    //   461: dup
    //   462: invokespecial 636	java/lang/StringBuffer:<init>	()V
    //   465: astore 5
    //   467: aload 5
    //   469: ldc_w 638
    //   472: invokevirtual 641	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   475: pop
    //   476: aload 4
    //   478: ldc_w 643
    //   481: aconst_null
    //   482: invokeinterface 646 3 0
    //   487: astore 6
    //   489: aload 6
    //   491: ifnull +1637 -> 2128
    //   494: aload 6
    //   496: ldc 79
    //   498: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   501: ifne +1627 -> 2128
    //   504: aload 6
    //   506: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   509: getstatic 115	com/tapjoy/TapjoyConnectCore:userID	Ljava/lang/String;
    //   512: invokevirtual 351	java/lang/String:length	()I
    //   515: ifne +9 -> 524
    //   518: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   521: putstatic 115	com/tapjoy/TapjoyConnectCore:userID	Ljava/lang/String;
    //   524: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   527: invokestatic 249	com/tapjoy/TapjoyUtil:SHA256	(Ljava/lang/String;)Ljava/lang/String;
    //   530: putstatic 85	com/tapjoy/TapjoyConnectCore:sha2DeviceID	Ljava/lang/String;
    //   533: getstatic 611	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   536: invokestatic 617	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   539: iconst_3
    //   540: if_icmple +57 -> 597
    //   543: new 648	com/tapjoy/TapjoyDisplayMetricsUtil
    //   546: dup
    //   547: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   550: invokespecial 650	com/tapjoy/TapjoyDisplayMetricsUtil:<init>	(Landroid/content/Context;)V
    //   553: astore 5
    //   555: new 170	java/lang/StringBuilder
    //   558: dup
    //   559: invokespecial 651	java/lang/StringBuilder:<init>	()V
    //   562: aload 5
    //   564: invokevirtual 654	com/tapjoy/TapjoyDisplayMetricsUtil:getScreenDensity	()I
    //   567: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   570: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   573: putstatic 111	com/tapjoy/TapjoyConnectCore:deviceScreenDensity	Ljava/lang/String;
    //   576: new 170	java/lang/StringBuilder
    //   579: dup
    //   580: invokespecial 651	java/lang/StringBuilder:<init>	()V
    //   583: aload 5
    //   585: invokevirtual 657	com/tapjoy/TapjoyDisplayMetricsUtil:getScreenLayoutSize	()I
    //   588: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   591: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   594: putstatic 113	com/tapjoy/TapjoyConnectCore:deviceScreenLayoutSize	Ljava/lang/String;
    //   597: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   600: ldc_w 284
    //   603: invokevirtual 266	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   606: checkcast 659	android/net/wifi/WifiManager
    //   609: astore 5
    //   611: aload 5
    //   613: ifnull +56 -> 669
    //   616: aload 5
    //   618: invokevirtual 663	android/net/wifi/WifiManager:getConnectionInfo	()Landroid/net/wifi/WifiInfo;
    //   621: astore 5
    //   623: aload 5
    //   625: ifnull +44 -> 669
    //   628: aload 5
    //   630: invokevirtual 668	android/net/wifi/WifiInfo:getMacAddress	()Ljava/lang/String;
    //   633: putstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   636: getstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   639: ifnull +30 -> 669
    //   642: getstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   645: invokevirtual 351	java/lang/String:length	()I
    //   648: ifle +21 -> 669
    //   651: getstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   654: invokevirtual 671	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   657: putstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   660: getstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   663: invokestatic 674	com/tapjoy/TapjoyUtil:SHA1	(Ljava/lang/String;)Ljava/lang/String;
    //   666: putstatic 89	com/tapjoy/TapjoyConnectCore:sha1MacAddress	Ljava/lang/String;
    //   669: ldc_w 676
    //   672: invokestatic 340	com/tapjoy/TapjoyConnectCore:getFlagValue	(Ljava/lang/String;)Ljava/lang/String;
    //   675: ifnull +71 -> 746
    //   678: ldc_w 676
    //   681: invokestatic 340	com/tapjoy/TapjoyConnectCore:getFlagValue	(Ljava/lang/String;)Ljava/lang/String;
    //   684: invokevirtual 351	java/lang/String:length	()I
    //   687: ifle +59 -> 746
    //   690: ldc_w 676
    //   693: invokestatic 340	com/tapjoy/TapjoyConnectCore:getFlagValue	(Ljava/lang/String;)Ljava/lang/String;
    //   696: putstatic 129	com/tapjoy/TapjoyConnectCore:storeName	Ljava/lang/String;
    //   699: new 678	java/util/ArrayList
    //   702: dup
    //   703: getstatic 681	com/tapjoy/TapjoyConnectFlag:STORE_ARRAY	[Ljava/lang/String;
    //   706: invokestatic 687	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   709: invokespecial 690	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   712: getstatic 129	com/tapjoy/TapjoyConnectCore:storeName	Ljava/lang/String;
    //   715: invokevirtual 691	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   718: ifne +28 -> 746
    //   721: ldc 19
    //   723: new 170	java/lang/StringBuilder
    //   726: dup
    //   727: ldc_w 693
    //   730: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   733: getstatic 129	com/tapjoy/TapjoyConnectCore:storeName	Ljava/lang/String;
    //   736: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   739: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   742: invokestatic 699	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   745: pop
    //   746: aload 4
    //   748: ldc_w 701
    //   751: aconst_null
    //   752: invokeinterface 646 3 0
    //   757: astore 4
    //   759: aload 4
    //   761: ifnull +18 -> 779
    //   764: aload 4
    //   766: ldc 79
    //   768: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   771: ifne +8 -> 779
    //   774: aload 4
    //   776: putstatic 135	com/tapjoy/TapjoyConnectCore:referralURL	Ljava/lang/String;
    //   779: getstatic 73	com/tapjoy/TapjoyConnectCore:context	Landroid/content/Context;
    //   782: invokevirtual 520	android/content/Context:getPackageName	()Ljava/lang/String;
    //   785: putstatic 133	com/tapjoy/TapjoyConnectCore:clientPackage	Ljava/lang/String;
    //   788: ldc 19
    //   790: new 170	java/lang/StringBuilder
    //   793: dup
    //   794: ldc_w 703
    //   797: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   800: getstatic 105	com/tapjoy/TapjoyConnectCore:appID	Ljava/lang/String;
    //   803: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   806: ldc_w 631
    //   809: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   812: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   815: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   818: ldc 19
    //   820: new 170	java/lang/StringBuilder
    //   823: dup
    //   824: ldc_w 705
    //   827: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   830: getstatic 81	com/tapjoy/TapjoyConnectCore:androidID	Ljava/lang/String;
    //   833: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   836: ldc_w 631
    //   839: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   842: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   845: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   848: ldc 19
    //   850: new 170	java/lang/StringBuilder
    //   853: dup
    //   854: ldc_w 707
    //   857: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   860: getstatic 133	com/tapjoy/TapjoyConnectCore:clientPackage	Ljava/lang/String;
    //   863: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: ldc_w 631
    //   869: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   875: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   878: ldc 19
    //   880: new 170	java/lang/StringBuilder
    //   883: dup
    //   884: ldc_w 709
    //   887: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   890: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   893: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   896: ldc_w 631
    //   899: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   902: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   905: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   908: ldc 19
    //   910: new 170	java/lang/StringBuilder
    //   913: dup
    //   914: ldc_w 711
    //   917: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   920: getstatic 85	com/tapjoy/TapjoyConnectCore:sha2DeviceID	Ljava/lang/String;
    //   923: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   926: ldc_w 631
    //   929: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   932: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   935: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   938: ldc 19
    //   940: new 170	java/lang/StringBuilder
    //   943: dup
    //   944: ldc_w 713
    //   947: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   950: getstatic 91	com/tapjoy/TapjoyConnectCore:serialID	Ljava/lang/String;
    //   953: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: ldc_w 631
    //   959: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   962: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   965: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   968: ldc 19
    //   970: new 170	java/lang/StringBuilder
    //   973: dup
    //   974: ldc_w 715
    //   977: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   980: getstatic 87	com/tapjoy/TapjoyConnectCore:macAddress	Ljava/lang/String;
    //   983: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   986: ldc_w 631
    //   989: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   992: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   995: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   998: ldc 19
    //   1000: new 170	java/lang/StringBuilder
    //   1003: dup
    //   1004: ldc_w 717
    //   1007: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1010: getstatic 89	com/tapjoy/TapjoyConnectCore:sha1MacAddress	Ljava/lang/String;
    //   1013: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1016: ldc_w 631
    //   1019: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1022: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1025: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1028: ldc 19
    //   1030: new 170	java/lang/StringBuilder
    //   1033: dup
    //   1034: ldc_w 719
    //   1037: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1040: getstatic 93	com/tapjoy/TapjoyConnectCore:deviceModel	Ljava/lang/String;
    //   1043: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1046: ldc_w 631
    //   1049: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1052: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1055: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1058: ldc 19
    //   1060: new 170	java/lang/StringBuilder
    //   1063: dup
    //   1064: ldc_w 721
    //   1067: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1070: getstatic 95	com/tapjoy/TapjoyConnectCore:deviceManufacturer	Ljava/lang/String;
    //   1073: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1076: ldc_w 631
    //   1079: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1082: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1085: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1088: ldc 19
    //   1090: new 170	java/lang/StringBuilder
    //   1093: dup
    //   1094: ldc_w 723
    //   1097: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1100: getstatic 97	com/tapjoy/TapjoyConnectCore:deviceType	Ljava/lang/String;
    //   1103: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1106: ldc_w 631
    //   1109: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1112: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1115: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1118: ldc 19
    //   1120: new 170	java/lang/StringBuilder
    //   1123: dup
    //   1124: ldc_w 725
    //   1127: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1130: getstatic 109	com/tapjoy/TapjoyConnectCore:libraryVersion	Ljava/lang/String;
    //   1133: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1136: ldc_w 631
    //   1139: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1142: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1145: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1148: ldc 19
    //   1150: new 170	java/lang/StringBuilder
    //   1153: dup
    //   1154: ldc_w 727
    //   1157: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1160: getstatic 99	com/tapjoy/TapjoyConnectCore:deviceOSVersion	Ljava/lang/String;
    //   1163: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1166: ldc_w 631
    //   1169: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1172: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1175: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1178: ldc 19
    //   1180: new 170	java/lang/StringBuilder
    //   1183: dup
    //   1184: ldc_w 729
    //   1187: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1190: getstatic 101	com/tapjoy/TapjoyConnectCore:deviceCountryCode	Ljava/lang/String;
    //   1193: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1196: ldc_w 631
    //   1199: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1202: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1205: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1208: ldc 19
    //   1210: new 170	java/lang/StringBuilder
    //   1213: dup
    //   1214: ldc_w 731
    //   1217: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1220: getstatic 103	com/tapjoy/TapjoyConnectCore:deviceLanguage	Ljava/lang/String;
    //   1223: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1226: ldc_w 631
    //   1229: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1232: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1235: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1238: ldc 19
    //   1240: new 170	java/lang/StringBuilder
    //   1243: dup
    //   1244: ldc_w 733
    //   1247: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1250: getstatic 111	com/tapjoy/TapjoyConnectCore:deviceScreenDensity	Ljava/lang/String;
    //   1253: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1256: ldc_w 631
    //   1259: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1262: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1265: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1268: ldc 19
    //   1270: new 170	java/lang/StringBuilder
    //   1273: dup
    //   1274: ldc_w 735
    //   1277: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1280: getstatic 113	com/tapjoy/TapjoyConnectCore:deviceScreenLayoutSize	Ljava/lang/String;
    //   1283: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1286: ldc_w 631
    //   1289: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1292: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1295: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1298: ldc 19
    //   1300: new 170	java/lang/StringBuilder
    //   1303: dup
    //   1304: ldc_w 737
    //   1307: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1310: getstatic 119	com/tapjoy/TapjoyConnectCore:carrierName	Ljava/lang/String;
    //   1313: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1316: ldc_w 631
    //   1319: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1322: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1325: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1328: ldc 19
    //   1330: new 170	java/lang/StringBuilder
    //   1333: dup
    //   1334: ldc_w 739
    //   1337: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1340: getstatic 121	com/tapjoy/TapjoyConnectCore:carrierCountryCode	Ljava/lang/String;
    //   1343: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1346: ldc_w 631
    //   1349: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1352: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1355: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1358: ldc 19
    //   1360: new 170	java/lang/StringBuilder
    //   1363: dup
    //   1364: ldc_w 741
    //   1367: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1370: getstatic 123	com/tapjoy/TapjoyConnectCore:mobileCountryCode	Ljava/lang/String;
    //   1373: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1376: ldc_w 631
    //   1379: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1382: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1385: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1388: ldc 19
    //   1390: new 170	java/lang/StringBuilder
    //   1393: dup
    //   1394: ldc_w 743
    //   1397: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1400: getstatic 125	com/tapjoy/TapjoyConnectCore:mobileNetworkCode	Ljava/lang/String;
    //   1403: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1406: ldc_w 631
    //   1409: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1412: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1415: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1418: ldc 19
    //   1420: new 170	java/lang/StringBuilder
    //   1423: dup
    //   1424: ldc_w 745
    //   1427: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1430: getstatic 129	com/tapjoy/TapjoyConnectCore:storeName	Ljava/lang/String;
    //   1433: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1436: ldc_w 631
    //   1439: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1442: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1445: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1448: ldc 19
    //   1450: new 170	java/lang/StringBuilder
    //   1453: dup
    //   1454: ldc_w 747
    //   1457: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1460: getstatic 135	com/tapjoy/TapjoyConnectCore:referralURL	Ljava/lang/String;
    //   1463: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1466: ldc_w 631
    //   1469: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1472: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1475: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1478: getstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   1481: ifnull +44 -> 1525
    //   1484: ldc 19
    //   1486: ldc_w 749
    //   1489: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1492: ldc 19
    //   1494: ldc_w 751
    //   1497: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1500: getstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   1503: invokevirtual 755	java/util/Hashtable:entrySet	()Ljava/util/Set;
    //   1506: invokeinterface 758 1 0
    //   1511: astore 4
    //   1513: aload 4
    //   1515: invokeinterface 487 1 0
    //   1520: istore_3
    //   1521: iload_3
    //   1522: ifne +482 -> 2004
    //   1525: return
    //   1526: aload 6
    //   1528: iload_1
    //   1529: aaload
    //   1530: astore 7
    //   1532: aload 5
    //   1534: getfield 528	android/content/pm/ApplicationInfo:metaData	Landroid/os/Bundle;
    //   1537: new 170	java/lang/StringBuilder
    //   1540: dup
    //   1541: ldc_w 760
    //   1544: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1547: aload 7
    //   1549: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1552: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1555: invokevirtual 764	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   1558: astore 8
    //   1560: aload 8
    //   1562: ifnull +559 -> 2121
    //   1565: aload 8
    //   1567: invokevirtual 765	java/lang/Object:toString	()Ljava/lang/String;
    //   1570: astore 8
    //   1572: aload 8
    //   1574: ifnull +547 -> 2121
    //   1577: ldc 19
    //   1579: new 170	java/lang/StringBuilder
    //   1582: dup
    //   1583: ldc_w 767
    //   1586: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1589: aload 7
    //   1591: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1594: ldc_w 769
    //   1597: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1600: aload 8
    //   1602: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1605: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1608: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1611: getstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   1614: aload 7
    //   1616: aload 8
    //   1618: invokevirtual 773	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1621: pop
    //   1622: goto +499 -> 2121
    //   1625: ldc 19
    //   1627: ldc_w 775
    //   1630: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1633: goto -1551 -> 82
    //   1636: astore 5
    //   1638: ldc 19
    //   1640: new 170	java/lang/StringBuilder
    //   1643: dup
    //   1644: ldc_w 777
    //   1647: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1650: aload 5
    //   1652: invokevirtual 252	java/lang/Exception:toString	()Ljava/lang/String;
    //   1655: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1658: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1661: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1664: goto -1582 -> 82
    //   1667: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1670: invokevirtual 351	java/lang/String:length	()I
    //   1673: ifeq +27 -> 1700
    //   1676: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1679: ldc_w 779
    //   1682: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1685: ifne +15 -> 1700
    //   1688: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1691: ldc_w 781
    //   1694: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1697: ifeq +16 -> 1713
    //   1700: ldc 19
    //   1702: ldc_w 783
    //   1705: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1708: iconst_1
    //   1709: istore_1
    //   1710: goto -1386 -> 324
    //   1713: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1716: invokevirtual 786	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1719: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1722: goto -1398 -> 324
    //   1725: astore 5
    //   1727: ldc 19
    //   1729: new 170	java/lang/StringBuilder
    //   1732: dup
    //   1733: ldc_w 788
    //   1736: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1739: aload 5
    //   1741: invokevirtual 252	java/lang/Exception:toString	()Ljava/lang/String;
    //   1744: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1747: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1750: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1753: aconst_null
    //   1754: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1757: goto -1248 -> 509
    //   1760: astore 4
    //   1762: ldc 19
    //   1764: new 170	java/lang/StringBuilder
    //   1767: dup
    //   1768: ldc_w 790
    //   1771: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1774: aload 4
    //   1776: invokevirtual 252	java/lang/Exception:toString	()Ljava/lang/String;
    //   1779: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1782: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1785: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1788: return
    //   1789: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1792: invokevirtual 351	java/lang/String:length	()I
    //   1795: ifeq +39 -> 1834
    //   1798: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1801: ldc_w 779
    //   1804: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1807: ifne +27 -> 1834
    //   1810: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1813: ldc_w 781
    //   1816: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1819: ifne +15 -> 1834
    //   1822: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1825: ldc_w 792
    //   1828: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1831: ifeq +16 -> 1847
    //   1834: ldc 19
    //   1836: ldc_w 794
    //   1839: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1842: iconst_1
    //   1843: istore_2
    //   1844: goto -1390 -> 454
    //   1847: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1850: invokevirtual 786	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1853: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1856: iconst_0
    //   1857: istore_2
    //   1858: goto -1404 -> 454
    //   1861: iload_1
    //   1862: bipush 32
    //   1864: if_icmplt +48 -> 1912
    //   1867: aload 5
    //   1869: invokevirtual 795	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   1872: invokevirtual 786	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1875: putstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1878: aload 4
    //   1880: invokeinterface 799 1 0
    //   1885: astore 5
    //   1887: aload 5
    //   1889: ldc_w 643
    //   1892: getstatic 83	com/tapjoy/TapjoyConnectCore:deviceID	Ljava/lang/String;
    //   1895: invokeinterface 805 3 0
    //   1900: pop
    //   1901: aload 5
    //   1903: invokeinterface 808 1 0
    //   1908: pop
    //   1909: goto -1400 -> 509
    //   1912: aload 5
    //   1914: ldc_w 810
    //   1917: invokestatic 816	java/lang/Math:random	()D
    //   1920: ldc2_w 817
    //   1923: dmul
    //   1924: d2i
    //   1925: bipush 30
    //   1927: irem
    //   1928: invokevirtual 822	java/lang/String:charAt	(I)C
    //   1931: invokevirtual 825	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   1934: pop
    //   1935: iload_1
    //   1936: iconst_1
    //   1937: iadd
    //   1938: istore_1
    //   1939: goto -78 -> 1861
    //   1942: astore 5
    //   1944: ldc 19
    //   1946: new 170	java/lang/StringBuilder
    //   1949: dup
    //   1950: ldc_w 827
    //   1953: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1956: aload 5
    //   1958: invokevirtual 252	java/lang/Exception:toString	()Ljava/lang/String;
    //   1961: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1964: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1967: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1970: goto -1373 -> 597
    //   1973: astore 5
    //   1975: ldc 19
    //   1977: new 170	java/lang/StringBuilder
    //   1980: dup
    //   1981: ldc_w 829
    //   1984: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1987: aload 5
    //   1989: invokevirtual 252	java/lang/Exception:toString	()Ljava/lang/String;
    //   1992: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1995: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1998: invokestatic 255	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2001: goto -1332 -> 669
    //   2004: aload 4
    //   2006: invokeinterface 496 1 0
    //   2011: checkcast 831	java/util/Map$Entry
    //   2014: astore 5
    //   2016: ldc 19
    //   2018: new 170	java/lang/StringBuilder
    //   2021: dup
    //   2022: ldc_w 833
    //   2025: invokespecial 175	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2028: aload 5
    //   2030: invokeinterface 836 1 0
    //   2035: checkcast 231	java/lang/String
    //   2038: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2041: ldc_w 838
    //   2044: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2047: aload 5
    //   2049: invokeinterface 841 1 0
    //   2054: checkcast 231	java/lang/String
    //   2057: invokestatic 308	android/net/Uri:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   2060: invokevirtual 183	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2063: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2066: invokestatic 192	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2069: aload 5
    //   2071: invokeinterface 836 1 0
    //   2076: checkcast 231	java/lang/String
    //   2079: ldc_w 338
    //   2082: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2085: ifeq -572 -> 1513
    //   2088: getstatic 141	com/tapjoy/TapjoyConnectCore:sdkType	Ljava/lang/String;
    //   2091: ldc_w 843
    //   2094: invokevirtual 346	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2097: ifne -584 -> 1513
    //   2100: ldc 19
    //   2102: ldc_w 845
    //   2105: invokestatic 847	com/tapjoy/TapjoyLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   2108: getstatic 151	com/tapjoy/TapjoyConnectCore:connectFlags	Ljava/util/Hashtable;
    //   2111: ldc_w 338
    //   2114: invokevirtual 850	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   2117: pop
    //   2118: goto -605 -> 1513
    //   2121: iload_1
    //   2122: iconst_1
    //   2123: iadd
    //   2124: istore_1
    //   2125: goto -2056 -> 69
    //   2128: iconst_0
    //   2129: istore_1
    //   2130: goto -269 -> 1861
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2133	0	this	TapjoyConnectCore
    //   68	2062	1	i	int
    //   66	1792	2	j	int
    //   1520	2	3	bool	boolean
    //   6	1508	4	localObject1	Object
    //   1760	245	4	localException1	Exception
    //   43	1490	5	localObject2	Object
    //   1636	15	5	localException2	Exception
    //   1725	143	5	localException3	Exception
    //   1885	28	5	localEditor	SharedPreferences.Editor
    //   1942	15	5	localException4	Exception
    //   1973	15	5	localException5	Exception
    //   2014	56	5	localEntry	java.util.Map.Entry
    //   61	1466	6	localObject3	Object
    //   1530	85	7	str	String
    //   1558	59	8	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   8	24	1636	java/lang/Exception
    //   29	45	1636	java/lang/Exception
    //   50	67	1636	java/lang/Exception
    //   74	82	1636	java/lang/Exception
    //   1532	1560	1636	java/lang/Exception
    //   1565	1572	1636	java/lang/Exception
    //   1577	1622	1636	java/lang/Exception
    //   1625	1633	1636	java/lang/Exception
    //   181	195	1725	java/lang/Exception
    //   200	257	1725	java/lang/Exception
    //   257	282	1725	java/lang/Exception
    //   282	306	1725	java/lang/Exception
    //   308	322	1725	java/lang/Exception
    //   324	348	1725	java/lang/Exception
    //   350	382	1725	java/lang/Exception
    //   386	392	1725	java/lang/Exception
    //   392	452	1725	java/lang/Exception
    //   458	489	1725	java/lang/Exception
    //   494	509	1725	java/lang/Exception
    //   1667	1700	1725	java/lang/Exception
    //   1700	1708	1725	java/lang/Exception
    //   1713	1722	1725	java/lang/Exception
    //   1789	1834	1725	java/lang/Exception
    //   1834	1842	1725	java/lang/Exception
    //   1847	1856	1725	java/lang/Exception
    //   1867	1909	1725	java/lang/Exception
    //   1912	1935	1725	java/lang/Exception
    //   82	181	1760	java/lang/Exception
    //   509	524	1760	java/lang/Exception
    //   524	533	1760	java/lang/Exception
    //   669	746	1760	java/lang/Exception
    //   746	759	1760	java/lang/Exception
    //   764	779	1760	java/lang/Exception
    //   779	1513	1760	java/lang/Exception
    //   1513	1521	1760	java/lang/Exception
    //   1727	1757	1760	java/lang/Exception
    //   1944	1970	1760	java/lang/Exception
    //   1975	2001	1760	java/lang/Exception
    //   2004	2118	1760	java/lang/Exception
    //   533	597	1942	java/lang/Exception
    //   597	611	1973	java/lang/Exception
    //   616	623	1973	java/lang/Exception
    //   628	669	1973	java/lang/Exception
  }
  
  public static void requestTapjoyConnect(Context paramContext, String paramString1, String paramString2)
  {
    requestTapjoyConnect(paramContext, paramString1, paramString2, null);
  }
  
  public static void requestTapjoyConnect(Context paramContext, String paramString1, String paramString2, Hashtable<String, String> paramHashtable)
  {
    appID = paramString1;
    secretKey = paramString2;
    connectFlags = paramHashtable;
    tapjoyConnectCore = new TapjoyConnectCore(paramContext);
  }
  
  public static void saveTapPointsTotal(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("tjcPrefrences", 0).edit();
    localEditor.putInt("last_tap_points", paramInt);
    localEditor.commit();
  }
  
  public static void setDebugDeviceID(String paramString)
  {
    deviceID = paramString;
    paramString = context.getSharedPreferences("tjcPrefrences", 0).edit();
    paramString.putString("emulatorDeviceId", deviceID);
    paramString.commit();
  }
  
  public static void setPlugin(String paramString)
  {
    plugin = paramString;
  }
  
  public static void setSDKType(String paramString)
  {
    sdkType = paramString;
  }
  
  public static void setUserID(String paramString)
  {
    userID = paramString;
    TapjoyLog.i("TapjoyConnect", "URL parameters: " + getURLParams());
    new Thread(new Runnable()
    {
      public void run()
      {
        TapjoyLog.i("TapjoyConnect", "setUserID...");
        String str2 = TapjoyConnectCore.getURLParams() + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
        String str1 = str2;
        if (!TapjoyConnectCore.referralURL.equals("")) {
          str1 = str2 + "&" + TapjoyConnectCore.referralURL;
        }
        str1 = TapjoyConnectCore.tapjoyURLConnection.connectToURL("https://ws.tapjoyads.com/set_publisher_user_id?", str1);
        if (str1 != null)
        {
          if (TapjoyConnectCore.handleConnectResponse(str1)) {}
          TapjoyLog.i("TapjoyConnect", "setUserID successful...");
        }
      }
    }).start();
  }
  
  public static void setVideoEnabled(boolean paramBoolean)
  {
    videoEnabled = paramBoolean;
  }
  
  public static void setVideoIDs(String paramString)
  {
    videoIDs = paramString;
  }
  
  public void actionComplete(String paramString)
  {
    TapjoyLog.i("TapjoyConnect", "actionComplete: " + paramString);
    String str = new StringBuilder("app_id=").append(paramString).append("&").toString() + getParamsWithoutAppID();
    if (getFlagValue("sha_2_udid") != null)
    {
      paramString = str;
      if (getFlagValue("sha_2_udid").equals("true")) {}
    }
    else
    {
      paramString = str + "&publisher_user_id=" + getUserID();
    }
    paramString = paramString + "&";
    long l = System.currentTimeMillis() / 1000L;
    paramString = new StringBuilder(String.valueOf(paramString)).append("timestamp=").append(l).append("&").toString() + "verifier=" + getVerifier(l);
    TapjoyLog.i("TapjoyConnect", "PPA URL parameters: " + paramString);
    new Thread(new PPAThread(paramString)).start();
  }
  
  public void callConnect()
  {
    new Thread(new ConnectThread()).start();
  }
  
  public void enablePaidAppWithActionID(String paramString)
  {
    TapjoyLog.i("TapjoyConnect", "enablePaidAppWithActionID: " + paramString);
    paidAppActionID = paramString;
    this.elapsed_time = context.getSharedPreferences("tjcPrefrences", 0).getLong("tapjoy_elapsed_time", 0L);
    TapjoyLog.i("TapjoyConnect", "paidApp elapsed: " + this.elapsed_time);
    if (this.elapsed_time >= 900000L) {
      if ((paidAppActionID != null) && (paidAppActionID.length() > 0))
      {
        TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
        actionComplete(paidAppActionID);
      }
    }
    while (this.timer != null) {
      return;
    }
    this.timer = new Timer();
    this.timer.schedule(new PaidAppTimerTask(null), 10000L, 10000L);
  }
  
  public float getCurrencyMultiplier()
  {
    return currencyMultiplier;
  }
  
  public void release()
  {
    tapjoyConnectCore = null;
    tapjoyURLConnection = null;
    TapjoyLog.i("TapjoyConnect", "Releasing core static instance.");
  }
  
  public void setCurrencyMultiplier(float paramFloat)
  {
    TapjoyLog.i("TapjoyConnect", "setVirtualCurrencyMultiplier: " + paramFloat);
    currencyMultiplier = paramFloat;
  }
  
  public class ConnectThread
    implements Runnable
  {
    public ConnectThread() {}
    
    public void run()
    {
      TapjoyLog.i("TapjoyConnect", "starting connect call...");
      Object localObject = TapjoyConnectCore.getURLParams();
      localObject = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL("https://ws.tapjoyads.com/connect?", (String)localObject);
      if ((localObject != null) && (((TapjoyHttpURLResponse)localObject).statusCode == 200))
      {
        if (TapjoyConnectCore.handleConnectResponse(((TapjoyHttpURLResponse)localObject).response)) {
          TapjoyLog.i("TapjoyConnect", "Successfully connected to tapjoy site.");
        }
        if (TapjoyConnectCore.matchingPackageNames.length() > 0)
        {
          localObject = TapjoyConnectCore.getGenericURLParams() + "&" + "package_names" + "=" + TapjoyConnectCore.matchingPackageNames + "&";
          long l = System.currentTimeMillis() / 1000L;
          String str = TapjoyConnectCore.getPackageNamesVerifier(l, TapjoyConnectCore.matchingPackageNames);
          localObject = new StringBuilder(String.valueOf(localObject)).append("timestamp=").append(l).append("&").toString() + "verifier=" + str;
          localObject = TapjoyConnectCore.tapjoyURLConnection.getResponseFromURL("https://ws.tapjoyads.com/apps_installed?", (String)localObject);
          if ((localObject != null) && (((TapjoyHttpURLResponse)localObject).statusCode == 200)) {
            TapjoyLog.i("TapjoyConnect", "Successfully pinged sdkless api.");
          }
        }
      }
    }
  }
  
  public class PPAThread
    implements Runnable
  {
    private String params;
    
    public PPAThread(String paramString)
    {
      this.params = paramString;
    }
    
    public void run()
    {
      String str = TapjoyConnectCore.tapjoyURLConnection.connectToURL("https://ws.tapjoyads.com/connect?", this.params);
      if (str != null) {
        TapjoyConnectCore.this.handlePayPerActionResponse(str);
      }
    }
  }
  
  private class PaidAppTimerTask
    extends TimerTask
  {
    private PaidAppTimerTask() {}
    
    public void run()
    {
      Object localObject = TapjoyConnectCore.this;
      ((TapjoyConnectCore)localObject).elapsed_time += 10000L;
      TapjoyLog.i("TapjoyConnect", "elapsed_time: " + TapjoyConnectCore.this.elapsed_time + " (" + TapjoyConnectCore.this.elapsed_time / 1000L / 60L + "m " + TapjoyConnectCore.this.elapsed_time / 1000L % 60L + "s)");
      localObject = TapjoyConnectCore.context.getSharedPreferences("tjcPrefrences", 0).edit();
      ((SharedPreferences.Editor)localObject).putLong("tapjoy_elapsed_time", TapjoyConnectCore.this.elapsed_time);
      ((SharedPreferences.Editor)localObject).commit();
      if (TapjoyConnectCore.this.elapsed_time >= 900000L)
      {
        TapjoyLog.i("TapjoyConnect", "timer done...");
        if ((TapjoyConnectCore.paidAppActionID != null) && (TapjoyConnectCore.paidAppActionID.length() > 0))
        {
          TapjoyLog.i("TapjoyConnect", "Calling PPA actionComplete...");
          TapjoyConnectCore.this.actionComplete(TapjoyConnectCore.paidAppActionID);
        }
        cancel();
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyConnectCore
 * JD-Core Version:    0.7.0.1
 */