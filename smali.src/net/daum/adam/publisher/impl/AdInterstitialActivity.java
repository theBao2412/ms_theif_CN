package net.daum.adam.publisher.impl;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import net.daum.adam.publisher.impl.c.p;
import net.daum.adam.publisher.impl.c.p.e;
import net.daum.adam.publisher.impl.c.p.f;
import net.daum.adam.publisher.impl.c.p.k;
import net.daum.adam.publisher.impl.c.p.m;

public class AdInterstitialActivity
  extends Activity
{
  private p a;
  private ImageView b;
  private RelativeLayout c;
  
  protected void a()
  {
    if (this.b == null)
    {
      this.b = new ImageButton(this);
      this.b.setImageBitmap(e.i());
      this.b.setBackgroundDrawable(null);
      this.b.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          AdInterstitialActivity.this.finish();
        }
      });
    }
    int k;
    RelativeLayout.LayoutParams localLayoutParams;
    int j;
    int n;
    int m;
    if (this.c != null)
    {
      float f = getResources().getDisplayMetrics().density;
      i = (int)(50.0F * f + 0.5F);
      k = (int)(f * 1.0F + 0.5F);
      localLayoutParams = new RelativeLayout.LayoutParams(i, i);
      localLayoutParams.addRule(11);
      this.c.removeView(this.b);
      i = this.a.o();
      j = this.a.p();
      n = getResources().getDisplayMetrics().widthPixels;
      m = getResources().getDisplayMetrics().heightPixels;
      if (i <= 0) {
        break label250;
      }
    }
    label250:
    for (int i = (n - i) / 2;; i = 0)
    {
      if (j > 0) {}
      for (j = (m - j) / 2;; j = 0)
      {
        if (this.a.o() == -2)
        {
          localLayoutParams.setMargins(0, k, k, 0);
          this.c.addView(this.b, localLayoutParams);
          return;
        }
        localLayoutParams.setMargins(0, j + k, i + k, 0);
        this.c.addView(this.b, localLayoutParams);
        return;
      }
    }
  }
  
  protected void b()
  {
    if (this.c != null) {
      this.c.removeView(this.b);
    }
  }
  
  public View getAdView()
  {
    this.a = new p(this, true);
    this.a.a(true);
    this.a.a(new p.k()
    {
      public void a(p paramAnonymousp)
      {
        AdInterstitialActivity.this.a();
      }
    });
    this.a.a(new p.e()
    {
      public void a(p paramAnonymousp, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          AdInterstitialActivity.this.a();
        }
        for (;;)
        {
          AdInterstitialActivity.a(AdInterstitialActivity.this).setVisibility(0);
          return;
          AdInterstitialActivity.this.b();
        }
      }
    });
    this.a.a(new p.f()
    {
      public void onClose(p paramAnonymousp, p.m paramAnonymousm)
      {
        AdInterstitialActivity.this.finish();
      }
    });
    String str = getIntent().getStringExtra("net.daum.adam.publisher.interstitialUrl");
    if (str == null)
    {
      finish();
      return null;
    }
    this.a.b(e.a());
    this.a.loadUrl(str);
    this.a.setVisibility(4);
    return this.a;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().addFlags(1024);
    this.c = new RelativeLayout(this);
    paramBundle = new RelativeLayout.LayoutParams(-2, -2);
    paramBundle.addRule(13);
    this.c.addView(getAdView(), paramBundle);
    setContentView(this.c);
    a();
  }
  
  protected void onDestroy()
  {
    if (this.c != null) {
      this.c.removeAllViews();
    }
    e.a(getWindow().getDecorView());
    System.gc();
    super.onDestroy();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.impl.AdInterstitialActivity
 * JD-Core Version:    0.7.0.1
 */