package net.daum.adam.publisher.impl;

import android.app.AlertDialog;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import net.daum.adam.publisher.AdView;
import net.daum.adam.publisher.impl.d.a;

public final class i
{
  public static Integer a = null;
  private static final String b = "AdRefreshTask";
  private static final int c = 2;
  private static final int d = 1;
  private static final int e = 0;
  private j f = null;
  private AdView g;
  private boolean h = true;
  private boolean i;
  private Handler j;
  private b k;
  private final h l;
  private final g m;
  private net.daum.adam.publisher.impl.b.c n;
  private a o = a.a;
  private Thread p;
  
  public i(AdView paramAdView, j paramj)
  {
    if ((paramAdView == null) || (paramj == null)) {
      e.b("Cannot initialize ad refresh task");
    }
    this.g = paramAdView;
    this.l = new h();
    this.m = new g(this.g.getContext());
    this.j = new Handler()
    {
      public void handleMessage(Message paramAnonymousMessage)
      {
        j localj = i.a(i.this);
        AdView localAdView = i.b(i.this);
        switch (paramAnonymousMessage.what)
        {
        }
        do
        {
          do
          {
            return;
          } while (localj == null);
          localj.updateAd((b)paramAnonymousMessage.obj);
          return;
          if (i.c(i.this) != null)
          {
            i.c(i.this).c();
            i.a(i.this, null);
          }
          e.b("AdRefreshTask", "위치 정보 갱신");
          i.a(i.this, new net.daum.adam.publisher.impl.b.c(localAdView));
          i.c(i.this).a();
          return;
        } while (localAdView == null);
        paramAnonymousMessage = (Throwable)paramAnonymousMessage.obj;
        if ((paramAnonymousMessage instanceof AdException))
        {
          paramAnonymousMessage = (AdException)paramAnonymousMessage;
          localAdView.adFailed(paramAnonymousMessage.getSdkError(), paramAnonymousMessage.getSdkError().toString());
          return;
        }
        localAdView.adFailed(AdError.AD_DOWNLOAD_ERROR_SDKEXCEPTION, paramAnonymousMessage.toString());
      }
    };
    this.k = new b(this.g);
    this.p = new Thread(this.k, "Ad@mAdViewUpdater");
    if (this.k == null) {
      e.b("Cannot start background thread");
    }
    this.f = paramj;
  }
  
  private void a(Handler paramHandler)
  {
    if (net.daum.adam.publisher.impl.b.c.d()) {
      paramHandler.sendEmptyMessage(2);
    }
  }
  
  private void a(Handler paramHandler, AdView paramAdView)
  {
    e.b("AdRefreshTask", "refreshAd");
    this.m.a(paramAdView.getClientId());
    label263:
    for (;;)
    {
      try
      {
        String str = e.e();
        HashMap localHashMap = this.m.a();
        long l1 = c.a();
        long l2 = System.currentTimeMillis();
        b localb = c.a(paramAdView.getRequestInterval());
        Object localObject = localb;
        if (localb == null)
        {
          if (!this.h) {
            continue;
          }
          localObject = "y";
          localHashMap.put("ft", localObject);
          if (this.h)
          {
            e.b("AdRefreshTask", "First Try");
            if (this.h) {
              continue;
            }
            bool = true;
            this.h = bool;
          }
          if (l1 != 0L) {
            localHashMap.put("rt", Integer.valueOf((int)((l2 - l1) / 1000L)));
          }
          paramAdView = this.l.a(str, localHashMap, paramAdView.getUserAgent());
          localObject = c.b();
          if (localObject == null) {
            break label263;
          }
          bool = ((b)localObject).equals(paramAdView);
          localObject = paramAdView;
          if (!bool)
          {
            c.a(paramAdView);
            localObject = paramAdView;
          }
        }
        paramHandler.sendMessage(paramHandler.obtainMessage(1, localObject));
        return;
        localObject = "n";
        continue;
        boolean bool = false;
        continue;
        bool = false;
      }
      catch (AdException paramAdView)
      {
        if (AdError.AD_DOWNLOAD_ERROR_NOAD != paramAdView.getSdkError()) {
          e.a("AdRefreshTask", "SDK Exception", paramAdView);
        }
        paramHandler.sendMessage(paramHandler.obtainMessage(0, paramAdView));
        return;
      }
      catch (Throwable paramAdView)
      {
        e.a("AdRefreshTask", "SDK Exception", paramAdView);
        paramHandler.sendMessage(paramHandler.obtainMessage(0, paramAdView));
        return;
      }
    }
  }
  
  private void a(AdView paramAdView)
  {
    if (this.j != null)
    {
      a(this.j, paramAdView);
      if (this.m.c()) {
        a(this.j);
      }
    }
  }
  
  private void e()
  {
    if (this.n != null) {
      this.n.c();
    }
  }
  
  private j f()
  {
    return this.f;
  }
  
  protected void a()
  {
    if (this.o.equals(a.b))
    {
      e.b("AdRefreshTask", "광고 Thread(" + this.k.toString() + ") 일시 정지");
      this.o = a.c;
      if (this.k != null) {
        this.k.a();
      }
    }
    e();
  }
  
