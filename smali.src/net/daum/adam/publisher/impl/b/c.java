package net.daum.adam.publisher.impl.b;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import net.daum.adam.publisher.AdView;
import net.daum.adam.publisher.impl.e;
import net.daum.adam.publisher.impl.g;
import net.daum.adam.publisher.impl.h;
import net.daum.adam.publisher.impl.i;

public class c
{
  protected static boolean a = true;
  private static final String b = "AdCommandTask";
  private static final int c = 10;
  private static final int d = 20;
  private static final int e = 21;
  private static long f = 0L;
  private static long g = 0L;
  private static int h = 2;
  private static int i = 0;
  private static ArrayList<String> j;
  private WeakReference<AdView> k;
  private AdView l;
  private g m;
  private c n;
  private Thread o;
  private Handler p = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      boolean bool3 = false;
      boolean bool2 = false;
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 10: 
        e.b("AdCommandTask", "MSG_INITIALIZE_GPS");
        try
        {
          if (c.a(c.this))
          {
            c.b(c.this);
            return;
          }
        }
        catch (Exception paramAnonymousMessage)
        {
          e.a("AdCommandTask", "위치 정보 수집 기능 예외 발생", paramAnonymousMessage);
          return;
        }
        e.b("AdCommandTask", "위치 정보 수집 권한 없음");
        return;
      case 20: 
        bool1 = bool2;
        if (paramAnonymousMessage.obj != null)
        {
          bool1 = bool2;
          if ((paramAnonymousMessage.obj instanceof Boolean)) {
            bool1 = ((Boolean)paramAnonymousMessage.obj).booleanValue();
          }
        }
        c.a(c.this, new Thread(new c.a(c.this, bool1), "AgreeCommandThread"));
        int i = c.c(c.this).getPriority();
        try
        {
          if (i.a != null) {
            c.c(c.this).setPriority(i.a.intValue());
          }
          c.c(c.this).start();
          return;
        }
        catch (Exception paramAnonymousMessage)
        {
          for (;;)
          {
            c.c(c.this).setPriority(i);
          }
        }
      }
      boolean bool1 = bool3;
      if (paramAnonymousMessage.obj != null)
      {
        bool1 = bool3;
        if ((paramAnonymousMessage.obj instanceof Boolean)) {
          bool1 = ((Boolean)paramAnonymousMessage.obj).booleanValue();
        }
      }
      c.a(c.this, bool1);
      c.d(c.this).resume();
    }
  };
  private Location q;
  private LocationManager r = null;
  private LocationListener s = new LocationListener()
  {
    public void onLocationChanged(Location paramAnonymousLocation)
    {
      c.a(c.this, paramAnonymousLocation);
      e.b("AdCommandTask", "GPS UPDATED");
      c.g(c.this).a(c.f(c.this).getLatitude(), c.f(c.this).getLongitude());
    }
    
    public void onProviderDisabled(String paramAnonymousString)
    {
      e.b("AdCommandTask", "[LocationListener] " + paramAnonymousString + " 사용 불가");
    }
    
    public void onProviderEnabled(String paramAnonymousString)
    {
      e.b("AdCommandTask", "[LocationListener] " + paramAnonymousString + " 사용 가능");
    }
    
    public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle)
    {
      switch (paramAnonymousInt)
      {
      default: 
        return;
      }
      c.h(c.this);
    }
  };
  
  public c(AdView paramAdView)
  {
    try
    {
      this.k = new WeakReference(paramAdView);
      this.l = ((AdView)this.k.get());
      this.m = new g(this.l.getContext());
      this.m.a(this.l.getClientId());
      return;
    }
    catch (NullPointerException paramAdView)
    {
      e.a("AdCommandTask", paramAdView.toString(), paramAdView);
      return;
    }
    catch (Exception paramAdView)
    {
      e.a("AdCommandTask", paramAdView.toString(), paramAdView);
    }
  }
  
  protected static void a(int paramInt)
  {
    h = paramInt;
  }
  
  private void a(Boolean paramBoolean)
  {
    if ((this.n != null) && (this.n.isAlive()))
    {
      this.n.interrupt();
      this.n = null;
    }
    if (paramBoolean == null)
    {
      e.b("AdCommandTask", "SDK 내부 파라미터를 갱신");
      this.n = new c(this);
    }
    for (;;)
    {
      int i1 = this.n.getPriority();
      try
      {
        if (i.a != null) {
          this.n.setPriority(i.a.intValue());
        }
        this.n.start();
        return;
        e.b("AdCommandTask", "SDK 내부 파라미터를 갱신 후 전송");
        this.n = new c(this, paramBoolean);
      }
      catch (Exception paramBoolean)
      {
        for (;;)
        {
          this.n.setPriority(i1);
        }
      }
    }
  }
  
  /* Error */
  private void a(a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +141 -> 144
    //   6: aload_1
    //   7: invokevirtual 206	net/daum/adam/publisher/impl/b/a:g	()I
    //   10: sipush 200
    //   13: if_icmpne +131 -> 144
    //   16: ldc 46
    //   18: ldc 208
    //   20: invokestatic 175	net/daum/adam/publisher/impl/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: iconst_0
    //   24: istore_3
    //   25: aload_1
    //   26: invokevirtual 211	net/daum/adam/publisher/impl/b/a:d	()Ljava/util/ArrayList;
    //   29: astore 4
    //   31: aload 4
    //   33: ldc 213
    //   35: invokevirtual 219	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   38: ifne +11 -> 49
    //   41: aload 4
    //   43: ldc 213
    //   45: invokevirtual 222	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: aload 4
    //   51: ldc 224
    //   53: invokevirtual 219	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   56: ifne +11 -> 67
    //   59: aload 4
    //   61: ldc 224
    //   63: invokevirtual 222	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   66: pop
    //   67: iload_3
    //   68: istore_2
    //   69: getstatic 226	net/daum/adam/publisher/impl/b/c:j	Ljava/util/ArrayList;
    //   72: ifnonnull +22 -> 94
    //   75: iload_3
    //   76: istore_2
    //   77: aload 4
    //   79: ifnull +15 -> 94
    //   82: iload_3
    //   83: istore_2
    //   84: aload 4
    //   86: invokevirtual 229	java/util/ArrayList:size	()I
    //   89: ifle +5 -> 94
    //   92: iconst_1
    //   93: istore_2
    //   94: aload_1
    //   95: invokevirtual 231	net/daum/adam/publisher/impl/b/a:b	()I
    //   98: putstatic 89	net/daum/adam/publisher/impl/b/c:h	I
    //   101: aload_1
    //   102: invokevirtual 233	net/daum/adam/publisher/impl/b/a:a	()I
    //   105: putstatic 91	net/daum/adam/publisher/impl/b/c:i	I
    //   108: aload 4
    //   110: putstatic 226	net/daum/adam/publisher/impl/b/c:j	Ljava/util/ArrayList;
    //   113: aload_1
    //   114: invokevirtual 235	net/daum/adam/publisher/impl/b/a:e	()Ljava/util/ArrayList;
    //   117: invokestatic 238	net/daum/adam/publisher/impl/g:b	(Ljava/util/List;)V
    //   120: aload_1
    //   121: invokevirtual 240	net/daum/adam/publisher/impl/b/a:f	()Ljava/util/ArrayList;
    //   124: invokestatic 242	net/daum/adam/publisher/impl/g:a	(Ljava/util/List;)V
    //   127: iload_2
    //   128: ifeq +7 -> 135
    //   131: aload_0
    //   132: invokespecial 244	net/daum/adam/publisher/impl/b/c:i	()V
    //   135: invokestatic 250	java/lang/System:currentTimeMillis	()J
    //   138: putstatic 87	net/daum/adam/publisher/impl/b/c:g	J
    //   141: aload_0
    //   142: monitorexit
    //   143: return
    //   144: iconst_4
    //   145: putstatic 89	net/daum/adam/publisher/impl/b/c:h	I
    //   148: goto -13 -> 135
    //   151: astore_1
    //   152: aload_0
    //   153: monitorexit
    //   154: aload_1
    //   155: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	c
    //   0	156	1	parama	a
    //   68	60	2	i1	int
    //   24	59	3	i2	int
    //   29	80	4	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   6	23	151	finally
    //   25	49	151	finally
    //   49	67	151	finally
    //   69	75	151	finally
    //   84	92	151	finally
    //   94	127	151	finally
    //   131	135	151	finally
    //   135	141	151	finally
    //   144	148	151	finally
  }
  
  private void a(boolean paramBoolean)
  {
    final ProgressDialog localProgressDialog = new ProgressDialog(this.l.getContext());
    this.p.post(new Runnable()
    {
      public void run()
      {
        localProgressDialog.setMessage("Loading...");
        localProgressDialog.setCancelable(true);
        localProgressDialog.show();
      }
    });
    Object localObject1 = e.f();
    String str = (String)localObject1 + "/withdrawal.do";
    h localh = new h();
    localObject3 = null;
    try
    {
      HashMap localHashMap = this.m.a(Boolean.valueOf(true));
      localObject1 = localObject3;
      if (paramBoolean)
      {
        e.b("AdCommandTask", "[withdrawCollectGps] 위치 동의 철회 요청");
        localObject1 = localh.b(str, localHashMap, this.l.getUserAgent());
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.a("AdCommandTask", "[withdrawCollectGps] LIA 서버 Command 요청 실패", localException);
        Object localObject2 = localObject3;
      }
    }
    this.p.post(new Runnable()
    {
      public void run()
      {
        localProgressDialog.cancel();
        localProgressDialog.dismiss();
      }
    });
    if (localObject1 != null)
    {
      a((a)localObject1);
      e.b("AdCommandTask", "[withdrawCollectGps] " + ((a)localObject1).h());
      this.p.post(new Runnable()
      {
        public void run()
        {
          if ((this.a != null) && (this.a.g() != 500) && (this.a.h().length() > 0)) {
            net.daum.adam.publisher.impl.d.a.a().a(this.a.h()).a(c.d(c.this).getContext()).c().show();
          }
        }
      });
    }
  }
  
  public static boolean d()
  {
    long l1 = System.currentTimeMillis();
    if ((h != 4) && ((l1 - f) / 1000L > i))
    {
      e.b("AdCommandTask", "위치 정보 업데이트 가능");
      return true;
    }
    e.b("AdCommandTask", "위치 정보 업데이트 불가능");
    return false;
  }
  
  private void i()
  {
    a(null);
  }
  
  private LocationManager j()
  {
    try
    {
      LocationManager localLocationManager3 = (LocationManager)this.l.getContext().getSystemService("location");
      LocationManager localLocationManager1 = localLocationManager3;
      if (localLocationManager3 == null)
      {
        e.b("AdCommandTask", "[위치 기반 서비스] 위치 정보 수집 가능 권한 OFF");
        throw new NullPointerException();
      }
    }
    catch (Exception localException)
    {
      e.a("AdCommandTask", "[위치 기반 서비스] 위치 정보를 수집할 수 없습니다.", localException);
      LocationManager localLocationManager2 = null;
      return localLocationManager2;
    }
  }
  
  private String k()
  {
    if (!this.m.b("android.permission.READ_PHONE_STATE")) {
      return "";
    }
    try
    {
      Object localObject = (TelephonyManager)this.l.getContext().getSystemService("phone");
      if (localObject != null)
      {
        e.b("NetworkOperator", ((TelephonyManager)localObject).getNetworkOperator());
        localObject = ((TelephonyManager)localObject).getNetworkOperator();
        return localObject;
      }
    }
    catch (Exception localException)
    {
      e.b("AdCommandTask", localException.toString());
    }
    return "";
  }
  
  private String l()
  {
    if (!this.m.b("android.permission.ACCESS_NETWORK_STATE")) {
      return null;
    }
    try
    {
      if (((ConnectivityManager)this.l.getContext().getSystemService("connectivity")).getActiveNetworkInfo().getType() == 1) {
        return "wifi";
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      e.a("AdCommandTask", "네트워크 정보를 가져올 수 없습니다.", localNullPointerException);
      return null;
    }
    return "3g";
  }
  
  private void m()
  {
    e.b("AdCommandTask", "[UpdateParamsRunnable] 위치 정보 서비스 사용 불가");
    if (this.r != null) {
      this.r.removeUpdates(this.s);
    }
  }
  
  private boolean n()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.m != null) {
      if (!this.m.b("android.permission.ACCESS_FINE_LOCATION"))
      {
        bool1 = bool2;
        if (!this.m.b("android.permission.ACCESS_COARSE_LOCATION")) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean o()
  {
    for (;;)
    {
      try
      {
        this.r = j();
        this.q = this.r.getLastKnownLocation("gps");
        if (this.q == null) {
          this.q = this.r.getLastKnownLocation("network");
        }
        Object localObject = new Criteria();
        if (this.m.b("android.permission.ACCESS_FINE_LOCATION"))
        {
          ((Criteria)localObject).setAccuracy(1);
          localObject = this.r.getProviders(true).iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          String str = (String)((Iterator)localObject).next();
          e.b("AdCommandTask", "[UpdateParamsRunnable] " + str + " ON");
          this.r.requestLocationUpdates(str, 1L, 1.0F, this.s);
          continue;
        }
        localException.setAccuracy(2);
      }
      catch (Exception localException)
      {
        e.a("AdCommandTask", localException.toString(), localException);
        return false;
      }
    }
    return true;
  }
  
  public void a()
  {
    if ((this.l != null) && (!this.l.isAvailableToShowExpandableAd())) {
      e.b("AdCommandTask", "TODO : CANNOT BE USED");
    }
    while ((!a) && (h != 2) && (h != 3)) {
      return;
    }
    a(Boolean.valueOf(a));
    a = false;
  }
  
  public void b()
  {
    if ((this.l != null) && (!this.l.isAvailableToShowExpandableAd())) {
      e.b("AdCommandTask", "TODO : CANNOT BE USED");
    }
    while ((this.n == null) || (!this.n.isAlive())) {
      return;
    }
    e.b("AdCommandTask", "UpdateParamsThread is " + this.n.isAlive());
    this.n.interrupt();
    this.n = null;
  }
  
  public void c()
  {
    b();
    if (this.r != null) {
      this.r.removeUpdates(this.s);
    }
  }
  
  public boolean e()
  {
    if ((this.l != null) && (!this.l.isAvailableToShowExpandableAd())) {
      e.b("AdCommandTask", "TODO : CANNOT BE USED");
    }
    while (!a.i) {
      return false;
    }
    try
    {
      this.l.pause();
      net.daum.adam.publisher.impl.d.a.a().a(a.g).a("철회", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          net.daum.adam.publisher.impl.d.a.a().b();
          paramAnonymousDialogInterface = new Message();
          paramAnonymousDialogInterface.what = 21;
          paramAnonymousDialogInterface.obj = Boolean.valueOf(true);
          c.e(c.this).sendMessage(paramAnonymousDialogInterface);
        }
      }).b("취소", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          net.daum.adam.publisher.impl.d.a.a().b();
          c.e(c.this).sendEmptyMessage(21);
        }
      }).a(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          net.daum.adam.publisher.impl.d.a.a().b();
          c.a(0L);
          c.e(c.this).sendEmptyMessage(21);
        }
      }).a(this.l.getContext()).c().show();
      return true;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        e.a("AdCommandTask", "위치 정보 동의 철회 팝업 예외 발생", localException);
      }
    }
  }
  
  private static final class a
    implements Runnable
  {
    private final c a;
    private final boolean b;
    private final ProgressDialog c;
    
    public a(c paramc, boolean paramBoolean)
    {
      this.a = paramc;
      this.b = paramBoolean;
      if (c.d(paramc).getContext() != null)
      {
        this.c = new ProgressDialog(c.d(this.a).getContext());
        return;
      }
      this.c = null;
    }
    
    public void run()
    {
      e.b("AdCommandTask", "[AgreeTask] 위치 정보 동의 여부 : " + String.valueOf(this.b));
      c.e(this.a).post(new Runnable()
      {
        public void run()
        {
          if (c.a.a(c.a.this) != null)
          {
            c.a.a(c.a.this).setMessage("Loading...");
            c.a.a(c.a.this).setCancelable(true);
            c.a.a(c.a.this).show();
          }
        }
      });
      Object localObject2 = new h();
      Object localObject1 = e.f();
      String str = (String)localObject1 + "/mergeLocInfoAgree.do";
      localObject1 = null;
      try
      {
        HashMap localHashMap = c.g(this.a).a(Boolean.valueOf(this.b));
        localHashMap.put("interval", Integer.valueOf((int)((System.currentTimeMillis() - c.h()) / 1000L)));
        localObject2 = ((h)localObject2).b(str, localHashMap, c.d(this.a).getUserAgent());
        localObject1 = localObject2;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          e.a("AgreeTask", "LIA 서버 Command 요청 실패", localException);
        }
      }
      c.a(this.a, (a)localObject1);
      c.e(this.a).post(new Runnable()
      {
        public void run()
        {
          if (c.a.a(c.a.this) == null) {
            return;
          }
          c.a.a(c.a.this).cancel();
          c.a.a(c.a.this).dismiss();
        }
      });
    }
  }
  
  private static final class b
    implements Runnable
  {
    private final c a;
    private final boolean b;
    
    public b(c paramc, boolean paramBoolean)
    {
      this.a = paramc;
      this.b = paramBoolean;
    }
    
    public void run()
    {
      e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 동의 여부 관련 프로세스 시작");
      h localh = new h();
      Object localObject1 = e.f();
      if ((this.b) || (c.g() != 2))
      {
        e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 동의 검사 URL 사용");
        localObject1 = (String)localObject1 + "/checkLocInfoAgree.do";
      }
      try
      {
        for (;;)
        {
          HashMap localHashMap = c.g(this.a).a(null);
          localHashMap.put("interval", Integer.valueOf((int)((System.currentTimeMillis() - c.h()) / 1000L)));
          if (net.daum.adam.publisher.impl.d.a.a().c() != null) {
            break;
          }
          localObject1 = localh.b((String)localObject1, localHashMap, c.d(this.a).getUserAgent());
          if (c.k(this.a) == null) {
            break label297;
          }
          i = 1;
          if ((localObject1 == null) || (((a)localObject1).b() != 1) || (i == 0)) {
            break label312;
          }
          e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 동의 팝업 출력");
          if ((c.c(this.a) != null) && (c.c(this.a).isAlive()))
          {
            c.c(this.a).interrupt();
            c.a(this.a, null);
            e.b("AdCommandTask", "AgreeCommandThread is " + c.c(this.a).isAlive());
          }
          try
          {
            c.e(this.a).post(new Runnable()
            {
              public void run()
              {
                net.daum.adam.publisher.impl.d.a.a().a(a.f).a("승인", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    net.daum.adam.publisher.impl.d.a.a().b();
                    e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 수집 승인 정보 전송 요청");
                    paramAnonymous2DialogInterface = new Message();
                    paramAnonymous2DialogInterface.what = 20;
                    paramAnonymous2DialogInterface.obj = Boolean.valueOf(true);
                    c.e(c.b.a(c.b.this)).sendMessage(paramAnonymous2DialogInterface);
                  }
                }).b("거절", new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    net.daum.adam.publisher.impl.d.a.a().b();
                    e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 수집 거절 정보 전송 요청");
                    c.e(c.b.a(c.b.this)).sendEmptyMessage(20);
                  }
                }).a(new DialogInterface.OnCancelListener()
                {
                  public void onCancel(DialogInterface paramAnonymous2DialogInterface)
                  {
                    c.a(0L);
                    net.daum.adam.publisher.impl.d.a.a().b();
                  }
                }).a(false).a(c.d(c.this).getContext()).c().show();
              }
            });
            return;
          }
          catch (Exception localException2)
          {
            Object localObject2;
            e.a("AdCommandTask", "[RequestCommandRunnable] 위치 정보 동의 팝업 예외 발생", localException2);
            return;
          }
          e.b("AdCommandTask", "[RequestCommandRunnable] 위치 정보 수집 URL 사용");
          localObject1 = (String)localObject1 + "/collectLocInfo.do";
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          e.a("AdCommandTask", "[RequestCommandRunnable] LIA 서버 Command 요청 실패", localException1);
          localObject2 = null;
          continue;
          label297:
          int i = 0;
        }
      }
      label312:
      c.a(this.a, localException2);
    }
  }
  
  private static final class c
    extends Thread
  {
    private final Boolean a;
    private final WeakReference<c> b;
    private c.b c = null;
    private Thread d = null;
    
    public c(c paramc)
    {
      this(paramc, null);
    }
    
    public c(c paramc, Boolean paramBoolean)
    {
      this.b = new WeakReference(paramc);
      this.a = paramBoolean;
    }
    
    public void destroy()
    {
      if ((this.d != null) && (this.d.isAlive()))
      {
        this.d.interrupt();
        this.d.destroy();
      }
      super.destroy();
    }
    
    public void run()
    {
      c localc = (c)this.b.get();
      if ((c.f() == null) || (c.f().contains("noaction")))
      {
        c.b(4);
        e.b("AdCommandTask", "[UpdateParamsRunnable] 위치 정보 서비스 사용 불가능");
        return;
      }
      if ((c.f() != null) && (c.f().contains("gps")))
      {
        e.b("AdCommandTask", "[UpdateParamsRunnable] 위치 정보 서비스 사용 가능 여부 검사");
        c.e(localc).sendEmptyMessage(10);
      }
      if (c.f() != null)
      {
        e.b("AdCommandTask", "[UpdateParamsRunnable] 위치 정보 전송에 필요한 파라미터를 구성");
        if (c.f().contains("network")) {
          c.g(localc).d(c.i(localc));
        }
        if (c.f().contains("netoperator")) {
          c.g(localc).c(c.j(localc));
        }
      }
      int i;
      if (this.a != null)
      {
        this.c = new c.b((c)this.b.get(), this.a.booleanValue());
        this.d = new Thread(this.c, "RequestCommandThread");
        i = this.d.getPriority();
      }
      try
      {
        if (i.a != null) {
          this.d.setPriority(i.a.intValue());
        }
        this.d.start();
        c.a(System.currentTimeMillis());
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          this.d.setPriority(i);
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.b.c
 * JD-Core Version:    0.7.0.1
 */