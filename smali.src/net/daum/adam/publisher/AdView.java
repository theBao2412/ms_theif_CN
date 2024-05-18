package net.daum.adam.publisher;

import android.content.Context;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import net.daum.adam.publisher.impl.AdError;
import net.daum.adam.publisher.impl.AdException;
import net.daum.adam.publisher.impl.a.a;
import net.daum.adam.publisher.impl.b;
import net.daum.adam.publisher.impl.b.c;
import net.daum.adam.publisher.impl.c.p;
import net.daum.adam.publisher.impl.c.p.a;
import net.daum.adam.publisher.impl.c.p.f;
import net.daum.adam.publisher.impl.c.p.g;
import net.daum.adam.publisher.impl.c.p.h;
import net.daum.adam.publisher.impl.c.p.i;
import net.daum.adam.publisher.impl.c.p.j;
import net.daum.adam.publisher.impl.c.p.m;
import net.daum.adam.publisher.impl.d;
import net.daum.adam.publisher.impl.e;
import net.daum.adam.publisher.impl.i;
import net.daum.adam.publisher.impl.j;
import net.daum.adam.publisher.impl.receiver.AbstractBroadcastReceiver;
import net.daum.adam.publisher.impl.receiver.AbstractBroadcastReceiver.a;
import net.daum.adam.publisher.impl.receiver.BatteryStateBroadcastReceiver;
import net.daum.adam.publisher.impl.receiver.NetworkStateBroadcastReceiver;
import net.daum.adam.publisher.impl.receiver.ScreenStateBroadcastReceiver;

