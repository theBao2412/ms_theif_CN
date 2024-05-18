package com.google.ads;

import android.app.Activity;
import com.google.ads.util.a;
import d;
import e;

public class InterstitialAd
  implements Ad
{
  private d a;
  
  public InterstitialAd(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, false);
  }
  
  public InterstitialAd(Activity paramActivity, String paramString, boolean paramBoolean)
  {
    this.a = new d(paramActivity, this, null, paramString, paramBoolean);
  }
  
  public boolean isReady()
  {
    return this.a.o();
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    this.a.a(paramAdRequest);
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    this.a.a(paramAdListener);
  }
  
  public void show()
  {
    if (isReady())
    {
      this.a.y();
      this.a.v();
      AdActivity.launchAdActivity(this.a, new e("interstitial"));
      return;
    }
    a.c("Cannot show interstitial because it is not loaded and ready.");
  }
  
  public void stopLoading()
  {
    this.a.z();
  }
}


/* Location:           D:\BaiduNetdiskDownload\AndroidKiller_v1.3.1\projects\MapleThiefv1.1\ProjectSrc\smali\
 * Qualified Name:     com.google.ads.InterstitialAd
 * JD-Core Version:    0.7.0.1
 */