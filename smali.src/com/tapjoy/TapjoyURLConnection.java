package com.tapjoy;

import android.net.Uri;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

public class TapjoyURLConnection
{
  private static final String TAPJOY_URL_CONNECTION = "TapjoyURLConnection";
  public static final int TYPE_GET = 0;
  public static final int TYPE_POST = 1;
  
  public String connectToURL(String paramString)
  {
    return connectToURL(paramString, "");
  }
  
  public String connectToURL(String paramString1, String paramString2)
  {
    BufferedReader localBufferedReader = null;
    Object localObject = localBufferedReader;
    try
    {
      paramString2 = (paramString1 + paramString2).replaceAll(" ", "%20");
      localObject = localBufferedReader;
      TapjoyLog.i("TapjoyURLConnection", "baseURL: " + paramString1);
      localObject = localBufferedReader;
      TapjoyLog.i("TapjoyURLConnection", "requestURL: " + paramString2);
      localObject = localBufferedReader;
      paramString2 = (HttpURLConnection)new URL(paramString2).openConnection();
      localObject = localBufferedReader;
      paramString2.setConnectTimeout(15000);
      localObject = localBufferedReader;
      paramString2.setReadTimeout(30000);
      localObject = localBufferedReader;
      paramString1 = paramString2.getResponseMessage();
      localObject = paramString1;
      paramString2.connect();
      localObject = paramString1;
      localBufferedReader = new BufferedReader(new InputStreamReader(paramString2.getInputStream()));
    }
    catch (Exception paramString2)
    {
      for (;;)
      {
        label294:
        paramString1 = localException;
      }
    }
    try
    {
      localObject = new StringBuilder();
      for (;;)
      {
        paramString2 = paramString1;
        try
        {
          String str = localBufferedReader.readLine();
          if (str == null)
          {
            paramString2 = paramString1;
            paramString1 = ((StringBuilder)localObject).toString();
            paramString2 = paramString1;
            TapjoyLog.i("TapjoyURLConnection", "--------------------");
            paramString2 = paramString1;
            TapjoyLog.i("TapjoyURLConnection", "response size: " + paramString1.length());
            paramString2 = paramString1;
            TapjoyLog.i("TapjoyURLConnection", "response: ");
            paramString2 = paramString1;
            TapjoyLog.i("TapjoyURLConnection", paramString1);
            paramString2 = paramString1;
            TapjoyLog.i("TapjoyURLConnection", "--------------------");
            return paramString1;
          }
          paramString2 = paramString1;
          ((StringBuilder)localObject).append(str + '\n');
        }
        catch (Exception localException)
        {
          paramString1 = paramString2;
          paramString2 = localException;
        }
      }
    }
    catch (Exception paramString2)
    {
      break label294;
    }
    TapjoyLog.e("TapjoyURLConnection", "Exception: " + paramString2.toString());
    return paramString1;
  }
  
