package com.google.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.google.ads.util.AdUtil;
import d;
import e;
import g;
import h;
import java.util.HashMap;

public class AdActivity
  extends Activity
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, View.OnClickListener
{
  public static final String BASE_URL_PARAM = "baseurl";
  public static final String HTML_PARAM = "html";
  public static final String INTENT_ACTION_PARAM = "i";
  public static final String ORIENTATION_PARAM = "o";
  public static final String TYPE_PARAM = "m";
  public static final String URL_PARAM = "u";
  private static final Object a = new Object();
  private static AdActivity b = null;
  private static d c = null;
  private static AdActivity d = null;
  private static AdActivity e = null;
  private g f;
  private long g;
  private RelativeLayout h;
  private AdActivity i = null;
  private boolean j;
  private VideoView k;
  
  private void a(g paramg, boolean paramBoolean, int paramInt)
  {
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    if (paramg.getParent() != null) {
      a("Interstitial created with an AdWebView that has a parent.");
    }
    do
    {
      return;
      if (paramg.b() != null)
      {
        a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
        return;
      }
      setRequestedOrientation(paramInt);
      paramg.a(this);
      Object localObject = new ImageButton(getApplicationContext());
      ((ImageButton)localObject).setImageResource(17301527);
      ((ImageButton)localObject).setBackgroundColor(0);
      ((ImageButton)localObject).setOnClickListener(this);
      ((ImageButton)localObject).setPadding(0, 0, 0, 0);
      paramInt = (int)TypedValue.applyDimension(1, 32.0F, getResources().getDisplayMetrics());
      FrameLayout localFrameLayout = new FrameLayout(getApplicationContext());
      localFrameLayout.addView((View)localObject, paramInt, paramInt);
      localObject = new ViewGroup.LayoutParams(-1, -1);
      this.h.addView(paramg, (ViewGroup.LayoutParams)localObject);
      this.h.addView(localFrameLayout);
      this.h.setKeepScreenOn(true);
      setContentView(this.h);
    } while (!paramBoolean);
    a.a(paramg);
  }
  
  private void a(String paramString)
  {
    com.google.ads.util.a.b(paramString);
    finish();
  }
  
  public static boolean isShowing()
  {
    synchronized (a)
    {
      if (d != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }
  
  public static void launchAdActivity(d paramd, e parame)
  {
    synchronized (a)
    {
      if (c == null) {
        c = paramd;
      }
      while (c == paramd)
      {
        paramd = paramd.e();
        if (paramd != null) {
          break;
        }
        com.google.ads.util.a.e("activity was null while launching an AdActivity.");
        return;
      }
      com.google.ads.util.a.b("Tried to launch a new AdActivity with a different AdManager.");
      return;
    }
    ??? = new Intent(paramd.getApplicationContext(), AdActivity.class);
    ((Intent)???).putExtra("com.google.ads.AdOpener", parame.a());
    try
    {
      com.google.ads.util.a.a("Launching AdActivity.");
      paramd.startActivity((Intent)???);
      return;
    }
    catch (ActivityNotFoundException paramd)
    {
      com.google.ads.util.a.a(paramd.getMessage(), paramd);
    }
  }
  
  public g getOpeningAdWebView()
  {
    if (this.i != null) {
      return this.i.f;
    }
    synchronized (a)
    {
      if (c == null)
      {
        com.google.ads.util.a.e("currentAdManager was null while trying to get the opening AdWebView.");
        return null;
      }
    }
    g localg = c.i();
    if (localg != this.f) {
      return localg;
    }
    return null;
  }
  
  public VideoView getVideoView()
  {
    return this.k;
  }
  
  public void onClick(View paramView)
  {
    finish();
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    com.google.ads.util.a.d("Video finished playing.");
    if (this.k != null) {
      this.k.setVisibility(8);
    }
    a.a(this.f, "onVideoEvent", "{'event': 'finish'}");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    synchronized (a)
    {
      if (c != null)
      {
        paramBundle = c;
        if (d == null)
        {
          d = this;
          paramBundle.s();
        }
        if ((this.i == null) && (e != null)) {
          this.i = e;
        }
        e = this;
        localObject2 = paramBundle.f();
        if ((((localObject2 instanceof AdView)) && (d == this)) || (((localObject2 instanceof InterstitialAd)) && (this.i == d))) {
          paramBundle.u();
        }
        this.h = null;
        this.j = false;
        this.k = null;
        ??? = getIntent().getBundleExtra("com.google.ads.AdOpener");
        if (??? == null) {
          a("Could not get the Bundle used to create AdActivity.");
        }
      }
      else
      {
        a("Could not get currentAdManager.");
        return;
      }
    }
    ??? = new e((Bundle)???);
    Object localObject2 = ((e)???).b();
    ??? = ((e)???).c();
    if (((String)localObject2).equals("intent"))
    {
      this.f = null;
      this.g = SystemClock.elapsedRealtime();
      this.j = true;
      if (??? == null)
      {
        a("Could not get the paramMap in launchIntent()");
        return;
      }
      localObject2 = (String)((HashMap)???).get("u");
      if (localObject2 == null)
      {
        a("Could not get the URL parameter in launchIntent().");
        return;
      }
      paramBundle = (String)((HashMap)???).get("i");
      ??? = (String)((HashMap)???).get("m");
      localObject2 = Uri.parse((String)localObject2);
      if (paramBundle == null) {
        paramBundle = new Intent("android.intent.action.VIEW", (Uri)localObject2);
      }
      synchronized (a)
      {
        for (;;)
        {
          if (b == null)
          {
            b = this;
            if (c == null) {
              break;
            }
            c.t();
          }
          try
          {
            com.google.ads.util.a.a("Launching an intent from AdActivity.");
            startActivity(paramBundle);
            return;
          }
          catch (ActivityNotFoundException paramBundle)
          {
            com.google.ads.util.a.a(paramBundle.getMessage(), paramBundle);
            finish();
            return;
          }
          paramBundle = new Intent(paramBundle);
          if (??? != null) {
            paramBundle.setDataAndType((Uri)localObject2, (String)???);
          } else {
            paramBundle.setData((Uri)localObject2);
          }
        }
        com.google.ads.util.a.e("currentAdManager is null while trying to call onLeaveApplication().");
      }
    }
    this.h = new RelativeLayout(getApplicationContext());
    int m;
    if (((String)localObject2).equals("webapp"))
    {
      this.f = new g(getApplicationContext(), null);
      localObject2 = new h(paramBundle, a.b, true, true);
      ((h)localObject2).b();
      this.f.setWebViewClient((WebViewClient)localObject2);
      localObject2 = (String)((HashMap)???).get("u");
      String str1 = (String)((HashMap)???).get("baseurl");
      String str2 = (String)((HashMap)???).get("html");
      if (localObject2 != null)
      {
        this.f.loadUrl((String)localObject2);
        ??? = (String)((HashMap)???).get("o");
        if (!"p".equals(???)) {
          break label575;
        }
        m = AdUtil.b();
      }
      for (;;)
      {
        a(this.f, false, m);
        return;
        if (str2 != null)
        {
          this.f.loadDataWithBaseURL(str1, str2, "text/html", "utf-8", null);
          break;
        }
        a("Could not get the URL or HTML parameter to show a web app.");
        return;
        label575:
        if ("l".equals(???)) {
          m = AdUtil.a();
        } else if (this == d) {
          m = paramBundle.m();
        } else {
          m = -1;
        }
      }
    }
    if (((String)localObject2).equals("interstitial"))
    {
      this.f = paramBundle.i();
      m = paramBundle.m();
      a(this.f, true, m);
      return;
    }
    a("Unknown AdOpener, <action: " + (String)localObject2 + ">");
  }
  
  public void onDestroy()
  {
    if (this.h != null) {
      this.h.removeAllViews();
    }
    if (this.f != null)
    {
      a.b(this.f);
      this.f.a(null);
    }
    if (isFinishing()) {
      if (this.k != null)
      {
        this.k.stopPlayback();
        this.k = null;
      }
    }
    synchronized (a)
    {
      if ((c != null) && (this.f != null))
      {
        if (this.f == c.i()) {
          c.a();
        }
        this.f.stopLoading();
        this.f.destroy();
      }
      if (this == d)
      {
        if (c != null)
        {
          c.r();
          c = null;
          d = null;
        }
      }
      else
      {
        if (this == b) {
          b = null;
        }
        e = this.i;
        com.google.ads.util.a.a("AdActivity is closing.");
        super.onDestroy();
        return;
      }
      com.google.ads.util.a.e("currentAdManager is null while trying to destroy AdActivity.");
    }
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    com.google.ads.util.a.e("Video threw error! <what:" + paramInt1 + ", extra:" + paramInt2 + ">");
    finish();
    return true;
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    com.google.ads.util.a.d("Video is ready to play.");
    a.a(this.f, "onVideoEvent", "{'event': 'load'}");
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if ((this.j) && (paramBoolean) && (SystemClock.elapsedRealtime() - this.g > 250L))
    {
      com.google.ads.util.a.d("Launcher AdActivity got focus and is closing.");
      finish();
    }
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void showVideo(VideoView paramVideoView)
  {
    this.k = paramVideoView;
    if (this.f == null)
    {
      a("Couldn't get adWebView to show the video.");
      return;
    }
    this.f.setBackgroundColor(0);
    paramVideoView.setOnCompletionListener(this);
    paramVideoView.setOnPreparedListener(this);
    paramVideoView.setOnErrorListener(this);
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    LinearLayout localLinearLayout = new LinearLayout(getApplicationContext());
    localLinearLayout.setGravity(17);
    localLinearLayout.addView(paramVideoView, localLayoutParams);
    this.h.addView(localLinearLayout, 0, localLayoutParams);
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.AdActivity
 * JD-Core Version:    0.7.0.1
 */