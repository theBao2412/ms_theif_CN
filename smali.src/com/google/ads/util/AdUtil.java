package com.google.ads.util;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLDecoder;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AdUtil
{
  public static final int a;
  private static Boolean b;
  private static String c;
  private static String d;
  private static AudioManager e;
  private static boolean f;
  private static boolean g;
  private static String h;
  
  static
  {
    try
    {
      i = Integer.parseInt(Build.VERSION.SDK);
      a = i;
      b = null;
      c = null;
      f = true;
      g = false;
      h = null;
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        a.e("The Android SDK version couldn't be parsed to an int: " + Build.VERSION.SDK);
        a.e("Defaulting to Android SDK version 3.");
        int i = 3;
      }
    }
  }
  
  public static int a()
  {
    if (a >= 9) {
      return 6;
    }
    return 0;
  }
  
  public static int a(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    if (a >= 4) {
      return c.a(paramContext, paramDisplayMetrics);
    }
    return paramDisplayMetrics.heightPixels;
  }
  
  public static DisplayMetrics a(Activity paramActivity)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static String a(Context paramContext)
  {
    if (c == null)
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if ((paramContext == null) || (c())) {}
      for (paramContext = a("emulator"); paramContext == null; paramContext = a(paramContext)) {
        return null;
      }
      c = paramContext.toUpperCase(Locale.US);
    }
    return c;
  }
  
  public static String a(Location paramLocation)
  {
    if (paramLocation == null) {
      return null;
    }
    paramLocation = b(String.format("role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", new Object[] { Long.valueOf(paramLocation.getTime() * 1000L), Long.valueOf((paramLocation.getLatitude() * 10000000.0D)), Long.valueOf((paramLocation.getLongitude() * 10000000.0D)), Long.valueOf((paramLocation.getAccuracy() * 1000.0F)) }));
    return "e1+" + paramLocation;
  }
  
  public static String a(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramString != null)
    {
      localObject1 = localObject2;
      if (paramString.length() <= 0) {}
    }
    try
    {
      localObject1 = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject1).update(paramString.getBytes(), 0, paramString.length());
      localObject1 = String.format("%032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject1).digest()) });
      return localObject1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return paramString.substring(0, 32);
  }
  
  public static String a(Map<String, Object> paramMap)
  {
    try
    {
      paramMap = b(paramMap).toString();
      return paramMap;
    }
    catch (JSONException paramMap)
    {
      a.b("JsonException in serialization: ", paramMap);
    }
    return null;
  }
  
  private static JSONArray a(Set<Object> paramSet)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return localJSONArray;
    }
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Object localObject = paramSet.next();
      if (((localObject instanceof String)) || ((localObject instanceof Integer)) || ((localObject instanceof Double)) || ((localObject instanceof Long)) || ((localObject instanceof Float))) {
        localJSONArray.put(localObject);
      } else if ((localObject instanceof Map)) {
        try
        {
          localJSONArray.put(b((Map)localObject));
        }
        catch (ClassCastException localClassCastException1)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException1);
        }
      } else if ((localClassCastException1 instanceof Set)) {
        try
        {
          localJSONArray.put(a((Set)localClassCastException1));
        }
        catch (ClassCastException localClassCastException2)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException2);
        }
      } else {
        a.e("Unknown value in json serialization: " + localClassCastException2);
      }
    }
    return localJSONArray;
  }
  
  public static void a(WebView paramWebView)
  {
    String str = h(paramWebView.getContext().getApplicationContext());
    paramWebView.getSettings().setUserAgentString(str);
  }
  
  public static void a(HttpURLConnection paramHttpURLConnection, Context paramContext)
  {
    paramHttpURLConnection.setRequestProperty("User-Agent", h(paramContext));
  }
  
  public static void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public static boolean a(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  public static int b()
  {
    if (a >= 9) {
      return 7;
    }
    return 1;
  }
  
  public static int b(Context paramContext, DisplayMetrics paramDisplayMetrics)
  {
    if (a >= 4) {
      return c.b(paramContext, paramDisplayMetrics);
    }
    return paramDisplayMetrics.widthPixels;
  }
  
  private static String b(String paramString)
  {
    try
    {
      Object localObject = Cipher.getInstance("AES/CBC/PKCS5Padding");
      ((Cipher)localObject).init(1, new SecretKeySpec(new byte[] { 10, 55, -112, -47, -6, 7, 11, 75, -7, -121, 121, 69, 80, -61, 15, 5 }, "AES"));
      byte[] arrayOfByte = ((Cipher)localObject).getIV();
      paramString = ((Cipher)localObject).doFinal(paramString.getBytes());
      localObject = new byte[arrayOfByte.length + paramString.length];
      System.arraycopy(arrayOfByte, 0, localObject, 0, arrayOfByte.length);
      System.arraycopy(paramString, 0, localObject, arrayOfByte.length, paramString.length);
      paramString = b.a((byte[])localObject);
      return paramString;
    }
    catch (GeneralSecurityException paramString) {}
    return null;
  }
  
  public static HashMap<String, String> b(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    paramUri = paramUri.getEncodedQuery();
    if (paramUri == null) {
      return localHashMap;
    }
    paramUri = paramUri.split("&");
    int j = paramUri.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label105;
      }
      String str2 = paramUri[i];
      int k = str2.indexOf('=');
      if (k == -1) {
        break;
      }
      String str1 = str2.substring(0, k);
      str2 = str2.substring(k + 1);
      localHashMap.put(URLDecoder.decode(str1), URLDecoder.decode(str2));
      i += 1;
    }
    label105:
    return localHashMap;
  }
  
  private static JSONObject b(Map<String, Object> paramMap)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return localJSONObject;
    }
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap.get(str);
      if (((localObject instanceof String)) || ((localObject instanceof Integer)) || ((localObject instanceof Double)) || ((localObject instanceof Long)) || ((localObject instanceof Float))) {
        localJSONObject.put(str, localObject);
      } else if ((localObject instanceof Map)) {
        try
        {
          localJSONObject.put(str, b((Map)localObject));
        }
        catch (ClassCastException localClassCastException1)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException1);
        }
      } else if ((localObject instanceof Set)) {
        try
        {
          localJSONObject.put(localClassCastException1, a((Set)localObject));
        }
        catch (ClassCastException localClassCastException2)
        {
          a.b("Unknown map type in json serialization: ", localClassCastException2);
        }
      } else {
        a.e("Unknown value in json serialization: " + localObject);
      }
    }
    return localJSONObject;
  }
  
  public static boolean b(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    paramContext = paramContext.getPackageName();
    if (localPackageManager.checkPermission("android.permission.INTERNET", paramContext) == -1)
    {
      a.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
      return false;
    }
    if (localPackageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext) == -1)
    {
      a.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
      return false;
    }
    return true;
  }
  
  public static boolean c()
  {
    return ("unknown".equals(Build.BOARD)) && ("generic".equals(Build.DEVICE)) && ("generic".equals(Build.BRAND));
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool2 = false;
    if (b != null) {
      return b.booleanValue();
    }
    paramContext = paramContext.getPackageManager().resolveActivity(new Intent(paramContext, AdActivity.class), 65536);
    boolean bool1 = true;
    if ((paramContext == null) || (paramContext.activityInfo == null))
    {
      a.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
      bool1 = bool2;
    }
    for (;;)
    {
      b = Boolean.valueOf(bool1);
      return bool1;
      if ((paramContext.activityInfo.configChanges & 0x10) == 0)
      {
        a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboard.");
        bool1 = false;
      }
      if ((paramContext.activityInfo.configChanges & 0x20) == 0)
      {
        a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboardHidden.");
        bool1 = false;
      }
      if ((paramContext.activityInfo.configChanges & 0x80) == 0)
      {
        a.b("The android:configChanges value of the com.google.ads.AdActivity must include orientation.");
        bool1 = bool2;
      }
    }
  }
  
  public static String d(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (paramContext == null) {
      return null;
    }
    switch (paramContext.getType())
    {
    default: 
      return "unknown";
    case 0: 
      return "ed";
    }
    return "wi";
  }
  
  public static boolean d()
  {
    return f;
  }
  
  public static String e(Context paramContext)
  {
    if (d == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramContext = paramContext.getPackageManager();
      List localList = paramContext.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
      if ((localList == null) || (localList.size() == 0)) {
        localStringBuilder.append("m");
      }
      localList = paramContext.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 65536);
      if ((localList == null) || (localList.size() == 0))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("a");
      }
      paramContext = paramContext.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 65536);
      if ((paramContext == null) || (paramContext.size() == 0))
      {
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append("t");
      }
      d = localStringBuilder.toString();
    }
    return d;
  }
  
  public static a f(Context paramContext)
  {
    if (e == null) {
      e = (AudioManager)paramContext.getSystemService("audio");
    }
    paramContext = a.f;
    int i = e.getMode();
    if (c()) {
      return a.e;
    }
    if ((e.isMusicActive()) || (e.isSpeakerphoneOn()) || (i == 2) || (i == 1)) {
      return a.d;
    }
    i = e.getRingerMode();
    if ((i == 0) || (i == 1)) {
      return a.d;
    }
    return a.b;
  }
  
  public static void g(Context paramContext)
  {
    if (g) {
      return;
    }
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(new UserActivityReceiver(), localIntentFilter);
    g = true;
  }
  
  private static String h(Context paramContext)
  {
    if (h == null)
    {
      Object localObject1 = new WebView(paramContext).getSettings().getUserAgentString();
      if ((localObject1 != null) && (((String)localObject1).length() != 0))
      {
        paramContext = (Context)localObject1;
        if (!((String)localObject1).equals("Java0")) {}
      }
      else
      {
        String str1 = System.getProperty("os.name", "Linux");
        String str2 = "Android " + Build.VERSION.RELEASE;
        Object localObject2 = Locale.getDefault();
        localObject1 = ((Locale)localObject2).getLanguage().toLowerCase(Locale.US);
        paramContext = (Context)localObject1;
        if (((String)localObject1).length() == 0) {
          paramContext = "en";
        }
        localObject2 = ((Locale)localObject2).getCountry().toLowerCase(Locale.US);
        localObject1 = paramContext;
        if (((String)localObject2).length() > 0) {
          localObject1 = paramContext + "-" + (String)localObject2;
        }
        paramContext = Build.MODEL + " Build/" + Build.ID;
        paramContext = "Mozilla/5.0 (" + str1 + "; U; " + str2 + "; " + (String)localObject1 + "; " + paramContext + ") AppleWebKit/0.0 (KHTML, like " + "Gecko) Version/0.0 Mobile Safari/0.0";
      }
      h = paramContext + " (Mobile; " + "afma-sdk-a-v" + "4.1.1" + ")";
    }
    return h;
  }
  
  public static class UserActivityReceiver
    extends BroadcastReceiver
  {
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction().equals("android.intent.action.USER_PRESENT")) {
        AdUtil.a(true);
      }
      while (!paramIntent.getAction().equals("android.intent.action.SCREEN_OFF")) {
        return;
      }
      AdUtil.a(false);
    }
  }
  
  public static enum a
  {
    private a() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.util.AdUtil
 * JD-Core Version:    0.7.0.1
 */