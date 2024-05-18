import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import com.google.ads.Ad;
import com.google.ads.AdActivity;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.util.AdUtil;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;

public final class d
{
  private static final Object a = new Object();
  private WeakReference<Activity> b;
  private Ad c;
  private AdListener d;
  private c e;
  private AdRequest f;
  private AdSize g;
  private f h;
  private String i;
  private g j;
  private h k;
  private Handler l;
  private long m;
  private boolean n;
  private boolean o;
  private SharedPreferences p;
  private long q;
  private x r;
  private boolean s;
  private LinkedList<String> t;
  private LinkedList<String> u;
  private int v;
  
  public d(Activity paramActivity, Ad arg2, AdSize paramAdSize, String paramString, boolean paramBoolean)
  {
    this.b = new WeakReference(paramActivity);
    this.c = ???;
    this.g = paramAdSize;
    this.i = paramString;
    this.s = paramBoolean;
    this.h = new f();
    this.d = null;
    this.e = null;
    this.f = null;
    this.n = false;
    this.l = new Handler();
    this.q = 0L;
    this.o = false;
    for (;;)
    {
      synchronized (a)
      {
        this.p = paramActivity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
        if (paramBoolean)
        {
          long l1 = this.p.getLong("Timeout" + paramString, -1L);
          if (l1 < 0L)
          {
            this.m = 5000L;
            this.r = new x(this);
            this.t = new LinkedList();
            this.u = new LinkedList();
            a();
            AdUtil.g(paramActivity.getApplicationContext());
            return;
          }
          this.m = l1;
        }
      }
      this.m = 60000L;
    }
  }
  
