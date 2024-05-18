package net.daum.adam.publisher.impl;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.widget.RelativeLayout;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import net.daum.adam.publisher.impl.d.c;

public final class g
{
  public static final String a = "network";
  public static final String b = "netoperator";
  public static final String c = "gps";
  public static final String d = "noaction";
  public static final String e = "wifi";
  public static final String f = "3g";
  private static final String g = "AdParameterHelper";
  private static String h = null;
  private static String i = null;
  private static List<String> j = null;
  private static List<String> k = null;
  private static String o = null;
  private static final String r = "12586269025";
  private Context l;
  private String m = "xml2";
  private String n = null;
  private String p = null;
  private String q = null;
  
  public g(Context paramContext)
  {
    this.l = paramContext;
    if (o == null) {
      o = a(this.l);
    }
  }
  
  private String a(Context paramContext)
  {
    if (!b("android.permission.ACCESS_WIFI_STATE")) {
      return null;
    }
    for (;;)
    {
      try
      {
        localObject1 = MessageDigest.getInstance("SHA-256");
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        try
        {
          paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
          if ((paramContext == null) || (paramContext.getMacAddress() == null)) {
            break label205;
          }
          paramContext = paramContext.getMacAddress().toLowerCase().replaceAll(":", "");
          e.b("AdParameterHelper", "Mac Address(Plain) : " + paramContext);
          if ((paramContext == null) || (localObject1 == null)) {
            break;
          }
          ((MessageDigest)localObject1).reset();
          ((MessageDigest)localObject1).update(paramContext.getBytes());
          paramContext = ((MessageDigest)localObject1).digest();
          Object localObject1 = new StringBuffer();
          int i1 = 0;
          Object localObject2;
          if (i1 < paramContext.length)
          {
            ((StringBuffer)localObject1).append(Integer.toString((paramContext[i1] & 0xFF) + 256, 16).substring(1));
            i1 += 1;
            continue;
            localNoSuchAlgorithmException = localNoSuchAlgorithmException;
            localNoSuchAlgorithmException.printStackTrace();
            localObject2 = null;
            continue;
          }
          paramContext = localObject2.toString();
        }
        catch (Exception paramContext)
        {
          e.a("AdParameterHelper", "getDeviceKey() - Exception occurs while getting wifi infomation.", paramContext);
          return null;
        }
      }
      e.b("AdParameterHelper", "Mac Address(SHA-256)" + paramContext);
      return paramContext;
      label205:
      paramContext = null;
    }
  }
  
  private static String a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      return null;
    }
    int i2 = paramString1.length();
    int i3 = paramString2.length();
    String str = "";
    int i1 = 0;
    while (i1 != i3)
    {
      int i4 = paramString1.charAt(i1 % i2);
      int i5 = paramString2.charAt(i1);
      str = str + (char)((i4 - 76 ^ i5 - 76) + 76);
      i1 += 1;
    }
    return new String(str);
  }
  
  private void a(HashMap<String, Object> paramHashMap, List<String> paramList)
  {
    if ((paramList != null) && (paramList.contains("gps")))
    {
      e.b("AdParameterHelper", "위치 정보를 파라미터에 추가");
      e.b("AdParameterHelper", "위치 정보 : " + h + ", " + i);
      paramHashMap.put("gps_la", h);
      paramHashMap.put("gps_lo", i);
    }
  }
  
  public static void a(List<String> paramList)
  {
    j = paramList;
  }
  
  public static boolean a(RelativeLayout paramRelativeLayout)
  {
    paramRelativeLayout = new g(paramRelativeLayout.getContext());
    return (paramRelativeLayout.b("android.permission.ACCESS_WIFI_STATE")) && (paramRelativeLayout.b("android.permission.INTERNET"));
  }
  
  public static void b(List<String> paramList)
  {
    k = paramList;
  }
  
  private HashMap<String, Object> d()
    throws UnsupportedEncodingException, AdException
  {
    HashMap localHashMap = new HashMap();
    if (b() == null) {
      throw new AdException(AdError.AD_DOWNLOAD_ERROR_UNKNOWN_CLIENTID);
    }
    localHashMap.put("devid", o);
    if (this.n != null) {
      localHashMap.put("client", this.n);
    }
    localHashMap.put("ct", "AA");
    localHashMap.put("sdkver", URLEncoder.encode("2.0.3.0", "UTF8"));
    if (e.g()) {}
    for (String str = "y";; str = "n")
    {
      localHashMap.put("test", str);
      localHashMap.put("output", URLEncoder.encode(this.m, "UTF8"));
      localHashMap.put("oe", "utf8");
      localHashMap.put("ie", "utf8");
      if (this.p != null) {
        localHashMap.put("network", this.p);
      }
      if (this.q != null) {
        localHashMap.put("netoperator", this.q);
      }
      return localHashMap;
    }
  }
  
  public HashMap<String, Object> a()
    throws UnsupportedEncodingException, AdException
  {
    HashMap localHashMap = d();
    localHashMap.put("dev", URLEncoder.encode(Build.MODEL, "UTF8"));
    localHashMap.put("osver", URLEncoder.encode(Build.VERSION.RELEASE, "UTF8"));
    a(localHashMap, j);
    return localHashMap;
  }
  
  public HashMap<String, Object> a(Boolean paramBoolean)
    throws UnsupportedEncodingException, AdException
  {
    HashMap localHashMap = d();
    if (paramBoolean == null)
    {
      a(localHashMap, k);
      return localHashMap;
    }
    if (paramBoolean.booleanValue()) {}
    for (paramBoolean = "y";; paramBoolean = "n")
    {
      localHashMap.put("isagree", paramBoolean);
      return localHashMap;
    }
  }
  
  public void a(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = new c().e(paramDouble1, paramDouble2, 10, -1.0D, -1.0D, -1.0D, -1.0D);
    h = a("12586269025", String.valueOf((int)arrayOfDouble[0]));
    i = a("12586269025", String.valueOf((int)arrayOfDouble[1]));
    e.b("AdParameterHelper", "위치 정보 가져오기 및 암호화");
    e.b("AdParameterHelper", "위도 : " + paramDouble1 + "(" + h + ")");
    e.b("AdParameterHelper", "경도 : " + paramDouble2 + "(" + i + ")");
  }
  
  public void a(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 1))
    {
      this.n = null;
      return;
    }
    this.n = paramString;
  }
  
  public String b()
  {
    return this.n;
  }
  
  public boolean b(String paramString)
  {
    return this.l.getApplicationContext().checkCallingOrSelfPermission(paramString) == 0;
  }
  
  public void c(String paramString)
  {
    this.q = paramString;
  }
  
  public boolean c()
  {
    return (b("android.permission.ACCESS_FINE_LOCATION")) || (b("android.permission.ACCESS_COARSE_LOCATION"));
  }
  
  public void d(String paramString)
  {
    this.p = paramString;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.g
 * JD-Core Version:    0.7.0.1
 */