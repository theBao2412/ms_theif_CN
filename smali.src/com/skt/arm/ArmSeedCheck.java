package com.skt.arm;

import android.content.Context;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;

public class ArmSeedCheck
{
  private static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier()
  {
    public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      return true;
    }
  };
  private static Context mContext;
  public static String mProductNum = "";
  
  public ArmSeedCheck(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private static HttpURLConnection createHttpConnector(String paramString)
    throws Exception
  {
    System.setProperty("http.keepAlive", "false");
    Object localObject1 = new X509TrustManager()
    {
      public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
      
      public X509Certificate[] getAcceptedIssuers()
      {
        return null;
      }
    };
    try
    {
      Object localObject2 = SSLContext.getInstance("TLS");
      SecureRandom localSecureRandom = new SecureRandom();
      ((SSLContext)localObject2).init(null, new TrustManager[] { localObject1 }, localSecureRandom);
      HttpsURLConnection.setDefaultSSLSocketFactory(((SSLContext)localObject2).getSocketFactory());
      label53:
      localObject1 = (HttpURLConnection)new URL(paramString).openConnection();
      if ((localObject1 instanceof HttpsURLConnection))
      {
        ((HttpsURLConnection)localObject1).setHostnameVerifier(DO_NOT_VERIFY);
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier()
        {
          public boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
          {
            return true;
          }
        });
      }
      localObject2 = ArmUtil.extractHostFromURL(paramString);
      int i = ArmUtil.extractPortFromURL(paramString);
      ArmLog.d("Arm plug-in", "++ strHost=" + (String)localObject2);
      ArmLog.d("Arm plug-in", "++ nPort=" + i);
      paramString = "N";
      if (ArmUtil.isEnableWifi(mContext)) {
        paramString = "Y";
      }
      ArmLog.d("Arm plug-in", "++ strIsWifi=%s" + paramString);
      ((HttpURLConnection)localObject1).setDefaultUseCaches(false);
      ((HttpURLConnection)localObject1).setDoInput(true);
      ((HttpURLConnection)localObject1).setRequestMethod("GET");
      ArmLog.d("Arm plug-in", "++ RequestMethod( GET ) ");
      ((HttpURLConnection)localObject1).setRequestProperty("Host", localObject2 + ":" + i);
      ((HttpURLConnection)localObject1).setRequestProperty("Accept-Language", "euc-kr");
      ((HttpURLConnection)localObject1).setRequestProperty("User-Agent", "");
      ((HttpURLConnection)localObject1).setRequestProperty("Content-Type", "application/octet-stream");
      ((HttpURLConnection)localObject1).setRequestProperty("Cookie", "OMPSESSIONID=45auikq,6789asfd7ujk");
      ((HttpURLConnection)localObject1).setRequestProperty("Connection", "Keep-Alive");
      ((HttpURLConnection)localObject1).setRequestProperty("Is-Wifi", paramString);
      return localObject1;
    }
    catch (Exception localException)
    {
      break label53;
    }
  }
  
  public static HttpClient getNewHttpClient()
  {
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new MySSLSocketFactory((KeyStore)localObject);
      ((org.apache.http.conn.ssl.SSLSocketFactory)localObject).setHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      localObject = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return localObject;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  /* Error */
  public static String getProductID(String paramString)
  {
    // Byte code:
    //   0: getstatic 37	com/skt/arm/ArmSeedCheck:mContext	Landroid/content/Context;
    //   3: invokestatic 278	com/skt/arm/ArmUtil:getMDN	(Landroid/content/Context;)Ljava/lang/String;
    //   6: astore 6
    //   8: getstatic 37	com/skt/arm/ArmSeedCheck:mContext	Landroid/content/Context;
    //   11: invokestatic 281	com/skt/arm/ArmUtil:getModelCode	(Landroid/content/Context;)Ljava/lang/String;
    //   14: astore 7
    //   16: getstatic 37	com/skt/arm/ArmSeedCheck:mContext	Landroid/content/Context;
    //   19: invokestatic 140	com/skt/arm/ArmUtil:isEnableWifi	(Landroid/content/Context;)Z
    //   22: istore_3
    //   23: getstatic 37	com/skt/arm/ArmSeedCheck:mContext	Landroid/content/Context;
    //   26: invokestatic 284	com/skt/arm/ArmUtil:isOtherCarrier	(Landroid/content/Context;)Z
    //   29: istore 4
    //   31: iload_3
    //   32: ifne +8 -> 40
    //   35: iload 4
    //   37: ifeq +587 -> 624
    //   40: ldc_w 286
    //   43: astore 5
    //   45: getstatic 289	com/skt/arm/ArmLog:tag	Ljava/lang/String;
    //   48: new 112	java/lang/StringBuilder
    //   51: dup
    //   52: ldc_w 291
    //   55: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   58: aload 5
    //   60: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: aconst_null
    //   70: checkcast 293	[B
    //   73: astore 8
    //   75: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   78: iconst_2
    //   79: iadd
    //   80: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   83: iadd
    //   84: getstatic 305	com/skt/arm/ArmProt:SIZE_SEED_TYPE	B
    //   87: iadd
    //   88: getstatic 308	com/skt/arm/ArmProt:SIZE_MDN_MACADDRESS	B
    //   91: iadd
    //   92: getstatic 311	com/skt/arm/ArmProt:SIZE_OSVERSION	B
    //   95: iadd
    //   96: newarray byte
    //   98: astore 8
    //   100: aload 8
    //   102: iconst_0
    //   103: getstatic 315	com/skt/arm/ArmProt:REQ_SEED_APP_NEW_VER	I
    //   106: bipush 8
    //   108: iushr
    //   109: i2b
    //   110: bastore
    //   111: aload 8
    //   113: iconst_1
    //   114: getstatic 315	com/skt/arm/ArmProt:REQ_SEED_APP_NEW_VER	I
    //   117: iconst_0
    //   118: iushr
    //   119: i2b
    //   120: bastore
    //   121: aload 6
    //   123: ifnull +31 -> 154
    //   126: aload 6
    //   128: ldc 25
    //   130: invokevirtual 319	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   133: ifne +21 -> 154
    //   136: iconst_0
    //   137: istore_2
    //   138: iconst_0
    //   139: istore_1
    //   140: iload_2
    //   141: aload 8
    //   143: arraylength
    //   144: if_icmpge +10 -> 154
    //   147: iload_1
    //   148: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   151: if_icmplt +481 -> 632
    //   154: iconst_0
    //   155: istore_2
    //   156: iconst_0
    //   157: istore_1
    //   158: iload_2
    //   159: aload 8
    //   161: arraylength
    //   162: if_icmpge +10 -> 172
    //   165: iload_1
    //   166: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   169: if_icmplt +506 -> 675
    //   172: aload_0
    //   173: ifnull +30 -> 203
    //   176: aload_0
    //   177: ldc 25
    //   179: invokevirtual 319	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   182: ifne +21 -> 203
    //   185: iconst_0
    //   186: istore_2
    //   187: iconst_0
    //   188: istore_1
    //   189: iload_2
    //   190: aload 8
    //   192: arraylength
    //   193: if_icmpge +10 -> 203
    //   196: iload_1
    //   197: getstatic 305	com/skt/arm/ArmProt:SIZE_SEED_TYPE	B
    //   200: if_icmplt +526 -> 726
    //   203: ldc 25
    //   205: ifnull +31 -> 236
    //   208: ldc 25
    //   210: ldc 25
    //   212: invokevirtual 319	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   215: ifne +21 -> 236
    //   218: iconst_0
    //   219: istore_2
    //   220: iconst_0
    //   221: istore_1
    //   222: iload_2
    //   223: aload 8
    //   225: arraylength
    //   226: if_icmpge +10 -> 236
    //   229: iload_1
    //   230: getstatic 311	com/skt/arm/ArmProt:SIZE_OSVERSION	B
    //   233: if_icmplt +550 -> 783
    //   236: new 112	java/lang/StringBuilder
    //   239: dup
    //   240: aload 5
    //   242: invokestatic 166	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   245: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   248: ldc_w 321
    //   251: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload 8
    //   256: aload 8
    //   258: arraylength
    //   259: invokestatic 325	com/skt/arm/ArmUtil:byteToHex	([BI)Ljava/lang/String;
    //   262: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: astore_0
    //   269: ldc 110
    //   271: new 112	java/lang/StringBuilder
    //   274: dup
    //   275: ldc_w 327
    //   278: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   281: aload_0
    //   282: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   291: aload_0
    //   292: invokestatic 329	com/skt/arm/ArmSeedCheck:createHttpConnector	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   295: astore_0
    //   296: aload_0
    //   297: sipush 15000
    //   300: invokevirtual 333	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   303: aload_0
    //   304: sipush 15000
    //   307: invokevirtual 336	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   310: aload_0
    //   311: invokevirtual 340	java/net/HttpURLConnection:getResponseCode	()I
    //   314: istore_1
    //   315: ldc 110
    //   317: new 112	java/lang/StringBuilder
    //   320: dup
    //   321: ldc_w 342
    //   324: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   327: iload_1
    //   328: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   331: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   337: aload_0
    //   338: invokevirtual 346	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   341: astore 5
    //   343: new 348	java/io/DataInputStream
    //   346: dup
    //   347: aload 5
    //   349: invokespecial 351	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   352: astore 6
    //   354: iconst_0
    //   355: istore_1
    //   356: sipush 16385
    //   359: newarray byte
    //   361: astore 7
    //   363: aload 6
    //   365: aload 7
    //   367: iload_1
    //   368: sipush 4096
    //   371: invokevirtual 355	java/io/DataInputStream:read	([BII)I
    //   374: istore_2
    //   375: iload_2
    //   376: ifgt +508 -> 884
    //   379: ldc 110
    //   381: new 112	java/lang/StringBuilder
    //   384: dup
    //   385: ldc_w 357
    //   388: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   391: iload_1
    //   392: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   395: ldc_w 359
    //   398: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   404: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   407: ldc 110
    //   409: new 112	java/lang/StringBuilder
    //   412: dup
    //   413: ldc_w 361
    //   416: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   419: aload 7
    //   421: invokevirtual 364	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   424: ldc_w 359
    //   427: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   433: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   436: aload 7
    //   438: iload_2
    //   439: invokestatic 325	com/skt/arm/ArmUtil:byteToHex	([BI)Ljava/lang/String;
    //   442: astore 7
    //   444: ldc 110
    //   446: new 112	java/lang/StringBuilder
    //   449: dup
    //   450: ldc_w 366
    //   453: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   456: aload 7
    //   458: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: ldc_w 359
    //   464: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   470: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   473: aload 7
    //   475: iconst_4
    //   476: bipush 8
    //   478: invokevirtual 370	java/lang/String:substring	(II)Ljava/lang/String;
    //   481: bipush 16
    //   483: invokestatic 376	java/lang/Integer:parseInt	(Ljava/lang/String;I)I
    //   486: istore_1
    //   487: ldc 110
    //   489: new 112	java/lang/StringBuilder
    //   492: dup
    //   493: ldc_w 378
    //   496: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   499: iload_1
    //   500: invokevirtual 134	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   503: ldc_w 359
    //   506: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   509: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   512: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   515: iload_1
    //   516: ifne +90 -> 606
    //   519: ldc 110
    //   521: new 112	java/lang/StringBuilder
    //   524: dup
    //   525: ldc_w 380
    //   528: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   531: aload 7
    //   533: invokestatic 383	com/skt/arm/ArmUtil:hexToASCII	(Ljava/lang/String;)Ljava/lang/String;
    //   536: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   539: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   542: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   545: aload 7
    //   547: invokestatic 383	com/skt/arm/ArmUtil:hexToASCII	(Ljava/lang/String;)Ljava/lang/String;
    //   550: astore 7
    //   552: aload 7
    //   554: ldc_w 385
    //   557: invokevirtual 388	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   560: istore_1
    //   561: iload_1
    //   562: iconst_m1
    //   563: if_icmpeq +19 -> 582
    //   566: aload 7
    //   568: iload_1
    //   569: bipush 20
    //   571: isub
    //   572: iload_1
    //   573: bipush 10
    //   575: isub
    //   576: invokevirtual 370	java/lang/String:substring	(II)Ljava/lang/String;
    //   579: putstatic 27	com/skt/arm/ArmSeedCheck:mProductNum	Ljava/lang/String;
    //   582: ldc 110
    //   584: new 112	java/lang/StringBuilder
    //   587: dup
    //   588: ldc_w 390
    //   591: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   594: getstatic 27	com/skt/arm/ArmSeedCheck:mProductNum	Ljava/lang/String;
    //   597: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   600: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   603: invokestatic 129	com/skt/arm/ArmLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   606: aload 5
    //   608: invokevirtual 395	java/io/InputStream:close	()V
    //   611: aload 6
    //   613: invokevirtual 396	java/io/DataInputStream:close	()V
    //   616: aload_0
    //   617: invokevirtual 399	java/net/HttpURLConnection:disconnect	()V
    //   620: getstatic 27	com/skt/arm/ArmSeedCheck:mProductNum	Ljava/lang/String;
    //   623: areturn
    //   624: ldc_w 401
    //   627: astore 5
    //   629: goto -584 -> 45
    //   632: iload_1
    //   633: aload 6
    //   635: invokevirtual 404	java/lang/String:length	()I
    //   638: if_icmpge +27 -> 665
    //   641: aload 8
    //   643: iload_2
    //   644: iconst_2
    //   645: iadd
    //   646: aload 6
    //   648: iload_1
    //   649: invokevirtual 408	java/lang/String:charAt	(I)C
    //   652: i2b
    //   653: bastore
    //   654: iload_2
    //   655: iconst_1
    //   656: iadd
    //   657: istore_2
    //   658: iload_1
    //   659: iconst_1
    //   660: iadd
    //   661: istore_1
    //   662: goto -522 -> 140
    //   665: aload 8
    //   667: iload_2
    //   668: iconst_2
    //   669: iadd
    //   670: iconst_0
    //   671: bastore
    //   672: goto -18 -> 654
    //   675: iload_1
    //   676: aload 7
    //   678: invokevirtual 404	java/lang/String:length	()I
    //   681: if_icmpge +31 -> 712
    //   684: aload 8
    //   686: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   689: iconst_2
    //   690: iadd
    //   691: iload_2
    //   692: iadd
    //   693: aload 7
    //   695: iload_1
    //   696: invokevirtual 408	java/lang/String:charAt	(I)C
    //   699: i2b
    //   700: bastore
    //   701: iload_2
    //   702: iconst_1
    //   703: iadd
    //   704: istore_2
    //   705: iload_1
    //   706: iconst_1
    //   707: iadd
    //   708: istore_1
    //   709: goto -551 -> 158
    //   712: aload 8
    //   714: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   717: iconst_2
    //   718: iadd
    //   719: iload_2
    //   720: iadd
    //   721: iconst_0
    //   722: bastore
    //   723: goto -22 -> 701
    //   726: iload_1
    //   727: aload_0
    //   728: invokevirtual 404	java/lang/String:length	()I
    //   731: if_icmpge +34 -> 765
    //   734: aload 8
    //   736: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   739: iconst_2
    //   740: iadd
    //   741: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   744: iadd
    //   745: iload_2
    //   746: iadd
    //   747: aload_0
    //   748: iload_1
    //   749: invokevirtual 408	java/lang/String:charAt	(I)C
    //   752: i2b
    //   753: bastore
    //   754: iload_2
    //   755: iconst_1
    //   756: iadd
    //   757: istore_2
    //   758: iload_1
    //   759: iconst_1
    //   760: iadd
    //   761: istore_1
    //   762: goto -573 -> 189
    //   765: aload 8
    //   767: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   770: iconst_2
    //   771: iadd
    //   772: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   775: iadd
    //   776: iload_2
    //   777: iadd
    //   778: iconst_0
    //   779: bastore
    //   780: goto -26 -> 754
    //   783: iload_1
    //   784: ldc 25
    //   786: invokevirtual 404	java/lang/String:length	()I
    //   789: if_icmpge +43 -> 832
    //   792: aload 8
    //   794: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   797: iconst_2
    //   798: iadd
    //   799: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   802: iadd
    //   803: getstatic 308	com/skt/arm/ArmProt:SIZE_MDN_MACADDRESS	B
    //   806: iadd
    //   807: getstatic 305	com/skt/arm/ArmProt:SIZE_SEED_TYPE	B
    //   810: iadd
    //   811: iload_2
    //   812: iadd
    //   813: ldc 25
    //   815: iload_1
    //   816: invokevirtual 408	java/lang/String:charAt	(I)C
    //   819: i2b
    //   820: bastore
    //   821: iload_2
    //   822: iconst_1
    //   823: iadd
    //   824: istore_2
    //   825: iload_1
    //   826: iconst_1
    //   827: iadd
    //   828: istore_1
    //   829: goto -607 -> 222
    //   832: aload 8
    //   834: getstatic 299	com/skt/arm/ArmProt:SIZE_MDN	B
    //   837: iconst_2
    //   838: iadd
    //   839: getstatic 302	com/skt/arm/ArmProt:SIZE_DEVICECODE	B
    //   842: iadd
    //   843: getstatic 308	com/skt/arm/ArmProt:SIZE_MDN_MACADDRESS	B
    //   846: iadd
    //   847: getstatic 305	com/skt/arm/ArmProt:SIZE_SEED_TYPE	B
    //   850: iadd
    //   851: iload_2
    //   852: iadd
    //   853: iconst_0
    //   854: bastore
    //   855: goto -34 -> 821
    //   858: astore_0
    //   859: aload_0
    //   860: invokevirtual 411	java/lang/Exception:printStackTrace	()V
    //   863: ldc 25
    //   865: areturn
    //   866: astore 5
    //   868: aload 5
    //   870: invokevirtual 412	java/io/IOException:printStackTrace	()V
    //   873: goto -536 -> 337
    //   876: astore_0
    //   877: aload_0
    //   878: invokevirtual 412	java/io/IOException:printStackTrace	()V
    //   881: ldc 25
    //   883: areturn
    //   884: iload_1
    //   885: iload_2
    //   886: iadd
    //   887: istore_1
    //   888: goto -525 -> 363
    //   891: astore_0
    //   892: aload_0
    //   893: invokevirtual 412	java/io/IOException:printStackTrace	()V
    //   896: ldc 25
    //   898: areturn
    //   899: astore_0
    //   900: aload_0
    //   901: invokevirtual 412	java/io/IOException:printStackTrace	()V
    //   904: ldc 25
    //   906: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	907	0	paramString	String
    //   139	749	1	i	int
    //   137	750	2	j	int
    //   22	10	3	bool1	boolean
    //   29	7	4	bool2	boolean
    //   43	585	5	localObject1	Object
    //   866	3	5	localIOException	IOException
    //   6	641	6	localObject2	Object
    //   14	680	7	localObject3	Object
    //   73	760	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   291	296	858	java/lang/Exception
    //   310	337	866	java/io/IOException
    //   337	343	876	java/io/IOException
    //   363	375	891	java/io/IOException
    //   379	515	891	java/io/IOException
    //   519	561	891	java/io/IOException
    //   566	582	891	java/io/IOException
    //   582	606	891	java/io/IOException
    //   606	616	899	java/io/IOException
  }
  
  private static class MySSLSocketFactory
    extends org.apache.http.conn.ssl.SSLSocketFactory
  {
    SSLContext sslContext = SSLContext.getInstance("TLS");
    
    public MySSLSocketFactory(KeyStore paramKeyStore)
      throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
      super();
      paramKeyStore = new X509TrustManager()
      {
        public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
          throws CertificateException
        {}
        
        public X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
      this.sslContext.init(null, new TrustManager[] { paramKeyStore }, null);
    }
    
    public Socket createSocket()
      throws IOException
    {
      return this.sslContext.getSocketFactory().createSocket();
    }
    
    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException, UnknownHostException
    {
      return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.skt.arm.ArmSeedCheck
 * JD-Core Version:    0.7.0.1
 */