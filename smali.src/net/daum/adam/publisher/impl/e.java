package net.daum.adam.publisher.impl;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpHost;

public final class e
{
  public static final float a = 50.0F;
  public static final float b = 1.0F;
  protected static final String c = "2.0.3.0";
  private static final String d = "AdCommom";
  private static final String e = "http://m1.daumcdn.net/image.bizshop/ui/adquest/m/rm_x_and_v1.png";
  private static final int f = 8000;
  private static boolean g = true;
  private static Map<String, String> h = new HashMap();
  private static String i = "http://alea.adam.daum.net/imp";
  private static String j = "http://lia.mobile.biz.daum.net/listen";
  private static boolean k = false;
  private static boolean l = false;
  private static Bitmap m = null;
  
  public static Drawable a(Context paramContext, String paramString)
  {
    boolean bool = true;
    try
    {
      paramContext = BitmapFactory.decodeStream(paramContext.getAssets().open(paramString));
      Bitmap localBitmap = Bitmap.createScaledBitmap(paramContext, (int)(paramContext.getWidth() * 1.5D), (int)(paramContext.getHeight() * 1.5D), true);
      paramString = new StringBuilder().append("FILE : ").append(paramString).append(" STATUS : ");
      if ((paramContext != null) && (localBitmap != null)) {}
      for (;;)
      {
        b("AdCommom", String.valueOf(bool));
        if (localBitmap == null) {
          break;
        }
        paramContext = new BitmapDrawable(localBitmap);
        return paramContext;
        bool = false;
      }
      return null;
    }
    catch (IOException paramContext)
    {
      b("AdCommom", paramContext.toString());
    }
  }
  
  protected static String a(String paramString)
  {
    return (String)h.get(paramString);
  }
  