public class AdView
  extends RelativeLayout
{
  private static final String d = "AdView";
  private static final int h = 320;
  private static final int i = 48;
  private static final int o = 800;
  private static final int p = 100;
  private OnAdClosedListener A;
  private OnAdClickedListener B;
  private p.h C = new p.h()
  {
    public void onFailure(p paramAnonymousp)
    {
      AdView.this.adFailed(AdError.AD_DOWNLOAD_ERROR_FAILTODRAW, AdError.AD_DOWNLOAD_ERROR_FAILTODRAW.toString());
    }
  };
  private p.f D = new p.f()
  {
    public void onClose(p paramAnonymousp, p.m paramAnonymousm)
    {
      if (AdView.a(AdView.this) != null) {
        AdView.a(AdView.this).b(true);
      }
      AdView.b(AdView.this);
    }
  };
  private boolean E = false;
  private View.OnLongClickListener F = new View.OnLongClickListener()
  {
    public boolean onLongClick(View paramAnonymousView)
    {
      e.b("AdView", "위치 동의 철회 요청");
      AdView.a(AdView.this, new c(AdView.this).e());
      return AdView.c(AdView.this);
    }
  };
  private RelativeLayout G = null;
  private String H = null;
  private WebSettings.RenderPriority I = WebSettings.RenderPriority.NORMAL;
  private i J;
  private a K = null;
  private Animation L = null;
  private Animation M = null;
  private Animation.AnimationListener N = null;
  private AnimationType O = AnimationType.NONE;
  protected p[] a;
  protected int b = 1;
  protected int c = 0;
  private AbstractBroadcastReceiver e = null;
  private AbstractBroadcastReceiver f = null;
  private AbstractBroadcastReceiver g = null;
  private final int j = 60;
  private final int k = 12;
  private final int l = 120;
  private int m = 60;
  private boolean n = true;
  private long q = -1L;
  private float[] r;
  private float[] s;
  private boolean t = false;
  private String u = null;
  private boolean v = false;
  private boolean w = true;
  private OnAdWillLoadListener x;
  private OnAdLoadedListener y;
  private OnAdFailedListener z;
  
  public AdView(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (paramAttributeSet != null) {
      a(paramContext, paramAttributeSet);
    }
    if (getVisibility() == 0) {}
    for (;;)
    {
      this.v = bool;
      try
      {
        this.H = new WebView(getContext()).getSettings().getUserAgentString();
        c(paramContext);
        return;
        bool = false;
      }
      catch (OutOfMemoryError paramAttributeSet)
      {
        for (;;)
        {
          e.a("AdView", "User-Agent : OutOfMemoryError Exception occurs", paramAttributeSet);
        }
      }
      catch (Exception paramAttributeSet)
      {
        for (;;)
        {
          e.a("AdView", "User-Agent : Exception occurs", paramAttributeSet);
        }
      }
    }
  }
  
  private p a(int paramInt)
  {
    if (this.G == null) {
      return null;
    }
    if (this.a[paramInt] == null)
    {
      this.a[paramInt] = new p(getContext());
      this.G.addView(a(paramInt), new RelativeLayout.LayoutParams(-1, -1));
    }
    this.a[paramInt].setVisibility(4);
    this.a[paramInt].getSettings().setRenderPriority(this.I);
    a(this.a[paramInt]);
    return this.a[paramInt];
  }
  
  private void a(Context paramContext) {}
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {}
    do
    {
      return;
      setRequestInterval(paramAttributeSet.getAttributeIntValue(null, "refreshInterval", 60));
      paramContext = paramAttributeSet.getAttributeValue(null, "clientId");
    } while ((paramContext == null) || (paramContext.trim().equals("")));
    setClientId(paramContext);
  }
  
  private void a(final b paramb)
  {
    if (this.G == null) {}
    p localp;
    do
    {
      do
      {
        return;
        e.b("AdView", "광고 View 영역 갱신 (타입 : " + paramb.a() + ")");
        localp = a(this.c);
      } while (localp == null);
      final long l1 = Math.round(Math.random() * 10000.0D);
      localp.setId((int)l1);
      localp.a(new p.i()
      {
        public void onLoad(p paramAnonymousp)
        {
          if ((AdView.e(AdView.this)) && (paramb.a() != null)) {
            AdView.this.b();
          }
        }
      });
      localp.setOnLongClickListener(this.F);
      localp.setLongClickable(true);
      localp.setOnTouchListener(null);
      if ((paramb.d() != null) && (paramb.d().length() > 0))
      {
        if (paramb.a() != null) {
          a(paramb.a());
        }
        localp.a(false);
        localp.a(null);
        localp.setOnTouchListener(new View.OnTouchListener()
        {
          public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
          {
            if (((paramAnonymousView instanceof p)) && (!((p)paramAnonymousView).c()) && (paramAnonymousView.getId() == l1) && (paramAnonymousMotionEvent.getAction() == 1) && (!AdView.c(AdView.this)))
            {
              if ((this.b.c() != null) && (this.b.c().length() > 0)) {
                AdView.a(AdView.this, this.b.c());
              }
              AdView.f(AdView.this);
              if ((this.b.b() != null) && (this.b.b().length() > 0)) {
                ((p)paramAnonymousView).c(this.b.b());
              }
            }
            return false;
          }
        });
        localp.loadDataWithBaseURL(null, paramb.d(), "text/html", "utf-8", null);
        return;
      }
    } while (!paramb.a().toLowerCase().equals("mraid"));
    if (paramb.a() != null) {
      a(paramb.a());
    }
    localp.a(true);
    localp.setHorizontalScrollBarEnabled(false);
    localp.setVerticalScrollBarEnabled(false);
    localp.a(new p.g()
    {
      public void onExpand(p paramAnonymousp)
      {
        if (AdView.a(AdView.this) != null) {
          AdView.a(AdView.this).b(false);
        }
        AdView.a(AdView.this, paramb.c());
        AdView.f(AdView.this);
      }
    });
    localp.a(new p.j()
    {
      public void onOpen(p paramAnonymousp, p.a paramAnonymousa)
      {
        if ((paramAnonymousa != null) && (paramAnonymousa.equals(p.a.a)))
        {
          e.b("AdView", "mraid.open() - EXPANSION ENABLED STATE");
          if (AdView.a(AdView.this) != null) {
            AdView.a(AdView.this).b(false);
          }
          AdView.a(AdView.this, paramb.c());
          AdView.f(AdView.this);
        }
      }
    });
    localp.loadUrl(paramb.f());
  }
  
  private void a(p paramp)
  {
    if (paramp == null) {
      return;
    }
    paramp.a(this.C);
    paramp.a(this.D);
  }
  
  private void b(int paramInt)
  {
    if (this.a[paramInt] == null) {
      return;
    }
    try
    {
      this.a[paramInt].clearView();
      this.a[paramInt].freeMemory();
      this.a[paramInt].destroy();
      this.a[paramInt] = null;
      return;
    }
    catch (Exception localException)
    {
      e.a("AdView", localException.toString(), localException);
    }
  }
  
  private void b(Context paramContext) {}
  
  private void b(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      d.a(paramString, this.H);
    }
  }
  
  private int c(int paramInt)
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    float f1 = paramInt;
    return (int)(localDisplayMetrics.density * f1);
  }
  
  private void c(Context paramContext)
  {
    e.b("AdView", "initialize");
    setFocusable(true);
    setHorizontalScrollBarEnabled(false);
    setVerticalScrollBarEnabled(false);
    this.G = new RelativeLayout(paramContext);
    this.G.setVisibility(8);
    this.G.setGravity(17);
    addView(this.G, new RelativeLayout.LayoutParams(-1, c(48)));
    ((RelativeLayout.LayoutParams)this.G.getLayoutParams()).addRule(3);
    this.a = new p[2];
    if (f())
    {
      i();
      this.J = new i(this, new j()
      {
        public void updateAd(b paramAnonymousb)
        {
          if (paramAnonymousb != null)
          {
            if ((paramAnonymousb.a().equals("MRAID")) && ((!paramAnonymousb.g().equals("inline")) || (!AdView.this.isAvailableToShowExpandableAd())))
            {
              AdView.this.adFailed(AdError.AD_DOWNLOAD_ERROR_NOAD, AdError.AD_DOWNLOAD_ERROR_NOAD.toString());
              return;
            }
            AdView.a(AdView.this, paramAnonymousb);
            return;
          }
          AdView.this.adFailed(AdError.AD_DOWNLOAD_ERROR_NOAD, AdError.AD_DOWNLOAD_ERROR_NOAD.toString());
        }
      });
      if (this.J != null)
      {
        this.J.b(false);
        e.c("Activated Ad@m Ad");
      }
      this.N = new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if ((paramAnonymousAnimation.equals(AdView.this.getAnimationHide())) && (AdView.d(AdView.this))) {
            AdView.this.startAnimation(AdView.this.getAnimationShow());
          }
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      };
      this.K = new a(this, this.N);
      return;
    }
    e.d("Ensure that you add the INTERNET, NETWORK_WIFI_STATE and ACCESS_WIFI_STATE permissions in your Application.");
    this.O = AnimationType.NONE;
    paramContext = new b();
    paramContext.d("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"/></head><body style=\"background-color:#fff;border-bottom:1px solid black;border-top:1px solid black;padding:5px;margin:0\"><p style=\"font-size:10px\">Ensure that you add the <strong style=\"color:red\">INTERNET</strong>, <strong style=\"color:red\">NETWORK_WIFI_STATE</strong>, <strong style=\"color:red\">ACCESS_WIFI_STATE</strong> permissions in your Application.</p></body></html>");
    a(paramContext);
    try
    {
      throw new AdException(AdError.AD_DOWNLOAD_ERROR_PERMISSION_DENIED, AdError.AD_DOWNLOAD_ERROR_PERMISSION_DENIED.toString());
    }
    catch (AdException paramContext)
    {
      adFailed(paramContext.getSdkError(), paramContext.getSdkError().toString());
    }
  }
  
  private void d()
  {
    e.b("AdView", "adClosed");
    if (this.A != null) {
      this.A.OnAdClosed();
    }
  }
  
  private void d(Context paramContext)
  {
    if (this.e != null) {
      return;
    }
    this.e = new ScreenStateBroadcastReceiver(paramContext, this);
    this.e.a(new AbstractBroadcastReceiver.a()
    {
      public void onStateChange(boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          if (AdView.g(AdView.this))
          {
            e.b("Screen wake, ad in foreground. Enable refresh");
            if (AdView.a(AdView.this) != null) {
              AdView.a(AdView.this).b(true);
            }
          }
        }
        do
        {
          return;
          e.b("Screen wake but ad in background");
          return;
          if (!AdView.g(AdView.this)) {
            break;
          }
          e.b("Screen sleep, ad in foreground. Disable refresh");
        } while (AdView.a(AdView.this) == null);
        AdView.a(AdView.this).b(false);
        return;
        e.b("Screen sleep but ad in background");
      }
    });
    this.e.b();
  }
  
  private void e()
  {
    e.b("AdView", "adClicked");
    if (this.B != null) {
      this.B.OnAdClicked();
    }
  }
  
  private void e(Context paramContext)
  {
    if (this.e != null) {
      this.e.c();
    }
  }
  
  private void f(Context paramContext)
  {
    if (this.f != null) {
      return;
    }
    this.f = new NetworkStateBroadcastReceiver(paramContext);
    this.f.a(new AbstractBroadcastReceiver.a()
    {
      public void onStateChange(boolean paramAnonymousBoolean)
      {
        AdView.b(AdView.this, paramAnonymousBoolean);
      }
    });
    this.f.b();
  }
  
  private boolean f()
  {
    boolean bool = true;
    if (getContext().checkCallingOrSelfPermission("android.permission.INTERNET") != 0)
    {
      e.d("android.permission.INTERNET permission must be added in AndroidManifest.xml!");
      bool = false;
    }
    if (getContext().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
    {
      e.d("android.permission.ACCESS_NETWORK_STATE permission must be added in AndroidManifest.xml!");
      bool = false;
    }
    if (getContext().checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != 0)
    {
      e.d("android.permission.ACCESS_WIFI_STATE permission must be added in AndroidManifest.xml!");
      return false;
    }
    return bool;
  }
  
  private void g(Context paramContext)
  {
    if (this.f != null) {
      this.f.c();
    }
  }
  
  private boolean g()
  {
    boolean bool1;
    if ((this.G == null) || (this.a == null))
    {
      if (this.J != null) {
        this.J.b(false);
      }
      adFailed(AdError.AD_DOWNLOAD_ERROR_FAILTODRAW, AdError.AD_DOWNLOAD_ERROR_FAILTODRAW.toString());
      bool1 = false;
    }
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        this.c = ((this.c + 1) % 2);
        this.b = ((this.b + 1) % 2);
        if ((!this.n) && (this.K != null)) {
          this.K.a(this.O);
        }
        if ((!this.n) && (this.O != AnimationType.NONE)) {
          break;
        }
        bool2 = h();
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    } while (this.G == null);
    this.G.setVisibility(0);
    return bool2;
    startAnimation(this.L);
    return true;
  }
  
  private void h(Context paramContext)
  {
    if (this.g != null) {
      return;
    }
    this.g = new BatteryStateBroadcastReceiver(paramContext);
    this.g.a(new AbstractBroadcastReceiver.a()
    {
      boolean a = true;
      
      public void onStateChange(boolean paramAnonymousBoolean)
      {
        boolean bool1 = true;
        boolean bool2 = false;
        if (!paramAnonymousBoolean)
        {
          e.b("Battery Low, pause refresing ad.");
          if (!this.a)
          {
            paramAnonymousBoolean = bool1;
            this.a = paramAnonymousBoolean;
            if (AdView.a(AdView.this) != null) {
              AdView.a(AdView.this).b(false);
            }
          }
        }
        do
        {
          do
          {
            return;
            paramAnonymousBoolean = false;
            break;
          } while ((this.a) || (!AdView.g(AdView.this)));
          paramAnonymousBoolean = bool2;
          if (!this.a) {
            paramAnonymousBoolean = true;
          }
          this.a = paramAnonymousBoolean;
        } while (AdView.a(AdView.this) == null);
        AdView.a(AdView.this).b(true);
      }
    });
    this.g.b();
  }
  
  private boolean h()
  {
    boolean bool2 = false;
    label302:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      for (;;)
      {
        try
        {
          if (this.G != null)
          {
            p[] arrayOfp = this.a;
            if (arrayOfp == null) {
              bool1 = bool2;
            }
          }
          else
          {
            return bool1;
          }
          boolean bool3 = this.n;
          if (this.n)
          {
            if (!this.n)
            {
              bool1 = true;
              this.n = bool1;
            }
          }
          else
          {
            if ((this.a[this.c] != null) && (!this.a[this.c].b()))
            {
              this.G.removeView(this.a[this.c]);
              b(this.c);
            }
            if (this.a[this.b] == null) {
              break label302;
            }
            this.a[this.b].setVisibility(4);
            int i1 = c(320);
            int i2 = c(48);
            int i3 = getMeasuredWidth();
            int i4 = getMeasuredHeight();
            e.b("AdView", "Ad Size : " + i3 + "x" + i4 + " ");
            if ((bool3) || (i3 <= 0) || (i3 >= i1) || (i4 <= 0) || (i4 >= i2)) {
              break;
            }
            adFailed(AdError.AD_DOWNLOAD_ERROR_FAILTODRAW, "Ad@m view should be displayed at least 320DP x 48DP  resolution.");
            e.d("Ad@m view should be displayed at least 320DP x 48DP  resolution.");
            bool1 = bool2;
            if (this.J == null) {
              continue;
            }
            this.J.b(false);
            bool1 = bool2;
            continue;
          }
          bool1 = false;
        }
        finally {}
      }
      this.a[this.b].setVisibility(0);
    }
  }
  
  private void i()
  {
    h(getContext());
    f(getContext());
    d(getContext());
    a(getContext());
  }
  
  private void i(Context paramContext)
  {
    if (this.g != null) {
      this.g.c();
    }
  }
  
  private void j()
  {
    i(getContext());
    g(getContext());
    e(getContext());
    b(getContext());
  }
  
  protected void a(String paramString)
  {
    if (this.x != null)
    {
      this.x.OnAdWillLoad(paramString);
      return;
    }
    e.c("Ad will be loaded : " + paramString);
  }
  
  protected boolean a()
  {
    return (c() != null) && (c().getVisibility() == 0) && (c().hasWindowFocus());
  }
  
  public void adFailed(AdError paramAdError, String paramString)
  {
    if (this.z != null)
    {
      this.z.OnAdFailed(paramAdError, paramString);
      return;
    }
    e.b("Ad downloading has been failed : " + paramString);
  }
  
  protected void b()
  {
    if (this.y != null)
    {
      this.y.OnAdLoaded();
      return;
    }
    e.c("Ad has been downloaded");
  }
  
  protected p c()
  {
    if (this.a != null) {
      return this.a[this.b];
    }
    return null;
  }
  
  public void destroy()
  {
    if ((this.J == null) && (this.G == null) && (this.a == null)) {}
    do
    {
      return;
      j();
      if (this.J != null)
      {
        this.J.c();
        this.J = null;
      }
      if (this.G != null)
      {
        this.G.setVisibility(8);
        this.G.removeAllViews();
        this.G = null;
      }
      b(this.c);
      b(this.b);
      this.a = null;
    } while ((this.J != null) || (this.G != null) || (this.a != null));
    e.c("Terminated Ad@m Ad");
  }
  
  public Animation getAnimationHide()
  {
    return this.L;
  }
  
  public Animation getAnimationShow()
  {
    return this.M;
  }
  
  public String getClientId()
  {
    return this.u;
  }
  
  public boolean getNetworkStatus()
  {
    return this.w;
  }
  
  public int getRequestInterval()
  {
    return this.m;
  }
  
  public int getThreadPriority()
  {
    if (this.J != null) {
      return this.J.d();
    }
    return 0;
  }
  
  public String getUserAgent()
  {
    return this.H;
  }
  
  public WebSettings.RenderPriority getWebViewRenderPriority()
  {
    return this.I;
  }
  
  public boolean isAdExpanded()
  {
    boolean bool = false;
    if (c() != null) {
      bool = c().b();
    }
    return bool;
  }
  
  public boolean isAvailableToShowExpandableAd()
  {
    if ((FrameLayout)getRootView().findViewById(16908290) != null) {}
    for (boolean bool = true;; bool = false)
    {
      if (!bool) {
        e.b("AdView", "확장형 광고 노출 불가능");
      }
      return bool;
    }
  }
  
  public boolean isInForeground()
  {
    return this.v;
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.J == null) && (this.G == null) && (this.a == null)) {
      c(getContext());
    }
    e.b("AdView", "onAttachedToWindow()");
  }
  
  protected void onDetachedFromWindow()
  {
    e.b("AdView", "onDetachedFromWindow()");
    j();
    if (this.J != null)
    {
      e.b("Ad has been detached from window. Stop ad refresh.");
      this.J.b(false);
    }
    super.onDetachedFromWindow();
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if ((!this.t) || (paramSensorEvent == null) || (paramSensorEvent.sensor.getType() != 1) || (paramSensorEvent.values.length < 3)) {}
    do
    {
      return;
      if (this.s == null) {
        this.s = new float[] { -1.0F, -1.0F, -1.0F };
      }
      long l1 = System.currentTimeMillis();
      if (l1 - this.q > 100L)
      {
        long l2 = this.q;
        this.q = l1;
        this.r = paramSensorEvent.values;
        if ((Math.abs(3.0F - (this.s[0] + this.s[1] + this.s[2])) / (float)(l1 - l2) * 10000.0F > 800.0F) && (c() != null)) {}
        this.s[0] = 0.0F;
        this.s[1] = 1.0F;
        this.s[2] = 2.0F;
        return;
      }
    } while (c() == null);
    c().a(this.r);
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0) {}
    for (this.v = true;; this.v = false)
    {
      e.b("AdView", "onWindowVisibilityChanged : " + this.v);
      if (this.J != null) {
        this.J.b(this.v);
      }
      return;
    }
  }
  
  public void pause()
  {
    if (this.J != null)
    {
      e.c("Pause ad refresh");
      this.J.b(false);
    }
  }
  
  public void refresh()
  {
    if (this.J != null)
    {
      e.c("Resume ad refresh forcefully");
      this.J.b();
    }
  }
  
  public void resume()
  {
    this.E = false;
    if (this.J != null)
    {
      e.c("Resume ad refresh");
      this.J.b(true);
    }
  }
  
  public void setAdCache(boolean paramBoolean)
  {
    e.a(paramBoolean);
  }
  
  public void setAnimationHide(Animation paramAnimation)
  {
    this.L = paramAnimation;
  }
  
  public void setAnimationShow(Animation paramAnimation)
  {
    this.M = paramAnimation;
  }
  
  public void setAnimationType(AnimationType paramAnimationType)
  {
    this.O = paramAnimationType;
  }
  
  public void setClientId(String paramString)
  {
    this.u = paramString;
  }
  
  public void setOnAdClickedListener(OnAdClickedListener paramOnAdClickedListener)
  {
    this.B = paramOnAdClickedListener;
  }
  
  public void setOnAdClosedListener(OnAdClosedListener paramOnAdClosedListener)
  {
    this.A = paramOnAdClosedListener;
  }
  
  public void setOnAdFailedListener(OnAdFailedListener paramOnAdFailedListener)
  {
    this.z = paramOnAdFailedListener;
  }
  
  public void setOnAdLoadedListener(OnAdLoadedListener paramOnAdLoadedListener)
  {
    this.y = paramOnAdLoadedListener;
  }
  
  public void setOnAdWillLoadListener(OnAdWillLoadListener paramOnAdWillLoadListener)
  {
    this.x = paramOnAdWillLoadListener;
  }
  
  public void setRequestInterval(int paramInt)
  {
    if (e.g())
    {
      this.m = paramInt;
      return;
    }
    if (paramInt < 12)
    {
      this.m = 12;
      return;
    }
    if (paramInt > 120)
    {
      this.m = 120;
      return;
    }
    this.m = paramInt;
  }
  
  public void setThreadPriority(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 10))
    {
      e.b("Thread Priority is out of range : between Thread.MIN_PRIORITY and Thread.MAX_PRIORITY");
      return;
    }
    this.J.a(paramInt);
  }
  
  public void setWebViewRenderPriority(WebSettings.RenderPriority paramRenderPriority)
  {
    if (paramRenderPriority != null) {}
    for (this.I = paramRenderPriority;; this.I = WebSettings.RenderPriority.NORMAL) {
      try
      {
        if (this.a[this.c] != null) {
          this.a[this.c].getSettings().setRenderPriority(this.I);
        }
        if (this.a[this.b] != null) {
          this.a[this.b].getSettings().setRenderPriority(this.I);
        }
        return;
      }
      catch (Exception paramRenderPriority)
      {
        e.b("AdView", "Webview doesn't initialized!");
      }
    }
  }
  
  public static enum AnimationType
  {
    private AnimationType() {}
  }
  
  public static abstract interface OnAdClickedListener
  {
    public abstract void OnAdClicked();
  }
  
  public static abstract interface OnAdClosedListener
  {
    public abstract void OnAdClosed();
  }
  
  public static abstract interface OnAdFailedListener
  {
    public abstract void OnAdFailed(AdError paramAdError, String paramString);
  }
  
  public static abstract interface OnAdLoadedListener
  {
    public abstract void OnAdLoaded();
  }
  
  public static abstract interface OnAdWillLoadListener
  {
    public abstract void OnAdWillLoad(String paramString);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.AdView
 * JD-Core Version:    0.7.0.1
 */