  public String connectToURLwithPOST(String paramString, Hashtable<String, String> paramHashtable1, Hashtable<String, String> paramHashtable2)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    for (;;)
    {
      Object localObject3;
      try
      {
        localObject3 = paramString.replaceAll(" ", "%20");
        localObject1 = localObject2;
        TapjoyLog.i("TapjoyURLConnection", "baseURL: " + paramString);
        localObject1 = localObject2;
        TapjoyLog.i("TapjoyURLConnection", "requestURL: " + (String)localObject3);
        localObject1 = localObject2;
        paramString = new HttpPost((String)localObject3);
        localObject1 = localObject2;
        localObject3 = new ArrayList();
        localObject1 = localObject2;
        paramHashtable1 = paramHashtable1.entrySet().iterator();
        localObject1 = localObject2;
        if (!paramHashtable1.hasNext())
        {
          if (paramHashtable2 != null)
          {
            localObject1 = localObject2;
            if (paramHashtable2.size() > 0)
            {
              localObject1 = localObject2;
              paramHashtable1 = paramHashtable2.entrySet().iterator();
              localObject1 = localObject2;
              if (paramHashtable1.hasNext()) {
                break label531;
              }
            }
          }
          localObject1 = localObject2;
          paramString.setEntity(new UrlEncodedFormEntity((List)localObject3));
          localObject1 = localObject2;
          TapjoyLog.i("TapjoyURLConnection", "HTTP POST: " + paramString.toString());
          localObject1 = localObject2;
          paramHashtable1 = new BasicHttpParams();
          localObject1 = localObject2;
          HttpConnectionParams.setConnectionTimeout(paramHashtable1, 15000);
          localObject1 = localObject2;
          HttpConnectionParams.setSoTimeout(paramHashtable1, 30000);
          localObject1 = localObject2;
          paramHashtable1 = new DefaultHttpClient(paramHashtable1).execute(paramString);
          localObject1 = localObject2;
          paramString = EntityUtils.toString(paramHashtable1.getEntity());
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", "--------------------");
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", "response status: " + paramHashtable1.getStatusLine().getStatusCode());
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", "response size: " + paramString.length());
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", "response: ");
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", paramString);
          localObject1 = paramString;
          TapjoyLog.i("TapjoyURLConnection", "--------------------");
          return paramString;
        }
        else
        {
          localObject1 = localObject2;
          Map.Entry localEntry = (Map.Entry)paramHashtable1.next();
          localObject1 = localObject2;
          ((List)localObject3).add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
          localObject1 = localObject2;
          TapjoyLog.i("TapjoyURLConnection", "key: " + (String)localEntry.getKey() + ", value: " + Uri.encode((String)localEntry.getValue()));
          continue;
        }
        localObject1 = localObject2;
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("TapjoyURLConnection", "Exception: " + paramString.toString());
        return localObject1;
      }
      label531:
      paramHashtable2 = (Map.Entry)paramHashtable1.next();
      localObject1 = localObject2;
      ((List)localObject3).add(new BasicNameValuePair("data[" + (String)paramHashtable2.getKey() + "]", (String)paramHashtable2.getValue()));
      localObject1 = localObject2;
      TapjoyLog.i("TapjoyURLConnection", "key: " + (String)paramHashtable2.getKey() + ", value: " + Uri.encode((String)paramHashtable2.getValue()));
    }
  }
  
  public String getContentLength(String paramString)
  {
    Object localObject = null;
    try
    {
      paramString = paramString.replaceAll(" ", "%20");
      TapjoyLog.i("TapjoyURLConnection", "requestURL: " + paramString);
      paramString = (HttpURLConnection)new URL(paramString).openConnection();
      paramString.setConnectTimeout(15000);
      paramString.setReadTimeout(30000);
      paramString = paramString.getHeaderField("content-length");
      TapjoyLog.i("TapjoyURLConnection", "content-length: " + paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        TapjoyLog.e("TapjoyURLConnection", "Exception: " + paramString.toString());
        paramString = localObject;
      }
    }
  }
  
  public TapjoyHttpURLResponse getResponseFromURL(String paramString1, String paramString2)
  {
    return getResponseFromURL(paramString1, paramString2, 0);
  }
  
  /* Error */
  public TapjoyHttpURLResponse getResponseFromURL(String paramString1, String paramString2, int paramInt)
  {
    // Byte code:
    //   0: new 263	com/tapjoy/TapjoyHttpURLResponse
    //   3: dup
    //   4: invokespecial 264	com/tapjoy/TapjoyHttpURLResponse:<init>	()V
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 5
    //   12: aload 5
    //   14: astore 4
    //   16: new 29	java/lang/StringBuilder
    //   19: dup
    //   20: aload_1
    //   21: invokestatic 35	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   24: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_2
    //   28: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: ldc 48
    //   36: ldc 50
    //   38: invokevirtual 53	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   41: astore_2
    //   42: aload 5
    //   44: astore 4
    //   46: ldc 8
    //   48: new 29	java/lang/StringBuilder
    //   51: dup
    //   52: ldc 55
    //   54: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload_1
    //   58: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: aload 5
    //   69: astore 4
    //   71: ldc 8
    //   73: new 29	java/lang/StringBuilder
    //   76: dup
    //   77: ldc 63
    //   79: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload_2
    //   83: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: aload 5
    //   94: astore 4
    //   96: ldc 8
    //   98: new 29	java/lang/StringBuilder
    //   101: dup
    //   102: ldc_w 266
    //   105: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   108: iload_3
    //   109: invokevirtual 114	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: aload 5
    //   120: astore 4
    //   122: new 65	java/net/URL
    //   125: dup
    //   126: aload_2
    //   127: invokespecial 66	java/net/URL:<init>	(Ljava/lang/String;)V
    //   130: invokevirtual 70	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   133: checkcast 72	java/net/HttpURLConnection
    //   136: astore 5
    //   138: aload 5
    //   140: astore 4
    //   142: aload 5
    //   144: sipush 15000
    //   147: invokevirtual 76	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   150: aload 5
    //   152: astore 4
    //   154: aload 5
    //   156: sipush 30000
    //   159: invokevirtual 79	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   162: iload_3
    //   163: iconst_1
    //   164: if_icmpne +15 -> 179
    //   167: aload 5
    //   169: astore 4
    //   171: aload 5
    //   173: ldc_w 268
    //   176: invokevirtual 271	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   179: aload 5
    //   181: astore 4
    //   183: aload 5
    //   185: invokevirtual 85	java/net/HttpURLConnection:connect	()V
    //   188: aload 5
    //   190: astore 4
    //   192: aload 7
    //   194: aload 5
    //   196: invokevirtual 274	java/net/HttpURLConnection:getResponseCode	()I
    //   199: putfield 277	com/tapjoy/TapjoyHttpURLResponse:statusCode	I
    //   202: aload 5
    //   204: astore 4
    //   206: new 87	java/io/BufferedReader
    //   209: dup
    //   210: new 89	java/io/InputStreamReader
    //   213: dup
    //   214: aload 5
    //   216: invokevirtual 93	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   219: invokespecial 96	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   222: invokespecial 99	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   225: astore_2
    //   226: new 29	java/lang/StringBuilder
    //   229: dup
    //   230: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   233: astore_1
    //   234: aload_2
    //   235: invokevirtual 103	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   238: astore 4
    //   240: aload 4
    //   242: ifnonnull +142 -> 384
    //   245: aload 7
    //   247: aload_1
    //   248: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   251: putfield 280	com/tapjoy/TapjoyHttpURLResponse:response	Ljava/lang/String;
    //   254: aload 5
    //   256: ldc 251
    //   258: invokevirtual 254	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   261: astore 6
    //   263: aload_2
    //   264: astore 4
    //   266: aload_1
    //   267: astore 4
    //   269: aload 6
    //   271: ifnull +363 -> 634
    //   274: aload 7
    //   276: aload 6
    //   278: invokestatic 285	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   281: invokevirtual 288	java/lang/Integer:intValue	()I
    //   284: putfield 291	com/tapjoy/TapjoyHttpURLResponse:contentLength	I
    //   287: ldc 8
    //   289: ldc 105
    //   291: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   294: ldc 8
    //   296: new 29	java/lang/StringBuilder
    //   299: dup
    //   300: ldc 202
    //   302: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: aload 7
    //   307: getfield 277	com/tapjoy/TapjoyHttpURLResponse:statusCode	I
    //   310: invokevirtual 114	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   313: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   319: ldc 8
    //   321: new 29	java/lang/StringBuilder
    //   324: dup
    //   325: ldc 107
    //   327: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   330: aload 7
    //   332: getfield 291	com/tapjoy/TapjoyHttpURLResponse:contentLength	I
    //   335: invokevirtual 114	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   338: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   344: ldc 8
    //   346: ldc 116
    //   348: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   351: ldc 8
    //   353: new 29	java/lang/StringBuilder
    //   356: dup
    //   357: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   360: aload 7
    //   362: getfield 280	com/tapjoy/TapjoyHttpURLResponse:response	Ljava/lang/String;
    //   365: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   374: ldc 8
    //   376: ldc 105
    //   378: invokestatic 61	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   381: aload 7
    //   383: areturn
    //   384: aload_1
    //   385: new 29	java/lang/StringBuilder
    //   388: dup
    //   389: aload 4
    //   391: invokestatic 35	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   394: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   397: bipush 10
    //   399: invokevirtual 119	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   402: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   405: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: pop
    //   409: goto -175 -> 234
    //   412: astore 4
    //   414: ldc 8
    //   416: new 29	java/lang/StringBuilder
    //   419: dup
    //   420: ldc 121
    //   422: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   425: aload 4
    //   427: invokevirtual 122	java/lang/Exception:toString	()Ljava/lang/String;
    //   430: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: invokestatic 125	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   439: aload_2
    //   440: astore 4
    //   442: aload_1
    //   443: astore 4
    //   445: aload 5
    //   447: ifnull +187 -> 634
    //   450: aload_2
    //   451: astore 4
    //   453: aload_1
    //   454: astore 4
    //   456: aload 7
    //   458: getfield 280	com/tapjoy/TapjoyHttpURLResponse:response	Ljava/lang/String;
    //   461: ifnonnull +173 -> 634
    //   464: new 87	java/io/BufferedReader
    //   467: dup
    //   468: new 89	java/io/InputStreamReader
    //   471: dup
    //   472: aload 5
    //   474: invokevirtual 294	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   477: invokespecial 96	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   480: invokespecial 99	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   483: astore_1
    //   484: new 29	java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial 100	java/lang/StringBuilder:<init>	()V
    //   491: astore_2
    //   492: aload_1
    //   493: invokevirtual 103	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   496: astore 4
    //   498: aload 4
    //   500: ifnonnull +74 -> 574
    //   503: aload 7
    //   505: aload_2
    //   506: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   509: putfield 280	com/tapjoy/TapjoyHttpURLResponse:response	Ljava/lang/String;
    //   512: goto -225 -> 287
    //   515: astore_1
    //   516: ldc 8
    //   518: new 29	java/lang/StringBuilder
    //   521: dup
    //   522: ldc_w 296
    //   525: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   528: aload_1
    //   529: invokevirtual 122	java/lang/Exception:toString	()Ljava/lang/String;
    //   532: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 125	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   541: goto -254 -> 287
    //   544: astore 4
    //   546: ldc 8
    //   548: new 29	java/lang/StringBuilder
    //   551: dup
    //   552: ldc 121
    //   554: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   557: aload 4
    //   559: invokevirtual 122	java/lang/Exception:toString	()Ljava/lang/String;
    //   562: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   565: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: invokestatic 125	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   571: goto -284 -> 287
    //   574: aload_2
    //   575: new 29	java/lang/StringBuilder
    //   578: dup
    //   579: aload 4
    //   581: invokestatic 35	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   584: invokespecial 38	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   587: bipush 10
    //   589: invokevirtual 119	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   592: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   595: invokevirtual 42	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   598: pop
    //   599: goto -107 -> 492
    //   602: astore_1
    //   603: goto -87 -> 516
    //   606: astore_1
    //   607: goto -91 -> 516
    //   610: astore 6
    //   612: aconst_null
    //   613: astore_1
    //   614: aconst_null
    //   615: astore_2
    //   616: aload 4
    //   618: astore 5
    //   620: aload 6
    //   622: astore 4
    //   624: goto -210 -> 414
    //   627: astore 4
    //   629: aconst_null
    //   630: astore_1
    //   631: goto -217 -> 414
    //   634: goto -347 -> 287
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	637	0	this	TapjoyURLConnection
    //   0	637	1	paramString1	String
    //   0	637	2	paramString2	String
    //   0	637	3	paramInt	int
    //   14	376	4	localObject1	Object
    //   412	14	4	localException1	Exception
    //   440	59	4	str1	String
    //   544	73	4	localException2	Exception
    //   622	1	4	localObject2	Object
    //   627	1	4	localException3	Exception
    //   10	609	5	localObject3	Object
    //   261	16	6	str2	String
    //   610	11	6	localException4	Exception
    //   7	497	7	localTapjoyHttpURLResponse	TapjoyHttpURLResponse
    // Exception table:
    //   from	to	target	type
    //   234	240	412	java/lang/Exception
    //   245	263	412	java/lang/Exception
    //   384	409	412	java/lang/Exception
    //   546	571	412	java/lang/Exception
    //   492	498	515	java/lang/Exception
    //   503	512	515	java/lang/Exception
    //   574	599	515	java/lang/Exception
    //   274	287	544	java/lang/Exception
    //   456	484	602	java/lang/Exception
    //   484	492	606	java/lang/Exception
    //   16	42	610	java/lang/Exception
    //   46	67	610	java/lang/Exception
    //   71	92	610	java/lang/Exception
    //   96	118	610	java/lang/Exception
    //   122	138	610	java/lang/Exception
    //   142	150	610	java/lang/Exception
    //   154	162	610	java/lang/Exception
    //   171	179	610	java/lang/Exception
    //   183	188	610	java/lang/Exception
    //   192	202	610	java/lang/Exception
    //   206	226	610	java/lang/Exception
    //   226	234	627	java/lang/Exception
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyURLConnection
 * JD-Core Version:    0.7.0.1
 */