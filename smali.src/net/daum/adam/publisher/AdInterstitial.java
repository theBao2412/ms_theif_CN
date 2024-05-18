package net.daum.adam.publisher;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import net.daum.adam.publisher.impl.AdError;
import net.daum.adam.publisher.impl.AdException;
import net.daum.adam.publisher.impl.AdInterstitialActivity;
import net.daum.adam.publisher.impl.b;
import net.daum.adam.publisher.impl.e;
import net.daum.adam.publisher.impl.g;
import net.daum.adam.publisher.impl.h;

public final class AdInterstitial
{
  private static final String a = "AdInterstitial";
  private static final int b = 0;
  private static final int c = 1;
  private Handler d = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      do
      {
        do
        {
          return;
        } while (!(paramAnonymousMessage.obj instanceof AdError));
        paramAnonymousMessage = (AdError)paramAnonymousMessage.obj;
        AdInterstitial.a(AdInterstitial.this, paramAnonymousMessage, paramAnonymousMessage.toString());
        return;
      } while (!(paramAnonymousMessage.obj instanceof String));
      paramAnonymousMessage = (String)paramAnonymousMessage.obj;
      AdInterstitial.a(AdInterstitial.this, paramAnonymousMessage);
    }
  };
  private InterstitialState e;
  private final Activity f;
  private String g;
  private final h h;
  private final g i;
  private AdView.OnAdLoadedListener j;
  private AdView.OnAdFailedListener k;
  
  public AdInterstitial(Activity paramActivity)
  {
    this(paramActivity, null);
  }
  
  public AdInterstitial(Activity paramActivity, String paramString)
  {
    this.f = paramActivity;
    this.h = new h();
    this.i = new g(this.f);
    if (paramString != null) {
      setClientId(paramString);
    }
    try
    {
      this.g = new WebView(paramActivity).getSettings().getUserAgentString();
      this.e = InterstitialState.NOT_READY;
      return;
    }
    catch (OutOfMemoryError paramActivity)
    {
      for (;;)
      {
        e.a("AdInterstitial", "OutOfMemoryError Exception occurs", paramActivity);
      }
    }
    catch (Exception paramActivity)
    {
      for (;;)
      {
        e.a("AdInterstitial", "Exception occurs", paramActivity);
      }
    }
  }
  
  private Activity a()
  {
    return this.f;
  }
  
  private Message a(int paramInt, Object paramObject)
  {
    Message localMessage = new Message();
    localMessage.what = paramInt;
    localMessage.obj = paramObject;
    return localMessage;
  }
  
  private void a(String paramString)
  {
    e.b("AdInterstitial", "adLoaded");
    this.e = InterstitialState.READY;
    if (this.j != null) {
      this.j.OnAdLoaded();
    }
  }
  
  private void a(AdError paramAdError, String paramString)
  {
    e.b("AdInterstitial", "adFailed :" + paramString);
    this.e = InterstitialState.NOT_READY;
    if (this.k != null) {
      this.k.OnAdFailed(paramAdError, paramString);
    }
  }
  
  private void a(b paramb)
  {
    Activity localActivity = a();
    Intent localIntent = new Intent(localActivity, AdInterstitialActivity.class);
    localIntent.putExtra("net.daum.adam.publisher.interstitialUrl", paramb.f());
    try
    {
      localActivity.startActivity(localIntent);
      this.d.sendMessage(a(1, paramb.f()));
      return;
    }
    catch (ActivityNotFoundException paramb)
    {
      this.d.sendMessage(a(0, paramb.toString()));
      e.a("AdInterstitialActivity must be added in AndroidManifest.xml!", paramb);
      e.a("AdInterstitial", paramb.toString(), paramb);
    }
  }
  
  public boolean isReady()
  {
    return this.e == InterstitialState.READY;
  }
  
  public void loadAd()
  {
    this.e = InterstitialState.NOT_READY;
    new Thread("AdInterstitialLoader")
    {
      public void run()
      {
        try
        {
          Object localObject = e.e();
          HashMap localHashMap = AdInterstitial.a(AdInterstitial.this).a();
          localObject = AdInterstitial.c(AdInterstitial.this).a((String)localObject, localHashMap, AdInterstitial.b(AdInterstitial.this));
          if ((((b)localObject).g() != null) && (((b)localObject).g().toLowerCase().equals("interstitial")))
          {
            e.b("AdInterstitial", "Interstitial ad url : " + ((b)localObject).f());
            AdInterstitial.a(AdInterstitial.this, (b)localObject);
            return;
          }
          AdInterstitial.d(AdInterstitial.this).sendMessage(AdInterstitial.a(AdInterstitial.this, 0, AdError.AD_DOWNLOAD_ERROR_NOAD));
          return;
        }
        catch (AdException localAdException)
        {
          AdInterstitial.d(AdInterstitial.this).sendMessage(AdInterstitial.a(AdInterstitial.this, 0, localAdException.getSdkError()));
          return;
        }
        catch (Throwable localThrowable)
        {
          AdInterstitial.d(AdInterstitial.this).sendMessage(AdInterstitial.a(AdInterstitial.this, 0, AdError.AD_DOWNLOAD_ERROR_SDKEXCEPTION));
        }
      }
    }.start();
  }
  
  public void setAdCache(boolean paramBoolean)
  {
    e.a(paramBoolean);
  }
  
  public void setClientId(String paramString)
  {
    e.b("AdInterstitial", "setClientId : " + paramString);
    this.i.a(paramString);
  }
  
  public void setOnAdFailedListener(AdView.OnAdFailedListener paramOnAdFailedListener)
  {
    this.k = paramOnAdFailedListener;
  }
  
  public void setOnAdLoadedListener(AdView.OnAdLoadedListener paramOnAdLoadedListener)
  {
    this.j = paramOnAdLoadedListener;
  }
  
  static enum InterstitialState
  {
    private InterstitialState() {}
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     net.daum.adam.publisher.AdInterstitial
 * JD-Core Version:    0.7.0.1
 */