  /* Error */
  private boolean A()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 77	d:e	Lc;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	d
    //   12	7	1	bool	boolean
    //   6	2	2	localc	c
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  /* Error */
  private void B()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 61	d:b	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 161	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 92	android/app/Activity
    //   12: astore_1
    //   13: aload_1
    //   14: ifnonnull +11 -> 25
    //   17: ldc 163
    //   19: invokestatic 168	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: getfield 145	d:u	Ljava/util/LinkedList;
    //   29: invokevirtual 172	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   32: astore_2
    //   33: aload_2
    //   34: invokeinterface 177 1 0
    //   39: ifeq -17 -> 22
    //   42: new 179	java/lang/Thread
    //   45: dup
    //   46: new 181	w
    //   49: dup
    //   50: aload_2
    //   51: invokeinterface 184 1 0
    //   56: checkcast 186	java/lang/String
    //   59: aload_1
    //   60: invokevirtual 96	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   63: invokespecial 189	w:<init>	(Ljava/lang/String;Landroid/content/Context;)V
    //   66: invokespecial 192	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   69: invokevirtual 195	java/lang/Thread:start	()V
    //   72: goto -39 -> 33
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	d
    //   12	48	1	localActivity	Activity
    //   75	4	1	localObject	Object
    //   32	19	2	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   2	13	75	finally
    //   17	22	75	finally
    //   25	33	75	finally
    //   33	72	75	finally
  }
  
  public final void a()
  {
    for (;;)
    {
      try
      {
        Activity localActivity = e();
        if (localActivity == null)
        {
          com.google.ads.util.a.a("activity was null while trying to create an AdWebView.");
          return;
        }
        this.j = new g(localActivity.getApplicationContext(), this.g);
        this.j.setVisibility(8);
        if ((this.c instanceof AdView))
        {
          this.k = new h(this, a.b, true, false);
          this.j.setWebViewClient(this.k);
        }
        else
        {
          this.k = new h(this, a.b, true, true);
        }
      }
      finally {}
    }
  }
  
  public final void a(float paramFloat)
  {
    long l1 = (1000.0F * paramFloat);
    try
    {
      this.q = l1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void a(int paramInt)
  {
    try
    {
      this.v = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void a(long paramLong)
  {
    synchronized (a)
    {
      SharedPreferences.Editor localEditor = this.p.edit();
      localEditor.putLong("Timeout" + this.i, paramLong);
      localEditor.commit();
      if (this.s) {
        this.m = paramLong;
      }
      return;
    }
  }
  
  public final void a(AdListener paramAdListener)
  {
    try
    {
      this.d = paramAdListener;
      return;
    }
    finally
    {
      paramAdListener = finally;
      throw paramAdListener;
    }
  }
  
  /* Error */
  public final void a(com.google.ads.AdRequest.ErrorCode paramErrorCode)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aconst_null
    //   4: putfield 77	d:e	Lc;
    //   7: aload_0
    //   8: getfield 63	d:c	Lcom/google/ads/Ad;
    //   11: instanceof 250
    //   14: ifeq +17 -> 31
    //   17: aload_1
    //   18: getstatic 256	com/google/ads/AdRequest$ErrorCode:NO_FILL	Lcom/google/ads/AdRequest$ErrorCode;
    //   21: if_acmpne +63 -> 84
    //   24: aload_0
    //   25: getfield 73	d:h	Lf;
    //   28: invokevirtual 258	f:n	()V
    //   31: new 108	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 260
    //   41: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_1
    //   45: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   48: ldc_w 265
    //   51: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokestatic 267	com/google/ads/util/a:c	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: getfield 75	d:d	Lcom/google/ads/AdListener;
    //   64: ifnull +17 -> 81
    //   67: aload_0
    //   68: getfield 75	d:d	Lcom/google/ads/AdListener;
    //   71: aload_0
    //   72: getfield 63	d:c	Lcom/google/ads/Ad;
    //   75: aload_1
    //   76: invokeinterface 273 3 0
    //   81: aload_0
    //   82: monitorexit
    //   83: return
    //   84: aload_1
    //   85: getstatic 276	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   88: if_acmpne -57 -> 31
    //   91: aload_0
    //   92: getfield 73	d:h	Lf;
    //   95: invokevirtual 278	f:l	()V
    //   98: goto -67 -> 31
    //   101: astore_1
    //   102: aload_0
    //   103: monitorexit
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	d
    //   0	106	1	paramErrorCode	com.google.ads.AdRequest.ErrorCode
    // Exception table:
    //   from	to	target	type
    //   2	31	101	finally
    //   31	81	101	finally
    //   84	98	101	finally
  }
  
  public final void a(AdRequest paramAdRequest)
  {
    for (;;)
    {
      try
      {
        if (A())
        {
          com.google.ads.util.a.e("loadAd called while the ad is already loading, so aborting.");
          return;
        }
        if (AdActivity.isShowing())
        {
          com.google.ads.util.a.e("loadAd called while an interstitial or landing page is displayed, so aborting");
          continue;
        }
        localActivity = e();
      }
      finally {}
      Activity localActivity;
      if (localActivity == null)
      {
        com.google.ads.util.a.e("activity is null while trying to load an ad.");
      }
      else if ((AdUtil.c(localActivity.getApplicationContext())) && (AdUtil.b(localActivity.getApplicationContext())))
      {
        this.n = false;
        this.t.clear();
        this.f = paramAdRequest;
        this.e = new c(this);
        this.e.a(paramAdRequest);
      }
    }
  }
  
  final void a(Runnable paramRunnable)
  {
    this.l.post(paramRunnable);
  }
  
  final void a(String paramString)
  {
    try
    {
      com.google.ads.util.a.a("Adding a tracking URL: " + paramString);
      this.t.add(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  final void a(LinkedList<String> paramLinkedList)
  {
    try
    {
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        com.google.ads.util.a.a("Adding a click tracking URL: " + str);
      }
      this.u = paramLinkedList;
    }
    finally {}
  }
  
  public final void b()
  {
    try
    {
      a(null);
      z();
      this.j.destroy();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  /* Error */
  public final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 90	d:o	Z
    //   6: ifeq +28 -> 34
    //   9: ldc_w 329
    //   12: invokestatic 202	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   15: aload_0
    //   16: getfield 86	d:l	Landroid/os/Handler;
    //   19: aload_0
    //   20: getfield 138	d:r	Lx;
    //   23: invokevirtual 332	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   26: aload_0
    //   27: iconst_0
    //   28: putfield 90	d:o	Z
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: ldc_w 334
    //   37: invokestatic 202	com/google/ads/util/a:a	(Ljava/lang/String;)V
    //   40: goto -9 -> 31
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	d
    //   43	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	31	43	finally
    //   34	40	43	finally
  }
  
  public final void d()
  {
    for (;;)
    {
      try
      {
        if ((this.c instanceof AdView))
        {
          if (!this.o)
          {
            com.google.ads.util.a.a("Enabling refreshing every " + this.q + " milliseconds.");
            this.l.postDelayed(this.r, this.q);
            this.o = true;
            return;
          }
          com.google.ads.util.a.a("Refreshing is already enabled.");
          continue;
        }
        com.google.ads.util.a.a("Tried to enable refreshing on something other than an AdView.");
      }
      finally {}
    }
  }
  
  public final Activity e()
  {
    return (Activity)this.b.get();
  }
  
  public final Ad f()
  {
    return this.c;
  }
  
  public final c g()
  {
    try
    {
      c localc = this.e;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  final String h()
  {
    return this.i;
  }
  
  public final g i()
  {
    try
    {
      g localg = this.j;
      return localg;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  final h j()
  {
    try
    {
      h localh = this.k;
      return localh;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final AdSize k()
  {
    return this.g;
  }
  
  public final f l()
  {
    return this.h;
  }
  
  public final int m()
  {
    try
    {
      int i1 = this.v;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final long n()
  {
    return this.m;
  }
  
  public final boolean o()
  {
    try
    {
      boolean bool = this.n;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final boolean p()
  {
    try
    {
      boolean bool = this.o;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  final void q()
  {
    try
    {
      this.e = null;
      this.n = true;
      this.j.setVisibility(0);
      this.h.c();
      if ((this.c instanceof AdView)) {
        v();
      }
      com.google.ads.util.a.c("onReceiveAd()");
      if (this.d != null) {
        this.d.onReceiveAd(this.c);
      }
      return;
    }
    finally {}
  }
  
  public final void r()
  {
    try
    {
      this.h.o();
      com.google.ads.util.a.c("onDismissScreen()");
      if (this.d != null) {
        this.d.onDismissScreen(this.c);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void s()
  {
    try
    {
      com.google.ads.util.a.c("onPresentScreen()");
      if (this.d != null) {
        this.d.onPresentScreen(this.c);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void t()
  {
    try
    {
      com.google.ads.util.a.c("onLeaveApplication()");
      if (this.d != null) {
        this.d.onLeaveApplication(this.c);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void u()
  {
    this.h.b();
    B();
  }
  
  /* Error */
  public final void v()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 61	d:b	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 161	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 92	android/app/Activity
    //   12: astore_1
    //   13: aload_1
    //   14: ifnonnull +12 -> 26
    //   17: ldc_w 390
    //   20: invokestatic 168	com/google/ads/util/a:e	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: getfield 143	d:t	Ljava/util/LinkedList;
    //   30: invokevirtual 172	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   33: astore_2
    //   34: aload_2
    //   35: invokeinterface 177 1 0
    //   40: ifeq -17 -> 23
    //   43: new 179	java/lang/Thread
    //   46: dup
    //   47: new 181	w
    //   50: dup
    //   51: aload_2
    //   52: invokeinterface 184 1 0
    //   57: checkcast 186	java/lang/String
    //   60: aload_1
    //   61: invokevirtual 96	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   64: invokespecial 189	w:<init>	(Ljava/lang/String;Landroid/content/Context;)V
    //   67: invokespecial 192	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   70: invokevirtual 195	java/lang/Thread:start	()V
    //   73: goto -39 -> 34
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	d
    //   12	49	1	localActivity	Activity
    //   76	4	1	localObject	Object
    //   33	19	2	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   2	13	76	finally
    //   17	23	76	finally
    //   26	34	76	finally
    //   34	73	76	finally
  }
  
  /* Error */
  final boolean w()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 145	d:u	Ljava/util/LinkedList;
    //   6: invokevirtual 393	java/util/LinkedList:isEmpty	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: ifne +9 -> 20
    //   14: iconst_1
    //   15: istore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: iload_1
    //   19: ireturn
    //   20: iconst_0
    //   21: istore_1
    //   22: goto -6 -> 16
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	d
    //   9	13	1	bool	boolean
    //   25	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	25	finally
  }
  
  public final void x()
  {
    for (;;)
    {
      try
      {
        if (this.f == null) {
          break label94;
        }
        if ((this.c instanceof AdView))
        {
          if ((((AdView)this.c).isShown()) && (AdUtil.d()))
          {
            com.google.ads.util.a.c("Refreshing ad.");
            a(this.f);
            this.l.postDelayed(this.r, this.q);
            return;
          }
          com.google.ads.util.a.a("Not refreshing because the ad is not visible.");
          continue;
        }
        com.google.ads.util.a.a("Tried to refresh an ad that wasn't an AdView.");
      }
      finally {}
      continue;
      label94:
      com.google.ads.util.a.a("Tried to refresh before calling loadAd().");
    }
  }
  
  public final void y()
  {
    try
    {
      this.n = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public final void z()
  {
    try
    {
      if (this.e != null)
      {
        this.e.a();
        this.e = null;
      }
      this.j.stopLoading();
      return;
    }
    finally {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     d
 * JD-Core Version:    0.7.0.1
 */