  public static void a(View paramView)
  {
    if (paramView == null) {}
    do
    {
      return;
      paramView.setBackgroundDrawable(null);
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int i1 = localViewGroup.getChildCount();
        int n = 0;
        while (n < i1)
        {
          a(localViewGroup.getChildAt(n));
          n += 1;
        }
        if (!(paramView instanceof AdapterView)) {
          localViewGroup.removeAllViews();
        }
      }
    } while (!(paramView instanceof ImageView));
    ((ImageView)paramView).setImageDrawable(null);
  }
  
  protected static void a(String paramString1, String paramString2)
  {
    h.put(paramString1, paramString2);
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    String str;
    StringBuilder localStringBuilder;
    if (h())
    {
      str = b();
      localStringBuilder = new StringBuilder();
      if (paramString1.length() <= 0) {
        break label71;
      }
    }
    label71:
    for (paramString1 = "[" + paramString1 + "] ";; paramString1 = "")
    {
      Log.e(str, paramString1 + paramString2, paramThrowable);
      return;
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    Log.e(b(), "[ERROR] " + paramString, paramThrowable);
  }
  
  public static void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public static boolean a()
  {
    return g;
  }
  
  public static String b()
  {
    return "Ad@mSdkVer_2.0.3.0";
  }
  
  public static void b(String paramString)
  {
    Log.w(b(), "[WARNING] " + paramString);
  }
  
  public static void b(String paramString1, String paramString2)
  {
    String str;
    StringBuilder localStringBuilder;
    if (h())
    {
      str = b();
      localStringBuilder = new StringBuilder();
      if (paramString1.length() <= 0) {
        break label68;
      }
    }
    label68:
    for (paramString1 = "[" + paramString1 + "] ";; paramString1 = "")
    {
      Log.d(str, paramString1 + paramString2);
      return;
    }
  }
  
  protected static void b(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public static HttpHost c()
  {
    String str1 = a("HTTP_PROXY_HOST");
    String str2 = a("HTTP_PROXY_PORT");
    if ((str1 != null) && (str2 != null) && (str1.length() > 0) && (str2.length() > 0))
    {
      System.setProperty("http.proxyHost", str1);
      System.setProperty("https.proxyHost", str1);
      System.setProperty("http.proxyPort", str2);
      System.setProperty("https.proxyPort", str2);
      return new HttpHost(str1, Integer.parseInt(str2, 10));
    }
    System.clearProperty("http.proxyHost");
    System.clearProperty("https.proxyHost");
    System.clearProperty("http.proxyPort");
    System.clearProperty("https.proxyPort");
    return null;
  }
  
  public static void c(String paramString)
  {
    Log.i(b(), "[INFO] " + paramString);
  }
  
  protected static void c(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  public static int d()
  {
    return 8000;
  }
  
  public static void d(String paramString)
  {
    Log.e(b(), "[ERROR] " + paramString);
  }
  
  /* Error */
  public static Bitmap e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: ldc 2
    //   5: invokevirtual 250	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   8: aload_0
    //   9: invokevirtual 256	java/lang/ClassLoader:getResource	(Ljava/lang/String;)Ljava/net/URL;
    //   12: invokevirtual 261	java/net/URL:getFile	()Ljava/lang/String;
    //   15: astore_3
    //   16: aload_3
    //   17: astore_2
    //   18: aload_3
    //   19: ldc_w 263
    //   22: invokevirtual 267	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   25: ifeq +9 -> 34
    //   28: aload_3
    //   29: iconst_5
    //   30: invokevirtual 271	java/lang/String:substring	(I)Ljava/lang/String;
    //   33: astore_2
    //   34: aload_2
    //   35: ldc_w 273
    //   38: invokevirtual 277	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   41: istore_1
    //   42: aload_2
    //   43: astore_3
    //   44: iload_1
    //   45: ifle +10 -> 55
    //   48: aload_2
    //   49: iconst_0
    //   50: iload_1
    //   51: invokevirtual 280	java/lang/String:substring	(II)Ljava/lang/String;
    //   54: astore_3
    //   55: new 282	java/util/jar/JarFile
    //   58: dup
    //   59: aload_3
    //   60: invokespecial 284	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   63: astore_2
    //   64: aload_2
    //   65: aload_2
    //   66: aload_0
    //   67: invokevirtual 288	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   70: invokevirtual 292	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   73: astore_0
    //   74: aload_0
    //   75: astore_2
    //   76: aload_0
    //   77: invokestatic 81	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   80: astore_3
    //   81: aload_0
    //   82: astore_2
    //   83: aload_3
    //   84: aload_3
    //   85: invokevirtual 87	android/graphics/Bitmap:getWidth	()I
    //   88: i2f
    //   89: ldc_w 293
    //   92: fmul
    //   93: invokestatic 299	java/lang/Math:round	(F)I
    //   96: aload_3
    //   97: invokevirtual 92	android/graphics/Bitmap:getHeight	()I
    //   100: i2f
    //   101: ldc_w 293
    //   104: fmul
    //   105: invokestatic 299	java/lang/Math:round	(F)I
    //   108: iconst_0
    //   109: invokestatic 96	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   112: astore_3
    //   113: aload_3
    //   114: astore_2
    //   115: aload_2
    //   116: astore_3
    //   117: aload_0
    //   118: ifnull +9 -> 127
    //   121: aload_0
    //   122: invokevirtual 304	java/io/InputStream:close	()V
    //   125: aload_2
    //   126: astore_3
    //   127: aload_3
    //   128: areturn
    //   129: astore_0
    //   130: ldc 16
    //   132: aload_0
    //   133: invokevirtual 305	java/lang/Exception:toString	()Ljava/lang/String;
    //   136: invokestatic 120	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   139: aload_2
    //   140: areturn
    //   141: astore_3
    //   142: aconst_null
    //   143: astore_0
    //   144: aload_0
    //   145: astore_2
    //   146: ldc 16
    //   148: aload_3
    //   149: invokevirtual 305	java/lang/Exception:toString	()Ljava/lang/String;
    //   152: invokestatic 120	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: aload 4
    //   157: astore_3
    //   158: aload_0
    //   159: ifnull -32 -> 127
    //   162: aload_0
    //   163: invokevirtual 304	java/io/InputStream:close	()V
    //   166: aconst_null
    //   167: areturn
    //   168: astore_0
    //   169: ldc 16
    //   171: aload_0
    //   172: invokevirtual 305	java/lang/Exception:toString	()Ljava/lang/String;
    //   175: invokestatic 120	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   178: aconst_null
    //   179: areturn
    //   180: astore_0
    //   181: aconst_null
    //   182: astore_2
    //   183: aload_2
    //   184: ifnull +7 -> 191
    //   187: aload_2
    //   188: invokevirtual 304	java/io/InputStream:close	()V
    //   191: aload_0
    //   192: athrow
    //   193: astore_2
    //   194: ldc 16
    //   196: aload_2
    //   197: invokevirtual 305	java/lang/Exception:toString	()Ljava/lang/String;
    //   200: invokestatic 120	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: goto -12 -> 191
    //   206: astore_0
    //   207: goto -24 -> 183
    //   210: astore_3
    //   211: goto -67 -> 144
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	214	0	paramString	String
    //   41	10	1	n	int
    //   17	171	2	localObject1	Object
    //   193	4	2	localException1	Exception
    //   15	113	3	localObject2	Object
    //   141	8	3	localException2	Exception
    //   157	1	3	localObject3	Object
    //   210	1	3	localException3	Exception
    //   1	155	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   121	125	129	java/lang/Exception
    //   3	16	141	java/lang/Exception
    //   18	34	141	java/lang/Exception
    //   34	42	141	java/lang/Exception
    //   48	55	141	java/lang/Exception
    //   55	74	141	java/lang/Exception
    //   162	166	168	java/lang/Exception
    //   3	16	180	finally
    //   18	34	180	finally
    //   34	42	180	finally
    //   48	55	180	finally
    //   55	74	180	finally
    //   187	191	193	java/lang/Exception
    //   76	81	206	finally
    //   83	113	206	finally
    //   146	155	206	finally
    //   76	81	210	java/lang/Exception
    //   83	113	210	java/lang/Exception
  }
  
  public static String e()
  {
    return i;
  }
  
  public static String f()
  {
    return j;
  }
  
  protected static void f(String paramString)
  {
    i = paramString;
  }
  
  protected static void g(String paramString)
  {
    j = paramString;
  }
  
  public static boolean g()
  {
    return k;
  }
  
  private static Bitmap h(String paramString)
  {
    b("AdCommom", "Fetch image : " + paramString);
    try
    {
      Object localObject = (HttpURLConnection)new URL(paramString).openConnection();
      ((HttpURLConnection)localObject).setReadTimeout(3000);
      ((HttpURLConnection)localObject).setDoInput(true);
      ((HttpURLConnection)localObject).connect();
      localObject = BitmapFactory.decodeStream(new k(((HttpURLConnection)localObject).getInputStream()));
      return localObject;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      b("AdCommom", "fetchImage passed invalid URL : " + paramString);
      return null;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        b("AdCommom", "fetchImage IO exception : " + paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        b("AdCommom", "fetchImage exception : " + paramString);
      }
    }
  }
  
  public static boolean h()
  {
    return l;
  }
  
  public static Bitmap i()
  {
    try
    {
      if (m == null)
      {
        m = h("http://m1.daumcdn.net/image.bizshop/ui/adquest/m/rm_x_and_v1.png");
        if (m.getWidth() > 0) {
          b("AdCommom", "Close button has been downloaded.");
        }
      }
      return m;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        b("AdCommom", "Use default close image.");
        m = e("assets/close_button_normal.png");
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.e
 * JD-Core Version:    0.7.0.1
 */