  public void a(int paramInt)
  {
    int i1;
    if (this.p != null) {
      i1 = this.p.getPriority();
    }
    try
    {
      e.b("AdRefreshTask", "Current thread priority is " + i1);
      e.b("AdRefreshTask", "Try to change current thread priority : " + paramInt);
      this.p.setPriority(paramInt);
      a = Integer.valueOf(paramInt);
      e.b("AdRefreshTask", "Thread priority has been changed into " + this.p.getPriority());
      return;
    }
    catch (Exception localException)
    {
      e.a("AdRefreshTask", localException.toString(), localException);
      e.b("AdRefreshTask", "Reset to set default thread priority...");
      this.p.setPriority(i1);
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    if (this.g == null) {
      e.b("AdRefreshTask", "Cannot draw ad.");
    }
    do
    {
      return;
      while ((a.c != this.o) || (!this.g.getNetworkStatus()))
      {
        do
        {
          if (!this.g.isInForeground())
          {
            e.b("AdRefreshTask", "Ad@m view is in the background.");
            return;
          }
          if (this.g.isAdExpanded())
          {
            e.b("AdRefreshTask", "Expandable ad has been displayed.");
            a();
            return;
          }
          if (!paramBoolean) {
            break;
          }
          e.b("AdRefreshTask", "Network Status : " + this.g.getNetworkStatus());
        } while (!this.g.getNetworkStatus());
        e.b("AdRefreshTask", "Ad request right away.");
        a(this.g);
        return;
        if (!this.i)
        {
          e.b("AdRefreshTask", "Cannot refresh ad.");
          return;
        }
        if (a.a != this.o) {
          break;
        }
        if (this.g.getNetworkStatus())
        {
          e.b("AdRefreshTask", "광고 Thread(" + this.k.toString() + ") 시작");
          this.o = a.b;
          this.p.start();
        }
      }
      e.b("AdRefreshTask", "광고 Thread(" + this.k.toString() + ") 재시작");
      this.o = a.b;
      this.k.b();
      return;
    } while (!this.o.equals(a.d));
    throw new IllegalStateException("Ad Refresh state is already dead.");
  }
  
  public void b()
  {
    if (e.g())
    {
      e.b("AdRefreshTask", "강제 요청");
      a(true);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    this.i = paramBoolean;
    if (!this.i)
    {
      a();
      return;
    }
    a(false);
  }
  
  public void c()
  {
    this.o = a.d;
    e.b("AdRefreshTask", "광고 Thread(" + this.k.toString() + ") 정지");
    if ((this.p != null) && (this.p.isAlive())) {
      this.p.interrupt();
    }
    if (a.a() != null)
    {
      AlertDialog localAlertDialog = a.a().c();
      if (localAlertDialog != null) {
        localAlertDialog.dismiss();
      }
    }
    e();
    a();
    this.g = null;
  }
  
  public int d()
  {
    if (this.p != null)
    {
      Integer localInteger = Integer.valueOf(this.p.getPriority());
      a = localInteger;
      return localInteger.intValue();
    }
    return 0;
  }
  
  static enum a
  {
    private a() {}
  }
  
  private final class b
    implements Runnable
  {
    private final Object b = new Object();
    private boolean c = false;
    private final WeakReference<AdView> d;
    
    public b(AdView paramAdView)
    {
      this.d = new WeakReference(paramAdView);
    }
    
    public void a()
    {
      synchronized (this.b)
      {
        this.c = true;
        return;
      }
    }
    
    public void b()
    {
      synchronized (this.b)
      {
        this.c = false;
        this.b.notifyAll();
        return;
      }
    }
    
    public void run()
    {
      for (;;)
      {
        boolean bool1;
        int i;
        try
        {
          AdView localAdView = (AdView)this.d.get();
          if (localAdView == null) {
            break label262;
          }
          if (!localAdView.isInForeground()) {
            break label211;
          }
          bool1 = localAdView.isShown();
          boolean bool2 = localAdView.hasWindowFocus();
          boolean bool3 = localAdView.isAdExpanded();
          if (i.d(i.this) != i.a.b) {
            break label303;
          }
          i = 1;
          if (((!bool2) && (i.e(i.this))) && (!localAdView.getNetworkStatus())) {
            break label163;
          }
          if (!bool1)
          {
            localAdView.adFailed(AdError.AD_DOWNLOAD_ERROR_FAILTODRAW, "AdView's visibility has been changed, ad will not be updated");
            if (i.d(i.this) != i.a.d) {
              break label170;
            }
            e.b("AdRefreshTask", "Ad updater thread is dead already.");
            return;
          }
          if ((!bool3) && (i != 0))
          {
            i.a(i.this, localAdView);
            continue;
          }
          i.this.b(false);
        }
        catch (Exception localException)
        {
          e.a("AdRefreshTask", localException.toString(), localException);
          return;
        }
        continue;
        label163:
        e.b("AdRefreshTask", "Network is not connected.");
        label170:
        e.b("AdRefreshTask", localException.getRequestInterval() + "초 동안 Thread Sleep");
        Thread.sleep(localException.getRequestInterval() * 1000);
        for (;;)
        {
          label211:
          synchronized (this.b)
          {
            bool1 = this.c;
            if (!bool1) {
              break;
            }
            try
            {
              this.b.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              e.a("AdRefreshTask", "[AdViewUpdaterRunnable] run() - InterruptedException occurs.", localInterruptedException);
              return;
            }
          }
          label262:
          if (??? == null)
          {
            e.b("Ad@m view should be initialized before background thread start.");
            this.c = true;
          }
        }
        if ((Thread.interrupted()) || (i.d(i.this) == i.a.d))
        {
          return;
          label303:
          i = 0;
        }
      }
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.i
 * JD-Core Version:    0.7.0.1
 */