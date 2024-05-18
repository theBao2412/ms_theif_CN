import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.InterstitialAd;
import com.google.ads.util.AdUtil;
import com.google.ads.util.AdUtil.a;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;

public final class c
  implements Runnable
{
  private String a;
  private String b;
  private b c;
  private d d;
  private AdRequest e;
  private WebView f;
  private String g;
  private LinkedList<String> h;
  private volatile boolean i;
  private AdRequest.ErrorCode j;
  private boolean k;
  private int l;
  private Thread m;
  
  public c(d paramd)
  {
    this.d = paramd;
    this.g = null;
    this.b = null;
    this.h = new LinkedList();
    this.j = null;
    this.k = false;
    this.l = -1;
    Activity localActivity = paramd.e();
    if (localActivity != null)
    {
      this.f = new g(localActivity.getApplicationContext(), null);
      this.f.setWebViewClient(new h(paramd, a.a, false, false));
      this.f.setVisibility(8);
      this.f.setWillNotDraw(true);
      this.c = new b(this, paramd);
      return;
    }
    this.f = null;
    this.c = null;
    com.google.ads.util.a.e("activity was null while trying to create an AdLoader.");
  }
  
  private String a(AdRequest paramAdRequest, Activity paramActivity)
    throws c.b, c.d
  {
    Context localContext = paramActivity.getApplicationContext();
    paramAdRequest = paramAdRequest.getRequestMap(localContext);
    Object localObject1 = this.d.l();
    long l1 = ((f)localObject1).h();
    if (l1 > 0L) {
      paramAdRequest.put("prl", Long.valueOf(l1));
    }
    Object localObject2 = ((f)localObject1).g();
    if (localObject2 != null) {
      paramAdRequest.put("ppcl", localObject2);
    }
    localObject2 = ((f)localObject1).f();
    if (localObject2 != null) {
      paramAdRequest.put("pcl", localObject2);
    }
    l1 = ((f)localObject1).e();
    if (l1 > 0L) {
      paramAdRequest.put("pcc", Long.valueOf(l1));
    }
    paramAdRequest.put("preqs", Long.valueOf(f.i()));
    localObject2 = ((f)localObject1).j();
    if (localObject2 != null) {
      paramAdRequest.put("pai", localObject2);
    }
    if (((f)localObject1).k()) {
      paramAdRequest.put("aoi_timeout", "true");
    }
    if (((f)localObject1).m()) {
      paramAdRequest.put("aoi_nofill", "true");
    }
    localObject2 = ((f)localObject1).p();
    if (localObject2 != null) {
      paramAdRequest.put("pit", localObject2);
    }
    ((f)localObject1).a();
    ((f)localObject1).d();
    if ((this.d.f() instanceof InterstitialAd)) {
      paramAdRequest.put("format", "interstitial_mb");
    }
    for (;;)
    {
      paramAdRequest.put("slotname", this.d.h());
      paramAdRequest.put("js", "afma-sdk-a-v4.1.1");
      localObject1 = localContext.getPackageName();
      try
      {
        localObject1 = localContext.getPackageManager().getPackageInfo((String)localObject1, 0);
        int n = ((PackageInfo)localObject1).versionCode;
        paramAdRequest.put("msid", localContext.getPackageName());
        paramAdRequest.put("app_name", n + ".android." + localContext.getPackageName());
        paramAdRequest.put("isu", AdUtil.a(localContext));
        localObject1 = AdUtil.d(localContext);
        if (localObject1 != null) {
          break;
        }
        throw new c.d("NETWORK_ERROR");
      }
      catch (PackageManager.NameNotFoundException paramAdRequest)
      {
        throw new c.b("NameNotFoundException");
      }
      localObject1 = this.d.k();
      localObject2 = ((AdSize)localObject1).toString();
      if (localObject2 != null)
      {
        paramAdRequest.put("format", localObject2);
      }
      else
      {
        localObject2 = new HashMap();
        ((Map)localObject2).put("w", Integer.valueOf(((AdSize)localObject1).getWidth()));
        ((Map)localObject2).put("h", Integer.valueOf(((AdSize)localObject1).getHeight()));
        paramAdRequest.put("ad_frame", localObject2);
      }
    }
    paramAdRequest.put("net", localObject1);
    localObject1 = AdUtil.e(localContext);
    if ((localObject1 != null) && (((String)localObject1).length() != 0)) {
      paramAdRequest.put("cap", localObject1);
    }
    paramAdRequest.put("u_audio", Integer.valueOf(AdUtil.f(localContext).ordinal()));
    paramActivity = AdUtil.a(paramActivity);
    paramAdRequest.put("u_sd", Float.valueOf(paramActivity.density));
    paramAdRequest.put("u_h", Integer.valueOf(AdUtil.a(localContext, paramActivity)));
    paramAdRequest.put("u_w", Integer.valueOf(AdUtil.b(localContext, paramActivity)));
    paramAdRequest.put("hl", Locale.getDefault().getLanguage());
    if (AdUtil.c()) {
      paramAdRequest.put("simulator", Integer.valueOf(1));
    }
    paramAdRequest = AdUtil.a(paramAdRequest);
    paramAdRequest = "<html><head><script src=\"http://www.gstatic.com/afma/sdk-core-v40.js\"></script><script>AFMA_buildAdURL(" + paramAdRequest + ");" + "</script></head><body></body></html>";
    com.google.ads.util.a.c("adRequestUrlHtml: " + paramAdRequest);
    return paramAdRequest;
  }
  
  private void a(AdRequest.ErrorCode paramErrorCode, boolean paramBoolean)
  {
    this.c.a();
    this.d.a(new c.a(this.d, this.f, this.c, paramErrorCode, paramBoolean));
  }
  
  final void a()
  {
    com.google.ads.util.a.a("AdLoader cancelled.");
    this.f.stopLoading();
    this.f.destroy();
    if (this.m != null)
    {
      this.m.interrupt();
      this.m = null;
    }
    this.c.a();
    this.i = true;
  }
  
  public final void a(int paramInt)
  {
    try
    {
      this.l = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void a(AdRequest.ErrorCode paramErrorCode)
  {
    try
    {
      this.j = paramErrorCode;
      notify();
      return;
    }
    finally
    {
      paramErrorCode = finally;
      throw paramErrorCode;
    }
  }
  
  final void a(AdRequest paramAdRequest)
  {
    this.e = paramAdRequest;
    this.i = false;
    this.m = new Thread(this);
    this.m.start();
  }
  
  final void a(String paramString)
  {
    try
    {
      this.h.add(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  final void a(String paramString1, String paramString2)
  {
    try
    {
      this.a = paramString2;
      this.b = paramString1;
      notify();
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  final void b()
  {
    try
    {
      this.k = true;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void b(String paramString)
  {
    try
    {
      this.g = paramString;
      notify();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 77	c:f	Landroid/webkit/WebView;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 105	c:c	Lb;
    //   13: ifnonnull +20 -> 33
    //   16: ldc_w 411
    //   19: invokestatic 112	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getstatic 416	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   26: iconst_0
    //   27: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: aload_0
    //   34: getfield 46	c:d	Ld;
    //   37: invokevirtual 65	d:e	()Landroid/app/Activity;
    //   40: astore 8
    //   42: aload 8
    //   44: ifnonnull +27 -> 71
    //   47: ldc_w 420
    //   50: invokestatic 112	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: getstatic 416	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   57: iconst_0
    //   58: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: astore 8
    //   66: aload_0
    //   67: monitorexit
    //   68: aload 8
    //   70: athrow
    //   71: aload_0
    //   72: aload_0
    //   73: getfield 392	c:e	Lcom/google/ads/AdRequest;
    //   76: aload 8
    //   78: invokespecial 422	c:a	(Lcom/google/ads/AdRequest;Landroid/app/Activity;)Ljava/lang/String;
    //   81: astore 8
    //   83: aload_0
    //   84: getfield 46	c:d	Ld;
    //   87: new 14	c$c
    //   90: dup
    //   91: aload_0
    //   92: aload_0
    //   93: getfield 77	c:f	Landroid/webkit/WebView;
    //   96: aconst_null
    //   97: aload 8
    //   99: invokespecial 425	c$c:<init>	(Lc;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    //   102: invokevirtual 366	d:a	(Ljava/lang/Runnable;)V
    //   105: aload_0
    //   106: getfield 46	c:d	Ld;
    //   109: invokevirtual 428	d:n	()J
    //   112: lstore_1
    //   113: invokestatic 433	android/os/SystemClock:elapsedRealtime	()J
    //   116: lstore_3
    //   117: lload_1
    //   118: lconst_0
    //   119: lcmp
    //   120: ifle +8 -> 128
    //   123: aload_0
    //   124: lload_1
    //   125: invokevirtual 437	java/lang/Object:wait	(J)V
    //   128: aload_0
    //   129: getfield 385	c:i	Z
    //   132: istore 7
    //   134: iload 7
    //   136: ifeq +109 -> 245
    //   139: aload_0
    //   140: monitorexit
    //   141: return
    //   142: astore 8
    //   144: new 227	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   151: ldc_w 439
    //   154: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload 8
    //   159: invokevirtual 442	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 357	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   168: aload_0
    //   169: getstatic 444	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   172: iconst_0
    //   173: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   176: aload_0
    //   177: monitorexit
    //   178: return
    //   179: astore 8
    //   181: new 227	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   188: ldc_w 446
    //   191: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: aload 8
    //   196: invokevirtual 442	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 357	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   205: aload_0
    //   206: getstatic 416	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   209: iconst_0
    //   210: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   213: aload_0
    //   214: monitorexit
    //   215: return
    //   216: astore 8
    //   218: new 227	java/lang/StringBuilder
    //   221: dup
    //   222: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   225: ldc_w 448
    //   228: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload 8
    //   233: invokevirtual 442	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokestatic 370	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   242: aload_0
    //   243: monitorexit
    //   244: return
    //   245: aload_0
    //   246: getfield 57	c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   249: ifnull +15 -> 264
    //   252: aload_0
    //   253: aload_0
    //   254: getfield 57	c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   257: iconst_0
    //   258: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   261: aload_0
    //   262: monitorexit
    //   263: return
    //   264: aload_0
    //   265: getfield 48	c:g	Ljava/lang/String;
    //   268: ifnonnull +43 -> 311
    //   271: new 227	java/lang/StringBuilder
    //   274: dup
    //   275: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   278: ldc_w 450
    //   281: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: lload_1
    //   285: invokevirtual 453	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   288: ldc_w 455
    //   291: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   297: invokestatic 357	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   300: aload_0
    //   301: getstatic 444	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   304: iconst_0
    //   305: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   308: aload_0
    //   309: monitorexit
    //   310: return
    //   311: aload_0
    //   312: getfield 105	c:c	Lb;
    //   315: aload_0
    //   316: getfield 48	c:g	Ljava/lang/String;
    //   319: invokevirtual 456	b:a	(Ljava/lang/String;)V
    //   322: invokestatic 433	android/os/SystemClock:elapsedRealtime	()J
    //   325: lstore 5
    //   327: lload_1
    //   328: lload 5
    //   330: lload_3
    //   331: lsub
    //   332: lsub
    //   333: lstore 5
    //   335: lload 5
    //   337: lconst_0
    //   338: lcmp
    //   339: ifle +9 -> 348
    //   342: aload_0
    //   343: lload 5
    //   345: invokevirtual 437	java/lang/Object:wait	(J)V
    //   348: aload_0
    //   349: getfield 385	c:i	Z
    //   352: istore 7
    //   354: iload 7
    //   356: ifeq +35 -> 391
    //   359: aload_0
    //   360: monitorexit
    //   361: return
    //   362: astore 8
    //   364: new 227	java/lang/StringBuilder
    //   367: dup
    //   368: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   371: ldc_w 458
    //   374: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: aload 8
    //   379: invokevirtual 442	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   382: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   385: invokestatic 370	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   388: aload_0
    //   389: monitorexit
    //   390: return
    //   391: aload_0
    //   392: getfield 57	c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   395: ifnull +15 -> 410
    //   398: aload_0
    //   399: aload_0
    //   400: getfield 57	c:j	Lcom/google/ads/AdRequest$ErrorCode;
    //   403: iconst_0
    //   404: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   407: aload_0
    //   408: monitorexit
    //   409: return
    //   410: aload_0
    //   411: getfield 50	c:b	Ljava/lang/String;
    //   414: ifnonnull +43 -> 457
    //   417: new 227	java/lang/StringBuilder
    //   420: dup
    //   421: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   424: ldc_w 450
    //   427: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: lload_1
    //   431: invokevirtual 453	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   434: ldc_w 460
    //   437: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   443: invokestatic 357	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   446: aload_0
    //   447: getstatic 444	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   450: iconst_0
    //   451: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   454: aload_0
    //   455: monitorexit
    //   456: return
    //   457: aload_0
    //   458: getfield 46	c:d	Ld;
    //   461: invokevirtual 463	d:i	()Lg;
    //   464: astore 8
    //   466: aload_0
    //   467: getfield 46	c:d	Ld;
    //   470: invokevirtual 466	d:j	()Lh;
    //   473: invokevirtual 467	h:a	()V
    //   476: aload_0
    //   477: getfield 46	c:d	Ld;
    //   480: new 14	c$c
    //   483: dup
    //   484: aload_0
    //   485: aload 8
    //   487: aload_0
    //   488: getfield 404	c:a	Ljava/lang/String;
    //   491: aload_0
    //   492: getfield 50	c:b	Ljava/lang/String;
    //   495: invokespecial 425	c$c:<init>	(Lc;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    //   498: invokevirtual 366	d:a	(Ljava/lang/Runnable;)V
    //   501: invokestatic 433	android/os/SystemClock:elapsedRealtime	()J
    //   504: lstore 5
    //   506: lload_1
    //   507: lload 5
    //   509: lload_3
    //   510: lsub
    //   511: lsub
    //   512: lstore_3
    //   513: lload_3
    //   514: lconst_0
    //   515: lcmp
    //   516: ifle +8 -> 524
    //   519: aload_0
    //   520: lload_3
    //   521: invokevirtual 437	java/lang/Object:wait	(J)V
    //   524: aload_0
    //   525: getfield 59	c:k	Z
    //   528: ifeq +62 -> 590
    //   531: aload_0
    //   532: getfield 46	c:d	Ld;
    //   535: new 19	c$e
    //   538: dup
    //   539: aload_0
    //   540: aload_0
    //   541: getfield 46	c:d	Ld;
    //   544: aload_0
    //   545: getfield 55	c:h	Ljava/util/LinkedList;
    //   548: aload_0
    //   549: getfield 61	c:l	I
    //   552: invokespecial 470	c$e:<init>	(Lc;Ld;Ljava/util/LinkedList;I)V
    //   555: invokevirtual 366	d:a	(Ljava/lang/Runnable;)V
    //   558: aload_0
    //   559: monitorexit
    //   560: return
    //   561: astore 8
    //   563: new 227	java/lang/StringBuilder
    //   566: dup
    //   567: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   570: ldc_w 472
    //   573: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: aload 8
    //   578: invokevirtual 442	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   581: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   584: invokestatic 370	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   587: aload_0
    //   588: monitorexit
    //   589: return
    //   590: new 227	java/lang/StringBuilder
    //   593: dup
    //   594: invokespecial 228	java/lang/StringBuilder:<init>	()V
    //   597: ldc_w 450
    //   600: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   603: lload_1
    //   604: invokevirtual 453	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   607: ldc_w 474
    //   610: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   613: invokevirtual 240	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   616: invokestatic 357	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   619: aload_0
    //   620: getstatic 444	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   623: iconst_1
    //   624: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   627: goto -69 -> 558
    //   630: astore 8
    //   632: ldc_w 476
    //   635: aload 8
    //   637: invokestatic 479	com/google/ads/util/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   640: aload_0
    //   641: getstatic 416	com/google/ads/AdRequest$ErrorCode:INTERNAL_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   644: iconst_1
    //   645: invokespecial 418	c:a	(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    //   648: goto -90 -> 558
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	651	0	this	c
    //   112	492	1	l1	long
    //   116	405	3	l2	long
    //   325	183	5	l3	long
    //   132	223	7	bool	boolean
    //   40	3	8	localActivity1	Activity
    //   64	13	8	localActivity2	Activity
    //   81	17	8	str	String
    //   142	16	8	locald	c.d
    //   179	16	8	localb	c.b
    //   216	16	8	localInterruptedException1	java.lang.InterruptedException
    //   362	16	8	localInterruptedException2	java.lang.InterruptedException
    //   464	22	8	localg	g
    //   561	16	8	localInterruptedException3	java.lang.InterruptedException
    //   630	6	8	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	16	64	finally
    //   16	30	64	finally
    //   30	32	64	finally
    //   33	42	64	finally
    //   47	61	64	finally
    //   61	63	64	finally
    //   71	83	64	finally
    //   83	117	64	finally
    //   123	128	64	finally
    //   128	134	64	finally
    //   139	141	64	finally
    //   144	176	64	finally
    //   176	178	64	finally
    //   181	213	64	finally
    //   213	215	64	finally
    //   218	242	64	finally
    //   242	244	64	finally
    //   245	261	64	finally
    //   261	263	64	finally
    //   264	308	64	finally
    //   308	310	64	finally
    //   311	327	64	finally
    //   342	348	64	finally
    //   348	354	64	finally
    //   359	361	64	finally
    //   364	388	64	finally
    //   388	390	64	finally
    //   391	407	64	finally
    //   407	409	64	finally
    //   410	454	64	finally
    //   454	456	64	finally
    //   457	506	64	finally
    //   519	524	64	finally
    //   524	558	64	finally
    //   558	560	64	finally
    //   563	587	64	finally
    //   587	589	64	finally
    //   590	627	64	finally
    //   632	648	64	finally
    //   71	83	142	c$d
    //   71	83	179	c$b
    //   123	128	216	java/lang/InterruptedException
    //   342	348	362	java/lang/InterruptedException
    //   519	524	561	java/lang/InterruptedException
    //   2	16	630	java/lang/Exception
    //   16	30	630	java/lang/Exception
    //   33	42	630	java/lang/Exception
    //   47	61	630	java/lang/Exception
    //   71	83	630	java/lang/Exception
    //   83	117	630	java/lang/Exception
    //   123	128	630	java/lang/Exception
    //   128	134	630	java/lang/Exception
    //   144	176	630	java/lang/Exception
    //   181	213	630	java/lang/Exception
    //   218	242	630	java/lang/Exception
    //   245	261	630	java/lang/Exception
    //   264	308	630	java/lang/Exception
    //   311	327	630	java/lang/Exception
    //   342	348	630	java/lang/Exception
    //   348	354	630	java/lang/Exception
    //   364	388	630	java/lang/Exception
    //   391	407	630	java/lang/Exception
    //   410	454	630	java/lang/Exception
    //   457	506	630	java/lang/Exception
    //   519	524	630	java/lang/Exception
    //   524	558	630	java/lang/Exception
    //   563	587	630	java/lang/Exception
    //   590	627	630	java/lang/Exception
  }
  
  private final class a
    implements Runnable
  {
    private final d b;
    private final WebView c;
    private final b d;
    private final AdRequest.ErrorCode e;
    private final boolean f;
    
    public a(d paramd, WebView paramWebView, b paramb, AdRequest.ErrorCode paramErrorCode, boolean paramBoolean)
    {
      this.b = paramd;
      this.c = paramWebView;
      this.d = paramb;
      this.e = paramErrorCode;
      this.f = paramBoolean;
    }
    
    public final void run()
    {
      this.c.stopLoading();
      this.c.destroy();
      this.d.a();
      if (this.f)
      {
        g localg = this.b.i();
        localg.stopLoading();
        localg.setVisibility(8);
      }
      this.b.a(this.e);
    }
  }
  
  private final class b
    extends Exception
  {
    public b(String paramString)
    {
      super();
    }
  }
  
  private final class c
    implements Runnable
  {
    private final String b;
    private final String c;
    private final WebView d;
    
    public c(WebView paramWebView, String paramString1, String paramString2)
    {
      this.d = paramWebView;
      this.b = paramString1;
      this.c = paramString2;
    }
    
    public final void run()
    {
      this.d.loadDataWithBaseURL(this.b, this.c, "text/html", "utf-8", null);
    }
  }
  
  private final class d
    extends Exception
  {
    public d(String paramString)
    {
      super();
    }
  }
  
  private final class e
    implements Runnable
  {
    private final d b;
    private final LinkedList<String> c;
    private final int d;
    
    public e(LinkedList<String> paramLinkedList, int paramInt)
    {
      this.b = paramLinkedList;
      this.c = paramInt;
      int i;
      this.d = i;
    }
    
    public final void run()
    {
      this.b.a(this.c);
      this.b.a(this.d);
      this.b.q();
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     c
 * JD-Core Version:    0.7.0.1
 */