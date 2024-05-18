package net.daum.adam.publisher.impl.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.util.ArrayList;
import net.daum.adam.publisher.impl.e;

class k
  extends a
{
  private static final String d = "MraidDisplayController";
  private static final int e = 101;
  private static final int f = 100;
  private static final int g = 102;
  protected float a;
  protected int b = -1;
  protected int c = -1;
  private p.m h = p.m.d;
  private final p.a i;
  private final p.d j;
  private p k;
  private FrameLayout l;
  private final int m;
  private ImageView n;
  private boolean o;
  private int p;
  private Drawable q;
  
  k(p paramp, p.a parama, p.d paramd)
  {
    super(paramp);
    this.i = parama;
    this.j = paramd;
    paramp = a().getContext();
    if ((paramp instanceof Activity)) {}
    for (int i1 = ((Activity)paramp).getRequestedOrientation();; i1 = -1)
    {
      this.m = i1;
      this.h = p.m.a;
      h();
      this.q = a().getBackground();
      a().setBackgroundDrawable(new ColorDrawable(0));
      return;
    }
  }
  
  private ViewGroup a(View paramView, int paramInt1, int paramInt2)
  {
    int i1 = (int)(50.0F * this.a + 0.5F);
    int i2 = paramInt1;
    if (paramInt1 < i1) {
      i2 = i1;
    }
    paramInt1 = paramInt2;
    if (paramInt2 < i1) {
      paramInt1 = i1;
    }
    RelativeLayout localRelativeLayout = new RelativeLayout(a().getContext());
    localRelativeLayout.setId(101);
    localRelativeLayout.setBackgroundColor(Color.argb(176, 0, 0, 0));
    Object localObject = new View(a().getContext());
    ((View)localObject).setBackgroundColor(0);
    ((View)localObject).setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
    });
    localRelativeLayout.addView((View)localObject, new RelativeLayout.LayoutParams(-1, -1));
    localObject = new FrameLayout(a().getContext());
    ((FrameLayout)localObject).setId(102);
    ((FrameLayout)localObject).addView(paramView, new RelativeLayout.LayoutParams(-1, -1));
    paramView = new RelativeLayout.LayoutParams(i2, paramInt1);
    paramView.addRule(13);
    localRelativeLayout.addView((View)localObject, paramView);
    return localRelativeLayout;
  }
  
  private void c(boolean paramBoolean)
  {
    Object localObject = a().getContext();
    try
    {
      localObject = (Activity)localObject;
      if (paramBoolean) {}
      for (int i1 = 1;; i1 = this.m)
      {
        ((Activity)localObject).setRequestedOrientation(i1);
        return;
      }
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      Log.d("MraidDisplayController", "Unable to modify device orientation.");
    }
  }
  
  private void h()
  {
    int i2 = 0;
    Object localObject = a().getContext();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)((Context)localObject).getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.a = localDisplayMetrics.density;
    if ((localObject instanceof Activity))
    {
      localObject = ((Activity)localObject).getWindow();
      Rect localRect = new Rect();
      ((Window)localObject).getDecorView().getWindowVisibleDisplayFrame(localRect);
      i2 = localRect.top;
    }
    for (int i1 = ((Window)localObject).findViewById(16908290).getTop() - i2;; i1 = 0)
    {
      int i3 = localDisplayMetrics.widthPixels;
      int i4 = localDisplayMetrics.heightPixels;
      this.b = ((int)(i3 * (160.0D / localDisplayMetrics.densityDpi)));
      this.c = ((int)((i4 - i2 - i1) * (160.0D / localDisplayMetrics.densityDpi)));
      return;
    }
  }
  
  private void i()
  {
    try
    {
      Object localObject = (FrameLayout)this.l.findViewById(102);
      RelativeLayout localRelativeLayout = (RelativeLayout)this.l.findViewById(101);
      FrameLayout localFrameLayout = (FrameLayout)this.l.findViewById(100);
      a(false);
      ((FrameLayout)localObject).removeAllViewsInLayout();
      this.l.removeView(localRelativeLayout);
      a().requestLayout();
      localObject = (ViewGroup)localFrameLayout.getParent();
      ((ViewGroup)localObject).addView(a(), this.p);
      ((ViewGroup)localObject).removeView(localFrameLayout);
      ((ViewGroup)localObject).invalidate();
      return;
    }
    catch (Exception localException)
    {
      e.a("MraidDisplayController", localException.toString(), localException);
    }
  }
  
  private void j()
  {
    ViewGroup localViewGroup = (ViewGroup)a().getParent();
    if (localViewGroup == null) {
      return;
    }
    FrameLayout localFrameLayout = new FrameLayout(a().getContext());
    localFrameLayout.setId(100);
    int i2 = localViewGroup.getChildCount();
    int i1 = 0;
    for (;;)
    {
      if ((i1 >= i2) || (localViewGroup.getChildAt(i1) == a()))
      {
        this.p = i1;
        localViewGroup.addView(localFrameLayout, i1, new ViewGroup.LayoutParams(a().getWidth(), a().getHeight()));
        localViewGroup.removeView(a());
        return;
      }
      i1 += 1;
    }
  }
  
  protected void a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramInt1 = (int)(paramInt1 * this.a);
    paramInt2 = (int)(paramInt2 * this.a);
    e.b("MraidDisplayController", "LAYOUT WIDTH  :" + paramInt1);
    e.b("MraidDisplayController", "LAYOUT HEIGHT :" + paramInt2);
    a().a(paramInt1, paramInt2);
    if (this.i == p.a.b)
    {
      paramString = new RelativeLayout.LayoutParams(paramInt1, paramInt2);
      paramString.addRule(13);
      a().setLayoutParams(paramString);
      b(paramBoolean1);
    }
    do
    {
      return;
      if ((paramString != null) && (!URLUtil.isValidUrl(paramString)))
      {
        a().a("expand", "URL passed to expand() was invalid.");
        return;
      }
      try
      {
        this.l = ((FrameLayout)a().getRootView().findViewById(16908290));
        if (this.l == null)
        {
          if (a().g() != null) {
            a().g().onFailure(a());
          }
          throw new NullPointerException("Cannot see the expandable content.");
        }
      }
      catch (Exception paramString)
      {
        e.b("MraidDisplayController", paramString.toString());
        return;
      }
      b(paramBoolean1);
      c(paramBoolean2);
      j();
      p localp = a();
      if (paramString != null)
      {
        e.b("MraidDisplayController", "2-piece ad");
        this.k = new p(a().getContext(), p.a.b, p.d.c, p.l.a);
        this.k.a(new p.f()
        {
          public void onClose(p paramAnonymousp, p.m paramAnonymousm)
          {
            k.this.g();
          }
        });
        this.k.loadUrl(paramString);
        this.k.setBackgroundColor(-12303292);
        localp = this.k;
      }
      localp.setOnKeyListener(new View.OnKeyListener()
      {
        public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          boolean bool = true;
          if (paramAnonymousInt == 4) {
            try
            {
              if ((k.this.a() == null) || (k.this.a().getProgress() != 100))
              {
                k.this.a().stopLoading();
                k.this.g();
                return true;
              }
              k.this.a().a("window.mraid.close()");
              if (k.a(k.this) == null) {
                break label113;
              }
              e.b("MraidDisplayController", "Close Expandable View Forcefully");
              k.this.g();
              return true;
            }
            catch (Exception paramAnonymousView)
            {
              k.this.g();
              e.a("MraidDisplayController", paramAnonymousView.toString(), paramAnonymousView);
              return true;
            }
          } else {
            bool = false;
          }
          label113:
          return bool;
        }
      });
      localp.requestFocusFromTouch();
      paramString = a(localp, paramInt1, paramInt2);
      this.l.addView(paramString, new RelativeLayout.LayoutParams(-1, -1));
      this.l.setBackgroundColor(0);
      if ((this.j == p.d.a) || ((!this.o) && (this.j != p.d.b))) {
        a(true);
      }
      this.h = p.m.c;
      a().a(o.a(this.h));
    } while (a().d() == null);
    a().d().onExpand(a());
  }
  
  protected void a(boolean paramBoolean)
  {
    if (this.l == null) {
      return;
    }
    Object localObject = (FrameLayout)this.l.findViewById(102);
    if (paramBoolean)
    {
      if (this.n == null)
      {
        this.n = new ImageButton(a().getContext());
        this.n.setBackgroundDrawable(null);
        this.n.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            k.this.g();
          }
        });
        this.n.setImageBitmap(e.i());
      }
      int i1 = (int)(50.0F * this.a + 0.5F);
      int i2 = (int)(1.0F * this.a + 0.5F);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(i1, i1, 5);
      localLayoutParams.setMargins(0, i2, i2, 0);
      ((FrameLayout)localObject).addView(this.n, localLayoutParams);
    }
    for (;;)
    {
      localObject = a();
      if (((p)localObject).h() == null) {
        break;
      }
      ((p)localObject).h().a((p)localObject, paramBoolean);
      return;
      ((FrameLayout)localObject).removeView(this.n);
    }
  }
  
  public p.m b()
  {
    return this.h;
  }
  
  protected void b(boolean paramBoolean)
  {
    this.o = paramBoolean;
    p localp = a();
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (localp.h() != null) {
        localp.h().a(localp, paramBoolean);
      }
      return;
    }
  }
  
  public p.a c()
  {
    return this.i;
  }
  
  public void d()
  {
    a().setBackgroundDrawable(this.q);
  }
  
  protected void e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(n.a(this.b, this.c));
    if (a().getVisibility() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localArrayList.add(q.a(bool));
      a().a(localArrayList);
      this.h = p.m.b;
      a().a(o.a(this.h));
      return;
    }
  }
  
  protected boolean f()
  {
    return this.h == p.m.c;
  }
  
  protected void g()
  {
    e.b("MraidDisplayController", "close()");
    if (this.h == p.m.c)
    {
      i();
      c(false);
      this.h = p.m.b;
    }
    a().a(o.a(this.h));
    if (a().e() != null) {
      a().e().onClose(a(), this.h);
    }
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.c.k
 * JD-Core Version:    0.7.0.1
 */