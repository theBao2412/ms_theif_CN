package com.tapjoy;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.net.URL;
import java.net.URLConnection;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class TapjoyVideo
{
  public static final String TAPJOY_VIDEO = "TapjoyVideo";
  private static TapjoyVideo tapjoyVideo = null;
  private static TapjoyVideoNotifier tapjoyVideoNotifier;
  private static Bitmap watermarkImage;
  private static final String watermarkURL = "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png";
  private boolean cache3g = false;
  private boolean cacheAuto = false;
  private boolean cacheWifi = false;
  private Hashtable<String, TapjoyVideoObject> cachedVideos;
  Context context;
  private String imageCacheDir = null;
  private boolean initialized = false;
  private Hashtable<String, TapjoyVideoObject> uncachedVideos;
  private String videoCacheDir = null;
  private int videoCacheLimit = 5;
  private Vector<String> videoQueue;
  private TapjoyVideoObject videoToPlay;
  
  public TapjoyVideo(Context paramContext)
  {
    this.context = paramContext;
    tapjoyVideo = this;
    this.videoCacheDir = (Environment.getExternalStorageDirectory().toString() + "/tjcache/data/");
    this.imageCacheDir = (Environment.getExternalStorageDirectory().toString() + "/tjcache/tmp/");
    TapjoyUtil.deleteFileOrDirectory(new File(Environment.getExternalStorageDirectory().toString() + "/tapjoy/"));
    TapjoyUtil.deleteFileOrDirectory(new File(this.imageCacheDir));
    this.videoQueue = new Vector();
    this.uncachedVideos = new Hashtable();
    this.cachedVideos = new Hashtable();
    init();
  }
  
  private void cacheAllVideos()
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        TapjoyLog.i("TapjoyVideo", "--- cacheAllVideos called ---");
        int i = 0;
        for (;;)
        {
          if (TapjoyVideo.this.initialized)
          {
            TapjoyLog.i("TapjoyVideo", "cacheVideos connection_type: " + TapjoyConnectCore.getConnectionType());
            TapjoyLog.i("TapjoyVideo", "cache3g: " + TapjoyVideo.this.cache3g);
            TapjoyLog.i("TapjoyVideo", "cacheWifi: " + TapjoyVideo.this.cacheWifi);
            if (((!TapjoyVideo.this.cache3g) || (!TapjoyConnectCore.getConnectionType().equals("mobile"))) && ((!TapjoyVideo.this.cacheWifi) || (!TapjoyConnectCore.getConnectionType().equals("wifi")))) {
              break label301;
            }
            if ("mounted".equals(Environment.getExternalStorageState())) {
              break;
            }
            TapjoyLog.i("TapjoyVideo", "Media storage unavailable.  Aborting caching videos.");
            TapjoyVideo.videoNotifierError(1);
            return;
          }
          j = i;
          try
          {
            Thread.sleep(500L);
            j = i + 500;
            i = j;
            if (j > 10000L)
            {
              TapjoyLog.e("TapjoyVideo", "Error during cacheVideos.  Timeout while waiting for initVideos to finish.");
              return;
            }
          }
          catch (Exception localException)
          {
            TapjoyLog.e("TapjoyVideo", "Exception in cacheAllVideos: " + localException.toString());
            i = j;
          }
        }
        while ((TapjoyVideo.this.cachedVideos.size() < TapjoyVideo.this.videoCacheLimit) && (TapjoyVideo.this.videoQueue.size() > 0))
        {
          int j;
          String str = ((TapjoyVideoObject)TapjoyVideo.this.uncachedVideos.get(TapjoyVideo.this.videoQueue.elementAt(0))).videoURL;
          TapjoyVideo.this.cacheVideo(str);
        }
        for (;;)
        {
          TapjoyVideo.this.printCachedVideos();
          return;
          label301:
          TapjoyLog.i("TapjoyVideo", " * Skipping caching videos because of video flags and connection_type...");
        }
      }
    }).start();
  }
  
  /* Error */
  private void cacheVideo(String paramString)
  {
    // Byte code:
    //   0: ldc 12
    //   2: new 68	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 185
    //   8: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: invokestatic 197	java/lang/System:currentTimeMillis	()J
    //   24: lstore 5
    //   26: iconst_0
    //   27: istore_3
    //   28: iconst_0
    //   29: istore_2
    //   30: aconst_null
    //   31: astore 14
    //   33: aconst_null
    //   34: astore 15
    //   36: aconst_null
    //   37: astore 11
    //   39: aconst_null
    //   40: astore 12
    //   42: aconst_null
    //   43: astore 13
    //   45: aconst_null
    //   46: astore 10
    //   48: new 199	java/net/URL
    //   51: dup
    //   52: aload_1
    //   53: invokespecial 200	java/net/URL:<init>	(Ljava/lang/String;)V
    //   56: invokevirtual 204	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   59: astore 9
    //   61: aload 9
    //   63: sipush 15000
    //   66: invokevirtual 210	java/net/URLConnection:setConnectTimeout	(I)V
    //   69: aload 9
    //   71: sipush 30000
    //   74: invokevirtual 213	java/net/URLConnection:setReadTimeout	(I)V
    //   77: aload 9
    //   79: invokevirtual 216	java/net/URLConnection:connect	()V
    //   82: new 218	java/io/BufferedInputStream
    //   85: dup
    //   86: aload 9
    //   88: invokevirtual 222	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   91: invokespecial 225	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   94: astore 9
    //   96: new 76	java/io/File
    //   99: dup
    //   100: aload_0
    //   101: getfield 52	com/tapjoy/TapjoyVideo:videoCacheDir	Ljava/lang/String;
    //   104: invokespecial 101	java/io/File:<init>	(Ljava/lang/String;)V
    //   107: astore 14
    //   109: aload_1
    //   110: iconst_0
    //   111: aload_1
    //   112: ldc 227
    //   114: invokevirtual 231	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   117: iconst_1
    //   118: iadd
    //   119: invokevirtual 235	java/lang/String:substring	(II)Ljava/lang/String;
    //   122: astore 15
    //   124: aload_1
    //   125: aload_1
    //   126: ldc 227
    //   128: invokevirtual 231	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   131: iconst_1
    //   132: iadd
    //   133: invokevirtual 238	java/lang/String:substring	(I)Ljava/lang/String;
    //   136: astore_1
    //   137: aload_1
    //   138: iconst_0
    //   139: aload_1
    //   140: bipush 46
    //   142: invokevirtual 242	java/lang/String:indexOf	(I)I
    //   145: invokevirtual 235	java/lang/String:substring	(II)Ljava/lang/String;
    //   148: astore_1
    //   149: ldc 12
    //   151: new 68	java/lang/StringBuilder
    //   154: dup
    //   155: ldc 244
    //   157: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   160: aload 14
    //   162: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   165: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   168: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: ldc 12
    //   173: new 68	java/lang/StringBuilder
    //   176: dup
    //   177: ldc 249
    //   179: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   182: aload 15
    //   184: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   193: ldc 12
    //   195: new 68	java/lang/StringBuilder
    //   198: dup
    //   199: ldc 251
    //   201: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: aload_1
    //   205: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   214: aload 14
    //   216: invokevirtual 254	java/io/File:mkdirs	()Z
    //   219: ifeq +29 -> 248
    //   222: ldc 12
    //   224: new 68	java/lang/StringBuilder
    //   227: dup
    //   228: ldc_w 256
    //   231: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   234: aload 14
    //   236: invokevirtual 259	java/io/File:getPath	()Ljava/lang/String;
    //   239: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   248: new 76	java/io/File
    //   251: dup
    //   252: aload_0
    //   253: getfield 52	com/tapjoy/TapjoyVideo:videoCacheDir	Ljava/lang/String;
    //   256: aload_1
    //   257: invokespecial 261	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: astore_1
    //   261: new 263	java/io/FileOutputStream
    //   264: dup
    //   265: aload_1
    //   266: invokespecial 265	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   269: astore 10
    //   271: ldc 12
    //   273: new 68	java/lang/StringBuilder
    //   276: dup
    //   277: ldc_w 267
    //   280: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   283: aload_1
    //   284: invokevirtual 80	java/io/File:toString	()Ljava/lang/String;
    //   287: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   296: sipush 1024
    //   299: newarray byte
    //   301: astore 11
    //   303: aload 9
    //   305: aload 11
    //   307: invokevirtual 271	java/io/BufferedInputStream:read	([B)I
    //   310: istore 4
    //   312: iload 4
    //   314: iconst_m1
    //   315: if_icmpne +237 -> 552
    //   318: aload 10
    //   320: invokevirtual 276	java/io/OutputStream:close	()V
    //   323: aload 9
    //   325: invokevirtual 277	java/io/BufferedInputStream:close	()V
    //   328: ldc 12
    //   330: new 68	java/lang/StringBuilder
    //   333: dup
    //   334: ldc_w 279
    //   337: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload_1
    //   341: invokevirtual 282	java/io/File:length	()J
    //   344: invokevirtual 285	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   347: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   353: aload_1
    //   354: invokevirtual 282	java/io/File:length	()J
    //   357: lstore 7
    //   359: lload 7
    //   361: lconst_0
    //   362: lcmp
    //   363: ifne +409 -> 772
    //   366: iconst_1
    //   367: istore_3
    //   368: aload 10
    //   370: astore 11
    //   372: aload 9
    //   374: astore 12
    //   376: aload_1
    //   377: astore 10
    //   379: aload 11
    //   381: astore 9
    //   383: aload 12
    //   385: astore_1
    //   386: iload_3
    //   387: ifeq +20 -> 407
    //   390: ldc 12
    //   392: ldc_w 287
    //   395: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   398: aload_1
    //   399: invokevirtual 277	java/io/BufferedInputStream:close	()V
    //   402: aload 9
    //   404: invokevirtual 276	java/io/OutputStream:close	()V
    //   407: iload_3
    //   408: ifne +254 -> 662
    //   411: iload_2
    //   412: ifne +250 -> 662
    //   415: aload_0
    //   416: getfield 112	com/tapjoy/TapjoyVideo:videoQueue	Ljava/util/Vector;
    //   419: iconst_0
    //   420: invokevirtual 291	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   423: checkcast 82	java/lang/String
    //   426: astore_1
    //   427: aload_0
    //   428: getfield 117	com/tapjoy/TapjoyVideo:uncachedVideos	Ljava/util/Hashtable;
    //   431: aload_1
    //   432: invokevirtual 295	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   435: checkcast 297	com/tapjoy/TapjoyVideoObject
    //   438: astore 9
    //   440: aload 9
    //   442: aload 10
    //   444: invokevirtual 300	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   447: putfield 303	com/tapjoy/TapjoyVideoObject:dataLocation	Ljava/lang/String;
    //   450: aload_0
    //   451: getfield 66	com/tapjoy/TapjoyVideo:context	Landroid/content/Context;
    //   454: ldc_w 305
    //   457: iconst_0
    //   458: invokevirtual 311	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   461: invokeinterface 317 1 0
    //   466: astore 10
    //   468: aload 10
    //   470: aload_1
    //   471: aload_1
    //   472: invokeinterface 323 3 0
    //   477: pop
    //   478: aload 10
    //   480: invokeinterface 326 1 0
    //   485: pop
    //   486: aload_0
    //   487: getfield 119	com/tapjoy/TapjoyVideo:cachedVideos	Ljava/util/Hashtable;
    //   490: aload_1
    //   491: aload 9
    //   493: invokevirtual 330	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   496: pop
    //   497: aload_0
    //   498: getfield 117	com/tapjoy/TapjoyVideo:uncachedVideos	Ljava/util/Hashtable;
    //   501: aload_1
    //   502: invokevirtual 333	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   505: pop
    //   506: aload_0
    //   507: getfield 112	com/tapjoy/TapjoyVideo:videoQueue	Ljava/util/Vector;
    //   510: iconst_0
    //   511: invokevirtual 336	java/util/Vector:removeElementAt	(I)V
    //   514: aload_0
    //   515: invokespecial 159	com/tapjoy/TapjoyVideo:setVideoIDs	()V
    //   518: ldc 12
    //   520: new 68	java/lang/StringBuilder
    //   523: dup
    //   524: ldc_w 338
    //   527: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   530: invokestatic 197	java/lang/System:currentTimeMillis	()J
    //   533: lload 5
    //   535: lsub
    //   536: invokevirtual 285	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   539: ldc_w 340
    //   542: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   548: invokestatic 191	com/tapjoy/TapjoyLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   551: return
    //   552: aload 10
    //   554: aload 11
    //   556: iconst_0
    //   557: iload 4
    //   559: invokevirtual 344	java/io/OutputStream:write	([BII)V
    //   562: goto -259 -> 303
    //   565: astore 12
    //   567: aload 10
    //   569: astore 11
    //   571: aload_1
    //   572: astore 10
    //   574: aload 9
    //   576: astore_1
    //   577: aload 12
    //   579: astore 9
    //   581: ldc 12
    //   583: new 68	java/lang/StringBuilder
    //   586: dup
    //   587: ldc_w 346
    //   590: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   593: aload 9
    //   595: invokevirtual 347	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
    //   598: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   604: invokestatic 350	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   607: iconst_1
    //   608: istore_3
    //   609: iconst_1
    //   610: istore_2
    //   611: aload 11
    //   613: astore 9
    //   615: goto -229 -> 386
    //   618: astore 9
    //   620: aload 13
    //   622: astore 10
    //   624: aload 14
    //   626: astore_1
    //   627: ldc 12
    //   629: new 68	java/lang/StringBuilder
    //   632: dup
    //   633: ldc_w 352
    //   636: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   639: aload 9
    //   641: invokevirtual 353	java/lang/Exception:toString	()Ljava/lang/String;
    //   644: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   647: invokevirtual 96	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   650: invokestatic 350	com/tapjoy/TapjoyLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   653: iconst_1
    //   654: istore_2
    //   655: aload 11
    //   657: astore 9
    //   659: goto -273 -> 386
    //   662: iconst_2
    //   663: invokestatic 356	com/tapjoy/TapjoyVideo:videoNotifierError	(I)V
    //   666: return
    //   667: astore_1
    //   668: goto -261 -> 407
    //   671: astore 10
    //   673: aload 9
    //   675: astore_1
    //   676: aload 10
    //   678: astore 9
    //   680: aload 13
    //   682: astore 10
    //   684: goto -57 -> 627
    //   687: astore 12
    //   689: aload_1
    //   690: astore 10
    //   692: aload 9
    //   694: astore_1
    //   695: aload 12
    //   697: astore 9
    //   699: goto -72 -> 627
    //   702: astore 11
    //   704: aload_1
    //   705: astore 12
    //   707: aload 9
    //   709: astore_1
    //   710: aload 11
    //   712: astore 9
    //   714: aload 10
    //   716: astore 11
    //   718: aload 12
    //   720: astore 10
    //   722: goto -95 -> 627
    //   725: astore 9
    //   727: aload 15
    //   729: astore_1
    //   730: aload 12
    //   732: astore 11
    //   734: goto -153 -> 581
    //   737: astore 11
    //   739: aload 9
    //   741: astore_1
    //   742: aload 11
    //   744: astore 9
    //   746: aload 12
    //   748: astore 11
    //   750: goto -169 -> 581
    //   753: astore 11
    //   755: aload_1
    //   756: astore 10
    //   758: aload 9
    //   760: astore_1
    //   761: aload 11
    //   763: astore 9
    //   765: aload 12
    //   767: astore 11
    //   769: goto -188 -> 581
    //   772: aload_1
    //   773: astore 11
    //   775: aload 9
    //   777: astore_1
    //   778: aload 10
    //   780: astore 9
    //   782: aload 11
    //   784: astore 10
    //   786: goto -400 -> 386
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	789	0	this	TapjoyVideo
    //   0	789	1	paramString	String
    //   29	626	2	i	int
    //   27	582	3	j	int
    //   310	248	4	k	int
    //   24	510	5	l1	long
    //   357	3	7	l2	long
    //   59	555	9	localObject1	Object
    //   618	22	9	localException1	Exception
    //   657	56	9	localObject2	Object
    //   725	15	9	localSocketTimeoutException1	java.net.SocketTimeoutException
    //   744	37	9	localObject3	Object
    //   46	577	10	localObject4	Object
    //   671	6	10	localException2	Exception
    //   682	103	10	localObject5	Object
    //   37	619	11	localObject6	Object
    //   702	9	11	localException3	Exception
    //   716	17	11	localObject7	Object
    //   737	6	11	localSocketTimeoutException2	java.net.SocketTimeoutException
    //   748	1	11	localObject8	Object
    //   753	9	11	localSocketTimeoutException3	java.net.SocketTimeoutException
    //   767	16	11	localObject9	Object
    //   40	344	12	localObject10	Object
    //   565	13	12	localSocketTimeoutException4	java.net.SocketTimeoutException
    //   687	9	12	localException4	Exception
    //   705	61	12	str1	String
    //   43	638	13	localObject11	Object
    //   31	594	14	localFile	File
    //   34	694	15	str2	String
    // Exception table:
    //   from	to	target	type
    //   271	303	565	java/net/SocketTimeoutException
    //   303	312	565	java/net/SocketTimeoutException
    //   318	359	565	java/net/SocketTimeoutException
    //   552	562	565	java/net/SocketTimeoutException
    //   48	96	618	java/lang/Exception
    //   398	407	667	java/lang/Exception
    //   96	248	671	java/lang/Exception
    //   248	261	671	java/lang/Exception
    //   261	271	687	java/lang/Exception
    //   271	303	702	java/lang/Exception
    //   303	312	702	java/lang/Exception
    //   318	359	702	java/lang/Exception
    //   552	562	702	java/lang/Exception
    //   48	96	725	java/net/SocketTimeoutException
    //   96	248	737	java/net/SocketTimeoutException
    //   248	261	737	java/net/SocketTimeoutException
    //   261	271	753	java/net/SocketTimeoutException
  }
  
  public static TapjoyVideo getInstance()
  {
    return tapjoyVideo;
  }
  
  public static Bitmap getWatermarkImage()
  {
    return watermarkImage;
  }
  
  private boolean handleGetVideosResponse(String paramString)
  {
    Object localObject1 = DocumentBuilderFactory.newInstance();
    TapjoyLog.i("TapjoyVideo", "========================================");
    for (;;)
    {
      int i;
      int j;
      int k;
      String str1;
      Object localObject2;
      try
      {
        paramString = new ByteArrayInputStream(paramString.getBytes("UTF-8"));
        paramString = ((DocumentBuilderFactory)localObject1).newDocumentBuilder().parse(paramString);
        paramString.getDocumentElement().normalize();
        paramString = paramString.getElementsByTagName("TapjoyVideos");
        NodeList localNodeList1 = paramString.item(0).getChildNodes();
        localObject1 = paramString.item(0).getAttributes();
        if ((((NamedNodeMap)localObject1).getNamedItem("cache_auto") != null) && (((NamedNodeMap)localObject1).getNamedItem("cache_auto").getNodeValue() != null)) {
          this.cacheAuto = Boolean.valueOf(((NamedNodeMap)localObject1).getNamedItem("cache_auto").getNodeValue()).booleanValue();
        }
        if ((((NamedNodeMap)localObject1).getNamedItem("cache_wifi") != null) && (((NamedNodeMap)localObject1).getNamedItem("cache_wifi").getNodeValue() != null)) {
          this.cacheWifi = Boolean.valueOf(((NamedNodeMap)localObject1).getNamedItem("cache_wifi").getNodeValue()).booleanValue();
        }
        if ((((NamedNodeMap)localObject1).getNamedItem("cache_mobile") != null) && (((NamedNodeMap)localObject1).getNamedItem("cache_mobile").getNodeValue() != null)) {
          this.cache3g = Boolean.valueOf(((NamedNodeMap)localObject1).getNamedItem("cache_mobile").getNodeValue()).booleanValue();
        }
        TapjoyLog.i("TapjoyVideo", "cacheAuto: " + this.cacheAuto);
        TapjoyLog.i("TapjoyVideo", "cacheWifi: " + this.cacheWifi);
        TapjoyLog.i("TapjoyVideo", "cache3g: " + this.cache3g);
        TapjoyLog.i("TapjoyVideo", "nodelistParent length: " + paramString.getLength());
        TapjoyLog.i("TapjoyVideo", "nodelist length: " + localNodeList1.getLength());
        i = 0;
        j = localNodeList1.getLength();
        if (i >= j)
        {
          TapjoyLog.i("TapjoyVideo", "========================================");
          return true;
        }
        paramString = localNodeList1.item(i);
        TapjoyVideoObject localTapjoyVideoObject = new TapjoyVideoObject();
        if ((paramString != null) && (paramString.getNodeType() == 1))
        {
          paramString = (Element)paramString;
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("ClickURL"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.clickURL = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("OfferID"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.offerID = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Name"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.videoAdName = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("Amount"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.currencyAmount = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("CurrencyName"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.currencyName = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("VideoURL"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.videoURL = ((String)localObject1);
          }
          localObject1 = TapjoyUtil.getNodeTrimValue(paramString.getElementsByTagName("IconURL"));
          if ((localObject1 != null) && (!((String)localObject1).equals(""))) {
            localTapjoyVideoObject.iconURL = ((String)localObject1);
          }
          TapjoyLog.i("TapjoyVideo", "-----");
          TapjoyLog.i("TapjoyVideo", "videoObject.offerID: " + localTapjoyVideoObject.offerID);
          TapjoyLog.i("TapjoyVideo", "videoObject.videoAdName: " + localTapjoyVideoObject.videoAdName);
          TapjoyLog.i("TapjoyVideo", "videoObject.videoURL: " + localTapjoyVideoObject.videoURL);
          NodeList localNodeList2 = paramString.getElementsByTagName("Buttons").item(0).getChildNodes();
          j = 0;
          if (j >= localNodeList2.getLength())
          {
            this.videoQueue.addElement(localTapjoyVideoObject.offerID);
            this.uncachedVideos.put(localTapjoyVideoObject.offerID, localTapjoyVideoObject);
          }
          else
          {
            NodeList localNodeList3 = localNodeList2.item(j).getChildNodes();
            if (localNodeList3.getLength() == 0) {
              break label1151;
            }
            paramString = "";
            localObject1 = "";
            k = 0;
            if (k >= localNodeList3.getLength())
            {
              TapjoyLog.i("TapjoyVideo", "name: " + paramString + ", url: " + (String)localObject1);
              localTapjoyVideoObject.addButton(paramString, (String)localObject1);
              break label1151;
            }
            str1 = paramString;
            localObject2 = localObject1;
            if ((Element)localNodeList3.item(k) == null) {
              break label1158;
            }
            String str2 = ((Element)localNodeList3.item(k)).getTagName();
            if ((str2.equals("Name")) && (localNodeList3.item(k).getFirstChild() != null))
            {
              str1 = localNodeList3.item(k).getFirstChild().getNodeValue();
              localObject2 = localObject1;
            }
            else
            {
              str1 = paramString;
              localObject2 = localObject1;
              if (str2.equals("URL"))
              {
                str1 = paramString;
                localObject2 = localObject1;
                if (localNodeList3.item(k).getFirstChild() != null)
                {
                  localObject2 = localNodeList3.item(k).getFirstChild().getNodeValue();
                  str1 = paramString;
                }
              }
            }
          }
        }
      }
      catch (Exception paramString)
      {
        TapjoyLog.e("TapjoyVideo", "Error parsing XML: " + paramString.toString());
        return false;
      }
      i += 1;
      continue;
      label1151:
      j += 1;
      continue;
      label1158:
      k += 1;
      paramString = str1;
      localObject1 = localObject2;
    }
  }
  
  private void printCachedVideos()
  {
    TapjoyLog.i("TapjoyVideo", "cachedVideos size: " + this.cachedVideos.size());
    Iterator localIterator = this.cachedVideos.entrySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      TapjoyLog.i("TapjoyVideo", "key: " + (String)localEntry.getKey() + ", name: " + ((TapjoyVideoObject)localEntry.getValue()).videoAdName);
    }
  }
  
  private void setVideoIDs()
  {
    Object localObject1 = "";
    Object localObject2 = localObject1;
    Enumeration localEnumeration;
    if (this.cachedVideos != null)
    {
      localObject2 = localObject1;
      if (this.cachedVideos.size() > 0) {
        localEnumeration = this.cachedVideos.keys();
      }
    }
    for (;;)
    {
      if (!localEnumeration.hasMoreElements())
      {
        TapjoyLog.i("TapjoyVideo", "cachedVideos size: " + this.cachedVideos.size());
        localObject2 = localObject1;
        TapjoyLog.i("TapjoyVideo", "videoIDs: [" + (String)localObject2 + "]");
        TapjoyConnectCore.setVideoIDs((String)localObject2);
        return;
      }
      localObject2 = (String)localEnumeration.nextElement();
      localObject2 = localObject1 + (String)localObject2;
      localObject1 = localObject2;
      if (localEnumeration.hasMoreElements()) {
        localObject1 = localObject2 + ",";
      }
    }
  }
  
  private boolean validateCachedVideos()
  {
    boolean bool2 = false;
    int i = 1;
    File[] arrayOfFile = new File(this.videoCacheDir).listFiles();
    if (this.uncachedVideos == null)
    {
      TapjoyLog.e("TapjoyVideo", "Error: uncachedVideos is null");
      i = 0;
    }
    if (this.cachedVideos == null)
    {
      TapjoyLog.e("TapjoyVideo", "Error: cachedVideos is null");
      i = 0;
    }
    if (this.videoQueue == null)
    {
      TapjoyLog.e("TapjoyVideo", "Error: videoQueue is null");
      i = 0;
    }
    boolean bool1 = bool2;
    if (i != 0)
    {
      bool1 = bool2;
      if (arrayOfFile != null)
      {
        i = 0;
        if (i < arrayOfFile.length) {
          break label97;
        }
        bool1 = true;
      }
    }
    return bool1;
    label97:
    String str1 = arrayOfFile[i].getName();
    TapjoyLog.i("TapjoyVideo", "-----");
    TapjoyLog.i("TapjoyVideo", "Examining cached file[" + i + "]: " + arrayOfFile[i].getAbsolutePath() + " --- " + arrayOfFile[i].getName());
    TapjoyVideoObject localTapjoyVideoObject;
    if (this.uncachedVideos.containsKey(str1))
    {
      TapjoyLog.i("TapjoyVideo", "Local file found");
      localTapjoyVideoObject = (TapjoyVideoObject)this.uncachedVideos.get(str1);
      if (localTapjoyVideoObject != null) {}
    }
    for (;;)
    {
      i += 1;
      break;
      String str2 = new TapjoyURLConnection().getContentLength(localTapjoyVideoObject.videoURL);
      TapjoyLog.i("TapjoyVideo", "local file size: " + arrayOfFile[i].length() + " vs. target: " + str2);
      if ((str2 != null) && (Integer.parseInt(str2) == arrayOfFile[i].length()))
      {
        localTapjoyVideoObject.dataLocation = arrayOfFile[i].getAbsolutePath();
        this.cachedVideos.put(str1, localTapjoyVideoObject);
        this.uncachedVideos.remove(str1);
        this.videoQueue.remove(str1);
        TapjoyLog.i("TapjoyVideo", "VIDEO PREVIOUSLY CACHED -- " + str1 + ", location: " + localTapjoyVideoObject.dataLocation);
      }
      else
      {
        TapjoyLog.i("TapjoyVideo", "file size mismatch --- deleting video: " + arrayOfFile[i].getAbsolutePath());
        TapjoyUtil.deleteFileOrDirectory(arrayOfFile[i]);
        continue;
        TapjoyLog.i("TapjoyVideo", "VIDEO EXPIRED? removing video from cache: " + str1 + " --- " + arrayOfFile[i].getAbsolutePath());
        TapjoyUtil.deleteFileOrDirectory(arrayOfFile[i]);
      }
    }
  }
  
  public static void videoNotifierComplete()
  {
    if (tapjoyVideoNotifier != null) {
      tapjoyVideoNotifier.videoComplete();
    }
  }
  
  public static void videoNotifierError(int paramInt)
  {
    if (tapjoyVideoNotifier != null) {
      tapjoyVideoNotifier.videoError(paramInt);
    }
  }
  
  public static void videoNotifierReady()
  {
    if (tapjoyVideoNotifier != null) {
      tapjoyVideoNotifier.videoReady();
    }
  }
  
  public void enableVideoCache(boolean paramBoolean) {}
  
  public TapjoyVideoObject getCurrentVideoData()
  {
    return this.videoToPlay;
  }
  
  public void init()
  {
    TapjoyLog.i("TapjoyVideo", "initVideoAd");
    if ((TapjoyConnectCore.getFlagValue("disable_video_offers") != null) && (TapjoyConnectCore.getFlagValue("disable_video_offers").equals("true")))
    {
      TapjoyLog.i("TapjoyVideo", "disable_video_offers: " + TapjoyConnectCore.getFlagValue("disable_video_offers") + ". Aborting video initializing... ");
      TapjoyConnectCore.setVideoEnabled(false);
      return;
    }
    setVideoIDs();
    new Thread(new Runnable()
    {
      public void run()
      {
        boolean bool2 = false;
        Object localObject = TapjoyConnectCore.getURLParams() + "&publisher_user_id=" + TapjoyConnectCore.getUserID();
        localObject = new TapjoyURLConnection().connectToURL("https://ws.tapjoyads.com/videos?", (String)localObject);
        boolean bool1 = bool2;
        if (localObject != null)
        {
          bool1 = bool2;
          if (((String)localObject).length() > 0) {
            bool1 = TapjoyVideo.this.handleGetVideosResponse((String)localObject);
          }
        }
        if (bool1)
        {
          TapjoyVideo.this.validateCachedVideos();
          if (("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png" != null) && ("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png".length() > 0)) {}
          try
          {
            localObject = new URL("https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png");
            URLConnection localURLConnection = ((URL)localObject).openConnection();
            localURLConnection.setConnectTimeout(15000);
            localURLConnection.setReadTimeout(25000);
            localURLConnection.connect();
            TapjoyVideo.watermarkImage = BitmapFactory.decodeStream(((URL)localObject).openConnection().getInputStream());
            TapjoyVideo.this.setVideoIDs();
            TapjoyVideo.this.initialized = true;
            TapjoyVideo.videoNotifierReady();
            if (TapjoyVideo.this.cacheAuto)
            {
              TapjoyLog.i("TapjoyVideo", "trying to cache because of cache_auto flag...");
              TapjoyVideo.this.cacheAllVideos();
            }
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            TapjoyLog.i("TapjoyVideo", "INIT DONE!");
            TapjoyLog.i("TapjoyVideo", "------------------------------");
            return;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              TapjoyLog.e("TapjoyVideo", "e: " + localException.toString());
            }
          }
        }
        TapjoyVideo.videoNotifierError(2);
      }
    }).start();
    TapjoyConnectCore.setVideoEnabled(true);
  }
  
  public void initVideoAd(TapjoyVideoNotifier paramTapjoyVideoNotifier)
  {
    initVideoAd(paramTapjoyVideoNotifier, false);
  }
  
  public void initVideoAd(TapjoyVideoNotifier paramTapjoyVideoNotifier, boolean paramBoolean)
  {
    tapjoyVideoNotifier = paramTapjoyVideoNotifier;
    if (paramTapjoyVideoNotifier == null)
    {
      Log.e("TapjoyVideo", "Error during initVideoAd -- TapjoyVideoNotifier is null");
      return;
    }
    if (this.initialized) {
      videoNotifierReady();
    }
    cacheAllVideos();
  }
  
  public void setVideoCacheCount(int paramInt)
  {
    this.videoCacheLimit = paramInt;
  }
  
  public boolean startVideo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    int i = 1;
    TapjoyLog.i("TapjoyVideo", "Starting video activity with video: " + paramString1);
    if ((paramString1 == null) || (paramString4 == null) || (paramString5 == null) || (paramString1.length() == 0) || (paramString4.length() == 0) || (paramString5.length() == 0))
    {
      TapjoyLog.i("TapjoyVideo", "aborting video playback... invalid or missing parameter");
      return false;
    }
    this.videoToPlay = ((TapjoyVideoObject)this.cachedVideos.get(paramString1));
    if (!"mounted".equals(Environment.getExternalStorageState()))
    {
      TapjoyLog.e("TapjoyVideo", "Cannot access external storage");
      videoNotifierError(1);
      return false;
    }
    if (this.videoToPlay == null)
    {
      TapjoyLog.i("TapjoyVideo", "video not cached... checking uncached videos");
      this.videoToPlay = ((TapjoyVideoObject)this.uncachedVideos.get(paramString1));
      if (this.videoToPlay == null)
      {
        if ((paramString6 != null) && (paramString6.length() > 0))
        {
          TapjoyVideoObject localTapjoyVideoObject = new TapjoyVideoObject();
          localTapjoyVideoObject.currencyName = paramString2;
          localTapjoyVideoObject.currencyAmount = paramString3;
          localTapjoyVideoObject.clickURL = paramString4;
          localTapjoyVideoObject.webviewURL = paramString5;
          localTapjoyVideoObject.videoURL = paramString6;
          this.uncachedVideos.put(paramString1, localTapjoyVideoObject);
          this.videoToPlay = ((TapjoyVideoObject)this.uncachedVideos.get(paramString1));
        }
      }
      else {
        i = 0;
      }
    }
    else
    {
      this.videoToPlay.currencyName = paramString2;
      this.videoToPlay.currencyAmount = paramString3;
      this.videoToPlay.clickURL = paramString4;
      this.videoToPlay.webviewURL = paramString5;
      this.videoToPlay.videoURL = paramString6;
      TapjoyLog.i("TapjoyVideo", "videoToPlay: " + this.videoToPlay.offerID);
      TapjoyLog.i("TapjoyVideo", "amount: " + this.videoToPlay.currencyAmount);
      TapjoyLog.i("TapjoyVideo", "currency: " + this.videoToPlay.currencyName);
      TapjoyLog.i("TapjoyVideo", "clickURL: " + this.videoToPlay.clickURL);
      TapjoyLog.i("TapjoyVideo", "location: " + this.videoToPlay.dataLocation);
      TapjoyLog.i("TapjoyVideo", "webviewURL: " + this.videoToPlay.webviewURL);
      TapjoyLog.i("TapjoyVideo", "videoURL: " + this.videoToPlay.videoURL);
      if ((i == 0) || (this.videoToPlay.dataLocation == null)) {
        break label534;
      }
      paramString2 = new File(this.videoToPlay.dataLocation);
      if ((paramString2 != null) && (paramString2.exists())) {
        break label534;
      }
      TapjoyLog.e("TapjoyVideo", "video file does not exist.");
      return false;
    }
    TapjoyLog.e("TapjoyVideo", "no video data and no video url - aborting playback...");
    return false;
    label534:
    paramString2 = new Intent(this.context, TapjoyVideoView.class);
    paramString2.setFlags(268435456);
    paramString2.putExtra("VIDEO_PATH", paramString1);
    this.context.startActivity(paramString2);
    return true;
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.tapjoy.TapjoyVideo
 * JD-Core Version:    0.7.0.1
 */