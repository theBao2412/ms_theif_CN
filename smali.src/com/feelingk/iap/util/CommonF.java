package com.feelingk.iap.util;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.feelingk.iap.encryption.CryptoManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class CommonF
{
  static final String TAG = "Util.CommonF";
  public static int mCarrier = 0;
  public static String mMDN;
  static int m_UsimState = 0;
  static long timeDiff = 0L;
  
  static
  {
    mMDN = null;
  }
  
  public static String addLineEndString(String paramString1, int paramInt, String paramString2)
  {
    if (paramString1 == null) {
      paramString1 = "";
    }
    char[] arrayOfChar;
    StringBuffer localStringBuffer;
    int i;
    int j;
    do
    {
      return paramString1;
      arrayOfChar = paramString1.toCharArray();
      localStringBuffer = new StringBuffer("");
      i = 0;
      j = 0;
      if (j < paramString1.length()) {
        break;
      }
      paramString2 = localStringBuffer.toString();
      paramString1 = paramString2;
    } while (!paramString2.endsWith("-"));
    return paramString2.substring(0, paramString2.length() - 1);
    if (arrayOfChar[j] < 'Ā')
    {
      i += 1;
      label84:
      if (i < paramInt) {
        break label122;
      }
      i = 0;
      localStringBuffer.append(arrayOfChar[j]).append(paramString2);
    }
    for (;;)
    {
      j += 1;
      break;
      i += 2;
      break label84;
      label122:
      localStringBuffer.append(arrayOfChar[j]);
    }
  }
  
  public static String convertMDN(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("+82", 0)) {
      str = String.format("0%s", new Object[] { paramString.substring(3) });
    }
    if (paramString.startsWith("82", 0)) {
      str = String.format("0%s", new Object[] { paramString.substring(2) });
    }
    LOGGER.e("Util.CommonF", "converMDN=" + str);
    return str;
  }
  
  public static int getCarrier(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext == null) {}
    do
    {
      do
      {
        return 0;
        paramContext = paramContext.getSimOperator();
      } while (paramContext == null);
      if (paramContext.indexOf("05") != -1) {
        return 1;
      }
      if ((paramContext.indexOf("02") != -1) || (paramContext.indexOf("04") != -1) || (paramContext.indexOf("08") != -1)) {
        return 2;
      }
    } while (paramContext.indexOf("06") == -1);
    return 3;
  }
  
  public static String getIMEI(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    try
    {
      paramContext = CryptoManager.encrypt(paramContext);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  public static String getMDN(Context paramContext, int paramInt)
  {
    if (mMDN == null)
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext == null) {
        paramContext = null;
      }
      String str;
      do
      {
        return paramContext;
        str = paramContext.getLine1Number();
        mMDN = str;
        LOGGER.i("Util.CommonF", "phoneNumber=" + str);
        LOGGER.i("Util.CommonF", "mMDN=" + mMDN);
        if (paramInt == 2) {
          break;
        }
        paramContext = str;
      } while (paramInt != 3);
      mMDN = convertMDN(str);
      return mMDN;
    }
    return mMDN;
  }
  
  public static String getModelName(Context paramContext)
  {
    StringTokenizer localStringTokenizer = new StringTokenizer(Build.MODEL, " ", false);
    for (paramContext = "";; paramContext = paramContext + localStringTokenizer.nextElement()) {
      if (!localStringTokenizer.hasMoreElements())
      {
        LOGGER.i("Util.CommonF", "convertModelName: " + paramContext);
        return paramContext;
      }
    }
  }
  
  public static String getSTRFilter(String paramString)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "";
    arrayOfString[1] = "[%]";
    arrayOfString[2] = "[&]";
    int i = 0;
    for (;;)
    {
      if (i >= arrayOfString.length) {
        return paramString;
      }
      paramString = paramString.replaceAll(arrayOfString[i], "");
      i += 1;
    }
  }
  
  public static String getTID(Context paramContext, String paramString)
  {
    return String.format("%s_%s", new Object[] { new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()), paramString });
  }
  
  public static long getTimeDifference(String paramString1, String paramString2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar1.set(Integer.parseInt(paramString1.substring(0, 4)), Integer.parseInt(paramString1.substring(4, 6)), Integer.parseInt(paramString1.substring(6, 8)), Integer.parseInt(paramString1.substring(8, 10)), Integer.parseInt(paramString1.substring(10, 12)), Integer.parseInt(paramString1.substring(12, 14)));
    localCalendar2.set(Integer.parseInt(paramString2.substring(0, 4)), Integer.parseInt(paramString2.substring(4, 6)), Integer.parseInt(paramString2.substring(6, 8)), Integer.parseInt(paramString2.substring(8, 10)), Integer.parseInt(paramString2.substring(10, 12)), Integer.parseInt(paramString2.substring(12, 14)));
    timeDiff = (localCalendar2.getTime().getTime() - localCalendar1.getTime().getTime()) / 1000L;
    LOGGER.i("Util.CommonF", "timeDiff: " + timeDiff);
    return timeDiff;
  }
  
  /* Error */
  public static String getUAProfileData(int paramInt)
  {
    // Byte code:
    //   0: ldc 11
    //   2: new 92	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 253
    //   8: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: iload_0
    //   12: invokevirtual 256	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   15: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 157	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: ldc_w 258
    //   24: astore_1
    //   25: getstatic 169	android/os/Build:MODEL	Ljava/lang/String;
    //   28: astore_2
    //   29: ldc 11
    //   31: new 92	java/lang/StringBuilder
    //   34: dup
    //   35: ldc_w 260
    //   38: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: aload_2
    //   42: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 157	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: iload_0
    //   52: iconst_1
    //   53: if_icmpeq +15 -> 68
    //   56: ldc 11
    //   58: ldc_w 262
    //   61: invokestatic 157	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: ldc_w 258
    //   67: areturn
    //   68: aload_2
    //   69: ldc_w 264
    //   72: invokevirtual 124	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   75: iconst_m1
    //   76: if_icmpeq +7 -> 83
    //   79: ldc_w 266
    //   82: areturn
    //   83: aload_2
    //   84: ldc_w 268
    //   87: invokevirtual 124	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   90: iconst_m1
    //   91: if_icmpeq +7 -> 98
    //   94: ldc_w 270
    //   97: areturn
    //   98: aload_2
    //   99: ldc_w 272
    //   102: invokevirtual 124	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   105: iconst_m1
    //   106: if_icmpeq +7 -> 113
    //   109: ldc_w 274
    //   112: areturn
    //   113: new 276	java/io/File
    //   116: dup
    //   117: ldc_w 278
    //   120: invokespecial 279	java/io/File:<init>	(Ljava/lang/String;)V
    //   123: astore_2
    //   124: new 281	java/io/FileReader
    //   127: dup
    //   128: aload_2
    //   129: invokespecial 284	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   132: astore 5
    //   134: new 286	java/io/BufferedReader
    //   137: dup
    //   138: aload 5
    //   140: invokespecial 289	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   143: astore 6
    //   145: aload_1
    //   146: astore_2
    //   147: aload_1
    //   148: astore_3
    //   149: aload_1
    //   150: astore 4
    //   152: aload 6
    //   154: invokevirtual 292	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   157: iconst_0
    //   158: bipush 25
    //   160: invokevirtual 64	java/lang/String:substring	(II)Ljava/lang/String;
    //   163: astore 7
    //   165: aload_1
    //   166: astore_2
    //   167: aload_1
    //   168: astore_3
    //   169: aload_1
    //   170: astore 4
    //   172: ldc 11
    //   174: new 92	java/lang/StringBuilder
    //   177: dup
    //   178: ldc_w 294
    //   181: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: aload 7
    //   186: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokestatic 157	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   195: aload_1
    //   196: astore_2
    //   197: aload_1
    //   198: astore_3
    //   199: aload_1
    //   200: astore 4
    //   202: aload 6
    //   204: invokevirtual 297	java/io/BufferedReader:close	()V
    //   207: aload_1
    //   208: astore_2
    //   209: aload_1
    //   210: astore_3
    //   211: aload_1
    //   212: astore 4
    //   214: aload 5
    //   216: invokevirtual 298	java/io/FileReader:close	()V
    //   219: aload_1
    //   220: astore_2
    //   221: aload_1
    //   222: astore_3
    //   223: aload_1
    //   224: astore 4
    //   226: aload 7
    //   228: iconst_5
    //   229: bipush 9
    //   231: invokevirtual 64	java/lang/String:substring	(II)Ljava/lang/String;
    //   234: astore_1
    //   235: aload_1
    //   236: astore_2
    //   237: aload_1
    //   238: astore_3
    //   239: aload_1
    //   240: astore 4
    //   242: ldc 11
    //   244: new 92	java/lang/StringBuilder
    //   247: dup
    //   248: ldc_w 300
    //   251: invokespecial 95	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload_1
    //   255: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 157	com/feelingk/iap/util/CommonF$LOGGER:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   264: aload_1
    //   265: areturn
    //   266: astore_1
    //   267: aload_1
    //   268: invokevirtual 301	java/io/FileNotFoundException:printStackTrace	()V
    //   271: aload_2
    //   272: areturn
    //   273: astore_2
    //   274: aload_2
    //   275: invokevirtual 302	java/io/IOException:printStackTrace	()V
    //   278: aload_1
    //   279: areturn
    //   280: astore_2
    //   281: aload_2
    //   282: invokevirtual 147	java/lang/Exception:printStackTrace	()V
    //   285: aload_1
    //   286: areturn
    //   287: astore_2
    //   288: goto -7 -> 281
    //   291: astore_2
    //   292: aload_3
    //   293: astore_1
    //   294: goto -13 -> 281
    //   297: astore_2
    //   298: goto -24 -> 274
    //   301: astore_2
    //   302: aload 4
    //   304: astore_1
    //   305: goto -31 -> 274
    //   308: astore_3
    //   309: aload_1
    //   310: astore_2
    //   311: aload_3
    //   312: astore_1
    //   313: goto -46 -> 267
    //   316: astore_3
    //   317: aload_1
    //   318: astore_2
    //   319: aload_3
    //   320: astore_1
    //   321: goto -54 -> 267
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	324	0	paramInt	int
    //   24	241	1	str1	String
    //   266	20	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   293	28	1	localObject1	Object
    //   28	244	2	localObject2	Object
    //   273	2	2	localIOException1	java.io.IOException
    //   280	2	2	localException1	Exception
    //   287	1	2	localException2	Exception
    //   291	1	2	localException3	Exception
    //   297	1	2	localIOException2	java.io.IOException
    //   301	1	2	localIOException3	java.io.IOException
    //   310	9	2	localObject3	Object
    //   148	145	3	str2	String
    //   308	4	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   316	4	3	localFileNotFoundException3	java.io.FileNotFoundException
    //   150	153	4	str3	String
    //   132	83	5	localFileReader	java.io.FileReader
    //   143	60	6	localBufferedReader	java.io.BufferedReader
    //   163	64	7	str4	String
    // Exception table:
    //   from	to	target	type
    //   152	165	266	java/io/FileNotFoundException
    //   172	195	266	java/io/FileNotFoundException
    //   202	207	266	java/io/FileNotFoundException
    //   214	219	266	java/io/FileNotFoundException
    //   226	235	266	java/io/FileNotFoundException
    //   242	264	266	java/io/FileNotFoundException
    //   124	134	273	java/io/IOException
    //   124	134	280	java/lang/Exception
    //   134	145	287	java/lang/Exception
    //   152	165	291	java/lang/Exception
    //   172	195	291	java/lang/Exception
    //   202	207	291	java/lang/Exception
    //   214	219	291	java/lang/Exception
    //   226	235	291	java/lang/Exception
    //   242	264	291	java/lang/Exception
    //   134	145	297	java/io/IOException
    //   152	165	301	java/io/IOException
    //   172	195	301	java/io/IOException
    //   202	207	301	java/io/IOException
    //   214	219	301	java/io/IOException
    //   226	235	301	java/io/IOException
    //   242	264	301	java/io/IOException
    //   124	134	308	java/io/FileNotFoundException
    //   134	145	316	java/io/FileNotFoundException
  }
  
  public static void setCarrier(Context paramContext, int paramInt)
  {
    if (paramInt == 1) {
      mCarrier = 1;
    }
    do
    {
      return;
      if (paramInt == 2)
      {
        mCarrier = 2;
        return;
      }
    } while (paramInt != 3);
    mCarrier = 3;
  }
  
  public static void setMDN(String paramString)
  {
    mMDN = paramString;
  }
  
  public static final class LOGGER
  {
    public static void e(String paramString1, String paramString2)
    {
      Log.e(paramString1, paramString2);
    }
    
    public static void ex(String paramString1, String paramString2)
    {
      Log.w(paramString1, "Exception : " + paramString2);
    }
    
    public static void i(String paramString1, String paramString2)
    {
      Log.i(paramString1, paramString2);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.feelingk.iap.util.CommonF
 * JD-Core Version:    0.7.0.1
 */